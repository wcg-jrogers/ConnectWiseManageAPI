function New-CWMBoardItem {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '', Justification = 'Used by sub-function')]
    [CmdletBinding(SupportsShouldProcess, ConfirmImpact='Medium')]
    param(
        [Parameter(Mandatory = $true)]
        [Alias('boardId')]
        [int]$parentId,
        [Parameter(Mandatory = $true)]
        [ValidateLength(1,50)]
        [string]$name,
        [switch]$inactiveFlag
    )

    $Endpoint = "/service/boards/$($parentId)/items"
    Invoke-CWMNewMaster -Arguments $PsBoundParameters -Endpoint $Endpoint
}
