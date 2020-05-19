Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 117051DA2CD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 22:36:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=B0Otd1Tdc9nQ684YyvARRhcpekcB3DiyhSlrvbiDsNU=; b=qqM
	dWZ/jw9j+FBKpGxGloHPgF0AW5OSnlEpZ8LIX5Q/Wod/AuLIbriC+b+a0UnevLICQ2vusnpHwjxYz
	O6bcK9BGmexGKNJX+Oh+lPGTkQeRrvTbqA/TqS2Lxx33GQGO5EhSr2XXZ0lS6cw+O48yZxw6eLeYF
	jJ7Zba7hYK03l0MsXw3wL5ThN+Zz/VoQkmViDWlg87ynpfzVJlGLoX5iJmxD3xPKvdmCAcb4j+wiA
	9ZB/kynP+4bcYVQnmBBG/eJ7RHNgKITi+f+hFqDDw4jmkHcQRbO62No8PIn+5d3o1XtwxHCR0tI/l
	CEu1q8fpSJ9T9jWgckI4pzZiax4qmnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb8yU-00030h-Fq; Tue, 19 May 2020 20:36:30 +0000
Received: from rnd-relay.smtp.broadcom.com ([192.19.229.170])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb8ww-0007wL-9G; Tue, 19 May 2020 20:34:57 +0000
Received: from mail-irv-17.broadcom.com (mail-irv-17.lvn.broadcom.net
 [10.75.242.48])
 by rnd-relay.smtp.broadcom.com (Postfix) with ESMTP id 02B4730D7BF;
 Tue, 19 May 2020 13:33:22 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 rnd-relay.smtp.broadcom.com 02B4730D7BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
 s=dkimrelay; t=1589920402;
 bh=yuPEfulO+iRK9pTGrG+3vEVTPxwnaY2RYoFKfJNpl/4=;
 h=From:To:Cc:Subject:Date:From;
 b=BGCCEXGcLPBUG5WcSDFpUnH7X6Scj2cn6JSilSFImuyVpUvNUEbcGLaTqCiJFjL3K
 RC/aTNSU30qAdciwtiidWHRIF/dypocgc+fxv9lyMCer+wWJgYag7fmkpvdu32QtpX
 rTr1Zk1rKZs1p0VraKIQ5wSOx8XgHzb84gj4JsY0=
Received: from stbsrv-and-01.and.broadcom.net (stbsrv-and-01.and.broadcom.net
 [10.28.16.211])
 by mail-irv-17.broadcom.com (Postfix) with ESMTP id 4463514008B;
 Tue, 19 May 2020 13:34:42 -0700 (PDT)
From: Jim Quinlan <james.quinlan@broadcom.com>
To: james.quinlan@broadcom.com, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH 00/15] PCI: brcmstb: enable PCIe for STB chips
Date: Tue, 19 May 2020 16:33:58 -0400
Message-Id: <20200519203419.12369-1-james.quinlan@broadcom.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_133454_375271_0E57FD80 
X-CRM114-Status: UNSURE (   7.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.19.229.170 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE"
 <devicetree@vger.kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Saravana Kannan <saravanak@google.com>, Rob Herring <robh@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Julien Grall <julien.grall@arm.com>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:LIBATA SUBSYSTEM Serial and Parallel ATA drivers"
 <linux-ide@vger.kernel.org>,
 "open list:DMA MAPPING HELPERS" <iommu@lists.linux-foundation.org>,
 Stefano Stabellini <sstabellini@kernel.org>,
 "open list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 "open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS"
 <linux-pci@vger.kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Robin Murphy <robin.murphy@arm.com>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

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

Jim Quinlan (15):
  PCI: brcmstb: PCIE_BRCMSTB depends on ARCH_BRCMSTB
  ahci_brcm: fix use of BCM7216 reset controller
  dt-bindings: PCI: Add bindings for more Brcmstb chips
  PCI: brcmstb: Add compatibily of other chips
  PCI: brcmstb: Add suspend and resume pm_ops
  PCI: brcmstb: Asserting PERST is different for 7278
  PCI: brcmstb: Add control of rescal reset
  of: Include a dev param in of_dma_get_range()
  device core: Add ability to handle multiple dma offsets
  dma-direct: Invoke dma offset func if needed
  arm: dma-mapping: Invoke dma offset func if needed
  PCI: brcmstb: Set internal memory viewport sizes
  PCI: brcmstb: Accommodate MSI for older chips
  PCI: brcmstb: Set bus max burst side by chip type
  PCI: brcmstb: add compatilbe chips to match list

 .../bindings/pci/brcm,stb-pcie.yaml           |  40 +-
 arch/arm/include/asm/dma-mapping.h            |  17 +-
 drivers/ata/ahci_brcm.c                       |  14 +-
 drivers/of/address.c                          |  54 ++-
 drivers/of/device.c                           |   2 +-
 drivers/of/of_private.h                       |   8 +-
 drivers/pci/controller/Kconfig                |   4 +-
 drivers/pci/controller/pcie-brcmstb.c         | 403 +++++++++++++++---
 include/linux/device.h                        |   9 +-
 include/linux/dma-direct.h                    |  16 +
 include/linux/dma-mapping.h                   |  44 ++
 kernel/dma/Kconfig                            |  12 +
 12 files changed, 542 insertions(+), 81 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
