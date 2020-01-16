Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7D9B13D7DD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 11:26:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PYWgKoL/SMWxjGLSFenop2AysvFqBsVkcaPLCO+zumg=; b=fk8U/+BwP13uD2
	pWPE1qizzhIsmDZhQ0O+4UT0gwEI56rL+vpqUuvxnVJNyWPsrOTVOobyF7Vg+U8eQ8XiyHSHYBtus
	4Wvdf09ogFpBQ+4G0pJB+7p+qHb08BNl71+XIB5sOopk3qrtAZUS+8j+iMa/vBoCUhEEXvVDsgkbJ
	3MhUrOM1POO0sD0i+ggNOQMMdIsrOd3qqvwgwIbV/qqicydxUH5mXlNEvlmacTATinuMb9R4HF5R4
	BVx9au68VBIZkB+EUMUlSGOqUD0/orzwR8k020F23/8feDJ0bt6fsuu0iY7z6y2fFWlsDFNvudKRq
	ov5FhpyOuxQuoei8ajqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is2Ll-0002UY-1D; Thu, 16 Jan 2020 10:26:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is2La-0002RJ-2D
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 10:25:58 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 469582053B;
 Thu, 16 Jan 2020 10:25:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579170353;
 bh=rfbKFjdigRuq8AVbOSw0k4NXMuREWFVYbNiLvRYfj88=;
 h=Date:From:To:Cc:Subject:From;
 b=a7Rll640V8lSXwIwcQMbTU5F422ieKtpgEDvghdlnKJZHqHmMXFhArtpu8tZ2drEg
 qJehFzVPpI0wYOKA/Ja+z4lgq8GNw2DwW7yOkVrXHFWAR+SISQ04oAoR73r82nI3zX
 yt/E1ziPduV/QHANAsH6itgKnaoYB5nx5enVH6/Q=
Date: Thu, 16 Jan 2020 10:25:49 +0000
From: Will Deacon <will@kernel.org>
To: joro@8bytes.org
Subject: [GIT PULL] iommu/arm-smmu: Updates for 5.6
Message-ID: <20200116102548.GA14761@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_022554_145080_87EF9CCF 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: jean-philippe@linaro.org, robin.murphy@arm.com,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Joerg,

Please pull these Arm SMMU updates for 5.6. The branch is based on your
arm/smmu branch and includes a patch addressing the feedback from Greg
about setting the module 'owner' field in the 'iommu_ops'.

I've used a signed tag this time, so you can see the summary of the
changes listed in there. The big deal is that we're laying the groundwork
for PCIe PASID support in SMMUv3, and I expect to hook that up for PCIe
masters in 5.7 once we've exported the necessary symbols to do so.

Cheers,

Will

--->8

The following changes since commit 1ea27ee2f76e67f98b9942988f1336a70d351317:

  iommu/arm-smmu: Update my email address in MODULE_AUTHOR() (2019-12-23 14:06:06 +0100)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git tags/arm-smmu-updates

for you to fetch changes up to 5a4549fd790500d7db94b7d2af6d60cee42110c3:

  PCI/ATS: Add PASID stubs (2020-01-15 16:30:28 +0000)

----------------------------------------------------------------
Arm SMMU updates for 5.6

- Support for building, and {un,}loading the SMMU drivers as modules

- Minor cleanups

- SMMUv3:
  * Non-critical fix to encoding of TLBI_NH_VA invalidation command
  * Fix broken sanity check on size of MMIO resource during probe
  * Support for Substream IDs which will soon be provided by PCI PASIDs

- io-pgtable:
  * Finish off the TTBR1 preparation work partially merged last cycle
  * Ensure correct memory attributes for non-cacheable mappings

- SMMU:
  * Namespace public #defines to avoid collisions with arch/arm64/
  * Avoid using valid SMR register when probing mask size

----------------------------------------------------------------
Jean-Philippe Brucker (12):
      iommu/arm-smmu-v3: Drop __GFP_ZERO flag from DMA allocation
      dt-bindings: document PASID property for IOMMU masters
      iommu/arm-smmu-v3: Parse PASID devicetree property of platform devices
      ACPI/IORT: Parse SSID property of named component node
      iommu/arm-smmu-v3: Prepare arm_smmu_s1_cfg for SSID support
      iommu/arm-smmu-v3: Add context descriptor tables allocators
      iommu/arm-smmu-v3: Add support for Substream IDs
      iommu/arm-smmu-v3: Propagate ssid_bits
      iommu/arm-smmu-v3: Prepare for handling arm_smmu_write_ctx_desc() failure
      iommu/arm-smmu-v3: Add second level of context descriptor table
      iommu/arm-smmu-v3: Improve add_device() error handling
      PCI/ATS: Add PASID stubs

Masahiro Yamada (3):
      iommu/arm-smmu-v3: Fix resource_size check
      iommu/arm-smmu-v3: Remove useless of_match_ptr()
      iommu/arm-smmu: Fix -Wunused-const-variable warning

Robin Murphy (5):
      iommu/io-pgtable-arm: Rationalise TTBRn handling
      iommu/io-pgtable-arm: Improve attribute handling
      iommu/io-pgtable-arm: Rationalise TCR handling
      iommu/io-pgtable-arm: Prepare for TTBR1 usage
      iommu/arm-smmu: Improve SMR mask test

Shameer Kolothum (1):
      iommu/arm-smmu-v3: Populate VMID field for CMDQ_OP_TLBI_NH_VA

Will Deacon (7):
      drivers/iommu: Initialise module 'owner' field in iommu_device_set_ops()
      iommu/io-pgtable-arm: Support non-coherent stage-2 page tables
      iommu/io-pgtable-arm: Ensure ARM_64_LPAE_S2_TCR_RES1 is unsigned
      iommu/arm-smmu: Rename public #defines under ARM_SMMU_ namespace
      iommu/io-pgtable-arm: Rationalise VTCR handling
      iommu/arm-smmu-v3: Use WRITE_ONCE() when changing validity of an STE
      iommu/arm-smmu-v3: Return -EBUSY when trying to re-add a device

 Documentation/devicetree/bindings/iommu/iommu.txt |   6 +
 drivers/acpi/arm64/iort.c                         |  18 +
 drivers/iommu/arm-smmu-impl.c                     |   2 +-
 drivers/iommu/arm-smmu-v3.c                       | 499 +++++++++++++++++-----
 drivers/iommu/arm-smmu.c                          | 197 +++++----
 drivers/iommu/arm-smmu.h                          | 228 ++++++----
 drivers/iommu/io-pgtable-arm-v7s.c                |  22 +-
 drivers/iommu/io-pgtable-arm.c                    | 164 ++++---
 drivers/iommu/io-pgtable.c                        |   2 +-
 drivers/iommu/ipmmu-vmsa.c                        |   2 +-
 drivers/iommu/msm_iommu.c                         |   4 +-
 drivers/iommu/mtk_iommu.c                         |   4 +-
 drivers/iommu/of_iommu.c                          |   6 +-
 drivers/iommu/qcom_iommu.c                        |  25 +-
 include/linux/io-pgtable.h                        |  27 +-
 include/linux/iommu.h                             |  13 +-
 include/linux/pci-ats.h                           |   3 +
 17 files changed, 810 insertions(+), 412 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
