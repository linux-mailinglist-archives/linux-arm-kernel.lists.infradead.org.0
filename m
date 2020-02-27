Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53CFD1726FC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 19:22:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UFN68ON2ekffcAOYpTs5nwmDOZ4u1mdZ+IADfjsCEzQ=; b=JTNbkk8jQhpmMH
	G6EczpKoaigbhTzxNC9QcP5gIpUjVdtdwP/gebKEHN0AvieD63IvUmVUIHxHPv0OfM5dbFM2yt4+u
	8+1MZiuLK9mk7tnxUlQW0B8jl2yJsubUO4m/OOCxk8dsDD+fpxN+kmcvEUZWoaNJzUZX0DDnUAWR8
	Gide6yyWWgSOwNm5d4Gt2sw7mChai8BXoh1TUqIdC8mfhNrWwYktlXjL+0+Q81xDX23AOcjTg8KEd
	UUnV7z1moc9QpAdNPjLKZ+yaeUt7HuM4EZF3CB/IpMNlzsCD8ikNjQhjaG5zxo2Gr9Buj4BNysuoH
	6iKB9IsGEOM+LZFyMzKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Nnp-0006wk-Jp; Thu, 27 Feb 2020 18:22:29 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7NnV-0006vL-RX
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 18:22:11 +0000
Received: from LHREML710-CAH.china.huawei.com (unknown [172.18.7.106])
 by Forcepoint Email with ESMTP id 99F00611DC9F15BD25C9;
 Thu, 27 Feb 2020 18:22:08 +0000 (GMT)
Received: from lhreml710-chm.china.huawei.com (10.201.108.61) by
 LHREML710-CAH.china.huawei.com (10.201.108.33) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Thu, 27 Feb 2020 18:22:07 +0000
Received: from localhost (10.202.226.57) by lhreml710-chm.china.huawei.com
 (10.201.108.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Thu, 27 Feb
 2020 18:22:07 +0000
Date: Thu, 27 Feb 2020 18:22:06 +0000
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v4 00/26] iommu: Shared Virtual Addressing and SMMUv3
 support
Message-ID: <20200227182206.000075aa@Huawei.com>
In-Reply-To: <20200224182401.353359-1-jean-philippe@linaro.org>
References: <20200224182401.353359-1-jean-philippe@linaro.org>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.226.57]
X-ClientProxiedBy: lhreml721-chm.china.huawei.com (10.201.108.72) To
 lhreml710-chm.china.huawei.com (10.201.108.61)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_102210_040241_50C3DA33 
X-CRM114-Status: GOOD (  18.14  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, kevin.tian@intel.com,
 jacob.jun.pan@linux.intel.com, will@kernel.org, linux-pci@vger.kernel.org,
 joro@8bytes.org, linux-mm@kvack.org, iommu@lists.linux-foundation.org,
 robh+dt@kernel.org, yi.l.liu@intel.com, catalin.marinas@arm.com,
 zhangfei.gao@linaro.org, robin.murphy@arm.com, christian.koenig@amd.com,
 linux-arm-kernel@lists.infradead.org, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 24 Feb 2020 19:23:35 +0100
Jean-Philippe Brucker <jean-philippe@linaro.org> wrote:

> Shared Virtual Addressing (SVA) allows to share process page tables with
> devices using the IOMMU. Add a generic implementation of the IOMMU SVA
> API, and add support in the Arm SMMUv3 driver.
> 
> Previous versions of this patchset were sent over a year ago [1][2] but
> we've made a lot of progress since then:
> 
> * ATS support for SMMUv3 was merged in v5.2.
> * The bind() and fault reporting APIs have been merged in v5.3.
> * IOASID were added in v5.5.
> * SMMUv3 PASID was added in v5.6, with some pending for v5.7.
> 
> * The first user of the bind() API will be merged in v5.7 [3]. The zip
>   accelerator is also the first piece of hardware that I've been able to
>   use for testing (previous versions were developed with software models)
>   and I now have tools for evaluating SVA performance. Unfortunately I
>   still don't have hardware that supports ATS and PRI; the zip accelerator
>   uses stall.
> 
> These are the remaining changes for SVA support in SMMUv3. Since v3 [1]
> I fixed countless bugs and - I think - addressed everyone's comments.
> Thanks to recent MMU notifier rework, iommu-sva.c is a lot more
> straightforward. I'm still unhappy with the complicated locking in the
> SMMUv3 driver resulting from patch 12 (Seize private ASID), but I
> haven't found anything better.
> 
> Please find all SVA patches on branches sva/current and sva/zip-devel at
> https://jpbrucker.net/git/linux
> 
> [1] https://lore.kernel.org/linux-iommu/20180920170046.20154-1-jean-philippe.brucker@arm.com/
> [2] https://lore.kernel.org/linux-iommu/20180511190641.23008-1-jean-philippe.brucker@arm.com/
> [3] https://lore.kernel.org/linux-iommu/1581407665-13504-1-git-send-email-zhangfei.gao@linaro.org/

Hi Jean-Phillippe.

Great to see this progressing.  Other than the few places I've commented
it all looks good to me.

Thanks,

Jonathan

> 
> Jean-Philippe Brucker (26):
>   mm/mmu_notifiers: pass private data down to alloc_notifier()
>   iommu/sva: Manage process address spaces
>   iommu: Add a page fault handler
>   iommu/sva: Search mm by PASID
>   iommu/iopf: Handle mm faults
>   iommu/sva: Register page fault handler
>   arm64: mm: Pin down ASIDs for sharing mm with devices
>   iommu/io-pgtable-arm: Move some definitions to a header
>   iommu/arm-smmu-v3: Manage ASIDs with xarray
>   arm64: cpufeature: Export symbol read_sanitised_ftr_reg()
>   iommu/arm-smmu-v3: Share process page tables
>   iommu/arm-smmu-v3: Seize private ASID
>   iommu/arm-smmu-v3: Add support for VHE
>   iommu/arm-smmu-v3: Enable broadcast TLB maintenance
>   iommu/arm-smmu-v3: Add SVA feature checking
>   iommu/arm-smmu-v3: Add dev_to_master() helper
>   iommu/arm-smmu-v3: Implement mm operations
>   iommu/arm-smmu-v3: Hook up ATC invalidation to mm ops
>   iommu/arm-smmu-v3: Add support for Hardware Translation Table Update
>   iommu/arm-smmu-v3: Maintain a SID->device structure
>   iommu/arm-smmu-v3: Ratelimit event dump
>   dt-bindings: document stall property for IOMMU masters
>   iommu/arm-smmu-v3: Add stall support for platform devices
>   PCI/ATS: Add PRI stubs
>   PCI/ATS: Export symbols of PRI functions
>   iommu/arm-smmu-v3: Add support for PRI
> 
>  .../devicetree/bindings/iommu/iommu.txt       |   18 +
>  arch/arm64/include/asm/mmu.h                  |    1 +
>  arch/arm64/include/asm/mmu_context.h          |   11 +-
>  arch/arm64/kernel/cpufeature.c                |    1 +
>  arch/arm64/mm/context.c                       |  103 +-
>  drivers/iommu/Kconfig                         |   13 +
>  drivers/iommu/Makefile                        |    2 +
>  drivers/iommu/arm-smmu-v3.c                   | 1354 +++++++++++++++--
>  drivers/iommu/io-pgfault.c                    |  533 +++++++
>  drivers/iommu/io-pgtable-arm.c                |   27 +-
>  drivers/iommu/io-pgtable-arm.h                |   30 +
>  drivers/iommu/iommu-sva.c                     |  596 ++++++++
>  drivers/iommu/iommu-sva.h                     |   64 +
>  drivers/iommu/iommu.c                         |    1 +
>  drivers/iommu/of_iommu.c                      |    5 +-
>  drivers/misc/sgi-gru/grutlbpurge.c            |    4 +-
>  drivers/pci/ats.c                             |    4 +
>  include/linux/iommu.h                         |   73 +
>  include/linux/mmu_notifier.h                  |   10 +-
>  include/linux/pci-ats.h                       |    8 +
>  mm/mmu_notifier.c                             |    6 +-
>  21 files changed, 2699 insertions(+), 165 deletions(-)
>  create mode 100644 drivers/iommu/io-pgfault.c
>  create mode 100644 drivers/iommu/io-pgtable-arm.h
>  create mode 100644 drivers/iommu/iommu-sva.c
>  create mode 100644 drivers/iommu/iommu-sva.h
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
