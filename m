Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB212E2120
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 18:56:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oOIJm+z63wfS/sOfnPmSC0Kd3hWMgKpi3YesHx8jmd0=; b=WlXPlWW90b2uHt
	NIqNakocbZ3m86OhmFnBRYsa9I2Ei6dnIUJ2qWmzX2T5jK/1misn8Dp/HUynR6m4qkxlX1JSp86N5
	qRam+g1Nr2gFzY+8zRNl2c3m0hc45/WWzLlTyu3SyKpmjaCwxTCU1MPyT1I1aV+CB+YMsJGouVqZN
	BLOG5aQRpFHK01Blh9oPYtWDM92yyYRzVpRVLNH2RCDN4MHzPdXndeKpKtcS6d70xhmVCSwsPL5iK
	bis67lTPh0lf6CQgNnZSrQmbfQdSbJdvq3S6x9JOC2t0/3uN+ny9RpQQJeE/3TDXD8slv1KLTX+SF
	Bo4tVDUgqSlyK4zEjnEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNJvX-00025q-0j; Wed, 23 Oct 2019 16:56:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNJvK-000241-D1; Wed, 23 Oct 2019 16:55:51 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 255AC21906;
 Wed, 23 Oct 2019 16:55:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571849750;
 bh=VPyPC4LePKk7uWBltRmK/Fded+OjFkz/1MBUzjK69yE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=F6EnkV+NncnzhwMOW6V6hkw45lZgsqg3/2TZtCGHZozEzQIq3KdMfSDzhP1HG7DEk
 M7mlDDT1+IBGeBeN7wjqNdxT1gyRg8gcrMld2vzIAOeKMgU6M5qaR4w4RXQRM3f8MR
 nDVUOk8sxVo9dbcnWMOHzMooezkVxez8zgQU2eWs=
Date: Wed, 23 Oct 2019 17:55:44 +0100
From: Will Deacon <will@kernel.org>
To: Yong Wu <yong.wu@mediatek.com>
Subject: Re: [PATCH v4 3/7] iommu/mediatek: Use gather to achieve the tlb
 range flush
Message-ID: <20191023165543.GB27471@willie-the-truck>
References: <1571196792-12382-1-git-send-email-yong.wu@mediatek.com>
 <1571196792-12382-4-git-send-email-yong.wu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571196792-12382-4-git-send-email-yong.wu@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_095550_463317_5B80A7B8 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: youlin.pei@mediatek.com, anan.sun@mediatek.com,
 Nicolas Boichat <drinkcat@chromium.org>, cui.zhang@mediatek.com,
 srv_heupstream@mediatek.com, chao.hao@mediatek.com,
 Joerg Roedel <joro@8bytes.org>, edison.hsieh@mediatek.com,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, Tomasz Figa <tfiga@google.com>,
 iommu@lists.linux-foundation.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 11:33:08AM +0800, Yong Wu wrote:
> Use the iommu_gather mechanism to achieve the tlb range flush.
> Gather the iova range in the "tlb_add_page", then flush the merged iova
> range in iotlb_sync.
> 
> Suggested-by: Tomasz Figa <tfiga@chromium.org>
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> ---
>  drivers/iommu/mtk_iommu.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
> index c2f6c78..81ac95f 100644
> --- a/drivers/iommu/mtk_iommu.c
> +++ b/drivers/iommu/mtk_iommu.c
> @@ -245,11 +245,9 @@ static void mtk_iommu_tlb_flush_page_nosync(struct iommu_iotlb_gather *gather,
>  					    void *cookie)
>  {
>  	struct mtk_iommu_data *data = cookie;
> -	unsigned long flags;
> +	struct iommu_domain *domain = &data->m4u_dom->domain;
>  
> -	spin_lock_irqsave(&data->tlb_lock, flags);
> -	mtk_iommu_tlb_add_flush_nosync(iova, granule, granule, true, cookie);
> -	spin_unlock_irqrestore(&data->tlb_lock, flags);
> +	iommu_iotlb_gather_add_page(domain, gather, iova, granule);

You need to be careful here, because iommu_iotlb_gather_add_page() can
call iommu_tlb_sync() in some situations and you don't hold the lock.

>  static const struct iommu_flush_ops mtk_iommu_flush_ops = {
> @@ -469,9 +467,15 @@ static void mtk_iommu_iotlb_sync(struct iommu_domain *domain,
>  				 struct iommu_iotlb_gather *gather)
>  {
>  	struct mtk_iommu_data *data = mtk_iommu_get_m4u_data();
> +	size_t length = gather->end - gather->start;
>  	unsigned long flags;
>  
> +	if (gather->start == ULONG_MAX)
> +		return;
> +
>  	spin_lock_irqsave(&data->tlb_lock, flags);
> +	mtk_iommu_tlb_add_flush_nosync(gather->start, length, gather->pgsize,
> +				       false, data);
>  	mtk_iommu_tlb_sync(data);
>  	spin_unlock_irqrestore(&data->tlb_lock, flags);

Modulo my comment above, this fixes my previous comment. Given that mainline
is already broken, I guess the runtime bisectability isn't a problem.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
