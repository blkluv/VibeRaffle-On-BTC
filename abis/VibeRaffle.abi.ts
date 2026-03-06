import { ABIDataTypes, BitcoinAbiTypes, OP_NET_ABI } from 'opnet';

export const VibeRaffleEvents = [
    {
        name: 'RoundCreated',
        values: [
            { name: 'ticketPrice', type: ABIDataTypes.UINT256 },
            { name: 'endBlock', type: ABIDataTypes.UINT64 },
        ],
        type: BitcoinAbiTypes.Event,
    },
    {
        name: 'TicketBought',
        values: [
            { name: 'buyer', type: ABIDataTypes.ADDRESS },
            { name: 'count', type: ABIDataTypes.UINT32 },
            { name: 'cost', type: ABIDataTypes.UINT256 },
        ],
        type: BitcoinAbiTypes.Event,
    },
    {
        name: 'WinnerDrawn',
        values: [
            { name: 'winner', type: ABIDataTypes.ADDRESS },
            { name: 'totalPrize', type: ABIDataTypes.UINT256 },
        ],
        type: BitcoinAbiTypes.Event,
    },
    {
        name: 'PrizeClaimed',
        values: [
            { name: 'winner', type: ABIDataTypes.ADDRESS },
            { name: 'amountReceived', type: ABIDataTypes.UINT256 },
        ],
        type: BitcoinAbiTypes.Event,
    },
    {
        name: 'FeeWithdrawn',
        values: [
            { name: 'owner', type: ABIDataTypes.ADDRESS },
            { name: 'feeAmount', type: ABIDataTypes.UINT256 },
        ],
        type: BitcoinAbiTypes.Event,
    },
];

export const VibeRaffleAbi = [
    {
        name: 'createRound',
        inputs: [
            { name: 'ticketPrice', type: ABIDataTypes.UINT256 },
            { name: 'durationBlocks', type: ABIDataTypes.UINT64 },
        ],
        outputs: [{ name: 'success', type: ABIDataTypes.BOOL }],
        type: BitcoinAbiTypes.Function,
    },
    {
        name: 'buyTickets',
        payable: true,
        inputs: [{ name: 'count', type: ABIDataTypes.UINT32 }],
        outputs: [{ name: 'success', type: ABIDataTypes.BOOL }],
        type: BitcoinAbiTypes.Function,
    },
    {
        name: 'drawWinner',
        inputs: [],
        outputs: [{ name: 'success', type: ABIDataTypes.BOOL }],
        type: BitcoinAbiTypes.Function,
    },
    {
        name: 'claimPrize',
        inputs: [],
        outputs: [{ name: 'winnerAmount', type: ABIDataTypes.UINT256 }],
        type: BitcoinAbiTypes.Function,
    },
    {
        name: 'withdrawFee',
        inputs: [],
        outputs: [{ name: 'feeAmount', type: ABIDataTypes.UINT256 }],
        type: BitcoinAbiTypes.Function,
    },
    {
        name: 'getRoundInfo',
        constant: true,
        inputs: [],
        outputs: [
            { name: 'ticketPrice', type: ABIDataTypes.UINT256 },
            { name: 'endBlock', type: ABIDataTypes.UINT64 },
            { name: 'totalTickets', type: ABIDataTypes.UINT256 },
            { name: 'prizePool', type: ABIDataTypes.UINT256 },
            { name: 'isDrawn', type: ABIDataTypes.BOOL },
            { name: 'prizeClaimed', type: ABIDataTypes.BOOL },
            { name: 'feeClaimed', type: ABIDataTypes.BOOL },
            { name: 'winner', type: ABIDataTypes.ADDRESS },
            { name: 'feePercent', type: ABIDataTypes.UINT64 },
            { name: 'owner', type: ABIDataTypes.ADDRESS },
        ],
        type: BitcoinAbiTypes.Function,
    },
    ...VibeRaffleEvents,
    ...OP_NET_ABI,
];

export default VibeRaffleAbi;
