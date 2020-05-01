Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62FDC1C11EF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 14:16:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AKd0/b9t5KCjRY52oYR+kvGesGnnQM6Lt7/7+W2xpZY=; b=jXbxmFOH+NIsIH
	phJcpMDX2t0S2YNcqmTw0+ECUG8HphVobIg0AFwIYpLhrW9v4dYDbtt295Ui8GoymRqH5B6+zVRCA
	alAgoDg7wzWTP5vfXRHneMCspUYl2xX/5EtXG4wf54JV5PXmtR6RNSJErO6wGf+L8q5fQVx1JkSN+
	dIJNqjIospZQYSKOXHf37j4Nay/X9Z9pO6eNA2Y9io7Fga0t2F8XGswOkjHpOd1dNsJiZ3cd1b/4Q
	o42krwrSnMYhGy/aqPd6ZexNA75nn+epL0CZ3CqpNTkSyxkJsB1/ViToqTrTfPRX4Q2uG3xepLN0u
	kTJscj1xjnKvCrf2Y7pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUUaF-0005Uc-Gb; Fri, 01 May 2020 12:15:59 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jUUa8-0005TY-RH; Fri, 01 May 2020 12:15:52 +0000
Date: Fri, 1 May 2020 05:15:52 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v6 17/25] iommu/arm-smmu-v3: Implement
 iommu_sva_bind/unbind()
Message-ID: <20200501121552.GA6012@infradead.org>
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
 <20200430143424.2787566-18-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430143424.2787566-18-jean-philippe@linaro.org>
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
Cc: devicetree@vger.kernel.org, kevin.tian@intel.com, will@kernel.org,
 fenghua.yu@intel.com, jgg@ziepe.ca, linux-pci@vger.kernel.org,
 felix.kuehling@amd.com, hch@infradead.org, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org, catalin.marinas@arm.com,
 zhangfei.gao@linaro.org, robin.murphy@arm.com, christian.koenig@amd.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> @@ -432,6 +432,7 @@ config ARM_SMMU_V3
>  	tristate "ARM Ltd. System MMU Version 3 (SMMUv3) Support"
>  	depends on ARM64
>  	select IOMMU_API
> +	select IOMMU_SVA
>  	select IOMMU_IO_PGTABLE_LPAE
>  	select GENERIC_MSI_IRQ_DOMAIN

Doesn't this need to select MMU_NOTIFIER now?

> +	struct mmu_notifier_ops		mn_ops;

Note: not a pointer.

> +	/* If bind() was already called for this (dev, mm) pair, reuse it. */
> +	list_for_each_entry(bond, &master->bonds, list) {
> +		if (bond->mm == mm) {
> +			refcount_inc(&bond->refs);
> +			return &bond->sva;
> +		}
> +	}
> +
> +	mn = mmu_notifier_get(&smmu_domain->mn_ops, mm);
> +	if (IS_ERR(mn))
> +		return ERR_CAST(mn);

Which seems to be to avoid mmu_notifier_get reusing notifiers registered
by other arm_smmu_master instance right?

Either you could just use plain old mmu_notifier_register to avoid
the reuse.  Or we could enhance the mmu_notifier_get to pass a private
oaque instance ID pointer, which is checked in addition to the ops,
and you could probably kill off the bonds list and lookup.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
