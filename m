Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 612FE1C08F2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 23:14:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W0tWyZdVsf/k9bu0bLneWbM6LD+czJFJsoItnqDjndQ=; b=CsnNO+H1GFNTmX
	zGjXPgYoJXosqn9gdqpW6ADUFDIijICGlSwaSOLdrWDDac5PoKz1Vnz9ig4usx8LU30l9JlZPcnkB
	wL0fK4aijety/dnUcdwL5HCFgpS0i5/TWFSdYFqUZ8L08qrF/+B6e6ASrW+jk125q5OmbHR9zIGvg
	y193Pac+B+Eq1Lu/XWvLRww4hCrLvWKph/GtnDIr2gl89O4A4pHkqhT3mBoGuufwc2+meAupIjt+R
	TBN41TaiyTEeJEqIBM6P25vjRRf1l7CvbHZxV+Ty55FEdaXDGvW6FQiGu8rWDM97dEFt3mQa1d3RR
	dEwSHgpXPIxyLqXnakSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUGVe-0006KS-50; Thu, 30 Apr 2020 21:14:18 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUGTf-0004sy-RL
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 21:12:18 +0000
IronPort-SDR: GD+T4JA1Rzxxt2/Re5h2Tw6oDBJk8zw/PUXiFq+V0EUaSrmXHq2ypb8kpZg9qSDwK0Caq8EFf8
 zWg04oGaWCBw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 14:12:13 -0700
IronPort-SDR: LVHsRMgJ7GdSWX064ocXY72QKgePGf1G+/dA+XVa/E+wyPTuvCryaG2DXe8fDKuW9WtKlwUhjb
 MeYme43Pk+/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,337,1583222400"; d="scan'208";a="460080601"
Received: from jacob-builder.jf.intel.com (HELO jacob-builder) ([10.7.199.155])
 by fmsmga006.fm.intel.com with ESMTP; 30 Apr 2020 14:12:13 -0700
Date: Thu, 30 Apr 2020 14:18:16 -0700
From: Jacob Pan <jacob.jun.pan@linux.intel.com>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v6 00/25] iommu: Shared Virtual Addressing for SMMUv3
Message-ID: <20200430141816.595b758f@jacob-builder>
In-Reply-To: <20200430143424.2787566-1-jean-philippe@linaro.org>
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
Organization: OTC
X-Mailer: Claws Mail 3.13.2 (GTK+ 2.24.30; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_141216_232073_240AD9D8 
X-CRM114-Status: GOOD (  19.39  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, kevin.tian@intel.com,
 jacob.jun.pan@linux.intel.com, jgg@ziepe.ca, linux-pci@vger.kernel.org,
 joro@8bytes.org, Jonathan.Cameron@huawei.com, robin.murphy@arm.com,
 fenghua.yu@intel.com, hch@infradead.org, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org, zhangfei.gao@linaro.org, "Liu,
 Yi L" <yi.l.liu@intel.com>, catalin.marinas@arm.com, felix.kuehling@amd.com,
 xuzaibo@huawei.com, will@kernel.org, christian.koenig@amd.com,
 linux-arm-kernel@lists.infradead.org, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 30 Apr 2020 16:33:59 +0200
Jean-Philippe Brucker <jean-philippe@linaro.org> wrote:

> Shared Virtual Addressing (SVA) allows to share process page tables
> with devices using the IOMMU, PASIDs and I/O page faults. Add SVA
> support to the Arm SMMUv3 driver.
> 
> Since v5 [1]:
> 
> * Added patches 1-3. Patch 1 adds a PASID field to mm_struct as
>   discussed in [1] and [2]. This is also needed for Intel ENQCMD.
> Patch 2 adds refcounts to IOASID and patch 3 adds a couple of helpers
> to allocate the PASID.
> 
> * Dropped most of iommu-sva.c. After getting rid of io_mm following
>   review of v5, there wasn't enough generic code left to justify the
>   indirect branch overhead of io_mm_ops in the MMU notifiers. I ended
> up with more glue than useful code, and couldn't find an easy way to
> deal with domains in the SMMU driver (we keep PASID tables per domain,
>   while x86 keeps them per device). The direct approach in patch 17 is
>   nicer and a little easier to read. The SMMU driver only gained 160
>   lines, while iommu-sva lost 470 lines.
> 
>   As a result I dropped the MMU notifier patch.
> 
>   Jacob, one upside of this rework is that we now free ioasids in
>   blocking context, which might help with your addition of notifiers
> to ioasid.c
> 
Thanks for the note. It does make notifier much easier, plus the
refcount can alleviate the constraint on ordering.

I guess we don't share mmu notifier code for now :)

> * Simplified io-pgfault a bit, since flush() isn't called from mm exit
>   path anymore.
> 
> * Fixed a bug in patch 17 (don't clear the stall bit when stall is
>   forced).
> 
> You can find the latest version on https://jpbrucker.net/git/linux
> branch sva/current, and sva/zip-devel for the Hisilicon zip
> accelerator.
> 
> [1]
> https://lore.kernel.org/linux-iommu/20200414170252.714402-1-jean-philippe@linaro.org/
> [2]
> https://lore.kernel.org/linux-iommu/1585596788-193989-6-git-send-email-fenghua.yu@intel.com/
> 
> Jean-Philippe Brucker (25):
>   mm: Add a PASID field to mm_struct
>   iommu/ioasid: Add ioasid references
>   iommu/sva: Add PASID helpers
>   iommu: Add a page fault handler
>   iommu/iopf: Handle mm faults
>   arm64: mm: Add asid_gen_match() helper
>   arm64: mm: Pin down ASIDs for sharing mm with devices
>   iommu/io-pgtable-arm: Move some definitions to a header
>   iommu/arm-smmu-v3: Manage ASIDs with xarray
>   arm64: cpufeature: Export symbol read_sanitised_ftr_reg()
>   iommu/arm-smmu-v3: Share process page tables
>   iommu/arm-smmu-v3: Seize private ASID
>   iommu/arm-smmu-v3: Add support for VHE
>   iommu/arm-smmu-v3: Enable broadcast TLB maintenance
>   iommu/arm-smmu-v3: Add SVA feature checking
>   iommu/arm-smmu-v3: Add SVA device feature
>   iommu/arm-smmu-v3: Implement iommu_sva_bind/unbind()
>   iommu/arm-smmu-v3: Hook up ATC invalidation to mm ops
>   iommu/arm-smmu-v3: Add support for Hardware Translation Table Update
>   iommu/arm-smmu-v3: Maintain a SID->device structure
>   dt-bindings: document stall property for IOMMU masters
>   iommu/arm-smmu-v3: Add stall support for platform devices
>   PCI/ATS: Add PRI stubs
>   PCI/ATS: Export PRI functions
>   iommu/arm-smmu-v3: Add support for PRI
> 
>  drivers/iommu/Kconfig                         |   11 +
>  drivers/iommu/Makefile                        |    2 +
>  .../devicetree/bindings/iommu/iommu.txt       |   18 +
>  arch/arm64/include/asm/mmu.h                  |    1 +
>  arch/arm64/include/asm/mmu_context.h          |   11 +-
>  drivers/iommu/io-pgtable-arm.h                |   30 +
>  drivers/iommu/iommu-sva.h                     |   15 +
>  include/linux/ioasid.h                        |   10 +-
>  include/linux/iommu.h                         |   53 +
>  include/linux/mm_types.h                      |    4 +
>  include/linux/pci-ats.h                       |    8 +
>  arch/arm64/kernel/cpufeature.c                |    1 +
>  arch/arm64/mm/context.c                       |  103 +-
>  drivers/iommu/arm-smmu-v3.c                   | 1554
> +++++++++++++++-- drivers/iommu/io-pgfault.c                    |
> 458 +++++ drivers/iommu/io-pgtable-arm.c                |   27 +-
>  drivers/iommu/ioasid.c                        |   30 +-
>  drivers/iommu/iommu-sva.c                     |   85 +
>  drivers/iommu/of_iommu.c                      |    5 +-
>  drivers/pci/ats.c                             |    4 +
>  MAINTAINERS                                   |    3 +-
>  21 files changed, 2275 insertions(+), 158 deletions(-)
>  create mode 100644 drivers/iommu/io-pgtable-arm.h
>  create mode 100644 drivers/iommu/iommu-sva.h
>  create mode 100644 drivers/iommu/io-pgfault.c
>  create mode 100644 drivers/iommu/iommu-sva.c
> 

[Jacob Pan]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
