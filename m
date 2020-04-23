Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63AF61B6341
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 20:23:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=iQ9QMmu6GFTL/WPpgQwQTU3NNUyvhJ3z5SxbLBn/B6A=; b=Uca
	YkyYCErDGqqBpgvCiGf/Y5iUbR5JyoU4mwUQmxH70EV20mXj2hukXLgdkCYIQwisYwHpcuqTr5byj
	elsua0XJF5NNPHq7TubvlJQsJYws2quooJ1PC8orXyR2NHUjeqol7CLPKhLBAjrw6CYsPkOBGYWIQ
	dGKORA+uYxF9z17JlxFWLU6X5Eg1XEfGsVGK6PufxcbaMeyqb6PeDgLuWeSzcqnUaaXr434/ZYtLQ
	gDvZmMdfRDGfqOyUj7a8SmHU6BfzhqaLp7HluvVnNmonbgEt4q5s3MTp84I1YhHOn+gTCLl814LNV
	xRnAcoeAc034+ZvLv6OfqfF2zMZLdJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRgVf-0001L1-0r; Thu, 23 Apr 2020 18:23:39 +0000
Received: from relmlor1.renesas.com ([210.160.252.171]
 helo=relmlie5.idc.renesas.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRgVU-0001ID-20; Thu, 23 Apr 2020 18:23:30 +0000
X-IronPort-AV: E=Sophos;i="5.73,307,1583161200"; d="scan'208";a="45545132"
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
 by relmlie5.idc.renesas.com with ESMTP; 24 Apr 2020 03:23:22 +0900
Received: from localhost.localdomain (unknown [10.226.36.204])
 by relmlir6.idc.renesas.com (Postfix) with ESMTP id 70DB240C7B9A;
 Fri, 24 Apr 2020 03:23:17 +0900 (JST)
From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>,
 Tom Joseph <tjoseph@cadence.com>, Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v9 0/8] Add endpoint driver for R-Car PCIe controller
Date: Thu, 23 Apr 2020 19:22:31 +0100
Message-Id: <1587666159-6035-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_112328_546097_98F15E30 
X-CRM114-Status: GOOD (  14.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.160.252.171 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Lad Prabhakar <prabhakar.csengg@gmail.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi All,

This patch series adds support for endpoint driver for R-Car PCIe controller on
R-Car/RZ-G2x SoC's, this also extends the epf framework to handle multiple windows
supported by the controller for mapping PCI address locally.

Note:
The cadence/rockchip/designware endpoint drivers are build tested only.

Changes for v9 (Re-spun this series as there were minimal changes requested):
* Rebased patches on top of v5.7.rc1
* Replaced mdelay(1) with usleep_range(1000, 1001) in rcar_pcie_ep_assert_intx()
* Added a check for max_functions read from DT to restrict with
  RCAR_EPC_MAX_FUNCTIONS
* Replaced MSICAP0_MMENUM with MSICAP0_MMESE
* Retry ioremap for other windows on failure in pci_epc_mem_alloc_addr()
* Fixed looping for number windows in pci_epc_mem_exit()
* Set maximum to 1 for max-functions in DT binding (I have restored the acks
  from  Rob and Shimoda-san)
* Sorted the entry in MAINTAINERS

Changes for v8:
* Dropped adding R8A774C0 (0x002d) pci-id in pci_ids.h
* Fixed typo in commit message for patch 2/8
* Reworded commit message for patch 5/8 as suggested by Bjorn
* Split up patch to add pci_epc_mem_init() interface to add page_size argument
  as suggested by Bjorn.

Changes for v7:
* Fixed review comments pointed by Shimoda-san
  1] Made DT bindings dual licensed, added Shimoda-san as maintainer and fixed
     the example as its built with #{address,size}-cells = <1>. I have still
     restored the Ack from Rob and Shimoda-san with these changes.
  2] Split up the patches so that they can be picked up by respective subsystem
     patches 1/4-9/11 are now part of this series.
  3] Dropped altering a comment in pci-epc.h
  4] Used a local variable align_size in pci_epc_mem_alloc_addr() so that size
     variable doesn't get overwritten in the loop.
  5] Replaced i-=1 with i--
  6] Replaced rcar with R-Car in patch subject and description.
  7] Set MACCTLR in init() callback

Changes for v6:
1] Rebased patches on endpoint branch of https://git.kernel.org/pub/
   scm/linux/kernel/git/lpieralisi/pci.git/
2] Fixed review comments from Shimoda-san
   a] Made sure defconfig changes were in separate patch
   b] Created rcar_pcie_host/rcar_pcie_ep structures
   c] Added pci-id for R8A774C0
   d] Added entry in MAINTAINERS for dt-binding
   e] Dropped unnecessary braces
3] Added support for msi.

Changes for v5:
1] Rebased patches on next branch of https://git.kernel.org/pub/scm/
   linux/kernel/git/helgaas/pci.git
2] Fixed review comments reported by Kishon while fetching the matching
   window in function pci_epc_get_matching_window()
3] Fixed review comments reported by Bjorn
   a] Split patch up first patch so that its easier to review and incremental
   b] Fixed typos
4] Included Reviewed tag from Rob for the dt-binding patch
5] Fixed issue reported by Nathan for assigning variable to itself

Changes for v4:
1] Fixed dtb_check error reported by Rob
2] Fixed review comments reported by Kishon
   a] Dropped pci_epc_find_best_fit_window()
   b] Fixed initializing mem ptr in __pci_epc_mem_init()
   c] Dropped map_size from pci_epc_mem_window structure

Changes for v3:
1] Fixed review comments from Bjorn and Kishon.
3] Converted to DT schema

Changes for v2:
1] Fixed review comments from Biju for dt-bindings to include an example
   for a tested platform.
2] Fixed review comments from Kishon to extend the features of outbound
   regions in epf framework.
3] Added support to parse outbound-ranges in OF.

Lad Prabhakar (8):
  PCI: rcar: Rename pcie-rcar.c to pcie-rcar-host.c
  PCI: rcar: Move shareable code to a common file
  PCI: rcar: Fix calculating mask for PCIEPAMR register
  PCI: endpoint: Pass page size as argument to pci_epc_mem_init()
  PCI: endpoint: Add support to handle multiple base for mapping
    outbound memory
  dt-bindings: PCI: rcar: Add bindings for R-Car PCIe endpoint
    controller
  PCI: rcar: Add endpoint mode support
  MAINTAINERS: Add file patterns for rcar PCI device tree bindings

 .../devicetree/bindings/pci/rcar-pci-ep.yaml  |   77 ++
 MAINTAINERS                                   |    1 +
 drivers/pci/controller/Kconfig                |   18 +
 drivers/pci/controller/Makefile               |    3 +-
 .../pci/controller/cadence/pcie-cadence-ep.c  |    2 +-
 .../pci/controller/dwc/pcie-designware-ep.c   |   16 +-
 drivers/pci/controller/pcie-rcar-ep.c         |  557 ++++++++
 drivers/pci/controller/pcie-rcar-host.c       | 1065 +++++++++++++++
 drivers/pci/controller/pcie-rcar.c            | 1206 +----------------
 drivers/pci/controller/pcie-rcar.h            |  140 ++
 drivers/pci/controller/pcie-rockchip-ep.c     |    2 +-
 drivers/pci/endpoint/pci-epc-mem.c            |  204 ++-
 include/linux/pci-epc.h                       |   38 +-
 13 files changed, 2078 insertions(+), 1251 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml
 create mode 100644 drivers/pci/controller/pcie-rcar-ep.c
 create mode 100644 drivers/pci/controller/pcie-rcar-host.c
 create mode 100644 drivers/pci/controller/pcie-rcar.h

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
