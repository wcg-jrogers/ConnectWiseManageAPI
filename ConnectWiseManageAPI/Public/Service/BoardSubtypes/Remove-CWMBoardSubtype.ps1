function Remove-CWMBoardSubtype {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '', Justification = 'Used by sub-function')]
    [CmdletBinding(SupportsShouldProcess, ConfirmImpact='Medium')]
    param(
        [Parameter(Mandatory = $true)]
        [Alias('boardId')]
        [int]$parentId,
        [Parameter(Mandatory = $true)]
        [int]$id
    )

    $Endpoint = "/service/boards/$($parentId)/subtypes/$($id)"
    Invoke-CWMRemoveMaster -Endpoint $Endpoint
}
