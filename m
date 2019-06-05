Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68DF7354CF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 02:48:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pBui0NIR0/Isc5w2FkCuj+dF4HeCWyBe9RHDRyIPbc0=; b=AUePR68wytVhKv
	VWu5e9LhvDVcN693bo0QjZPAyjPXJPB1181CYAt69Y0xnN4Qra55L6oX6LPOe5KpsYiWycm8v/odr
	SbnjIGf6OLMQ/YKsQncwN08iDi1takjTIEL8VqPO9dC8iN+4jzUt7HZueZMPCs02kUgoDgMyzhz1K
	QgD52YXZyjgIf+meit1l+fvXKQTyKDYWNlkn77ycc32lFgsRxxo8GvGmU47NsNgcKieq7NtkSR4o9
	Lw9ftvREsrV1a9cVCV8aTRiUKdzdrlpuhMtjr7c9WjM2Ifx5j+8BgwmDhPzxwWylLdadtYBRq3XeA
	iQBAaQXVS7RubgG0f0pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYK6E-0004tv-DM; Wed, 05 Jun 2019 00:48:18 +0000
Received: from mail7-215.sinamail.sina.com.cn ([202.108.7.215])
 by bombadil.infradead.org with smtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYK67-0004rU-ST
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 00:48:14 +0000
Received: from unknown (HELO localhost.localdomain)([123.112.52.63])
 by sina.com with ESMTP
 id 5CF7111B00004B92; Wed, 5 Jun 2019 08:47:25 +0800 (CST)
X-Sender: hdanton@sina.com
X-Auth-ID: hdanton@sina.com
X-SMAIL-MID: 970774395166
From: Hillf Danton <hdanton@sina.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 07/26] iommu/dma: move the arm64 wrappers to common code
Date: Wed,  5 Jun 2019 08:47:17 +0800
Message-Id: <20190422175942.18788-8-hch@lst.de>
In-Reply-To: <20190422175942.18788-1-hch@lst.de>
References: <20190422175942.18788-1-hch@lst.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Precedence: bulk
X-Mailing-List: linux-kernel@vger.kernel.org
Archived-At: <https://lore.kernel.org/lkml/20190422175942.18788-8-hch@lst.de/>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_174812_103363_EACF161F 
X-CRM114-Status: GOOD (  15.10  )
X-Spam-Score: -1.7 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [202.108.7.215 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hdanton[at]sina.com)
 -1.0 MAILING_LIST_MULTI     Multiple indicators imply a widely-seen list
 manager
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Tom Lendacky <thomas.lendacky@amd.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hi Christoph

On Mon, 22 Apr 2019 19:59:23 +0200 Christoph Hellwig wrote:
> @@ -744,18 +816,22 @@ static void __invalidate_sg(struct scatterlist *sg, int nents)
>   * impedance-matching, to be able to hand off a suitably-aligned list,
>   * but still preserve the original offsets and sizes for the caller.
>   */
> -int iommu_dma_map_sg(struct device *dev, struct scatterlist *sg,
> -		int nents, int prot)
> +static int iommu_dma_map_sg(struct device *dev, struct scatterlist *sg,
> +		int nents, enum dma_data_direction dir, unsigned long attrs)
>  {
>  	struct iommu_domain *domain = iommu_get_dma_domain(dev);
>  	struct iommu_dma_cookie *cookie = domain->iova_cookie;
>  	struct iova_domain *iovad = &cookie->iovad;
>  	struct scatterlist *s, *prev = NULL;
> +	int prot = dma_info_to_prot(dir, dev_is_dma_coherent(dev), attrs);
>  	dma_addr_t iova;
>  	size_t iova_len = 0;
>  	unsigned long mask = dma_get_seg_boundary(dev);
>  	int i;
>  
> +	if (!(attrs & DMA_ATTR_SKIP_CPU_SYNC))
> +		iommu_dma_sync_sg_for_device(dev, sg, nents, dir);
> +
>  	/*
>  	 * Work out how much IOVA space we need, and align the segments to
>  	 * IOVA granules for the IOMMU driver to handle. With some clever
> @@ -815,12 +891,16 @@ int iommu_dma_map_sg(struct device *dev, struct scatterlist *sg,
>  	return 0;
>  }
>  
> -void iommu_dma_unmap_sg(struct device *dev, struct scatterlist *sg, int nents,
> -		enum dma_data_direction dir, unsigned long attrs)
> +static void iommu_dma_unmap_sg(struct device *dev, struct scatterlist *sg,
> +		int nents, enum dma_data_direction dir, unsigned long attrs)
>  {
>  	dma_addr_t start, end;
>  	struct scatterlist *tmp;
>  	int i;
> +
> +	if (!(attrs & DMA_ATTR_SKIP_CPU_SYNC) == 0)
> +		iommu_dma_sync_sg_for_cpu(dev, sg, nents, dir);
> +
Is it a typo?

>  	/*
>  	 * The scatterlist segments are mapped into a single
>  	 * contiguous IOVA allocation, so this is incredibly easy.
[...]
> +
> +/*
> + * The IOMMU core code allocates the default DMA domain, which the underlying
> + * IOMMU driver needs to support via the dma-iommu layer.
> + */
Over comment.

> +void iommu_setup_dma_ops(struct device *dev, u64 dma_base, u64 size)
> +{
> +	struct iommu_domain *domain = iommu_get_domain_for_dev(dev);
> +
> +	if (!domain)
> +		goto out_err;
> +
> +	/*
> +	 * The IOMMU core code allocates the default DMA domain, which the
> +	 * underlying IOMMU driver needs to support via the dma-iommu layer.
> +	 */
> +	if (domain->type == IOMMU_DOMAIN_DMA) {
> +		if (iommu_dma_init_domain(domain, dma_base, size, dev))
> +			goto out_err;
> +		dev->dma_ops = &iommu_dma_ops;
> +	}
> +
> +	return;
> +out_err:
> +	 pr_warn("Failed to set up IOMMU for device %s; retaining platform DMA ops\n",
> +		 dev_name(dev));
> +}
> +

BR
Hillf


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
