Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F76F1D0B6A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 11:03:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o9cypj5aWzb1DCgRr6+NHHCgJFaBMY7yE+283wcVNxA=; b=lepQcfqtdk13+l
	vvr3NNUYPFCSDULeJ/o5gWkY4TTR3p8SYcWw0gaJIVqEiWp7lguVHF5TasHB614VHmfDHXST3cXFf
	TQl4RxY+4eVHafM9DrwB/E2+GE90c/mYwyI20jJyMccFYIIl0z1V9sSRfimJYUd0Mgg1jWmoglZ+w
	FjJ0uYAU+ZMwa+6+DvQRNBB9821unOAISbrSfyKpRO4u/HcI/y73cp+bTbTLfmGFFuMPKutarCzIW
	/FRvrXCTM5drjMnt3E6kmHmBNUBVD2C2/iD04E+c+n52wGbMShMrWNth/2K7/0QzzxhjzZAzah7rk
	Mlcku/uVl94oGjbx9jzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYnIk-0004eV-OY; Wed, 13 May 2020 09:03:42 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYnIa-0004dE-Hc
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 09:03:34 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 63BBB46A; Wed, 13 May 2020 11:03:22 +0200 (CEST)
Date: Wed, 13 May 2020 11:03:21 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [PATCH v4 03/38] iommu: add generic helper for mapping sgtable
 objects
Message-ID: <20200513090320.GH9820@8bytes.org>
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090108eucas1p2168167ab5e1de09df0d5def83f64dbfe@eucas1p2.samsung.com>
 <20200512090058.14910-3-m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200512090058.14910-3-m.szyprowski@samsung.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_020332_732661_CC6F774E 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [81.169.241.247 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 iommu@lists.linux-foundation.org, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marek,

On Tue, May 12, 2020 at 11:00:23AM +0200, Marek Szyprowski wrote:
> ---
>  include/linux/iommu.h | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)

Some nits below, with those fixed:

	Acked-by: Joerg Roedel <jroedel@suse.de>

> diff --git a/include/linux/iommu.h b/include/linux/iommu.h
> index 7cfd2dd..ba662ba 100644
> --- a/include/linux/iommu.h
> +++ b/include/linux/iommu.h
> @@ -478,6 +478,22 @@ extern size_t iommu_map_sg_atomic(struct iommu_domain *domain,
>  extern void iommu_set_fault_handler(struct iommu_domain *domain,
>  			iommu_fault_handler_t handler, void *token);
>  
> +/**
> + * iommu_map_sgtable - Map the given buffer to the IOMMU domain
> + * @domain:	The IOMMU domain to perfor
                                    ^^^^^^ Truncated comment?
> + * @iova:	The start addrees to map the buffer
                          ^^^^^^^ Typo

> + * @sgt:	The sg_table object describing the buffer
> + * @prot:	IOMMU protection bits
> + *
> + * Create a mapping at @iova for the buffer described by a scatterlist
> + * stored in the given sg_table object in the provided IOMMU domain.
> + */
> +static inline size_t iommu_map_sgtable(struct iommu_domain *domain,
> +			unsigned long iova, struct sg_table *sgt, int prot)
> +{
> +	return iommu_map_sg(domain, iova, sgt->sgl, sgt->orig_nents, prot);
> +}
> +
>  extern void iommu_get_resv_regions(struct device *dev, struct list_head *list);
>  extern void iommu_put_resv_regions(struct device *dev, struct list_head *list);
>  extern void generic_iommu_put_resv_regions(struct device *dev,
> -- 
> 1.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
