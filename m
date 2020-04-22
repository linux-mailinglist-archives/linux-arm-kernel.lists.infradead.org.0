Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8506B1B3806
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 08:54:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IgX/9A1njTy1SY1Cz4ihmHeqmeeo6AvlkNOJkpIF/dA=; b=YdNYpdm2QHnEhN
	CEuAGPlLjXWPrVVDdy9HLlRybByFz44eRTz9tdtPk/lMI0NMzuDX870lMUhDSIQuQENKQQlG1qrOc
	ANTgbw+vMeI3QR7pOZNYPaK7O7eGyR3sAQO0rqVYfrwo+4q7AwTfb+m76QzHP/9+h8JNBEMFyNhY0
	4bXRzQUBWaEG+6aHDMIE3+vZ8GRf0Z0t8s1kMzchhzkeJpqvMMJLILiBBDnSNd+I5fdI06tme6/td
	NshinIEtLyn18gcHylzNJK8k7oUULqlWD/xzCPn7KWvm0zu+3wzDtt2tgmbsLcOVF23Q04ZHNWF3I
	5WNsQsn9+9QSTBjNLHbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR9H7-0004QJ-TA; Wed, 22 Apr 2020 06:54:25 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jR9Gw-0004PS-1b; Wed, 22 Apr 2020 06:54:14 +0000
Date: Tue, 21 Apr 2020 23:54:14 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Alim Akhtar <alim.akhtar@samsung.com>
Subject: Re: [PATCH v6 04/10] scsi: ufs: introduce
 UFSHCD_QUIRK_PRDT_BYTE_GRAN quirk
Message-ID: <20200422065414.GK20318@infradead.org>
References: <20200417175944.47189-1-alim.akhtar@samsung.com>
 <CGME20200417181014epcas5p1343bc81fb246133cc332d3fc7a394c15@epcas5p1.samsung.com>
 <20200417175944.47189-5-alim.akhtar@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200417175944.47189-5-alim.akhtar@samsung.com>
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: robh@kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, krzk@kernel.org,
 kwmad.kim@samsung.com, avri.altman@wdc.com, cang@codeaurora.org,
 stanley.chu@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 17, 2020 at 11:29:38PM +0530, Alim Akhtar wrote:
> Some UFS host controllers may think granularities of PRDT length and
> offset as bytes, not double words.
> 
> Signed-off-by: Kiwoong Kim <kwmad.kim@samsung.com>
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> ---
>  drivers/scsi/ufs/ufshcd.c | 30 +++++++++++++++++++++++-------
>  drivers/scsi/ufs/ufshcd.h |  6 ++++++
>  2 files changed, 29 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
> index ee30ed6cc805..b32fcedcdcb9 100644
> --- a/drivers/scsi/ufs/ufshcd.c
> +++ b/drivers/scsi/ufs/ufshcd.c
> @@ -2151,8 +2151,14 @@ static int ufshcd_map_sg(struct ufs_hba *hba, struct ufshcd_lrb *lrbp)
>  		return sg_segments;
>  
>  	if (sg_segments) {
> -		lrbp->utr_descriptor_ptr->prd_table_length =
> -			cpu_to_le16((u16)sg_segments);
> +
> +		if (hba->quirks & UFSHCD_QUIRK_PRDT_BYTE_GRAN)
> +			lrbp->utr_descriptor_ptr->prd_table_length =
> +				cpu_to_le16((u16)(sg_segments *
> +					sizeof(struct ufshcd_sg_entry)));
> +		else
> +			lrbp->utr_descriptor_ptr->prd_table_length =
> +				cpu_to_le16((u16) (sg_segments));

No double words here.  "Normal" UFS uses the actual segment count,
while Samsumg uses bytes.  Also no need fo the u16 count in
either the old or new version.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
