Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A0CC1AFAA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 07:06:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NEh8/JXCCt48kQnF6lUuyxN6ehlDyoGkz79I5yqsbp0=; b=qtgTXPBAPZ5zhA
	Qrmhxvfd6DtNqpkrdnXibO520KyRHd7jgOOcFgkB8N2L1rVtyv010+6/y3jFQWXJroJpyLsUpw5xZ
	xeu8Q2zu44nFzwxzRnjolejmhaxPRWunyGFx8gGZ8vkWIOr8o9t864wgmqvGzPka6ZjJOHBX0ShrC
	NxcWEZJ3KQ7YLatGXKiLFI2Ty3KFzOIkeKQd0REeWskvRMgoDrOTFSWF8vks7QXaJK3ExXqwdSmf+
	StBLlwoQ+M0y9SX6/w/1Nx7br+y3RDSR4FdTJ4ZUI1+F/0p3jnY2wC06rX/CD3oVaLzXNEFnjU6ad
	3dx8Aw/NxBKPcKZEPVLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ3Am-0006BX-TS; Mon, 13 May 2019 05:06:48 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ3Af-0006AU-DW
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 05:06:43 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5cd8fb630000>; Sun, 12 May 2019 22:06:43 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Sun, 12 May 2019 22:06:36 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Sun, 12 May 2019 22:06:36 -0700
Received: from HQMAIL110.nvidia.com (172.18.146.15) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 13 May
 2019 05:06:35 +0000
Received: from HQMAIL104.nvidia.com (172.18.146.11) by hqmail110.nvidia.com
 (172.18.146.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 13 May
 2019 05:06:35 +0000
Received: from hqnvemgw01.nvidia.com (172.20.150.20) by HQMAIL104.nvidia.com
 (172.18.146.11) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via Frontend
 Transport; Mon, 13 May 2019 05:06:35 +0000
Received: from vidyas-desktop.nvidia.com (Not Verified[10.24.37.38]) by
 hqnvemgw01.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5cd8fb560000>; Sun, 12 May 2019 22:06:35 -0700
From: Vidya Sagar <vidyas@nvidia.com>
To: <lorenzo.pieralisi@arm.com>, <bhelgaas@google.com>, <robh+dt@kernel.org>, 
 <mark.rutland@arm.com>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>,
 <kishon@ti.com>, <catalin.marinas@arm.com>, <will.deacon@arm.com>,
 <jingoohan1@gmail.com>, <gustavo.pimentel@synopsys.com>
Subject: [PATCH V6 00/15] Add Tegra194 PCIe support
Date: Mon, 13 May 2019 10:36:11 +0530
Message-ID: <20190513050626.14991-1-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
X-NVConfidentiality: public
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1557724003; bh=xWG0V3ZMuvtipmob5YakqMZyzY8swTAv30VFsQpP3I8=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 X-NVConfidentiality:MIME-Version:Content-Type;
 b=Ro9kxymc+d+a7iywykkyLsrnMz10BNzDA8iKRaN39i1gMRj7dkhRW3Ea1uD/jKh2G
 tdn3ochyLaGfW+X8C1RVbcM3OEQyWCOngpsH/RJOFu3Nc3LCHCR/NoUs//kP+Y9nI/
 J//soip8X2gQ4yFk9cYKY1WCMbrwS95ivxVOwDyv4Tk8HNRgTiUmX0pOKysGH7BBlu
 oMcjLR0+Rzw+SzhfgbsJCBZn7LHaBnhHFhV+CuDUInxjHSPb/zjFQbOlSMmBA2md53
 mKc+uZ2Wkh0Xjk01U7QhX2uYoBqmMxYSNJCvbY+iaD/XhahoshzH1aVH4OwpDOnJJk
 MV9qCG0gBpvhA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_220641_473032_88305360 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 linux-tegra@vger.kernel.org, vidyas@nvidia.com,
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

Note
- Enabling x8 slot on P2972-0000 platform requires pinmux driver for Tegra194.
  It is being worked on currently and hence Controller:5 (i.e. x8 slot) is
  disabled in this patch series. A future patch series would enable this.
- This series is based on top of the following series
  Jisheng's patches to add support to .remove() in Designware sub-system
  https://patchwork.kernel.org/project/linux-pci/list/?series=98559
  (Jisheng's patches are now accepted and applied for v5.2)
  My patches made on top of Jisheng's patches to export various symbols
  https://patchwork.kernel.org/project/linux-pci/list/?series=101259

Changes since [v5]:
* Removed patch that exports pcie_bus_config symbol
* Took care of review comments from Thierry and Rob

Changes since [v4]:
* Removed redundant APIs in pcie-designware-ep.c file after moving them
  to pcie-designware.c file based on Bjorn's review comments

Changes since [v3]:
* Rebased on top of linux-next top of the tree
* Addressed Gustavo's comments and added his Ack for some of the changes.

Changes since [v2]:
* Addressed review comments from Thierry

Changes since [v1]:
* Addressed review comments from Bjorn, Thierry, Jonathan, Rob & Kishon
* Added more patches in v2 series

Vidya Sagar (15):
  PCI: Add #defines for some of PCIe spec r4.0 features
  PCI/PME: Export pcie_pme_disable_msi() & pcie_pme_no_msi() APIs
  PCI: dwc: Perform dbi regs write lock towards the end
  PCI: dwc: Move config space capability search API
  PCI: dwc: Add ext config space capability search API
  dt-bindings: PCI: designware: Add binding for CDM register check
  PCI: dwc: Add support to enable CDM register check
  dt-bindings: Add PCIe supports-clkreq property
  dt-bindings: PCI: tegra: Add device tree support for Tegra194
  dt-bindings: PHY: P2U: Add Tegra194 P2U block
  arm64: tegra: Add P2U and PCIe controller nodes to Tegra194 DT
  arm64: tegra: Enable PCIe slots in P2972-0000 board
  phy: tegra: Add PCIe PIPE2UPHY support
  PCI: tegra: Add Tegra194 PCIe support
  arm64: Add Tegra194 PCIe driver to defconfig

 .../bindings/pci/designware-pcie.txt          |    5 +
 .../bindings/pci/nvidia,tegra194-pcie.txt     |  164 ++
 Documentation/devicetree/bindings/pci/pci.txt |    5 +
 .../bindings/phy/phy-tegra194-p2u.txt         |   28 +
 .../arm64/boot/dts/nvidia/tegra194-p2888.dtsi |    2 +-
 .../boot/dts/nvidia/tegra194-p2972-0000.dts   |   41 +
 arch/arm64/boot/dts/nvidia/tegra194.dtsi      |  449 +++++
 arch/arm64/configs/defconfig                  |    1 +
 drivers/pci/controller/dwc/Kconfig            |   10 +
 drivers/pci/controller/dwc/Makefile           |    1 +
 .../pci/controller/dwc/pcie-designware-ep.c   |   37 +-
 .../pci/controller/dwc/pcie-designware-host.c |   14 +-
 drivers/pci/controller/dwc/pcie-designware.c  |   87 +
 drivers/pci/controller/dwc/pcie-designware.h  |   12 +
 drivers/pci/controller/dwc/pcie-tegra194.c    | 1678 +++++++++++++++++
 drivers/pci/pcie/pme.c                        |   14 +-
 drivers/pci/pcie/portdrv.h                    |   14 +-
 drivers/phy/tegra/Kconfig                     |    7 +
 drivers/phy/tegra/Makefile                    |    1 +
 drivers/phy/tegra/pcie-p2u-tegra194.c         |  109 ++
 include/uapi/linux/pci_regs.h                 |   22 +-
 21 files changed, 2645 insertions(+), 56 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.txt
 create mode 100644 Documentation/devicetree/bindings/phy/phy-tegra194-p2u.txt
 create mode 100644 drivers/pci/controller/dwc/pcie-tegra194.c
 create mode 100644 drivers/phy/tegra/pcie-p2u-tegra194.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
