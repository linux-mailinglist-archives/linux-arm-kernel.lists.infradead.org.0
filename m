Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E3095702E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 20:00:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8mOPpWikNZlKZ1ojLl4kOrvViWZs8y9TwfN9XmWEZVg=; b=a4Jp37lo4DaAs9
	wMvWaBKuUO39OIEqDe8nKJYqOg5YXyH0x7RY3UYIaS3nrtaaAnS0wgh1V9aBE8MoFkRzquU/vpMyz
	CTecTPJtcQ4385bAAr4YBnpXqdPCkUnDQwYXo7dAx2+ic11hJRKE9ZT2jm6LqbFyzI5aGBrVYc8EX
	QwE0hR2iakLVE8dBqZbvAN4uKFipy0UqwLDgEKOiGa8NJkMwj9t6Q52nfosZXgjXomLv+ji/rPP2+
	tk3b3TfMF0xHCsdQrNzFI5CdEwBXUAArdo+vNJPAdVvtW7P/JEG8gP3Q4AVyjhuY9aL78zHs//AE8
	XYvw2u2gylkq5iScNJlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgCDZ-0000Lv-9K; Wed, 26 Jun 2019 18:00:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgCDF-0008Jr-B3
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 18:00:06 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F23AF208E3;
 Wed, 26 Jun 2019 18:00:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561572005;
 bh=Yw+WNhu2uTH/tNxCYEnMhsKWbJMHkoSnvT9yxad1CYc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KBxCyhHD2cBAcSN2qEvsVo8wqPUOEcC/iX1A4kip5UJ/ExQik0trzTbSNlmE5QGfS
 ER9ioo+a/BMpevKUIClKM4Z178VZbr2b4CIJmITUu93R/WpWzbAKGvhHpk3p+6yidG
 jAx3yTXQMazq94naq2uX+Ea4dO32EIGsaHVXDOxQ=
Date: Wed, 26 Jun 2019 18:59:59 +0100
From: Will Deacon <will@kernel.org>
To: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
Subject: Re: [PATCH 6/8] iommu/arm-smmu-v3: Support auxiliary domains
Message-ID: <20190626175959.ubxvb2qn4taclact@willie-the-truck>
References: <20190610184714.6786-1-jean-philippe.brucker@arm.com>
 <20190610184714.6786-7-jean-philippe.brucker@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190610184714.6786-7-jean-philippe.brucker@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_110005_427877_7F2D3291 
X-CRM114-Status: GOOD (  26.28  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 jacob.jun.pan@linux.intel.com, joro@8bytes.org, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, eric.auger@redhat.com,
 iommu@lists.linux-foundation.org, robh+dt@kernel.org, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jean-Philippe,

On Mon, Jun 10, 2019 at 07:47:12PM +0100, Jean-Philippe Brucker wrote:
> In commit a3a195929d40 ("iommu: Add APIs for multiple domains per
> device"), the IOMMU API gained the concept of auxiliary domains (AUXD),
> which allows to control the PASID-tagged address spaces of a device. With
> AUXD the PASID address space are not shared with the CPU, but are instead
> modified with iommu_map() and iommu_unmap() calls on auxiliary domains.
> 
> Add auxiliary domain support to the SMMUv3 driver. Device drivers allocate
> an unmanaged IOMMU domain with iommu_domain_alloc(), and attach it to the
> device with iommu_aux_attach_domain().

[...]

> 
> The AUXD API is fairly permissive, and allows to attach an IOMMU domain in
> both normal and auxiliary mode at the same time - one device can be
> attached to the domain normally, and another device can be attached
> through one of its PASIDs. To avoid excessive complexity in the SMMU
> implementation we pose some restrictions on supported AUXD usage:
> 
> * A domain is either in auxiliary mode or normal mode. And that state is
>   sticky. Once detached the domain has to be re-attached in the same mode.
> 
> * An auxiliary domain can have a single parent domain. Two devices can be
>   attached to the same auxiliary domain only if they are attached to the
>   same parent domain.
> 
> In practice these shouldn't be problematic, since we have the same kind of
> restriction on normal domains and users have been able to cope so far: at
> the moment a domain cannot be attached to two devices behind different
> SMMUs. When VFIO puts two such devices in the same container, it simply
> falls back to allocating two separate IOMMU domains.
> 
> Signed-off-by: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
> ---
>  drivers/iommu/Kconfig       |   1 +
>  drivers/iommu/arm-smmu-v3.c | 276 +++++++++++++++++++++++++++++++++---
>  2 files changed, 260 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/iommu/Kconfig b/drivers/iommu/Kconfig
> index 9b45f70549a7..d326fef3d3a6 100644
> --- a/drivers/iommu/Kconfig
> +++ b/drivers/iommu/Kconfig
> @@ -393,6 +393,7 @@ config ARM_SMMU_DISABLE_BYPASS_BY_DEFAULT
>  config ARM_SMMU_V3
>  	bool "ARM Ltd. System MMU Version 3 (SMMUv3) Support"
>  	depends on ARM64
> +	select IOASID
>  	select IOMMU_API
>  	select IOMMU_IO_PGTABLE_LPAE
>  	select GENERIC_MSI_IRQ_DOMAIN
> diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> index 326b71793336..633d829f246f 100644
> --- a/drivers/iommu/arm-smmu-v3.c
> +++ b/drivers/iommu/arm-smmu-v3.c
> @@ -19,6 +19,7 @@
>  #include <linux/err.h>
>  #include <linux/interrupt.h>
>  #include <linux/io-pgtable.h>
> +#include <linux/ioasid.h>
>  #include <linux/iommu.h>
>  #include <linux/iopoll.h>
>  #include <linux/init.h>
> @@ -641,6 +642,7 @@ struct arm_smmu_master {
>  	unsigned int			num_sids;
>  	unsigned int			ssid_bits;
>  	bool				ats_enabled		:1;
> +	bool				auxd_enabled		:1;
>  };
>  
>  /* SMMU private data for an IOMMU domain */
> @@ -666,8 +668,14 @@ struct arm_smmu_domain {
>  
>  	struct iommu_domain		domain;
>  
> +	/* Unused in aux domains */
>  	struct list_head		devices;
>  	spinlock_t			devices_lock;
> +
> +	/* Auxiliary domain stuff */
> +	struct arm_smmu_domain		*parent;
> +	ioasid_t			ssid;
> +	unsigned long			aux_nr_devs;

Maybe use a union to avoid comments about what is used/unused?

> +static void arm_smmu_aux_detach_dev(struct iommu_domain *domain, struct device *dev)
> +{
> +	struct iommu_domain *parent_domain;
> +	struct arm_smmu_domain *parent_smmu_domain;
> +	struct arm_smmu_master *master = dev_to_master(dev);
> +	struct arm_smmu_domain *smmu_domain = to_smmu_domain(domain);
> +
> +	if (!arm_smmu_dev_feature_enabled(dev, IOMMU_DEV_FEAT_AUX))
> +		return;
> +
> +	parent_domain = iommu_get_domain_for_dev(dev);
> +	if (!parent_domain)
> +		return;
> +	parent_smmu_domain = to_smmu_domain(parent_domain);
> +
> +	mutex_lock(&smmu_domain->init_mutex);
> +	if (!smmu_domain->aux_nr_devs)
> +		goto out_unlock;
> +
> +	if (!--smmu_domain->aux_nr_devs) {
> +		arm_smmu_write_ctx_desc(parent_smmu_domain, smmu_domain->ssid,
> +					NULL);
> +		/*
> +		 * TLB doesn't need invalidation since accesses from the device
> +		 * can't use this domain's ASID once the CD is clear.
> +		 *
> +		 * Sadly that doesn't apply to ATCs, which are PASID tagged.
> +		 * Invalidate all other devices as well, because even though
> +		 * they weren't 'officially' attached to the auxiliary domain,
> +		 * they could have formed ATC entries.
> +		 */
> +		arm_smmu_atc_inv_domain(smmu_domain, 0, 0);

I've been struggling to understand the locking here, since both
arm_smmu_write_ctx_desc and arm_smmu_atc_inv_domain take and release the
devices_lock for the domain. Is there not a problem with devices coming and
going in-between the two calls?

> +	} else {
> +		struct arm_smmu_cmdq_ent cmd;
> +
> +		/* Invalidate only this device's ATC */
> +		if (master->ats_enabled) {
> +			arm_smmu_atc_inv_to_cmd(smmu_domain->ssid, 0, 0, &cmd);
> +			arm_smmu_atc_inv_master(master, &cmd);
> +		}
> +	}
> +out_unlock:
> +	mutex_unlock(&smmu_domain->init_mutex);
> +}
> +
> +static int arm_smmu_aux_get_pasid(struct iommu_domain *domain, struct device *dev)
> +{
> +	struct arm_smmu_domain *smmu_domain = to_smmu_domain(domain);
> +
> +	return smmu_domain->ssid ?: -EINVAL;
> +}
> +
>  static struct iommu_ops arm_smmu_ops = {
>  	.capable		= arm_smmu_capable,
>  	.domain_alloc		= arm_smmu_domain_alloc,
> @@ -2539,6 +2772,13 @@ static struct iommu_ops arm_smmu_ops = {
>  	.of_xlate		= arm_smmu_of_xlate,
>  	.get_resv_regions	= arm_smmu_get_resv_regions,
>  	.put_resv_regions	= arm_smmu_put_resv_regions,
> +	.dev_has_feat		= arm_smmu_dev_has_feature,
> +	.dev_feat_enabled	= arm_smmu_dev_feature_enabled,
> +	.dev_enable_feat	= arm_smmu_dev_enable_feature,
> +	.dev_disable_feat	= arm_smmu_dev_disable_feature,

Why can't we use the existing ->capable and ->dev_{get,set}_attr callbacks
for this?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
