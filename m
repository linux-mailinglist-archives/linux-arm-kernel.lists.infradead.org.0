Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B2D71CD6AC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 12:37:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mxnzPOVQU1LGKQXZCtAPT1ya43ez1lvz0p9SCBR9p+k=; b=fBokCRyFvHVjHq
	HKLI6vWBWzNL23rODyqADEtJ+P35Kcrn8yjFrY6K0in9lvZ5PL80nnvqkyFpFjEhJSoV8TXMIL5SP
	T3WMYNxgyWyUCipSF2Nw3rF8EP2vqrlKaazd5WPTJk3D/RLO3ApofCllHRn3fzTQ4ul5hPGv02yOi
	bKtaETM79EsJisUfmcXVMKB+pQ5JDuGN1zmu0lphH5butMY+eKYjANcTsHiBPtIxVw24aaQFaNXiF
	ZdX3BOZdz0JeaSm6a123ohhe2yGASNicr+NdrfAB+rEfZlhxHtIDoyHO76Nxnz/b8wYlOUa9IOX6s
	OnLTbE5onaPa//iD+lLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY5o5-0006PR-BH; Mon, 11 May 2020 10:37:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY5nv-0006OU-T5; Mon, 11 May 2020 10:37:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DCE101FB;
 Mon, 11 May 2020 03:36:58 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 917703F305;
 Mon, 11 May 2020 03:36:56 -0700 (PDT)
Date: Mon, 11 May 2020 11:36:54 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH v10 0/8] Add endpoint driver for R-Car PCIe controller
Message-ID: <20200511103654.GD24149@e121166-lin.cambridge.arm.com>
References: <1588854799-13710-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1588854799-13710-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_033700_026645_040D432C 
X-CRM114-Status: GOOD (  24.72  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Jingoo Han <jingoohan1@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-renesas-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Tom Joseph <tjoseph@cadence.com>,
 Rob Herring <robh+dt@kernel.org>, Prabhakar <prabhakar.csengg@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org,
 Marek Vasut <marek.vasut+renesas@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 01:33:11PM +0100, Lad Prabhakar wrote:
> Hi All,
> 
> This patch series adds support for endpoint driver for R-Car PCIe controller on
> R-Car/RZ-G2x SoC's, this also extends the epf framework to handle multiple windows
> supported by the controller for mapping PCI address locally.
> 
> Note:
> The rockchip/dwc endpoint drivers are build tested only and was tested on cadence
> by Kishon (https://lkml.org/lkml/2020/5/6/1535)
> 
> Changes for v10:
> * Rebased patches on top of pci/rcar branch on tree
>   https://git.kernel.org/pub/scm/linux/kernel/git/lpieralisi/pci.git
> * Made pci_epc_get_matching_window() as static
> * Included Ack's from Kishon for patches 4/8 and 5/8
> * Included Reviewed-by tag from Shimoda-san for patches 4/8 and 5/8
> 
> Changes for v9:
> * Rebased patches on top of v5.7.rc1
> * Replaced mdelay(1) with usleep_range(1000, 1001) in rcar_pcie_ep_assert_intx()
> * Added a check for max_functions read from DT to restrict with
>   RCAR_EPC_MAX_FUNCTIONS
> * Replaced MSICAP0_MMENUM with MSICAP0_MMESE
> * Retry ioremap for other windows on failure in pci_epc_mem_alloc_addr()
> * Fixed looping for number windows in pci_epc_mem_exit()
> * Set maximum to 1 for max-functions in DT binding (I have restored the acks
>   from  Rob and Shimoda-san)
> * Sorted the entry in MAINTAINERS
> 
> Changes for v8:
> * Dropped adding R8A774C0 (0x002d) pci-id in pci_ids.h
> * Fixed typo in commit message for patch 2/8
> * Reworded commit message for patch 5/8 as suggested by Bjorn
> * Split up patch to add pci_epc_mem_init() interface to add page_size argument
>   as suggested by Bjorn.
> 
> Changes for v7:
> * Fixed review comments pointed by Shimoda-san
>   1] Made DT bindings dual licensed, added Shimoda-san as maintainer and fixed
>      the example as its built with #{address,size}-cells = <1>. I have still
>      restored the Ack from Rob and Shimoda-san with these changes.
>   2] Split up the patches so that they can be picked up by respective subsystem
>      patches 1/4-9/11 are now part of this series.
>   3] Dropped altering a comment in pci-epc.h
>   4] Used a local variable align_size in pci_epc_mem_alloc_addr() so that size
>      variable doesn't get overwritten in the loop.
>   5] Replaced i-=1 with i--
>   6] Replaced rcar with R-Car in patch subject and description.
>   7] Set MACCTLR in init() callback
> 
> Changes for v6:
> 1] Rebased patches on endpoint branch of https://git.kernel.org/pub/
>    scm/linux/kernel/git/lpieralisi/pci.git/
> 2] Fixed review comments from Shimoda-san
>    a] Made sure defconfig changes were in separate patch
>    b] Created rcar_pcie_host/rcar_pcie_ep structures
>    c] Added pci-id for R8A774C0
>    d] Added entry in MAINTAINERS for dt-binding
>    e] Dropped unnecessary braces
> 3] Added support for msi.
> 
> Changes for v5:
> 1] Rebased patches on next branch of https://git.kernel.org/pub/scm/
>    linux/kernel/git/helgaas/pci.git
> 2] Fixed review comments reported by Kishon while fetching the matching
>    window in function pci_epc_get_matching_window()
> 3] Fixed review comments reported by Bjorn
>    a] Split patch up first patch so that its easier to review and incremental
>    b] Fixed typos
> 4] Included Reviewed tag from Rob for the dt-binding patch
> 5] Fixed issue reported by Nathan for assigning variable to itself
> 
> Changes for v4:
> 1] Fixed dtb_check error reported by Rob
> 2] Fixed review comments reported by Kishon
>    a] Dropped pci_epc_find_best_fit_window()
>    b] Fixed initializing mem ptr in __pci_epc_mem_init()
>    c] Dropped map_size from pci_epc_mem_window structure
> 
> Changes for v3:
> 1] Fixed review comments from Bjorn and Kishon.
> 3] Converted to DT schema
> 
> Changes for v2:
> 1] Fixed review comments from Biju for dt-bindings to include an example
>    for a tested platform.
> 2] Fixed review comments from Kishon to extend the features of outbound
>    regions in epf framework.
> 3] Added support to parse outbound-ranges in OF.
> 
> Lad Prabhakar (8):
>   PCI: rcar: Rename pcie-rcar.c to pcie-rcar-host.c
>   PCI: rcar: Move shareable code to a common file
>   PCI: rcar: Fix calculating mask for PCIEPAMR register
>   PCI: endpoint: Pass page size as argument to pci_epc_mem_init()
>   PCI: endpoint: Add support to handle multiple base for mapping
>     outbound memory
>   dt-bindings: PCI: rcar: Add bindings for R-Car PCIe endpoint
>     controller
>   PCI: rcar: Add endpoint mode support
>   MAINTAINERS: Add file patterns for rcar PCI device tree bindings
> 
>  .../devicetree/bindings/pci/rcar-pci-ep.yaml  |   77 +
>  MAINTAINERS                                   |    1 +
>  drivers/pci/controller/Kconfig                |   18 +
>  drivers/pci/controller/Makefile               |    3 +-
>  .../pci/controller/cadence/pcie-cadence-ep.c  |    2 +-
>  .../pci/controller/dwc/pcie-designware-ep.c   |   16 +-
>  drivers/pci/controller/pcie-rcar-ep.c         |  563 ++++++++
>  drivers/pci/controller/pcie-rcar-host.c       | 1130 +++++++++++++++
>  drivers/pci/controller/pcie-rcar.c            | 1268 +----------------
>  drivers/pci/controller/pcie-rcar.h            |  140 ++
>  drivers/pci/controller/pcie-rockchip-ep.c     |    2 +-
>  drivers/pci/endpoint/pci-epc-mem.c            |  204 ++-
>  include/linux/pci-epc.h                       |   38 +-
>  13 files changed, 2150 insertions(+), 1312 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml
>  create mode 100644 drivers/pci/controller/pcie-rcar-ep.c
>  create mode 100644 drivers/pci/controller/pcie-rcar-host.c
>  create mode 100644 drivers/pci/controller/pcie-rcar.h
 

Applied to pci/rcar, thanks !

Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
