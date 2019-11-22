Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0F2E107A56
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 23:03:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bkZdFtWGgwkBzKDj0tWpawjAtjgo55rnsFZUS/kXPn8=; b=BjIQBO57pQ2Pd/
	K6HrOmH6PPR3V7ULKuuY565IPNBi3BfdpVvZ5SSxGYmz4uWGfV3tz5IWWUWah07xzoa7nP+JPnMT8
	Io5UEJ3Wj/ET3LKYwfBK7ZrgkYasZLNuhSX+86+lwe8Ldno7Tc5TPll8Am3t1xFQK13+jkd7Fo6br
	nFHZd7iy2ddqx0epwpiQqzTruyf9RC4gJMRLfDqgkyYpoGdq5RcoQrwXuraH6NGKxA6bf3JUN+fI1
	aKiu4O3IvKrSOWfyHENq/vVmzNLiIkpIma6mtevc22UM5Ox4vqyA73s8K0WUdbClJIJp5URcPscCS
	yeOq7kjDYT2MOteRN99g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYH1a-00044V-3s; Fri, 22 Nov 2019 22:03:34 +0000
Received: from a27-55.smtp-out.us-west-2.amazonses.com ([54.240.27.55])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYH1G-000443-RY
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 22:03:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1574460191;
 h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
 bh=qC7xMp4BM4MB08ZmDKowhrKl8rje0tvkPqC4FVJlDfw=;
 b=O839qV/YLzO420xZzppG6F/PdT6wUR1TPr2AL2hMfMlMlEqpr4OgkZIhl8f4Vxa2
 2RVKgZ+XKdgtefvORMtQqSEM0QUp62bV85M6kfJR81S8wdil/SeG/0vyBPzTezFK14r
 C4f58Mt0jHSUF7He6lwhbsP8y3+ZUIgtOVHDw67c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1574460191;
 h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Feedback-ID;
 bh=qC7xMp4BM4MB08ZmDKowhrKl8rje0tvkPqC4FVJlDfw=;
 b=CbH5ddCjqqmNCgrJKeOsf6fK32EgzAcr5ijWWM7nsMwymoINBVOaQyTZy6yqHTis
 91GnjLTmc+C7LkgwZZe3rzdzh9ZDsuXeJFfof2KC8j5qIlx6ZpNelZ+7ycOUNt9gnnz
 joVdb4lkG0YtAOrFJk3myixP/tb/NHj/Vqfbweqc=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org CD5EEC4479F
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=jcrouse@codeaurora.org
Date: Fri, 22 Nov 2019 22:03:11 +0000
From: Jordan Crouse <jcrouse@codeaurora.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v2 10/10] iommu/io-pgtable-arm: Prepare for TTBR1 usage
Message-ID: <0101016e9523f22a-18a4d793-5cc8-4234-850a-ef18694ae500-000000@us-west-2.amazonses.com>
Mail-Followup-To: Robin Murphy <robin.murphy@arm.com>, will@kernel.org,
 iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
References: <cover.1572024119.git.robin.murphy@arm.com>
 <9ec05935de3f1c1da5d1780201147ed40e129295.1572024120.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9ec05935de3f1c1da5d1780201147ed40e129295.1572024120.git.robin.murphy@arm.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-SES-Outgoing: 2019.11.22-54.240.27.55
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_140314_993081_96AA0003 
X-CRM114-Status: GOOD (  20.36  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.55 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: iommu@lists.linux-foundation.org, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 25, 2019 at 07:08:39PM +0100, Robin Murphy wrote:
> Now that we can correctly extract top-level indices without relying on
> the remaining upper bits being zero, the only remaining impediments to
> using a given table for TTBR1 are the address validation on map/unmap
> and the awkward TCR translation granule format. Add a quirk so that we
> can do the right thing at those points.

Tested-by: Jordan Crouse <jcrouse@codeaurora.org>

> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  drivers/iommu/io-pgtable-arm.c | 25 +++++++++++++++++++------
>  include/linux/io-pgtable.h     |  4 ++++
>  2 files changed, 23 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
> index 9b1912ede000..e53edff56e54 100644
> --- a/drivers/iommu/io-pgtable-arm.c
> +++ b/drivers/iommu/io-pgtable-arm.c
> @@ -107,6 +107,10 @@
>  #define ARM_LPAE_TCR_TG0_64K		1
>  #define ARM_LPAE_TCR_TG0_16K		2
>  
> +#define ARM_LPAE_TCR_TG1_16K		1
> +#define ARM_LPAE_TCR_TG1_4K		2
> +#define ARM_LPAE_TCR_TG1_64K		3
> +
>  #define ARM_LPAE_TCR_SH0_SHIFT		12
>  #define ARM_LPAE_TCR_SH_NS		0
>  #define ARM_LPAE_TCR_SH_OS		2
> @@ -466,6 +470,7 @@ static int arm_lpae_map(struct io_pgtable_ops *ops, unsigned long iova,
>  	arm_lpae_iopte *ptep = data->pgd;
>  	int ret, lvl = data->start_level;
>  	arm_lpae_iopte prot;
> +	long iaext = (long)iova >> cfg->ias;
>  
>  	/* If no access, then nothing to do */
>  	if (!(iommu_prot & (IOMMU_READ | IOMMU_WRITE)))
> @@ -474,7 +479,9 @@ static int arm_lpae_map(struct io_pgtable_ops *ops, unsigned long iova,
>  	if (WARN_ON(!size || (size & cfg->pgsize_bitmap) != size))
>  		return -EINVAL;
>  
> -	if (WARN_ON(iova >> data->iop.cfg.ias || paddr >> data->iop.cfg.oas))
> +	if (cfg->quirks & IO_PGTABLE_QUIRK_ARM_TTBR1)
> +		iaext = ~iaext;
> +	if (WARN_ON(iaext || paddr >> cfg->oas))
>  		return -ERANGE;
>  
>  	prot = arm_lpae_prot_to_pte(data, iommu_prot);
> @@ -640,11 +647,14 @@ static size_t arm_lpae_unmap(struct io_pgtable_ops *ops, unsigned long iova,
>  	struct arm_lpae_io_pgtable *data = io_pgtable_ops_to_data(ops);
>  	struct io_pgtable_cfg *cfg = &data->iop.cfg;
>  	arm_lpae_iopte *ptep = data->pgd;
> +	long iaext = (long)iova >> cfg->ias;
>  
>  	if (WARN_ON(!size || (size & cfg->pgsize_bitmap) != size))
>  		return 0;
>  
> -	if (WARN_ON(iova >> data->iop.cfg.ias))
> +	if (cfg->quirks & IO_PGTABLE_QUIRK_ARM_TTBR1)
> +		iaext = ~iaext;
> +	if (WARN_ON(iaext))
>  		return 0;
>  
>  	return __arm_lpae_unmap(data, gather, iova, size, data->start_level, ptep);
> @@ -780,9 +790,11 @@ arm_64_lpae_alloc_pgtable_s1(struct io_pgtable_cfg *cfg, void *cookie)
>  	u64 reg;
>  	struct arm_lpae_io_pgtable *data;
>  	typeof(&cfg->arm_lpae_s1_cfg.tcr) tcr = &cfg->arm_lpae_s1_cfg.tcr;
> +	bool tg1;
>  
>  	if (cfg->quirks & ~(IO_PGTABLE_QUIRK_ARM_NS |
> -			    IO_PGTABLE_QUIRK_NON_STRICT))
> +			    IO_PGTABLE_QUIRK_NON_STRICT |
> +			    IO_PGTABLE_QUIRK_ARM_TTBR1))
>  		return NULL;
>  
>  	data = arm_lpae_alloc_pgtable(cfg);
> @@ -800,15 +812,16 @@ arm_64_lpae_alloc_pgtable_s1(struct io_pgtable_cfg *cfg, void *cookie)
>  		tcr->orgn = ARM_LPAE_TCR_RGN_NC;
>  	}
>  
> +	tg1 = cfg->quirks & IO_PGTABLE_QUIRK_ARM_TTBR1;
>  	switch (ARM_LPAE_GRANULE(data)) {
>  	case SZ_4K:
> -		tcr->tg = ARM_LPAE_TCR_TG0_4K;
> +		tcr->tg = tg1 ? ARM_LPAE_TCR_TG1_4K : ARM_LPAE_TCR_TG0_4K;
>  		break;
>  	case SZ_16K:
> -		tcr->tg = ARM_LPAE_TCR_TG0_16K;
> +		tcr->tg = tg1 ? ARM_LPAE_TCR_TG1_16K : ARM_LPAE_TCR_TG0_16K;
>  		break;
>  	case SZ_64K:
> -		tcr->tg = ARM_LPAE_TCR_TG0_64K;
> +		tcr->tg = tg1 ? ARM_LPAE_TCR_TG1_64K : ARM_LPAE_TCR_TG0_64K;
>  		break;
>  	}
>  
> diff --git a/include/linux/io-pgtable.h b/include/linux/io-pgtable.h
> index 6ae104cedfd7..d7c5cb685e50 100644
> --- a/include/linux/io-pgtable.h
> +++ b/include/linux/io-pgtable.h
> @@ -83,12 +83,16 @@ struct io_pgtable_cfg {
>  	 * IO_PGTABLE_QUIRK_NON_STRICT: Skip issuing synchronous leaf TLBIs
>  	 *	on unmap, for DMA domains using the flush queue mechanism for
>  	 *	delayed invalidation.
> +	 *
> +	 * IO_PGTABLE_QUIRK_ARM_TTBR1: (ARM LPAE format) Configure the table
> +	 *	for use in the upper half of a split address space.
>  	 */
>  	#define IO_PGTABLE_QUIRK_ARM_NS		BIT(0)
>  	#define IO_PGTABLE_QUIRK_NO_PERMS	BIT(1)
>  	#define IO_PGTABLE_QUIRK_TLBI_ON_MAP	BIT(2)
>  	#define IO_PGTABLE_QUIRK_ARM_MTK_EXT	BIT(3)
>  	#define IO_PGTABLE_QUIRK_NON_STRICT	BIT(4)
> +	#define IO_PGTABLE_QUIRK_ARM_TTBR1	BIT(5)
>  	unsigned long			quirks;
>  	unsigned long			pgsize_bitmap;
>  	unsigned int			ias;
> -- 
> 2.21.0.dirty
> 

-- 
The Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
