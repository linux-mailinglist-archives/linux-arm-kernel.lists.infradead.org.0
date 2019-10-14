Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C32B3D6500
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 16:21:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lkqiw6JEiIMGoR6aXD4949g+FMoEE/UZDGkEuGf1xPA=; b=RswOf3+gZeQDbT6rg21mkwygB
	MCu+FeDP3CZxOknla3gcSkGOCswnXzIlpcAVjKkqnkvSooKVISUToT8SjpqcP4v1Bv6TnSSFVIm+R
	BMCtDM0u45fg0yrS8qs2uw90E/T+UaNdsKw2h98Dqn+mUQEcAdEjv2c0be1roVZU1wWaylcyqvLTj
	IXl7H75j3SpzQYLzmju1BUbWdfI/ULxQ0YGOV/WTtdxz9WkckLcwb2FjVBUDn2aRb4mn4WqzDlsZV
	tZNvUXCCHj5k6Jv8H2e6+mwmOI50sQcA3FMYLE0n/z4lKLZf84iNpISYZcXeb5aj7g1H228UtCAw1
	rZicjEOPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK1Dz-0005e8-Of; Mon, 14 Oct 2019 14:21:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK1Dr-0005d7-N5; Mon, 14 Oct 2019 14:21:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2C8E2337;
 Mon, 14 Oct 2019 07:21:17 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0CB573F68E;
 Mon, 14 Oct 2019 07:21:14 -0700 (PDT)
Subject: Re: [PATCH v3 3/7] iommu/mediatek: Use gather to achieve the tlb
 range flush
To: Yong Wu <yong.wu@mediatek.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will.deacon@arm.com>
References: <1571035101-4213-1-git-send-email-yong.wu@mediatek.com>
 <1571035101-4213-4-git-send-email-yong.wu@mediatek.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <f35c8a3a-0693-facf-2050-65d3f7628929@arm.com>
Date: Mon, 14 Oct 2019 15:21:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1571035101-4213-4-git-send-email-yong.wu@mediatek.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_072119_842296_4F6FECBC 
X-CRM114-Status: GOOD (  25.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 srv_heupstream@mediatek.com, chao.hao@mediatek.com, edison.hsieh@mediatek.com,
 linux-kernel@vger.kernel.org, Evan Green <evgreen@chromium.org>,
 Tomasz Figa <tfiga@google.com>, iommu@lists.linux-foundation.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 14/10/2019 07:38, Yong Wu wrote:
> Use the iommu_gather mechanism to achieve the tlb range flush.
> Gather the iova range in the "tlb_add_page", then flush the merged iova
> range in iotlb_sync.
> 
> Note: If iotlb_sync comes from iommu_iotlb_gather_add_page, we have to
> avoid retry the lock since the spinlock have already been acquired.

I think this could probably be even simpler - once the actual 
register-poking is all confined to mtk_iommu_tlb_sync(), you should be 
able get rid of the per-domain locking in map/unmap and just have a 
single per-IOMMU lock to serialise syncs. The io-pgtable code itself 
hasn't needed external locking for a while now.

Robin.

> Suggested-by: Tomasz Figa <tfiga@chromium.org>
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> ---
> 1) This is the special case backtrace:
> 
>   mtk_iommu_iotlb_sync+0x50/0xa0
>   mtk_iommu_tlb_flush_page_nosync+0x5c/0xd0
>   __arm_v7s_unmap+0x174/0x598
>   arm_v7s_unmap+0x30/0x48
>   mtk_iommu_unmap+0x50/0x78
>   __iommu_unmap+0xa4/0xf8
> 
> 2) The checking "if (gather->start == ULONG_MAX) return;" also is
> necessary. It will happened when unmap only go to _flush_walk, then
> enter this tlb_sync.
> ---
>   drivers/iommu/mtk_iommu.c | 29 +++++++++++++++++++++++++----
>   drivers/iommu/mtk_iommu.h |  1 +
>   2 files changed, 26 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
> index 5f594d6..8712afc 100644
> --- a/drivers/iommu/mtk_iommu.c
> +++ b/drivers/iommu/mtk_iommu.c
> @@ -234,7 +234,12 @@ static void mtk_iommu_tlb_flush_page_nosync(struct iommu_iotlb_gather *gather,
>   					    unsigned long iova, size_t granule,
>   					    void *cookie)
>   {
> -	mtk_iommu_tlb_add_flush_nosync(iova, granule, granule, true, cookie);
> +	struct mtk_iommu_data *data = cookie;
> +	struct iommu_domain *domain = &data->m4u_dom->domain;
> +
> +	data->is_in_tlb_gather_add_page = true;
> +	iommu_iotlb_gather_add_page(domain, gather, iova, granule);
> +	data->is_in_tlb_gather_add_page = false;
>   }
>   
>   static const struct iommu_flush_ops mtk_iommu_flush_ops = {
> @@ -453,12 +458,28 @@ static void mtk_iommu_flush_iotlb_all(struct iommu_domain *domain)
>   static void mtk_iommu_iotlb_sync(struct iommu_domain *domain,
>   				 struct iommu_iotlb_gather *gather)
>   {
> +	struct mtk_iommu_data *data = mtk_iommu_get_m4u_data();
>   	struct mtk_iommu_domain *dom = to_mtk_domain(domain);
> +	bool is_in_gather = data->is_in_tlb_gather_add_page;
> +	size_t length = gather->end - gather->start;
>   	unsigned long flags;
>   
> -	spin_lock_irqsave(&dom->pgtlock, flags);
> -	mtk_iommu_tlb_sync(mtk_iommu_get_m4u_data());
> -	spin_unlock_irqrestore(&dom->pgtlock, flags);
> +	if (gather->start == ULONG_MAX)
> +		return;
> +
> +	/*
> +	 * Avoid acquire the lock when it's in gather_add_page since the lock
> +	 * has already been held.
> +	 */
> +	if (!is_in_gather)
> +		spin_lock_irqsave(&dom->pgtlock, flags);
> +
> +	mtk_iommu_tlb_add_flush_nosync(gather->start, length, gather->pgsize,
> +				       false, data);
> +	mtk_iommu_tlb_sync(data);
> +
> +	if (!is_in_gather)
> +		spin_unlock_irqrestore(&dom->pgtlock, flags);
>   }
>   
>   static phys_addr_t mtk_iommu_iova_to_phys(struct iommu_domain *domain,
> diff --git a/drivers/iommu/mtk_iommu.h b/drivers/iommu/mtk_iommu.h
> index fc0f16e..d29af1d 100644
> --- a/drivers/iommu/mtk_iommu.h
> +++ b/drivers/iommu/mtk_iommu.h
> @@ -58,6 +58,7 @@ struct mtk_iommu_data {
>   	struct iommu_group		*m4u_group;
>   	bool                            enable_4GB;
>   	bool				tlb_flush_active;
> +	bool				is_in_tlb_gather_add_page;
>   
>   	struct iommu_device		iommu;
>   	const struct mtk_iommu_plat_data *plat_data;
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
