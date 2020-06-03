Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C54AB1ED6BF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 21:22:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=GmbsCQirAw5tVtmKgWavDFYvcZlXv2jtCg1ty4mZD60=; b=SmS
	z1F57MxSC/UwppygNlImyKw8aLxA89OTPdH/9k5e/2M90v0jmz8ulj0qP0bR9arBE9BRU0Q6/PpMO
	v5XIKQol/chdxYC+CL5oZiQoymOj+xt+Awh2/JF5vYDT+yqOVy3kvXLbrYo5vDh/10BXaGt1F2r58
	bgqxJcoc9H1HT3jy9IEJM5zUES4fkAb7rGRaNS7jAl0lSBJsPRieW2KHFLydxor86HS7sETRcmcEF
	1u9SFhxbalz3799exjwwIm3Qhq7olVGwGu2Qux1OJlOGJFxGcKdkYMAybj6DNPfneryxAXXAmrpEJ
	MIuTTTe03A3ODZfHuW4/89IpRc5DZkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgYxV-0007aQ-0G; Wed, 03 Jun 2020 19:21:53 +0000
Received: from rnd-relay.smtp.broadcom.com ([192.19.229.170])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgYx1-0007Of-I6; Wed, 03 Jun 2020 19:21:25 +0000
Received: from mail-irv-17.broadcom.com (mail-irv-17.lvn.broadcom.net
 [10.75.242.48])
 by rnd-relay.smtp.broadcom.com (Postfix) with ESMTP id 840DD30DD7D;
 Wed,  3 Jun 2020 12:21:15 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 rnd-relay.smtp.broadcom.com 840DD30DD7D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
 s=dkimrelay; t=1591212075;
 bh=/AQzYy/Wi51ZHDd+ThnXKaeww1EEOqsroMbykkRvvq8=;
 h=From:To:Cc:Subject:Date:From;
 b=NtJkO7MeFX9UJlK8NUNrIV5R9Mx4cOS08pLbxG4NPk/I+q5/V9FpPpuH5/7NTn4h6
 oXzIRd7IOw07qiMAAfQWzxBn0ktMI+2Y0HHNBVaAG6rqUobHv9JpcCr/2jYvZ/IP1F
 NUugsjaWJwj9/B8MokjcNqcee5TK7Khm/EE80QP0=
Received: from stbsrv-and-01.and.broadcom.net (stbsrv-and-01.and.broadcom.net
 [10.28.16.211])
 by mail-irv-17.broadcom.com (Postfix) with ESMTP id 9DA8814008C;
 Wed,  3 Jun 2020 12:21:11 -0700 (PDT)
From: Jim Quinlan <james.quinlan@broadcom.com>
To: linux-pci@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 bcm-kernel-feedback-list@broadcom.com, james.quinlan@broadcom.com
Subject: [PATCH v3 00/13] PCI: brcmstb: enable PCIe for STB chips
Date: Wed,  3 Jun 2020 15:20:32 -0400
Message-Id: <20200603192058.35296-1-james.quinlan@broadcom.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_122123_632095_240E9636 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.19.229.170 listed in list.dnswl.org]
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Oliver Neukum <oneukum@suse.com>,
 "open list:SUPERH" <linux-sh@vger.kernel.org>,
 "open list:REMOTE PROCESSOR REMOTEPROC SUBSYSTEM"
 <linux-remoteproc@vger.kernel.org>,
 "open list:DRM DRIVERS FOR ALLWINNER A10" <dri-devel@lists.freedesktop.org>,
 "open list:LIBATA SUBSYSTEM Serial and Parallel ATA drivers"
 <linux-ide@vger.kernel.org>, Julien Grall <julien.grall@arm.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 "H. Peter Anvin" <hpa@zytor.com>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Rob Herring <robh@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Corey Minyard <minyard@acm.org>, Saravana Kannan <saravanak@google.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 "open list:ACPI FOR ARM64 ACPI/arm64" <linux-acpi@vger.kernel.org>,
 Alan Stern <stern@rowland.harvard.edu>,
 "open list:ALLWINNER A10 CSI DRIVER" <linux-media@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE"
 <devicetree@vger.kernel.org>, Joerg Roedel <jroedel@suse.de>,
 Arnd Bergmann <arnd@arndb.de>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Hans de Goede <hdegoede@redhat.com>, Mark Brown <broonie@kernel.org>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 Dan Williams <dan.j.williams@intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 Jens Axboe <axboe@kernel.dk>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "open list:USB SUBSYSTEM" <linux-usb@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
 Stefano Stabellini <sstabellini@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

v3:
  Commit "device core: Introduce multiple dma pfn offsets"
  Commit "arm: dma-mapping: Invoke dma offset func if needed"
  -- The above two commits have been squashed.  More importantly,
     the code has been modified so that the functionality for
     multiple pfn offsets subsumes the use of dev->dma_pfn_offset.
     In fact, dma_pfn_offset is removed and supplanted by
     dma_pfn_offset_map, which is a pointer to an array.  The
     more common case of a uniform offset is now handled as
     a map with a single entry, while cases requiring multiple
     pfn offsets use a map with multiple entries.  Code paths
     that used to do this:

         dev->dma_pfn_offset = mydrivers_pfn_offset;

     have been changed to do this:

         attach_uniform_dma_pfn_offset(dev, pfn_offset);

  Commit "dt-bindings: PCI: Add bindings for more Brcmstb chips"
  -- Add if/then clause for required props: resets, reset-names (RobH)
  -- Change compatible list from const to enum (RobH)
  -- Change list of u32-tuples to u64 (RobH)

  Commit "of: Include a dev param in of_dma_get_range()"
  -- modify of/unittests.c to add NULL param in of_dma_get_range() call.

  Commit "device core: Add ability to handle multiple dma offsets"
  -- align comment in device.h (AndyS).
  -- s/cpu_beg/cpu_start/ and s/dma_beg/dma_start/ in struct
     dma_pfn_offset_region (AndyS).

v2:
Commit: "device core: Add ability to handle multiple dma offsets"
  o Added helper func attach_dma_pfn_offset_map() in address.c (Chistoph)
  o Helpers funcs added to __phys_to_dma() & __dma_to_phys() (Christoph)
  o Added warning when multiple offsets are needed and !DMA_PFN_OFFSET_MAP
  o dev->dma_pfn_map => dev->dma_pfn_offset_map
  o s/frm/from/ for dma_pfn_offset_frm_{phys,dma}_addr() (Christoph)
  o In device.h: s/const void */const struct dma_pfn_offset_region */
  o removed 'unlikely' from unlikely(dev->dma_pfn_offset_map) since
    guarded by CONFIG_DMA_PFN_OFFSET_MAP (Christoph)
  o Since dev->dma_pfn_offset is copied in usb/core/{usb,message}.c, now
    dev->dma_pfn_offset_map is copied as well.
  o Merged two of the DMA commits into one (Christoph).

Commit "arm: dma-mapping: Invoke dma offset func if needed":
  o Use helper functions instead of #if CONFIG_DMA_PFN_OFFSET

Other commits' changes:
  o Removed need for carrying of_id var in priv (Nicolas)
  o Commit message rewordings (Bjorn)
  o Commit log messages filled to 75 chars (Bjorn)
  o devm_reset_control_get_shared())
    => devm_reset_control_get_optional_shared (Philipp)
  o Add call to reset_control_assert() in PCIe remove routines (Philipp)

v1:
This patchset expands the usefulness of the Broadcom Settop Box PCIe
controller by building upon the PCIe driver used currently by the
Raspbery Pi.  Other forms of this patchset were submitted by me years
ago and not accepted; the major sticking point was the code required
for the DMA remapping needed for the PCIe driver to work [1].

There have been many changes to the DMA and OF subsystems since that
time, making a cleaner and less intrusive patchset possible.  This
patchset implements a generalization of "dev->dma_pfn_offset", except
that instead of a single scalar offset it provides for multiple
offsets via a function which depends upon the "dma-ranges" property of
the PCIe host controller.  This is required for proper functionality
of the BrcmSTB PCIe controller and possibly some other devices.

[1] https://lore.kernel.org/linux-arm-kernel/1516058925-46522-5-git-send-email-jim2101024@gmail.com/

Jim Quinlan (13):
  PCI: brcmstb: PCIE_BRCMSTB depends on ARCH_BRCMSTB
  ata: ahci_brcm: Fix use of BCM7216 reset controller
  dt-bindings: PCI: Add bindings for more Brcmstb chips
  PCI: brcmstb: Add bcm7278 reigister info
  PCI: brcmstb: Add suspend and resume pm_ops
  PCI: brcmstb: Add bcm7278 PERST support
  PCI: brcmstb: Add control of rescal reset
  of: Include a dev param in of_dma_get_range()
  device core: Introduce multiple dma pfn offsets
  PCI: brcmstb: Set internal memory viewport sizes
  PCI: brcmstb: Accommodate MSI for older chips
  PCI: brcmstb: Set bus max burst size by chip type
  PCI: brcmstb: Add bcm7211, bcm7216, bcm7445, bcm7278 to match list

 .../bindings/pci/brcm,stb-pcie.yaml           |  58 ++-
 arch/arm/include/asm/dma-mapping.h            |   9 +-
 arch/arm/mach-keystone/keystone.c             |   9 +-
 arch/sh/drivers/pci/pcie-sh7786.c             |   3 +-
 arch/sh/kernel/dma-coherent.c                 |  17 +-
 arch/x86/pci/sta2x11-fixup.c                  |   7 +-
 drivers/acpi/arm64/iort.c                     |   5 +-
 drivers/ata/ahci_brcm.c                       |  14 +-
 drivers/gpu/drm/sun4i/sun4i_backend.c         |   7 +-
 drivers/iommu/io-pgtable-arm.c                |   2 +-
 .../platform/sunxi/sun4i-csi/sun4i_csi.c      |   5 +-
 .../platform/sunxi/sun6i-csi/sun6i_csi.c      |   5 +-
 drivers/of/address.c                          |  97 ++++-
 drivers/of/device.c                           |  10 +-
 drivers/of/of_private.h                       |   8 +-
 drivers/of/unittest.c                         |   2 +-
 drivers/pci/controller/Kconfig                |   3 +-
 drivers/pci/controller/pcie-brcmstb.c         | 408 +++++++++++++++---
 drivers/remoteproc/remoteproc_core.c          |   2 +-
 .../staging/media/sunxi/cedrus/cedrus_hw.c    |   7 +-
 drivers/usb/core/message.c                    |   4 +-
 drivers/usb/core/usb.c                        |   2 +-
 include/linux/device.h                        |   4 +-
 include/linux/dma-direct.h                    |  16 +-
 include/linux/dma-mapping.h                   |  45 ++
 kernel/dma/coherent.c                         |  11 +-
 26 files changed, 631 insertions(+), 129 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
