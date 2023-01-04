function New-CWMBoardType {
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
        [ValidateSet('Reactive','Proactive')]
        [string]$category,
        [switch]$defaultFlag,
        [switch]$inactiveFlag,
        [switch]$requestForChangeFlag
    )

    $Endpoint = "/service/boards/$($parentId)/types"
    Invoke-CWMNewMaster -Arguments $PsBoundParameters -Endpoint $Endpoint
}
