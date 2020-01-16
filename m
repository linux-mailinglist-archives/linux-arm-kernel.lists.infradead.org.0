Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C78FE13D3FA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 06:53:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kbf1Jv1z873fTCHGZDYTsaC4gupZNggJ2fCQUBHxQGo=; b=TpaRNCspIQFS/f
	kbiL+NR9NVOykOfFNrlT7jJhfFmWJEDVpyi2m/6cQqiK4aF8+KFlB5CL2XaXgw5S2LTJwkb30B7g4
	eUmMqK5X0z8EK6zABZ6ueE0/6PAZbH4d2Q+iz2CmN6JyUuBKv4Qr0aY4bnvfs99TdpnpDorAlpqHl
	XdcOkWCzz+Bq8qk2d6hJVMvI63a9XQ9S5FWeDXdfyUC+08Ko0YyP5vvNDM/d3iRw77CTsMrhqkbXG
	1CTxCeQnPRAEOmAhVQWW2MgNbKzJqACXGqlxsd5Tcqh2NJXqyELfZKBR1GlI1lAAt4QBcumQRavSr
	rAtJLVehsUxs11sYrSxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iry69-0004dE-JU; Thu, 16 Jan 2020 05:53:41 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iry5y-0004cf-UT; Thu, 16 Jan 2020 05:53:32 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00G5rAQA064244;
 Wed, 15 Jan 2020 23:53:10 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1579153990;
 bh=sOYcxg4iNklbKYvqwCFV5iSNCYi87ZaFpe1ow9AnDTU=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=YbFoQy/NnB0Fi70gEYTGrbWZ9o5nFdZJ7Z3UtPUiMe+IjeJ3qgs7+qECWuxJwjjBt
 cDPuq/5yx6ImrbqYJ7mdLwHBmTS1FN9cNyYH4NqselWP4aCmMz14pqNkUoFkPFx4ZR
 kgveTfWlqEChZCam07S1dGkJjO1jYmXG6qhzMtiw=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 00G5rAxA039773
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 15 Jan 2020 23:53:10 -0600
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 15
 Jan 2020 23:53:10 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 15 Jan 2020 23:53:10 -0600
Received: from [10.24.69.159] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00G5r064074235;
 Wed, 15 Jan 2020 23:53:02 -0600
Subject: Re: [v3 5/6] PCI: rcar: Add support for rcar PCIe controller in
 endpoint mode
To: Lad Prabhakar <prabhakar.csengg@gmail.com>, Bjorn Helgaas
 <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 <linux-pci@vger.kernel.org>
References: <20200108162211.22358-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200108162211.22358-6-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <5cf7fbe3-c7e4-8e8e-9815-a5e52a62615b@ti.com>
Date: Thu, 16 Jan 2020 11:25:12 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20200108162211.22358-6-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_215331_088403_83605293 
X-CRM114-Status: GOOD (  27.21  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Chris Paterson <Chris.Paterson2@renesas.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Arnd Bergmann <arnd@arndb.de>,
 Jingoo Han <jingoohan1@gmail.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Frank Rowand <frowand.list@gmail.com>,
 linux-kernel@vger.kernel.org,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Tom Joseph <tjoseph@cadence.com>, Simon Horman <horms@verge.net.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Murray <andrew.murray@arm.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 08/01/20 9:52 PM, Lad Prabhakar wrote:
> This patch adds support for rcar PCIe controller to work in endpoint mode.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  drivers/pci/controller/Kconfig        |   7 +
>  drivers/pci/controller/Makefile       |   1 +
>  drivers/pci/controller/pcie-rcar-ep.c | 497 ++++++++++++++++++++++++++
>  drivers/pci/controller/pcie-rcar.h    |   6 +
>  4 files changed, 511 insertions(+)
>  create mode 100644 drivers/pci/controller/pcie-rcar-ep.c
> 
> diff --git a/drivers/pci/controller/Kconfig b/drivers/pci/controller/Kconfig
> index b022ac5678f7..69b1c778dad4 100644
> --- a/drivers/pci/controller/Kconfig
> +++ b/drivers/pci/controller/Kconfig
> @@ -61,6 +61,13 @@ config PCIE_RCAR_HOST
>  	help
>  	  Say Y here if you want PCIe controller support on R-Car SoCs in host mode.
>  
> +config PCIE_RCAR_EP
> +	bool "Renesas R-Car PCIe endpoint controller"
> +	depends on ARCH_RENESAS || COMPILE_TEST
> +	depends on PCI_ENDPOINT
> +	help
> +	  Say Y here if you want PCIe controller support on R-Car SoCs in endpoint mode.
> +
>  config PCI_HOST_COMMON
>  	bool
>  	select PCI_ECAM
> diff --git a/drivers/pci/controller/Makefile b/drivers/pci/controller/Makefile
> index 69ba1dbf837b..61505b1fc66a 100644
> --- a/drivers/pci/controller/Makefile
> +++ b/drivers/pci/controller/Makefile
> @@ -8,6 +8,7 @@ obj-$(CONFIG_PCI_AARDVARK) += pci-aardvark.o
>  obj-$(CONFIG_PCI_TEGRA) += pci-tegra.o
>  obj-$(CONFIG_PCI_RCAR_GEN2) += pci-rcar-gen2.o
>  obj-$(CONFIG_PCIE_RCAR_HOST) += pcie-rcar.o pcie-rcar-host.o
> +obj-$(CONFIG_PCIE_RCAR_EP) += pcie-rcar.o pcie-rcar-ep.o
>  obj-$(CONFIG_PCI_HOST_COMMON) += pci-host-common.o
>  obj-$(CONFIG_PCI_HOST_GENERIC) += pci-host-generic.o
>  obj-$(CONFIG_PCIE_XILINX) += pcie-xilinx.o
> diff --git a/drivers/pci/controller/pcie-rcar-ep.c b/drivers/pci/controller/pcie-rcar-ep.c
> new file mode 100644
> index 000000000000..40cd2aad8c3c
> --- /dev/null
> +++ b/drivers/pci/controller/pcie-rcar-ep.c
> @@ -0,0 +1,497 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * PCIe endpoint driver for Renesas R-Car SoCs
> + *  Copyright (c) 2020 Renesas Electronics Europe GmbH
> + *
> + * Author: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/delay.h>
> +#include <linux/of_address.h>
> +#include <linux/of_irq.h>
> +#include <linux/of_pci.h>
> +#include <linux/of_platform.h>
> +#include <linux/pci.h>
> +#include <linux/pci-epc.h>
> +#include <linux/phy/phy.h>
> +#include <linux/platform_device.h>
> +
> +#include "pcie-rcar.h"
> +
> +#define MAX_NR_INBOUND_MAPS	6
> +#define MAX_NR_OUTBOUND_MAPS	4
> +
> +/* Structure representing the PCIe interface */
> +struct rcar_pcie {
> +	phys_addr_t		*ob_addr;
> +	struct pci_epc_mem_window *ob_window;
> +	struct pci_epc		*epc;
> +	struct device		*dev;
> +	void __iomem		*base;
> +	u8			max_functions;
> +	unsigned int		bar_to_atu[MAX_NR_INBOUND_MAPS];
> +	unsigned long		*ib_window_map;
> +	u32			num_ib_windows;
> +	u32			num_ob_windows;
> +};
> +
> +static void rcar_pcie_ep_hw_init(struct rcar_pcie *pcie)
> +{
> +	u32 val;
> +
> +	rcar_pci_write_reg(pcie->base, 0, PCIETCTLR);
> +
> +	/* Set endpoint mode */
> +	rcar_pci_write_reg(pcie->base, 0, PCIEMSR);
> +
> +	/* Initialize default capabilities. */
> +	rcar_rmw32(pcie->base, REXPCAP(0), 0xff, PCI_CAP_ID_EXP);
> +	rcar_rmw32(pcie->base, REXPCAP(PCI_EXP_FLAGS),
> +		   PCI_EXP_FLAGS_TYPE, PCI_EXP_TYPE_ENDPOINT << 4);
> +	rcar_rmw32(pcie->base, RCONF(PCI_HEADER_TYPE), 0x7f,
> +		   PCI_HEADER_TYPE_NORMAL);
> +
> +	/* Write out the physical slot number = 0 */
> +	rcar_rmw32(pcie->base, REXPCAP(PCI_EXP_SLTCAP), PCI_EXP_SLTCAP_PSN, 0);
> +
> +	val = rcar_pci_read_reg(pcie->base, EXPCAP(1));
> +	/* device supports fixed 128 bytes MPSS */
> +	val &= ~GENMASK(2, 0);
> +	/* L1 to L0 transition latency no time limit */
> +	val |= GENMASK(11, 9);
> +	/* L0s to L0 transistion no time limit */
> +	val |= GENMASK(8, 6);
> +	rcar_pci_write_reg(pcie->base, val, EXPCAP(1));
> +
> +	val = rcar_pci_read_reg(pcie->base, EXPCAP(2));
> +	/* read requests size 128 bytes */
> +	val &= ~GENMASK(14, 12);
> +	/* payload size 128 bytes */
> +	val &= ~GENMASK(7, 5);
> +	/* disable relaxed ordering transaction */
> +	val &= ~BIT(4);
> +	rcar_pci_write_reg(pcie->base, val, EXPCAP(2));
> +
> +	val = rcar_pci_read_reg(pcie->base, EXPCAP(4));
> +	/* disable ASPM control */
> +	val &= ~GENMASK(1, 0);
> +	rcar_pci_write_reg(pcie->base, val, EXPCAP(4));
> +
> +	/* Set target link speed to 5.0 GT/s */
> +	rcar_rmw32(pcie->base, EXPCAP(12), PCI_EXP_LNKSTA_CLS,
> +		   PCI_EXP_LNKSTA_CLS_5_0GB);
> +
> +	/* Set the completion timer timeout to the maximum 50ms. */
> +	rcar_rmw32(pcie->base, TLCTLR + 1, 0x3f, 50);
> +
> +	/* Terminate list of capabilities (Next Capability Offset=0) */
> +	rcar_rmw32(pcie->base, RVCCAP(0), 0xfff00000, 0);
> +
> +	/* flush modifications */
> +	wmb();
> +}
> +
> +static int rcar_pcie_parse_outbound_ranges(struct rcar_pcie *pcie,
> +					   struct platform_device *pdev)
> +{
> +	char outbound_name[10];
> +	struct resource *res;
> +	unsigned int i = 0;
> +
> +	pcie->num_ob_windows = 0;
> +	for (i = 0; i < MAX_NR_OUTBOUND_MAPS; i++) {
> +		sprintf(outbound_name, "memory%u", i);
> +		res = platform_get_resource_byname(pdev,
> +						   IORESOURCE_MEM,
> +						   outbound_name);
> +		if (!res) {
> +			dev_err(pcie->dev, "missing outbound window %u\n", i);
> +			return -EINVAL;
> +		}
> +		if (!devm_request_mem_region(&pdev->dev, res->start,
> +					     resource_size(res),
> +					     outbound_name)) {
> +			dev_err(pcie->dev, "Cannot request memory region %s.\n",
> +				outbound_name);
> +			return -EIO;
> +		}
> +
> +		pcie->ob_window[i].phys_base = res->start;
> +		pcie->ob_window[i].size = resource_size(res);
> +		/* controller doesn't support multiple allocation
> +		 * from same window, so set page_size to window size
> +		 */
> +		pcie->ob_window[i].page_size = resource_size(res);

I would prefer the page_size comes from device tree. I'm also thinking
if we should add a standard binding for specifying the outbound memory
regions. Rob, what do you think?

Thanks
Kishon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
