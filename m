Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C25E98BEAA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 18:33:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6m8UCzCYqeG+CY/KO3XksvKEJTq+f3mJTatFAXd/YVA=; b=c8I/NRPyQcwF6p
	39w8ktUtt7gTsosIgXkJynwWTPaM6Da9PTpwcOc69FhdCPEkuggCOINg3sW479JqywJeJx60+H+Rv
	cvlxO6iu0uH5jz7nN8QV/9cT/al20ys6dYiK8MMf/1yeHZU/+ntUISLn7kofs+eqvb6sdX6nP8ekB
	C19qvMVhik3rmT4IXe+m3glYy6fizsuLKV5MFljrvBtqRmHk/JY8HX/EMnklSVxUVoaP9vnckqIdn
	xb21cDzAklgsmSf3l/5+fm853ZOyJxW0Qu6D1faKK/3FLYrG8WJTbOSeYQb7xk55D3DxQ7sefeO8J
	4vRxbP1aZLapIYS0dHjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxZjw-0004tc-Ut; Tue, 13 Aug 2019 16:33:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxZjg-0004sl-JP
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 16:33:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5AFD3337;
 Tue, 13 Aug 2019 09:33:23 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C64A03F706;
 Tue, 13 Aug 2019 09:33:20 -0700 (PDT)
Date: Tue, 13 Aug 2019 17:33:18 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V16 00/13] PCI: tegra: Add Tegra194 PCIe support
Message-ID: <20190813163318.GB5070@e121166-lin.cambridge.arm.com>
References: <20190813113627.27251-1-vidyas@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190813113627.27251-1-vidyas@nvidia.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_093324_737145_28F06901 
X-CRM114-Status: GOOD (  23.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, mperttunen@nvidia.com,
 mmaddireddy@nvidia.com, linux-pci@vger.kernel.org, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, kthota@nvidia.com,
 kishon@ti.com, linux-tegra@vger.kernel.org, robh+dt@kernel.org,
 thierry.reding@gmail.com, gustavo.pimentel@synopsys.com, jingoohan1@gmail.com,
 bhelgaas@google.com, digetx@gmail.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 05:06:14PM +0530, Vidya Sagar wrote:
> Tegra194 has six PCIe controllers based on Synopsys DesignWare core.
> There are two Universal PHY (UPHY) blocks with each supporting 12(HSIO:
> Hisg Speed IO) and 8(NVHS: NVIDIA High Speed) lanes respectively.
> Controllers:0~4 use UPHY lanes from HSIO brick whereas Controller:5 uses
> UPHY lanes from NVHS brick. Lane mapping in HSIO UPHY brick to each PCIe
> controller (0~4) is controlled in XBAR module by BPMP-FW. Since PCIe
> core has PIPE interface, a glue module called PIPE-to-UPHY (P2U) is used
> to connect each UPHY lane (applicable to both HSIO and NVHS UPHY bricks)
> to PCIe controller
> This patch series
> - Adds support for P2U PHY driver
> - Adds support for PCIe host controller
> - Adds device tree nodes each PCIe controllers
> - Enables nodes applicable to p2972-0000 platform
> - Adds helper APIs in Designware core driver to get capability regs offset
> - Adds defines for new feature registers of PCIe spec revision 4
> - Makes changes in DesignWare core driver to get Tegra194 PCIe working
> 
> Testing done on P2972-0000 platform
> - Able to get PCIe link up with on-board Marvel eSATA controller
> - Able to get PCIe link up with NVMe cards connected to M.2 Key-M slot
> - Able to do data transfers with both SATA drives and NVMe cards
> - Able to perform suspend-resume sequence
> 
> Note
> - Enabling x8 slot on P2972-0000 platform requires pinmux driver for Tegra194.
>   It is being worked on currently and hence Controller:5 (i.e. x8 slot) is
>   disabled in this patch series. A future patch series would enable this.
> - This series is based on top of the following series
>   Jisheng's patches to add support to .remove() in Designware sub-system
>   https://patchwork.kernel.org/project/linux-pci/list/?series=98559
>   (Update: Jisheng's patches are now accepted and applied for v5.2)
>   My patches made on top of Jisheng's patches to export various symbols
>   http://patchwork.ozlabs.org/project/linux-pci/list/?series=115671
>   (Update: My above patch series is accepted and applied for v5.3)
>   Another patch of mine to enable BPMP-FW resume in noirq phase
>   http://patchwork.ozlabs.org/patch/1140973/
>   (This is already accepted)
> 
> V16:
> * Added empty lines (cosmetic changes) where required in pcie-tegra194.c file
>   to address Lorenzo's review comments.
> 
> V15:
> * Refactored pcie-tegra194.c code to call only tegra_bpmp_transfer() API
>   in both .probe() path and .resume_noirq() path.
> 
> V14:
> * Addressed Lorenzo's review comments in pcie-tegra194.c file (Patch 13/13)
> * Added a new patch to export dw_pcie_wait_for_link() API
> 
> V13:
> * Addressed Bjorn's review comments for adding Gen-4 specific defines to pci_regs.h header file
> 
> V12:
> * Modified the commit message of patch-3 in this series to address review
>   comments from Lorenzo
> 
> V11:
> * Removed device-tree patches from the series as they are applied to relevant
>   Tegra specific trees by Thierry Reding.
> * Included older Tegra chips to extend quirk that disables MSI interrupt being
>   used for Tegra PCIe root ports.
> * Addressed review comments in P2U driver file.
> 
> V10:
> * Used _relaxed() versions of readl() & writel()
> 
> V9:
> * Made the drivers dependent on ARCH_TEGRA_194_SOC directly
> * Addressed review comments from Dmitry
> 
> V8:
> * Changed P2U driver file name from pcie-p2u-tegra194.c to phy-tegra194-p2u.c
> * Addressed review comments from Thierry and Rob
> 
> V7:
> * Took care of review comments from Rob
> * Added a quirk to disable MSI for root ports
> * Removed using pcie_pme_disable_msi() API in host controller driver
> 
> V6:
> * Removed patch that exports pcie_bus_config symbol
> * Took care of review comments from Thierry and Rob
> 
> V5:
> * Removed redundant APIs in pcie-designware-ep.c file after moving them
>   to pcie-designware.c file based on Bjorn's review comments
> 
> V4:
> * Rebased on top of linux-next top of the tree
> * Addressed Gustavo's comments and added his Ack for some of the changes.
> 
> V3:
> * Addressed review comments from Thierry
> 
> V2:
> * Addressed review comments from Bjorn, Thierry, Jonathan, Rob & Kishon
> * Added more patches in v2 series
> 
> Vidya Sagar (13):
>   PCI: Add #defines for some of PCIe spec r4.0 features
>   PCI: Disable MSI for Tegra root ports
>   PCI: dwc: Perform dbi regs write lock towards the end
>   PCI: dwc: Move config space capability search API
>   PCI: dwc: Add ext config space capability search API
>   PCI: dwc: Export dw_pcie_wait_for_link() API
>   dt-bindings: PCI: designware: Add binding for CDM register check
>   PCI: dwc: Add support to enable CDM register check
>   dt-bindings: Add PCIe supports-clkreq property
>   dt-bindings: PCI: tegra: Add device tree support for Tegra194
>   dt-bindings: PHY: P2U: Add Tegra194 P2U block
>   phy: tegra: Add PCIe PIPE2UPHY support
>   PCI: tegra: Add Tegra194 PCIe support
> 
>  .../bindings/pci/designware-pcie.txt          |    5 +
>  .../bindings/pci/nvidia,tegra194-pcie.txt     |  155 ++
>  Documentation/devicetree/bindings/pci/pci.txt |    5 +
>  .../bindings/phy/phy-tegra194-p2u.txt         |   28 +
>  drivers/pci/controller/dwc/Kconfig            |   10 +
>  drivers/pci/controller/dwc/Makefile           |    1 +
>  .../pci/controller/dwc/pcie-designware-ep.c   |   37 +-
>  .../pci/controller/dwc/pcie-designware-host.c |   14 +-
>  drivers/pci/controller/dwc/pcie-designware.c  |   88 +
>  drivers/pci/controller/dwc/pcie-designware.h  |   12 +
>  drivers/pci/controller/dwc/pcie-tegra194.c    | 1631 +++++++++++++++++
>  drivers/pci/quirks.c                          |   53 +
>  drivers/phy/tegra/Kconfig                     |    7 +
>  drivers/phy/tegra/Makefile                    |    1 +
>  drivers/phy/tegra/phy-tegra194-p2u.c          |  120 ++
>  include/uapi/linux/pci_regs.h                 |   14 +-
>  16 files changed, 2139 insertions(+), 42 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.txt
>  create mode 100644 Documentation/devicetree/bindings/phy/phy-tegra194-p2u.txt
>  create mode 100644 drivers/pci/controller/dwc/pcie-tegra194.c
>  create mode 100644 drivers/phy/tegra/phy-tegra194-p2u.c
> 

I have applied it to pci/tegra, subject to kbuild test validation,
for v5.4.

Thanks,
Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
