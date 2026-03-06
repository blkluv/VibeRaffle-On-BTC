import { Address, AddressMap, ExtendedAddressMap, SchnorrSignature } from '@btc-vision/transaction';
import { CallResult, OPNetEvent, IOP_NETContract } from 'opnet';

// ------------------------------------------------------------------
// Event Definitions
// ------------------------------------------------------------------
export type RoundCreatedEvent = {
    readonly ticketPrice: bigint;
    readonly endBlock: bigint;
};
export type TicketBoughtEvent = {
    readonly buyer: Address;
    readonly count: number;
    readonly cost: bigint;
};
export type WinnerDrawnEvent = {
    readonly winner: Address;
    readonly totalPrize: bigint;
};
export type PrizeClaimedEvent = {
    readonly winner: Address;
    readonly amountReceived: bigint;
};
export type FeeWithdrawnEvent = {
    readonly owner: Address;
    readonly feeAmount: bigint;
};

// ------------------------------------------------------------------
// Call Results
// ------------------------------------------------------------------

/**
 * @description Represents the result of the createRound function call.
 */
export type CreateRound = CallResult<
    {
        success: boolean;
    },
    OPNetEvent<RoundCreatedEvent>[]
>;

/**
 * @description Represents the result of the buyTickets function call.
 */
export type BuyTickets = CallResult<
    {
        success: boolean;
    },
    OPNetEvent<TicketBoughtEvent>[]
>;

/**
 * @description Represents the result of the drawWinner function call.
 */
export type DrawWinner = CallResult<
    {
        success: boolean;
    },
    OPNetEvent<WinnerDrawnEvent>[]
>;

/**
 * @description Represents the result of the claimPrize function call.
 */
export type ClaimPrize = CallResult<
    {
        winnerAmount: bigint;
    },
    OPNetEvent<PrizeClaimedEvent>[]
>;

/**
 * @description Represents the result of the withdrawFee function call.
 */
export type WithdrawFee = CallResult<
    {
        feeAmount: bigint;
    },
    OPNetEvent<FeeWithdrawnEvent>[]
>;

/**
 * @description Represents the result of the getRoundInfo function call.
 */
export type GetRoundInfo = CallResult<
    {
        ticketPrice: bigint;
        endBlock: bigint;
        totalTickets: bigint;
        prizePool: bigint;
        isDrawn: boolean;
        prizeClaimed: boolean;
        feeClaimed: boolean;
        winner: Address;
        feePercent: bigint;
        owner: Address;
    },
    OPNetEvent<never>[]
>;

// ------------------------------------------------------------------
// IVibeRaffle
// ------------------------------------------------------------------
export interface IVibeRaffle extends IOP_NETContract {
    createRound(ticketPrice: bigint, durationBlocks: bigint): Promise<CreateRound>;
    buyTickets(count: number): Promise<BuyTickets>;
    drawWinner(): Promise<DrawWinner>;
    claimPrize(): Promise<ClaimPrize>;
    withdrawFee(): Promise<WithdrawFee>;
    getRoundInfo(): Promise<GetRoundInfo>;
}
