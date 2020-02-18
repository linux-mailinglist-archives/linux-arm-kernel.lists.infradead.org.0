Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B04EF162D2A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 18:41:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=twj5lqWKh5/QC8IC7gulpqx4fRU9khW2Yajng6XDH7A=; b=F4KMoM5+vIJwHe8U3VKHSwvqw
	2ULqUbnaYFq2eOQCvgDGLz4wX/zZ+jEK5ZFsXDOupVzytd/N74VnjRo0aSzszHjdOeMrojhHCyDQ3
	nahZ38S6v1+E+C6quqeP27AeiHPqjYgH/ZJzjea9iDfTHnAnN+i6qwghoCYv8Sen828Tg6OHsiP78
	ky3U6MRMIVvvOSZlxvJmAQZqJJtYIH4axeULMvEP9mAgPzvLwNQOQFKQBC5Ru27JG5Hm+sLP3jgtg
	0CeuZmD6Wa1FA26FT+aDH/hld8t3RMoQvnAYJCgkpraIQvy35ptKrtxc4M+EpP7OsEQeaA9i5CafU
	6M2TXIDMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j46rd-0001B6-QM; Tue, 18 Feb 2020 17:40:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j46rT-0001Ad-F1
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 17:40:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4172731B;
 Tue, 18 Feb 2020 09:40:42 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 488A13F703;
 Tue, 18 Feb 2020 09:40:41 -0800 (PST)
Subject: Re: [PATCH] iommu/arm-smmu: Restore naming of driver parameter prefix
To: Will Deacon <will@kernel.org>, joro@8bytes.org
References: <20200218172756.2131-1-will@kernel.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <90975c71-9089-b857-6b22-804415e4d5cb@arm.com>
Date: Tue, 18 Feb 2020 17:40:39 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200218172756.2131-1-will@kernel.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_094043_546207_AA564FA8 
X-CRM114-Status: GOOD (  21.35  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: iommu@lists.linux-foundation.org, kernel-team@android.com,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 Li Yang <leoyang.li@nxp.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18/02/2020 5:27 pm, Will Deacon wrote:
> Extending the Arm SMMU driver to allow for modular builds changed
> KBUILD_MODNAME to be "arm_smmu_mod" so that a single module could be
> built from the multiple existing object files without the need to rename
> any source files.
> 
> This inadvertently changed the name of the driver parameters, which may
> lead to runtime issues if bootloaders are relying on the old names for
> correctness (e.g. "arm-smmu.disable_bypass=0").

Indeed, it turns out this also tripped up some Juno setups in our 
internal CI that were bodging around firmware issues.

> Although MODULE_PARAM_PREFIX can be overridden to restore the old naming
> for builtin parameters, only the new name is matched by modprobe and so
> loading the driver as a module would cause parameters specified on the
> kernel command line to be ignored. Instead, rename "arm_smmu_mod" to
> "arm_smmu". Whilst it's a bit of a bodge, this allows us to create a
> single module without renaming any files and makes use of the fact that
> underscores and hyphens can be used interchangeably in parameter names.

That's awful... and thus great :)

Reviewed-by: Robin Murphy <robin.murphy@arm.com>

> Cc: Robin Murphy <robin.murphy@arm.com>
> Cc: Russell King <linux@armlinux.org.uk>
> Reported-by: Li Yang <leoyang.li@nxp.com>
> Fixes: cd221bd24ff5 ("iommu/arm-smmu: Allow building as a module")
> Signed-off-by: Will Deacon <will@kernel.org>
> ---
>   drivers/iommu/Makefile | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/iommu/Makefile b/drivers/iommu/Makefile
> index 2104fb8afc06..9f33fdb3bb05 100644
> --- a/drivers/iommu/Makefile
> +++ b/drivers/iommu/Makefile
> @@ -14,8 +14,8 @@ obj-$(CONFIG_MSM_IOMMU) += msm_iommu.o
>   obj-$(CONFIG_AMD_IOMMU) += amd_iommu.o amd_iommu_init.o amd_iommu_quirks.o
>   obj-$(CONFIG_AMD_IOMMU_DEBUGFS) += amd_iommu_debugfs.o
>   obj-$(CONFIG_AMD_IOMMU_V2) += amd_iommu_v2.o
> -obj-$(CONFIG_ARM_SMMU) += arm-smmu-mod.o
> -arm-smmu-mod-objs += arm-smmu.o arm-smmu-impl.o arm-smmu-qcom.o
> +obj-$(CONFIG_ARM_SMMU) += arm_smmu.o
> +arm_smmu-objs += arm-smmu.o arm-smmu-impl.o arm-smmu-qcom.o
>   obj-$(CONFIG_ARM_SMMU_V3) += arm-smmu-v3.o
>   obj-$(CONFIG_DMAR_TABLE) += dmar.o
>   obj-$(CONFIG_INTEL_IOMMU) += intel-iommu.o intel-pasid.o
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
