Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D41D83BC11
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 20:52:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Sq4tK7YkyNehN7pptaUBuE1WAyLvxTn5OsYA0sPP0DA=; b=UpLq1MmykPMl5E
	rk46fxE0uCbTHfRjgaJKJwNKNhpv1ugYWLLjQri1r/k1MCTvA3F16XYuJlhDXnjh8hnEAfpbPUllJ
	2asg0fwGIRK8lk5t8RQa+RvKBa6kh97q480P+upGDSui1O44gdYwXHIk/taNWEaIjv2ojZmom1ifg
	EYhyJFLtlHKbc96NJSp3EuNbTenXJjg/5gFG749ezARBOAOIH0h51ByCq4adskWmufXZOixqDlm+c
	gLu3cOU28AH2owzW+JTtti9VFsB+2nN9wDzNwuSwcPrb88rAE9PweRYxnmDgUhAovQGoitdSzZ1Pe
	rovVUktY80d5+X+zctCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haPOt-0002B1-2m; Mon, 10 Jun 2019 18:52:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haPOc-00028j-R6
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 18:51:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C227C337;
 Mon, 10 Jun 2019 11:51:48 -0700 (PDT)
Received: from ostrya.cambridge.arm.com (ostrya.cambridge.arm.com
 [10.1.196.129])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 511F03F246;
 Mon, 10 Jun 2019 11:51:47 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
To: will.deacon@arm.com
Subject: [PATCH 0/8] iommu: Add auxiliary domain and PASID support to Arm
 SMMUv3
Date: Mon, 10 Jun 2019 19:47:06 +0100
Message-Id: <20190610184714.6786-1-jean-philippe.brucker@arm.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_115154_928309_F2024275 
X-CRM114-Status: GOOD (  12.90  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 jacob.jun.pan@linux.intel.com, joro@8bytes.org, linux-kernel@vger.kernel.org,
 eric.auger@redhat.com, iommu@lists.linux-foundation.org, robh+dt@kernel.org,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add substreams and PCI PASID support to the SMMUv3 driver. At the moment
the driver supports a single address space per device. PASID enables
multiple address spaces per device, up to a million in theory (1 << 20).

Two kernel features will make use of PASIDs, auxiliary domains (AUXD)
and Shared Virtual Addressing (SVA). Auxiliary domains allow to program
PASID contexts using IOMMU domains. SVA allows to bind process address
spaces to device contexts and relieve device drivers of DMA management.

Since SVA support for SMMUv3 has a lot more dependencies (new fault API,
ASID pinning, generic bind, PRI or stall support, and so on),
introducing PASID support to the SMMUv3 driver is easier with auxiliary
domains.

The AUXD API allows device drivers to easily test PASID support of their
devices, although they need to allocate IOVA and pages themselves
because the DMA API doesn't support AUXD for the moment:

	iommu_dev_enable_feature(dev, IOMMU_DEV_FEAT_AUX);
	domain = iommu_domain_alloc(dev->bus);
	iommu_aux_attach_device(domain, dev);
	iommu_map(domain, iova, phys_addr, size, prot);
	pasid = iommu_aux_get_pasid(domain);
	/* Then launch DMA with the PASID and IOVA */

Auxiliary domains also allow to split devices into multiple contexts
assignable to guest, with vfio-mdev.

Past discussions for these patches:
* Auxiliary domains (patch 6)
  [RFC PATCH 0/6] Auxiliary IOMMU domains and Arm SMMUv3
  https://www.spinics.net/lists/iommu/msg30637.html
* SSID support for the SMMU (patches 2, 3, 4, 5, 7 and 8)
  [PATCH v2 00/40] Shared Virtual Addressing for the IOMMU
  https://lists.linuxfoundation.org/pipermail/iommu/2018-May/027595.html
* I/O ASID (patch 1)
  [PATCH v3 00/16] Shared virtual address IOMMU and VT-d support
  https://lkml.kernel.org/lkml/1556922737-76313-4-git-send-email-jacob.jun.pan@linux.intel.com/

Jean-Philippe Brucker (8):
  iommu: Add I/O ASID allocator
  dt-bindings: document PASID property for IOMMU masters
  iommu/arm-smmu-v3: Support platform SSID
  iommu/arm-smmu-v3: Add support for Substream IDs
  iommu/arm-smmu-v3: Add second level of context descriptor table
  iommu/arm-smmu-v3: Support auxiliary domains
  iommu/arm-smmu-v3: Improve add_device() error handling
  iommu/arm-smmu-v3: Add support for PCI PASID

 .../devicetree/bindings/iommu/iommu.txt       |   6 +
 drivers/iommu/Kconfig                         |   5 +
 drivers/iommu/Makefile                        |   1 +
 drivers/iommu/arm-smmu-v3.c                   | 714 ++++++++++++++++--
 drivers/iommu/ioasid.c                        | 150 ++++
 drivers/iommu/of_iommu.c                      |   6 +-
 include/linux/ioasid.h                        |  49 ++
 include/linux/iommu.h                         |   1 +
 8 files changed, 865 insertions(+), 67 deletions(-)
 create mode 100644 drivers/iommu/ioasid.c
 create mode 100644 include/linux/ioasid.h

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
