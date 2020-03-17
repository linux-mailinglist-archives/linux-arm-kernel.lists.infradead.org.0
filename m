Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 041AC187DA6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 10:59:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3TmJlKbixKix19q6iNeEPBDsVBn9z8LGD79VHEZHYdg=; b=Bb8QkS2+bGrfdd
	vA/Qwjuma+8y8Aq8j5VRPyHQkDwcYgvmeuy1zDl3LMHXf59mTWH1m7fcd9RAmOBTSlDQLhTjbZVgn
	LbV3tfUgfLM6LodhVXkRhc0BBa48oZAsZjZosHpRSM1RGYWlI3VvBqRyOCTAppfy+ldnruoAgQH3r
	JhQCOJDAc5On33EXzKEiMqtMN1fjijrT8EC3haY8OUfTVGu1h9wslQ4ah9CyaJvFUFu/TBaLgqWaq
	ah8F0PmuQayhV5PdWFU2+T81ZhkrQbrt3/ri2krnpPgh+jH802ueuILf8mwKmrH4HoAzZrA8NptPZ
	EN+WsFhvAvZVQ1sbzqXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE90b-0002vz-Lx; Tue, 17 Mar 2020 09:59:37 +0000
Received: from mail-eopbgr1410115.outbound.protection.outlook.com
 ([40.107.141.115] helo=JPN01-OS2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE90O-0002vL-GL; Tue, 17 Mar 2020 09:59:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gl5v+ZFC8Zh9bqWBRQGyetYn1mSG/nE2IEdh2Pz46I6xnBQSZMTRFOyhEjhcaqq4ANxgMUFcFCdv37h0wtoLgmCvEAVlggqseUWcLjookv2+WnZJB2louTxfgNHyVnGZox1VKNIwkS1EyCxJ7H33tXp5wAuS+CFRuBN8uL+PH42xQ2Li+aGYq90usyhzKwmGV+IZdbnUD9HZYplkxOgLYnlRIB1Qp+ieCXaN2BIKeAbxQ1FRqiS5zw0Xk7qwiScLyYn7PZC8TO/6wabiFa4q0swF/HpWhQVW4lRw/ZRzWKH+fqHkuTJilVI274+xDVJ6smaSql7XGGD5EvyDW/ZuVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fePM37l7GGMckJ+yLTGu3BPLxB5feX/N1muhSe/6L9w=;
 b=dEL3JadugBzMHs+aanUHgHR8FdaAU6IyQP+YPZZCpd9ksRi/XiQI3HgL1AykXjnxxp4NQTA8PNj29ygSVxCJRgNw+GjGaSQqROhyn4kMoS9jHuH/UxZ6jTZmTKMGnoilLf5Tec+A1UpOAuVMpnKiQ1GU0aarY0j6MyExvUJuL1mDJWuCQ5iPPNy+tmNdpz5mZXfl4NxGd4tbxzCFvrQqTJRJrlhWqOsCijLcUGSP1RYVK1JG7fiZFmazXIQcsLntWT6Q3qssGWoEgWkxpSW5QNuAVMSJZzU3AtWvgaLz7IWs5lT035WWmV2qrD5HumPGqBMO7hc/ZOLW4IkOoN6y7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fePM37l7GGMckJ+yLTGu3BPLxB5feX/N1muhSe/6L9w=;
 b=bB5mBFcJnblz1V+8hzKAqv5IeHmrhJ4fJgRj1WKGZlQyBj3x7A/8/Apm2sc9vNXjh4vrR0B5Vaq05Ti+OVSzq/gVRgPB23g3aToDJFNf+pzT0qJPP1gzYU6tCqot3GH9gcw162dCm9Z3+0f8kNHgQFTenDjOIhzQJ6Fan9jzq5k=
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com (20.179.175.203) by
 TYAPR01MB3952.jpnprd01.prod.outlook.com (20.178.139.75) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.14; Tue, 17 Mar 2020 09:59:20 +0000
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::ed7f:1268:55a9:fc06]) by TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::ed7f:1268:55a9:fc06%4]) with mapi id 15.20.2814.021; Tue, 17 Mar 2020
 09:59:20 +0000
From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To: Lad Prabhakar <prabhakar.csengg@gmail.com>
Subject: RE: [PATCH v5 6/7] PCI: rcar: Add support for rcar PCIe controller in
 endpoint mode
Thread-Topic: [PATCH v5 6/7] PCI: rcar: Add support for rcar PCIe controller
 in endpoint mode
Thread-Index: AQHV7k2o5Onf4KClakaz57hoModJO6hMjyUw
Date: Tue, 17 Mar 2020 09:59:19 +0000
Message-ID: <TYAPR01MB4544EAC877ADD0664CB93FF5D8F60@TYAPR01MB4544.jpnprd01.prod.outlook.com>
References: <20200228154122.14164-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200228154122.14164-7-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20200228154122.14164-7-prabhakar.mahadev-lad.rj@bp.renesas.com>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yoshihiro.shimoda.uh@renesas.com; 
x-originating-ip: [124.210.22.195]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 3be9faa8-1476-40db-7923-08d7ca59dce6
x-ms-traffictypediagnostic: TYAPR01MB3952:|TYAPR01MB3952:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <TYAPR01MB39524DA68CEC2FCCF52D60F2D8F60@TYAPR01MB3952.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0345CFD558
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(366004)(346002)(39860400002)(376002)(396003)(199004)(478600001)(2906002)(8936002)(8676002)(33656002)(81166006)(81156014)(86362001)(64756008)(71200400001)(6916009)(26005)(4326008)(5660300002)(6506007)(186003)(52536014)(55236004)(55016002)(7416002)(9686003)(7696005)(66946007)(76116006)(66476007)(54906003)(316002)(66446008)(66556008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:TYAPR01MB3952;
 H:TYAPR01MB4544.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kCvVIzyawL0LRlasqf0t3E0W6e1bHkK7KTILgx/OBJQJ/WtoetLWXMREf2JSMkkejSr7X8zPy5fjp8jxUlmCJYA2Hs7EGa90xoCxfQ1X+8RCo+CNsvLQGirGUPxI5uy0tsUBLvJxQPECBn1Z3N4jPeF8yLGtxBfO2uabO6+ETC6rSzDN/We3Vd8bE9EIG4WdXgIbQQm5BJpaKY+82hMFWtG6kAWiMZFxctVv23x1yyZyI59CGaLzSo9MQT/fdQBrX1jiZMd5QHMYQBCB+fcnBsnjYqkkpNHv4hJDDIPYSrsEVmb/9Ko82igWa30Clsc5FpJ5cQ/ZjE1npFICUR+acYxHt/XvYFl31PtdrPACJhtx+MZtnvWaSHEk4JABzxs9tMGErAqwK8hKtA019b+S2pk4yW/PDMDc8JUM8C2SIXNejXfgjjEx5+7zlXy8B6HO
x-ms-exchange-antispam-messagedata: TdQOESFzqF6eHW+kCjGt1UCormjZBUILTU8Zkoy5pdD8wKsV2Y8B7ElG8FMlrAQzaAGHdyw1+H9I1psD37qoYh+qRgmQJAZzSEY+k8gyiWzMDCj5R77OzKRRVg4TfHO3LxOvZhaflmZkIvRTzA0HBA==
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3be9faa8-1476-40db-7923-08d7ca59dce6
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2020 09:59:20.1087 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ttpo8Vd7ZyUv2/bFyEt+mHbLfEyvT3S3hM9USU9hID2foarIFKEhfvaaJ+/aPb0D8c7Z4JuLKFiVOUtioW2SvEVoGbYBSSjbXTYc1RCCDsc40qxWzpJ0AJ5uwsM0Prvl
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR01MB3952
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_025924_592923_A99CBCC9 
X-CRM114-Status: GOOD (  25.23  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.141.115 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, Will Deacon <will@kernel.org>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Rob Herring <robh+dt@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 Jingoo Han <jingoohan1@gmail.com>, Andrew Murray <andrew.murray@arm.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Prabhakar-san,

Thank you for the patch!

> From: Lad Prabhakar, Sent: Saturday, February 29, 2020 12:41 AM
> 
> This patch adds support for rcar PCIe controller to work in endpoint mode.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  drivers/pci/controller/Kconfig        |   8 +
>  drivers/pci/controller/Makefile       |   1 +
>  drivers/pci/controller/pcie-rcar-ep.c | 490 ++++++++++++++++++++++++++++++++++
>  drivers/pci/controller/pcie-rcar.h    |   4 +
>  4 files changed, 503 insertions(+)
>  create mode 100644 drivers/pci/controller/pcie-rcar-ep.c
> 
> diff --git a/drivers/pci/controller/Kconfig b/drivers/pci/controller/Kconfig
> index 37e0ea7..9bf4b02 100644
> --- a/drivers/pci/controller/Kconfig
> +++ b/drivers/pci/controller/Kconfig
> @@ -62,6 +62,14 @@ config PCIE_RCAR_HOST
>  	  Say Y here if you want PCIe controller support on R-Car SoCs in host
>  	  mode.
> 
> +config PCIE_RCAR_EP
> +	bool "Renesas R-Car PCIe endpoint controller"
> +	depends on ARCH_RENESAS || COMPILE_TEST
> +	depends on PCI_ENDPOINT
> +	help
> +	  Say Y here if you want PCIe controller support on R-Car SoCs in
> +	  endpoint mode.
> +
>  config PCI_HOST_COMMON
>  	bool
>  	select PCI_ECAM
> diff --git a/drivers/pci/controller/Makefile b/drivers/pci/controller/Makefile
> index b4ada32..067bd33 100644
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
> index 0000000..db89bbe
> --- /dev/null
> +++ b/drivers/pci/controller/pcie-rcar-ep.c
> @@ -0,0 +1,490 @@
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
> +/* Structure representing the PCIe interface */
> +struct rcar_pcie {
> +	phys_addr_t		*ob_addr;

I think "ob_mapped_addr" is better.

> +	struct pci_epc_mem_window *ob_window;

I think we can get these windows from "array of address space of
the endpoint controller" in struct pci_epc. If so, we can remove
this member.

> +	struct pci_epc		*epc;

This member can be removed like pcie-cadence-ep.c because
this is not used except saving the epc value from devm_pci_epc_create().

<snip>
> +static int rcar_pcie_ep_start(struct pci_epc *epc)
> +{
> +	struct rcar_pcie *ep = epc_get_drvdata(epc);
> +
> +	rcar_pci_write_reg(ep->base, CFINIT, PCIETCTLR);

The following setting is needed before CFINIT like host.

	rcar_pci_write_reg(pcie->base, MACCTLR_INIT_VAL, MACCTLR);

> +
> +	return 0;
> +}
> +
> +static void rcar_pcie_ep_stop(struct pci_epc *epc)
> +{
> +	struct rcar_pcie *ep = epc_get_drvdata(epc);
> +
> +	rcar_pci_write_reg(ep->base, 0, PCIETCTLR);
> +}
> +
> +static const struct pci_epc_features rcar_pcie_epc_features = {
> +	.linkup_notifier = false,
> +	.msi_capable = false,
> +	.msix_capable = false,
> +	/* use 64-bit bars so mark bar1/3/5 as reserved */
> +	.reserved_bar = 1 << BAR_1 | 1 << BAR_3 | 1 << BAR_5,
> +	.bar_fixed_64bit =  (1 << BAR_0) | (1 << BAR_2) | (1 << BAR_4),

These parentheses are not needed like .reserved_bar.

<snip>
> +	err = pci_epc_mem_init(epc, pcie->ob_window, pcie->num_ob_windows);
> +	if (err < 0) {
> +		dev_err(dev, "failed to initialize the epc memory space\n");
> +		goto err_pm_put;
> +	}
> +
> +	rcar_pcie_ep_hw_init(pcie);

I'm not sure, but I wonder if we should call this hw init before pci_epc_mem_init().

<snip>
> +builtin_platform_driver(rcar_pcie_ep_driver);
> diff --git a/drivers/pci/controller/pcie-rcar.h b/drivers/pci/controller/pcie-rcar.h
> index b529d806..5564ca8 100644
> --- a/drivers/pci/controller/pcie-rcar.h
> +++ b/drivers/pci/controller/pcie-rcar.h
> @@ -17,6 +17,7 @@
>  #define PCIECDR			0x000020
>  #define PCIEMSR			0x000028
>  #define PCIEINTXR		0x000400
> +#define  ASTINTX_SHIFT		BIT(16)

Just "ASTINTX" is better.

>  #define PCIEPHYSR		0x0007f0
>  #define  PHYRDY			BIT(0)
>  #define PCIEMSITXR		0x000840
> @@ -55,12 +56,15 @@
> 
>  /* Configuration */
>  #define PCICONF(x)		(0x010000 + ((x) * 0x4))
> +#define  INTDIS_SHIFT		BIT(10)

Same here (we can remove "_SHIFT").

Best regards,
Yoshihiro Shimoda

>  #define PMCAP(x)		(0x010040 + ((x) * 0x4))
>  #define EXPCAP(x)		(0x010070 + ((x) * 0x4))
>  #define VCCAP(x)		(0x010100 + ((x) * 0x4))
> 
>  /* link layer */
> +#define IDSETR0			0x011000
>  #define IDSETR1			0x011004
> +#define SUBIDSETR		0x011024
>  #define TLCTLR			0x011048
>  #define MACSR			0x011054
>  #define  SPCHGFIN		BIT(4)
> --
> 2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
