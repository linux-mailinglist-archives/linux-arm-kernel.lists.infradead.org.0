Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C83751DB91D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 18:15:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=rIKoaw9fpUDG7htFgrHo021tE+l7o6ueQwpglNApr4A=; b=DR3maaYOG310il
	IizLx8ZwDUpleJtw20syjqI4e2Hrz4Wkqt4wbJQN4Ts/kvi+1bP0FRIDK++PpFrItluiVirIEKaKZ
	71pdzoXG7ux+uszDN9uA6iYGMcekh+hL/DdSpNpNByN2I34Nij78Bv2d9woGwDcC332H3kTEiqsjZ
	+nuOy1p8Nd51aJhJA6H4K5MHnRsGLvRixbXkrjOnLsmt3c2UbKfmSuKxd+Ck5CHRC1XY9p5EHxQMZ
	P5YMKBkcKdBwVJ/pZmylbU0nGz7bG1khU6+5SEOXpwSgScrupsKQ6HZLyOFuu+WPvib3n+Y8NYgcm
	xyTNHq/7wAfku3CoxBng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbRNs-0000zk-5K; Wed, 20 May 2020 16:15:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbRNh-0000z3-BY; Wed, 20 May 2020 16:15:46 +0000
Received: from localhost (mobile-166-175-190-200.mycingular.net
 [166.175.190.200])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4A8C120671;
 Wed, 20 May 2020 16:15:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589991344;
 bh=h9MTIGPYQzOllbjEkIgnEniE41lTl+OD7Fs3cDvWlC4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=dBQAsnvSt1BuQnO2Uz0LYcXqH8wrzmcE0sMq3dliKDQWy2VD07oQBTPN8C3Xz4q5j
 EEp4TAFPoo5NVsbBnUlz3FFLpZ4E3P2l4+ULM4f39CP4KxODVhaYOqqg6ZguekD1Z4
 YSmgsUdQndWtM7LDHv6BuDaL4cZ+TEEM751dZfMc=
Date: Wed, 20 May 2020 11:15:41 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Jim Quinlan <james.quinlan@broadcom.com>
Subject: Re: [PATCH 00/15] PCI: brcmstb: enable PCIe for STB chips
Message-ID: <20200520161541.GA1089402@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519203419.12369-1-james.quinlan@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_091545_445562_4E1300AF 
X-CRM114-Status: GOOD (  15.58  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
 "open list:LIBATA SUBSYSTEM \(Serial and Parallel ATA drivers\)"
 <linux-ide@vger.kernel.org>,
 "open list:DMA MAPPING HELPERS" <iommu@lists.linux-foundation.org>,
 Stefano Stabellini <sstabellini@kernel.org>,
 "open list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 "open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS"
 <linux-pci@vger.kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 04:33:58PM -0400, Jim Quinlan wrote:
> This patchset expands the usefulness of the Broadcom Settop Box PCIe
> controller by building upon the PCIe driver used currently by the
> Raspbery Pi.  Other forms of this patchset were submitted by me years
> ago and not accepted; the major sticking point was the code required
> for the DMA remapping needed for the PCIe driver to work [1].
> 
> There have been many changes to the DMA and OF subsystems since that
> time, making a cleaner and less intrusive patchset possible.  This
> patchset implements a generalization of "dev->dma_pfn_offset", except
> that instead of a single scalar offset it provides for multiple
> offsets via a function which depends upon the "dma-ranges" property of
> the PCIe host controller.  This is required for proper functionality
> of the BrcmSTB PCIe controller and possibly some other devices.
> 
> [1] https://lore.kernel.org/linux-arm-kernel/1516058925-46522-5-git-send-email-jim2101024@gmail.com/
> 
> Jim Quinlan (15):
>   PCI: brcmstb: PCIE_BRCMSTB depends on ARCH_BRCMSTB
>   ahci_brcm: fix use of BCM7216 reset controller
>   dt-bindings: PCI: Add bindings for more Brcmstb chips
>   PCI: brcmstb: Add compatibily of other chips
>   PCI: brcmstb: Add suspend and resume pm_ops
>   PCI: brcmstb: Asserting PERST is different for 7278
>   PCI: brcmstb: Add control of rescal reset
>   of: Include a dev param in of_dma_get_range()
>   device core: Add ability to handle multiple dma offsets
>   dma-direct: Invoke dma offset func if needed
>   arm: dma-mapping: Invoke dma offset func if needed
>   PCI: brcmstb: Set internal memory viewport sizes
>   PCI: brcmstb: Accommodate MSI for older chips
>   PCI: brcmstb: Set bus max burst side by chip type
>   PCI: brcmstb: add compatilbe chips to match list

If you have occasion to post a v2 for other reasons,

s/PCIE_BRCMSTB depends on ARCH_BRCMSTB/Allow PCIE_BRCMSTB on ARCH_BRCMSTB also/
s/ahci_brcm: fix use of BCM7216 reset controller/ata: ahci_brcm: Fix .../
s/Add compatibily of other chips/Add bcm7278 register info/
s/Asserting PERST is different for 7278/Add bcm7278 PERST support/
s/Set bus max burst side/Set bus max burst size/
s/add compatilbe chips.*/Add bcm7211, bcm7216, bcm7445, bcm7278 to match list/

Rewrap commit logs to use full 75 character lines (to allow for the 4
spaces added by git log).

In commit logs, s/This commit// (use imperative mood instead).

In "Accommodate MSI for older chips" commit log, s/commont/common/.

>  .../bindings/pci/brcm,stb-pcie.yaml           |  40 +-
>  arch/arm/include/asm/dma-mapping.h            |  17 +-
>  drivers/ata/ahci_brcm.c                       |  14 +-
>  drivers/of/address.c                          |  54 ++-
>  drivers/of/device.c                           |   2 +-
>  drivers/of/of_private.h                       |   8 +-
>  drivers/pci/controller/Kconfig                |   4 +-
>  drivers/pci/controller/pcie-brcmstb.c         | 403 +++++++++++++++---
>  include/linux/device.h                        |   9 +-
>  include/linux/dma-direct.h                    |  16 +
>  include/linux/dma-mapping.h                   |  44 ++
>  kernel/dma/Kconfig                            |  12 +
>  12 files changed, 542 insertions(+), 81 deletions(-)
> 
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
