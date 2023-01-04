function New-CWMBoardSubtype {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '', Justification = 'Used by sub-function')]
    [CmdletBinding(SupportsShouldProcess, ConfirmImpact='Medium')]
    param(
        [Parameter(Mandatory = $true)]
        [Alias('boardId')]
        [int]$parentId,
        [Parameter(Mandatory = $true)]
        [ValidateLength(1,50)]
        [string]$name,
        [Parameter(Mandatory = $true)]
        [int[]]$typeAssociationIds,
        [switch]$inactiveFlag,
        [switch]$addAllTypesFlag,
        [switch]$removeAllTypesFlag
    )

    $Endpoint = "/service/boards/$($parentId)/subtypes"
    Invoke-CWMNewMaster -Arguments $PsBoundParameters -Endpoint $Endpoint
}
