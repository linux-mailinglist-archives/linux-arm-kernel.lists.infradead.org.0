Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D03568B717
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 13:36:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R3pi6peqmyT7fOPKGay15TPOB+5714hi4PALu7kTgdQ=; b=hWtZeZUMg/m7U5
	1FMfZ9elvXfCLwiP/lvQFbcNyfwyI9J/rZios6j6XerWAQFB69C5/DX54Zc6fp+b0V8+xpyLKXfBU
	7UiBPwTfB/ICN/ZiOeDSDX++8/dx+yVnD2Rx1wtCVDKIv3v4cqErKcp7GjfPeReKnrFCaaMVtQ3BM
	+c6jyf8kwJcsS84faJMzfnHc94YzRxs+u6WwDiwF+9jGVjDULiVHeu6S2WLgBn5pvBem/FHbbj+PP
	B7yCjWzVo1Qs4ZQjvjS+52IV7CkhmhNUuOiJS4+7Jq7oUomKDhtnJz8mSciWKCi+MCrfBn9jE6F5p
	eyLpTTV+Aglfq6+mZ7Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxV6k-0008GV-7n; Tue, 13 Aug 2019 11:36:54 +0000
Received: from hqemgate16.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxV6V-0008FQ-CG
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 11:36:41 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d52a0c70000>; Tue, 13 Aug 2019 04:36:39 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Tue, 13 Aug 2019 04:36:37 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Tue, 13 Aug 2019 04:36:37 -0700
Received: from HQMAIL111.nvidia.com (172.20.187.18) by HQMAIL104.nvidia.com
 (172.18.146.11) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 13 Aug
 2019 11:36:36 +0000
Received: from hqnvemgw01.nvidia.com (172.20.150.20) by HQMAIL111.nvidia.com
 (172.20.187.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via Frontend
 Transport; Tue, 13 Aug 2019 11:36:36 +0000
Received: from vidyas-desktop.nvidia.com (Not Verified[10.24.37.38]) by
 hqnvemgw01.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5d52a0bf0000>; Tue, 13 Aug 2019 04:36:36 -0700
From: Vidya Sagar <vidyas@nvidia.com>
To: <lorenzo.pieralisi@arm.com>, <bhelgaas@google.com>, <robh+dt@kernel.org>, 
 <mark.rutland@arm.com>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>,
 <kishon@ti.com>, <catalin.marinas@arm.com>, <will.deacon@arm.com>,
 <jingoohan1@gmail.com>, <gustavo.pimentel@synopsys.com>
Subject: [PATCH V16 00/13] PCI: tegra: Add Tegra194 PCIe support
Date: Tue, 13 Aug 2019 17:06:14 +0530
Message-ID: <20190813113627.27251-1-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
X-NVConfidentiality: public
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1565696199; bh=VfU900QiqpG6iOJvc3a7AtTlH+47OeYW7SxMKxlX1ww=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 X-NVConfidentiality:MIME-Version:Content-Type;
 b=QFEpo5lJ13NCjgvy+bB8tCF34wWpwcY0aCR6NaUSqNnoh/PH2nUPRWd78PDssGUEo
 8Zv1vB2ny3uMP+vt+nv0BMF0NOtQOBpV60qM59W+5UgtM77cRdJ9PSAOgYrXLOGD/A
 330bprubomngrPyEB2DdVa7d524ZbbqUi7Uig3zmujdgVjsA5T6p647js6YA6zRVq3
 98NXf81VQDAeqdip5QdmpEBvMU6vMVP64qHg+NTmb+10ilIY7X2YNw1xxzBCAu+DPE
 Ttf+LCHcwSO4mSyoClJ4UIyru8uwmGtQcSyMTP74IqUbt8SJ3xa5QfkOF1FLDO8dxZ
 zE4etKY5ueJVw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_043639_435026_BEE8A489 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, mmaddireddy@nvidia.com, kthota@nvidia.com,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, mperttunen@nvidia.com,
 linux-tegra@vger.kernel.org, digetx@gmail.com, vidyas@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Tegra194 has six PCIe controllers based on Synopsys DesignWare core.
There are two Universal PHY (UPHY) blocks with each supporting 12(HSIO:
Hisg Speed IO) and 8(NVHS: NVIDIA High Speed) lanes respectively.
Controllers:0~4 use UPHY lanes from HSIO brick whereas Controller:5 uses
UPHY lanes from NVHS brick. Lane mapping in HSIO UPHY brick to each PCIe
controller (0~4) is controlled in XBAR module by BPMP-FW. Since PCIe
core has PIPE interface, a glue module called PIPE-to-UPHY (P2U) is used
to connect each UPHY lane (applicable to both HSIO and NVHS UPHY bricks)
to PCIe controller
This patch series
- Adds support for P2U PHY driver
- Adds support for PCIe host controller
- Adds device tree nodes each PCIe controllers
- Enables nodes applicable to p2972-0000 platform
- Adds helper APIs in Designware core driver to get capability regs offset
- Adds defines for new feature registers of PCIe spec revision 4
- Makes changes in DesignWare core driver to get Tegra194 PCIe working

Testing done on P2972-0000 platform
- Able to get PCIe link up with on-board Marvel eSATA controller
- Able to get PCIe link up with NVMe cards connected to M.2 Key-M slot
- Able to do data transfers with both SATA drives and NVMe cards
- Able to perform suspend-resume sequence

Note
- Enabling x8 slot on P2972-0000 platform requires pinmux driver for Tegra194.
  It is being worked on currently and hence Controller:5 (i.e. x8 slot) is
  disabled in this patch series. A future patch series would enable this.
- This series is based on top of the following series
  Jisheng's patches to add support to .remove() in Designware sub-system
  https://patchwork.kernel.org/project/linux-pci/list/?series=98559
  (Update: Jisheng's patches are now accepted and applied for v5.2)
  My patches made on top of Jisheng's patches to export various symbols
  http://patchwork.ozlabs.org/project/linux-pci/list/?series=115671
  (Update: My above patch series is accepted and applied for v5.3)
  Another patch of mine to enable BPMP-FW resume in noirq phase
  http://patchwork.ozlabs.org/patch/1140973/
  (This is already accepted)

V16:
* Added empty lines (cosmetic changes) where required in pcie-tegra194.c file
  to address Lorenzo's review comments.

V15:
* Refactored pcie-tegra194.c code to call only tegra_bpmp_transfer() API
  in both .probe() path and .resume_noirq() path.

V14:
* Addressed Lorenzo's review comments in pcie-tegra194.c file (Patch 13/13)
* Added a new patch to export dw_pcie_wait_for_link() API

V13:
* Addressed Bjorn's review comments for adding Gen-4 specific defines to pci_regs.h header file

V12:
* Modified the commit message of patch-3 in this series to address review
  comments from Lorenzo

V11:
* Removed device-tree patches from the series as they are applied to relevant
  Tegra specific trees by Thierry Reding.
* Included older Tegra chips to extend quirk that disables MSI interrupt being
  used for Tegra PCIe root ports.
* Addressed review comments in P2U driver file.

V10:
* Used _relaxed() versions of readl() & writel()

V9:
* Made the drivers dependent on ARCH_TEGRA_194_SOC directly
* Addressed review comments from Dmitry

V8:
* Changed P2U driver file name from pcie-p2u-tegra194.c to phy-tegra194-p2u.c
* Addressed review comments from Thierry and Rob

V7:
* Took care of review comments from Rob
* Added a quirk to disable MSI for root ports
* Removed using pcie_pme_disable_msi() API in host controller driver

V6:
* Removed patch that exports pcie_bus_config symbol
* Took care of review comments from Thierry and Rob

V5:
* Removed redundant APIs in pcie-designware-ep.c file after moving them
  to pcie-designware.c file based on Bjorn's review comments

V4:
* Rebased on top of linux-next top of the tree
* Addressed Gustavo's comments and added his Ack for some of the changes.

V3:
* Addressed review comments from Thierry

V2:
* Addressed review comments from Bjorn, Thierry, Jonathan, Rob & Kishon
* Added more patches in v2 series

Vidya Sagar (13):
  PCI: Add #defines for some of PCIe spec r4.0 features
  PCI: Disable MSI for Tegra root ports
  PCI: dwc: Perform dbi regs write lock towards the end
  PCI: dwc: Move config space capability search API
  PCI: dwc: Add ext config space capability search API
  PCI: dwc: Export dw_pcie_wait_for_link() API
  dt-bindings: PCI: designware: Add binding for CDM register check
  PCI: dwc: Add support to enable CDM register check
  dt-bindings: Add PCIe supports-clkreq property
  dt-bindings: PCI: tegra: Add device tree support for Tegra194
  dt-bindings: PHY: P2U: Add Tegra194 P2U block
  phy: tegra: Add PCIe PIPE2UPHY support
  PCI: tegra: Add Tegra194 PCIe support

 .../bindings/pci/designware-pcie.txt          |    5 +
 .../bindings/pci/nvidia,tegra194-pcie.txt     |  155 ++
 Documentation/devicetree/bindings/pci/pci.txt |    5 +
 .../bindings/phy/phy-tegra194-p2u.txt         |   28 +
 drivers/pci/controller/dwc/Kconfig            |   10 +
 drivers/pci/controller/dwc/Makefile           |    1 +
 .../pci/controller/dwc/pcie-designware-ep.c   |   37 +-
 .../pci/controller/dwc/pcie-designware-host.c |   14 +-
 drivers/pci/controller/dwc/pcie-designware.c  |   88 +
 drivers/pci/controller/dwc/pcie-designware.h  |   12 +
 drivers/pci/controller/dwc/pcie-tegra194.c    | 1631 +++++++++++++++++
 drivers/pci/quirks.c                          |   53 +
 drivers/phy/tegra/Kconfig                     |    7 +
 drivers/phy/tegra/Makefile                    |    1 +
 drivers/phy/tegra/phy-tegra194-p2u.c          |  120 ++
 include/uapi/linux/pci_regs.h                 |   14 +-
 16 files changed, 2139 insertions(+), 42 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.txt
 create mode 100644 Documentation/devicetree/bindings/phy/phy-tegra194-p2u.txt
 create mode 100644 drivers/pci/controller/dwc/pcie-tegra194.c
 create mode 100644 drivers/phy/tegra/phy-tegra194-p2u.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
