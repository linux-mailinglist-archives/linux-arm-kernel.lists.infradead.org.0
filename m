Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7658F19D27B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 10:44:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vvmSpYQqE3xAaq0WTgXIAjRIf3t5xRmpEUHOmaswhag=; b=fT5yy9sxTT5bj8
	HMHejU93kzFsJgRNG846TqW7LTSCbuA5uZyqHoAqDQGTc97vsJzAvVU4XdFzTYzX7rlJtzFnA1wyb
	sKksoqsy2nqmBQhwUzSTWhp1Vt+c5U586CvTc7qwciNOC9PcjmYWrDGWYyI5PlyZWlt+RUo5pVhKm
	1rR7OwjmAYN4ZL622TOCAREqjV2sBpVCVDVY3Lw5rjOtjs5vZFKGLyn0V5anifoofgxVe31LdspSJ
	9y7onjkUocGoHFOC8gglnax7lvjm5FMOcRC/LSAo5gYCn3JknhyY4il8DI3/05XpOH9Vv3H7VnZaS
	7jpMVUGq/XX1R5rPMH7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKHwM-00051g-42; Fri, 03 Apr 2020 08:44:38 +0000
Received: from mail-eopbgr1410118.outbound.protection.outlook.com
 ([40.107.141.118] helo=JPN01-OS2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKHwE-00051I-P4; Fri, 03 Apr 2020 08:44:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eeapcpFx2r3SfxLo8MgDFfMvfMYkFqIKVyoliyQ6ZOa3GzqicvWf/JnRNN3sMuDNALtwxegWgmVKjs6wtBYfprW+eOk2pdmm7wAd8s6DTkebofcGansQmsaZTZgEw22MPodRkO4a5G68KDMuECRpIBCTQ4j+utDrNMI3p98bqXRYVjvz73ro3cI247v0AwgRpgHdVocImfR4B3Wg+Y8WqLwyePIQs57U/BKYzyBs405fH6vk2+Y+xU98ofvVV2QyurUjJzhJjZwLXwAyNh7O7KM1+fhsyNebTGqJZ0RTfi2sL7tTa7U9lr4BA/G5q5uW76CsQrX5VHnc8CZZyGaDZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H3E2i8ffLM5H091caWswNPUWnkv8DVPBlV8LNFaE34Q=;
 b=CX6jZTnh487M5QHV+Zoj5UulX95Llawfo3vwCP6NmEMgWXNt4FmlzprRJoZtn2CZ2DgXvWgb6Qym2XpRvJ8l/akdvcC5aP++evDGJMzFWv7PR858La3F+PoTQqepyNLsPFJEbFKJzseeRdB2jnqNp9BvcblBS+0WMp5YnwmEIKYjrDI5qNBCN+u35TteiilPeYRrXbWCvIoyGRjeS0VW6Is9GcP+gb8BWjD7n+onNnzbvXX9SqRnH02rLjEKPgJAV6L6ZKKGtGyk8Y1UXzPu8d8szWsQkeWP8iHttCt0qFxSomlDqR/XuDoa4n70p6uIQ7gOAkNeZxxVuHD9ZbthVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H3E2i8ffLM5H091caWswNPUWnkv8DVPBlV8LNFaE34Q=;
 b=dHCs0a9K8MJFNV3ByczNJMpUuJ1RsFopQL3ydzGhigWo6YNXRpSkxnF+AcDOJr39S2MRyP0LHzIQYRNvt1b1PUxxCnJJ+zC+G5GeoSp2+XvMt8qm3jSV/JoSS1M8DwAZIkEm2ZwTHwS3hAddCeYwmWDVjegYDi1GMtYdRXLYqLg=
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com (20.179.175.203) by
 TYAPR01MB4958.jpnprd01.prod.outlook.com (20.179.186.77) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.20; Fri, 3 Apr 2020 08:44:25 +0000
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::ed7f:1268:55a9:fc06]) by TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::ed7f:1268:55a9:fc06%4]) with mapi id 15.20.2878.017; Fri, 3 Apr 2020
 08:44:25 +0000
From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To: Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, Bjorn
 Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Geert Uytterhoeven <geert+renesas@glider.be>, Magnus
 Damm <magnus.damm@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>, Lorenzo
 Pieralisi <lorenzo.pieralisi@arm.com>, Marek Vasut
 <marek.vasut+renesas@gmail.com>, "linux-pci@vger.kernel.org"
 <linux-pci@vger.kernel.org>
Subject: RE: [PATCH v6 08/11] PCI: rcar: Add support for rcar PCIe controller
 in endpoint mode
Thread-Topic: [PATCH v6 08/11] PCI: rcar: Add support for rcar PCIe controller
 in endpoint mode
Thread-Index: AQHWCSZ6D1Lkjdv4CUGOT8VoOPF/QahnEdJQ
Date: Fri, 3 Apr 2020 08:44:25 +0000
Message-ID: <TYAPR01MB45440058E5BEFD3F2881028BD8C70@TYAPR01MB4544.jpnprd01.prod.outlook.com>
References: <1585856319-4380-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1585856319-4380-9-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <1585856319-4380-9-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yoshihiro.shimoda.uh@renesas.com; 
x-originating-ip: [124.210.22.195]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ed4ef1d0-67a3-4e21-ab22-08d7d7ab36d5
x-ms-traffictypediagnostic: TYAPR01MB4958:|TYAPR01MB4958:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <TYAPR01MB4958A3CFD7DD21377A281448D8C70@TYAPR01MB4958.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:800;
x-forefront-prvs: 0362BF9FDB
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:TYAPR01MB4544.jpnprd01.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(4636009)(136003)(376002)(346002)(39860400002)(366004)(396003)(55236004)(110136005)(107886003)(5660300002)(7696005)(2906002)(8676002)(186003)(9686003)(86362001)(71200400001)(81166006)(66476007)(64756008)(76116006)(54906003)(4326008)(66446008)(6506007)(8936002)(55016002)(30864003)(66556008)(53546011)(81156014)(316002)(66946007)(33656002)(52536014)(7416002)(478600001)(26005)(921003)(1121003);
 DIR:OUT; SFP:1102; 
received-spf: None (protection.outlook.com: renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gg/+dKWztRKH0FZ+rIlsyW0q1Sb3woCYfZjfHkHG7VRAlrwH/898U9qXAPixNyV9it8xGrWPCd5d/51R5jEjNKRO5YYc3wTwMcwueD5AYC88APw24lYD2UuRSmEKdkb17Mb1ed3EflK6olZpgSfnH/KHoQFrpVeWlazIdW9VFFg2cl1/boFyVIGAlHDxOc4uvl5lnkgVa6QmFfdtoXdkdp2wgKZ69lVkzh13wiltNCo9LLOTOPP5IOokX8q/t9US8VLAtVrNDEibuO9InMiAvhM9aMTAgVnoJz9iz5Lo3SUw5/0BON2jTyANrqehewtmW05GMJMk/JbT6lv9QT7sekVAkxwxTVWOmTOEEZcLs8ubTVxIylemIP2lok9wRqQkVtwSmxfMm+tujJk7/nFzgd1Px5pHrHzIbuwhV4wHKLJCSg8VJfU1JkxKiJcyt3r/qMpgfEEKj0b57qMLNnGiyZw04pu1+UF1R2/r4CjWtgDPJSxRpYz1bJlOoVB4CZvf
x-ms-exchange-antispam-messagedata: 7FZZSTwWX8XDc7nWKkWXTinoC1JkZCGI2Uqon0wTsP6OvMWt5Z5zFqecAOKCM8S8v4sN/w/AEM+Bm5m0WEDwHyr5eonRN/Akl6NndRAaIrrFmv/XHE9hKKBu3th+y1u/ntH3vulaiokxxQK4aP5KDw==
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed4ef1d0-67a3-4e21-ab22-08d7d7ab36d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Apr 2020 08:44:25.3317 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VBbuWJ3UGWSqO9+DZRE2h/lzDxSRsPbP2zVDEkAhVLYXk1zpUD/InDJ4kirkJzM4jnxusQzMj7HkB/qrcR3pqFWAHeYEiQYkGW8BQAJ/8Xv+3oq1VfKVdtebSQ0hyO8l
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR01MB4958
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_014430_946811_2DE67780 
X-CRM114-Status: GOOD (  25.45  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.141.118 listed in list.dnswl.org]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Chris Paterson <Chris.Paterson2@renesas.com>, Heiko Stuebner <heiko@sntech.de>,
 Arnd Bergmann <arnd@arndb.de>, Jingoo Han <jingoohan1@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Frank Rowand <frowand.list@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Tom Joseph <tjoseph@cadence.com>, Simon Horman <horms@verge.net.au>,
 Lad Prabhakar <prabhakar.csengg@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Murray <andrew.murray@arm.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Prabhakar-san,

Thank you for the patch!

> From: Lad Prabhakar, Sent: Friday, April 3, 2020 4:39 AM
> Subject: [PATCH v6 08/11] PCI: rcar: Add support for rcar PCIe controller in endpoint mode
> 
> This patch adds support for rcar PCIe controller to work in endpoint mode.

I'm sorry but s/rcar/R-Car/ in the subject and description.

> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  drivers/pci/controller/Kconfig        |   8 +
>  drivers/pci/controller/Makefile       |   1 +
>  drivers/pci/controller/pcie-rcar-ep.c | 556 ++++++++++++++++++++++++++
>  drivers/pci/controller/pcie-rcar.h    |   9 +
>  4 files changed, 574 insertions(+)
>  create mode 100644 drivers/pci/controller/pcie-rcar-ep.c
> 
> diff --git a/drivers/pci/controller/Kconfig b/drivers/pci/controller/Kconfig
> index 37e234ad583b..283ff8175cb7 100644
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
> index 39802ee32946..741a5204aa5e 100644
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
> index 000000000000..047be2ac062c
> --- /dev/null
> +++ b/drivers/pci/controller/pcie-rcar-ep.c
> @@ -0,0 +1,556 @@
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
> +struct rcar_pcie_endpoint {
> +	struct rcar_pcie	pcie;
> +	phys_addr_t		*ob_mapped_addr;
> +	struct pci_epc_mem_window *ob_window;
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
> +	rcar_pci_write_reg(pcie, 0, PCIETCTLR);
> +
> +	/* Set endpoint mode */
> +	rcar_pci_write_reg(pcie, 0, PCIEMSR);
> +
> +	/* Initialize default capabilities. */
> +	rcar_rmw32(pcie, REXPCAP(0), 0xff, PCI_CAP_ID_EXP);
> +	rcar_rmw32(pcie, REXPCAP(PCI_EXP_FLAGS),
> +		   PCI_EXP_FLAGS_TYPE, PCI_EXP_TYPE_ENDPOINT << 4);
> +	rcar_rmw32(pcie, RCONF(PCI_HEADER_TYPE), 0x7f,
> +		   PCI_HEADER_TYPE_NORMAL);
> +
> +	/* Write out the physical slot number = 0 */
> +	rcar_rmw32(pcie, REXPCAP(PCI_EXP_SLTCAP), PCI_EXP_SLTCAP_PSN, 0);
> +
> +	val = rcar_pci_read_reg(pcie, EXPCAP(1));
> +	/* device supports fixed 128 bytes MPSS */
> +	val &= ~GENMASK(2, 0);
> +	rcar_pci_write_reg(pcie, val, EXPCAP(1));
> +
> +	val = rcar_pci_read_reg(pcie, EXPCAP(2));
> +	/* read requests size 128 bytes */
> +	val &= ~GENMASK(14, 12);
> +	/* payload size 128 bytes */
> +	val &= ~GENMASK(7, 5);
> +	rcar_pci_write_reg(pcie, val, EXPCAP(2));
> +
> +	/* Set target link speed to 5.0 GT/s */
> +	rcar_rmw32(pcie, EXPCAP(12), PCI_EXP_LNKSTA_CLS,
> +		   PCI_EXP_LNKSTA_CLS_5_0GB);
> +
> +	/* Set the completion timer timeout to the maximum 50ms. */
> +	rcar_rmw32(pcie, TLCTLR + 1, 0x3f, 50);
> +
> +	/* Terminate list of capabilities (Next Capability Offset=0) */
> +	rcar_rmw32(pcie, RVCCAP(0), 0xfff00000, 0);
> +
> +	rcar_pci_write_reg(pcie, MACCTLR_INIT_VAL, MACCTLR);

Why is this MACCTLR setting here? In other words, cannot we set this in
rcar_pcie_ep_start()? My concern is this rcar_pcie_ep_hw_init() is called
once so that if rcar_pcie_ep_start() is called multiple times,
that is wrong process from the hardware requirement.

Best regards,
Yoshihiro Shimoda

> +	/* flush modifications */
> +	wmb();
> +}
> +
> +static int rcar_pcie_ep_get_window(struct rcar_pcie_endpoint *ep,
> +				   phys_addr_t addr)
> +{
> +	int i;
> +
> +	for (i = 0; i < ep->num_ob_windows; i++)
> +		if (ep->ob_window[i].phys_base == addr)
> +			return i;
> +
> +	return -EINVAL;
> +}
> +
> +static int rcar_pcie_parse_outbound_ranges(struct rcar_pcie_endpoint *ep,
> +					   struct platform_device *pdev)
> +{
> +	struct rcar_pcie *pcie = &ep->pcie;
> +	char outbound_name[10];
> +	struct resource *res;
> +	unsigned int i = 0;
> +
> +	ep->num_ob_windows = 0;
> +	for (i = 0; i < RCAR_PCI_MAX_RESOURCES; i++) {
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
> +		ep->ob_window[i].phys_base = res->start;
> +		ep->ob_window[i].size = resource_size(res);
> +		/* controller doesn't support multiple allocation
> +		 * from same window, so set page_size to window size
> +		 */
> +		ep->ob_window[i].page_size = resource_size(res);
> +	}
> +	ep->num_ob_windows = i;
> +
> +	return 0;
> +}
> +
> +static int rcar_pcie_ep_get_pdata(struct rcar_pcie_endpoint *ep,
> +				  struct platform_device *pdev)
> +{
> +	struct rcar_pcie *pcie = &ep->pcie;
> +	struct pci_epc_mem_window *window;
> +	struct device *dev = pcie->dev;
> +	struct resource res;
> +	int err;
> +
> +	err = of_address_to_resource(dev->of_node, 0, &res);
> +	if (err)
> +		return err;
> +	pcie->base = devm_ioremap_resource(dev, &res);
> +	if (IS_ERR(pcie->base))
> +		return PTR_ERR(pcie->base);
> +
> +	ep->ob_window = devm_kcalloc(dev, RCAR_PCI_MAX_RESOURCES,
> +				     sizeof(*window), GFP_KERNEL);
> +	if (!ep->ob_window)
> +		return -ENOMEM;
> +
> +	rcar_pcie_parse_outbound_ranges(ep, pdev);
> +
> +	err = of_property_read_u8(dev->of_node, "max-functions",
> +				  &ep->max_functions);
> +	if (err < 0)
> +		ep->max_functions = 1;
> +
> +	return 0;
> +}
> +
> +static int rcar_pcie_ep_write_header(struct pci_epc *epc, u8 fn,
> +				     struct pci_epf_header *hdr)
> +{
> +	struct rcar_pcie_endpoint *ep = epc_get_drvdata(epc);
> +	struct rcar_pcie *pcie = &ep->pcie;
> +	u32 val;
> +
> +	if (!fn)
> +		val = hdr->vendorid;
> +	else
> +		val = rcar_pci_read_reg(pcie, IDSETR0);
> +	val |= hdr->deviceid << 16;
> +	rcar_pci_write_reg(pcie, val, IDSETR0);
> +
> +	val = hdr->revid;
> +	val |= hdr->progif_code << 8;
> +	val |= hdr->subclass_code << 16;
> +	val |= hdr->baseclass_code << 24;
> +	rcar_pci_write_reg(pcie, val, IDSETR1);
> +
> +	if (!fn)
> +		val = hdr->subsys_vendor_id;
> +	else
> +		val = rcar_pci_read_reg(pcie, SUBIDSETR);
> +	val |= hdr->subsys_id << 16;
> +	rcar_pci_write_reg(pcie, val, SUBIDSETR);
> +
> +	if (hdr->interrupt_pin > PCI_INTERRUPT_INTA)
> +		return -EINVAL;
> +	val = rcar_pci_read_reg(pcie, PCICONF(15));
> +	val |= (hdr->interrupt_pin << 8);
> +	rcar_pci_write_reg(pcie, val, PCICONF(15));
> +
> +	return 0;
> +}
> +
> +static int rcar_pcie_ep_set_bar(struct pci_epc *epc, u8 func_no,
> +				struct pci_epf_bar *epf_bar)
> +{
> +	int flags = epf_bar->flags | LAR_ENABLE | LAM_64BIT;
> +	struct rcar_pcie_endpoint *ep = epc_get_drvdata(epc);
> +	u64 size = 1ULL << fls64(epf_bar->size - 1);
> +	dma_addr_t cpu_addr = epf_bar->phys_addr;
> +	enum pci_barno bar = epf_bar->barno;
> +	struct rcar_pcie *pcie = &ep->pcie;
> +	u32 mask;
> +	int idx;
> +	int err;
> +
> +	idx = find_first_zero_bit(ep->ib_window_map, ep->num_ib_windows);
> +	if (idx >= ep->num_ib_windows) {
> +		dev_err(pcie->dev, "no free inbound window\n");
> +		return -EINVAL;
> +	}
> +
> +	if ((flags & PCI_BASE_ADDRESS_SPACE) == PCI_BASE_ADDRESS_SPACE_IO)
> +		flags |= IO_SPACE;
> +
> +	ep->bar_to_atu[bar] = idx;
> +	/* use 64 bit bars */
> +	set_bit(idx, ep->ib_window_map);
> +	set_bit(idx + 1, ep->ib_window_map);
> +
> +	if (cpu_addr > 0) {
> +		unsigned long nr_zeros = __ffs64(cpu_addr);
> +		u64 alignment = 1ULL << nr_zeros;
> +
> +		size = min(size, alignment);
> +	}
> +
> +	size = min(size, 1ULL << 32);
> +
> +	mask = roundup_pow_of_two(size) - 1;
> +	mask &= ~0xf;
> +
> +	rcar_pcie_set_inbound(pcie, cpu_addr,
> +			      0x0, mask | flags, idx, false);
> +
> +	err = rcar_pcie_wait_for_phyrdy(pcie);
> +	if (err) {
> +		dev_err(pcie->dev, "phy not ready\n");
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +static void rcar_pcie_ep_clear_bar(struct pci_epc *epc, u8 fn,
> +				   struct pci_epf_bar *epf_bar)
> +{
> +	struct rcar_pcie_endpoint *ep = epc_get_drvdata(epc);
> +	enum pci_barno bar = epf_bar->barno;
> +	u32 atu_index = ep->bar_to_atu[bar];
> +
> +	rcar_pcie_set_inbound(&ep->pcie, 0x0, 0x0, 0x0, bar, false);
> +
> +	clear_bit(atu_index, ep->ib_window_map);
> +	clear_bit(atu_index + 1, ep->ib_window_map);
> +}
> +
> +static int rcar_pcie_ep_set_msi(struct pci_epc *epc, u8 fn, u8 interrupts)
> +{
> +	struct rcar_pcie_endpoint *ep = epc_get_drvdata(epc);
> +	struct rcar_pcie *pcie = &ep->pcie;
> +	u32 flags;
> +
> +	flags = rcar_pci_read_reg(pcie, MSICAP(fn));
> +	flags |= interrupts << MSICAP0_MMESCAP_OFFSET;
> +	rcar_pci_write_reg(pcie, flags, MSICAP(fn));
> +
> +	return 0;
> +}
> +
> +static int rcar_pcie_ep_get_msi(struct pci_epc *epc, u8 fn)
> +{
> +	struct rcar_pcie_endpoint *ep = epc_get_drvdata(epc);
> +	struct rcar_pcie *pcie = &ep->pcie;
> +	u32 flags;
> +
> +	flags = rcar_pci_read_reg(pcie, MSICAP(fn));
> +	if (!(flags & MSICAP0_MSIE))
> +		return -EINVAL;
> +
> +	return ((flags & MSICAP0_MMENUM_MASK) >> MSICAP0_MMENUM_OFFSET);
> +}
> +
> +static int rcar_pcie_ep_map_addr(struct pci_epc *epc, u8 fn,
> +				 phys_addr_t addr, u64 pci_addr, size_t size)
> +{
> +	struct rcar_pcie_endpoint *ep = epc_get_drvdata(epc);
> +	struct rcar_pcie *pcie = &ep->pcie;
> +	struct resource res;
> +	int window;
> +	int err;
> +
> +	/* check if we have a link. */
> +	err = rcar_pcie_wait_for_dl(pcie);
> +	if (err) {
> +		dev_err(pcie->dev, "link not up\n");
> +		return err;
> +	}
> +
> +	window = rcar_pcie_ep_get_window(ep, addr);
> +	if (window < 0) {
> +		dev_err(pcie->dev, "failed to get corresponding window\n");
> +		return -EINVAL;
> +	}
> +
> +	memset(&res, 0x0, sizeof(res));
> +	res.start = pci_addr;
> +	res.end = pci_addr + size - 1;
> +	res.flags = IORESOURCE_MEM;
> +
> +	rcar_pcie_set_outbound(pcie, window, &res);
> +
> +	ep->ob_mapped_addr[window] = addr;
> +
> +	return 0;
> +}
> +
> +static void rcar_pcie_ep_unmap_addr(struct pci_epc *epc, u8 fn,
> +				    phys_addr_t addr)
> +{
> +	struct rcar_pcie_endpoint *ep = epc_get_drvdata(epc);
> +	struct resource res;
> +	int idx;
> +
> +	for (idx = 0; idx < ep->num_ob_windows; idx++)
> +		if (ep->ob_mapped_addr[idx] == addr)
> +			break;
> +
> +	if (idx >= ep->num_ob_windows)
> +		return;
> +
> +	memset(&res, 0x0, sizeof(res));
> +	rcar_pcie_set_outbound(&ep->pcie, idx, &res);
> +
> +	ep->ob_mapped_addr[idx] = 0;
> +}
> +
> +static int rcar_pcie_ep_assert_intx(struct rcar_pcie_endpoint *ep,
> +				    u8 fn, u8 intx)
> +{
> +	struct rcar_pcie *pcie = &ep->pcie;
> +	u32 val;
> +
> +	val = rcar_pci_read_reg(pcie, PCIEMSITXR);
> +	if ((val & PCI_MSI_FLAGS_ENABLE)) {
> +		dev_err(pcie->dev, "MSI is enabled, cannot assert INTx\n");
> +		return -EINVAL;
> +	}
> +
> +	val = rcar_pci_read_reg(pcie, PCICONF(1));
> +	if ((val & INTDIS)) {
> +		dev_err(pcie->dev, "INTx message transmission is disabled\n");
> +		return -EINVAL;
> +	}
> +
> +	val = rcar_pci_read_reg(pcie, PCIEINTXR);
> +	if ((val & ASTINTX)) {
> +		dev_err(pcie->dev, "INTx is already asserted\n");
> +		return -EINVAL;
> +	}
> +
> +	val |= ASTINTX;
> +	rcar_pci_write_reg(pcie, val, PCIEINTXR);
> +	mdelay(1);
> +	val = rcar_pci_read_reg(pcie, PCIEINTXR);
> +	val &= ~ASTINTX;
> +	rcar_pci_write_reg(pcie, val, PCIEINTXR);
> +
> +	return 0;
> +}
> +
> +static int rcar_pcie_ep_assert_msi(struct rcar_pcie *pcie,
> +				   u8 fn, u8 interrupt_num)
> +{
> +	u16 msi_count;
> +	u32 val;
> +
> +	/* Check MSI enable bit */
> +	val = rcar_pci_read_reg(pcie, MSICAP(fn));
> +	if (!(val & MSICAP0_MSIE))
> +		return -EINVAL;
> +
> +	/* Get MSI numbers from MME */
> +	msi_count = ((val & MSICAP0_MMENUM_MASK) >> MSICAP0_MMENUM_OFFSET);
> +	msi_count = 1 << msi_count;
> +
> +	if (!interrupt_num || interrupt_num > msi_count)
> +		return -EINVAL;
> +
> +	val = rcar_pci_read_reg(pcie, PCIEMSITXR);
> +	rcar_pci_write_reg(pcie, val | (interrupt_num - 1), PCIEMSITXR);
> +
> +	return 0;
> +}
> +
> +static int rcar_pcie_ep_raise_irq(struct pci_epc *epc, u8 fn,
> +				  enum pci_epc_irq_type type,
> +				  u16 interrupt_num)
> +{
> +	struct rcar_pcie_endpoint *ep = epc_get_drvdata(epc);
> +
> +	switch (type) {
> +	case PCI_EPC_IRQ_LEGACY:
> +		return rcar_pcie_ep_assert_intx(ep, fn, 0);
> +
> +	case PCI_EPC_IRQ_MSI:
> +		return rcar_pcie_ep_assert_msi(&ep->pcie, fn, interrupt_num);
> +
> +	default:
> +		return -EINVAL;
> +	}
> +}
> +
> +static int rcar_pcie_ep_start(struct pci_epc *epc)
> +{
> +	struct rcar_pcie_endpoint *ep = epc_get_drvdata(epc);
> +
> +	rcar_pci_write_reg(&ep->pcie, CFINIT, PCIETCTLR);
> +
> +	return 0;
> +}
> +
> +static void rcar_pcie_ep_stop(struct pci_epc *epc)
> +{
> +	struct rcar_pcie_endpoint *ep = epc_get_drvdata(epc);
> +
> +	rcar_pci_write_reg(&ep->pcie, 0, PCIETCTLR);
> +}
> +
> +static const struct pci_epc_features rcar_pcie_epc_features = {
> +	.linkup_notifier = false,
> +	.msi_capable = true,
> +	.msix_capable = false,
> +	/* use 64-bit bars so mark bar1/3/5 as reserved */
> +	.reserved_bar = 1 << BAR_1 | 1 << BAR_3 | 1 << BAR_5,
> +	.bar_fixed_64bit = 1 << BAR_0 | 1 << BAR_2 | 1 << BAR_4,
> +	.bar_fixed_size[0] = 128,
> +	.bar_fixed_size[2] = 256,
> +	.bar_fixed_size[4] = 256,
> +};
> +
> +static const struct pci_epc_features*
> +rcar_pcie_ep_get_features(struct pci_epc *epc, u8 func_no)
> +{
> +	return &rcar_pcie_epc_features;
> +}
> +
> +static const struct pci_epc_ops rcar_pcie_epc_ops = {
> +	.write_header	= rcar_pcie_ep_write_header,
> +	.set_bar	= rcar_pcie_ep_set_bar,
> +	.clear_bar	= rcar_pcie_ep_clear_bar,
> +	.set_msi	= rcar_pcie_ep_set_msi,
> +	.get_msi	= rcar_pcie_ep_get_msi,
> +	.map_addr	= rcar_pcie_ep_map_addr,
> +	.unmap_addr	= rcar_pcie_ep_unmap_addr,
> +	.raise_irq	= rcar_pcie_ep_raise_irq,
> +	.start		= rcar_pcie_ep_start,
> +	.stop		= rcar_pcie_ep_stop,
> +	.get_features	= rcar_pcie_ep_get_features,
> +};
> +
> +static const struct of_device_id rcar_pcie_ep_of_match[] = {
> +	{ .compatible = "renesas,r8a774c0-pcie-ep", },
> +	{ .compatible = "renesas,rcar-gen3-pcie-ep" },
> +	{ },
> +};
> +
> +static int rcar_pcie_ep_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct rcar_pcie_endpoint *ep;
> +	struct rcar_pcie *pcie;
> +	struct pci_epc *epc;
> +	int err;
> +
> +	ep = devm_kzalloc(dev, sizeof(*ep), GFP_KERNEL);
> +	if (!ep)
> +		return -ENOMEM;
> +
> +	pcie = &ep->pcie;
> +	pcie->dev = dev;
> +
> +	pm_runtime_enable(dev);
> +	err = pm_runtime_get_sync(dev);
> +	if (err < 0) {
> +		dev_err(dev, "pm_runtime_get_sync failed\n");
> +		goto err_pm_disable;
> +	}
> +
> +	err = rcar_pcie_ep_get_pdata(ep, pdev);
> +	if (err < 0) {
> +		dev_err(dev, "failed to request resources: %d\n", err);
> +		goto err_pm_put;
> +	}
> +
> +	ep->num_ib_windows = MAX_NR_INBOUND_MAPS;
> +	ep->ib_window_map =
> +			devm_kcalloc(dev, BITS_TO_LONGS(ep->num_ib_windows),
> +				     sizeof(long), GFP_KERNEL);
> +	if (!ep->ib_window_map) {
> +		err = -ENOMEM;
> +		dev_err(dev, "failed to allocate memory for inbound map\n");
> +		goto err_pm_put;
> +	}
> +
> +	ep->ob_mapped_addr = devm_kcalloc(dev, ep->num_ob_windows,
> +					  sizeof(*ep->ob_mapped_addr),
> +					  GFP_KERNEL);
> +	if (!ep->ob_mapped_addr) {
> +		err = -ENOMEM;
> +		dev_err(dev, "failed to allocate memory for outbound memory pointers\n");
> +		goto err_pm_put;
> +	}
> +
> +	epc = devm_pci_epc_create(dev, &rcar_pcie_epc_ops);
> +	if (IS_ERR(epc)) {
> +		dev_err(dev, "failed to create epc device\n");
> +		err = PTR_ERR(epc);
> +		goto err_pm_put;
> +	}
> +
> +	epc->max_functions = ep->max_functions;
> +	epc_set_drvdata(epc, ep);
> +
> +	rcar_pcie_ep_hw_init(pcie);
> +
> +	err = __pci_epc_mem_init(epc, ep->ob_window, ep->num_ob_windows);
> +	if (err < 0) {
> +		dev_err(dev, "failed to initialize the epc memory space\n");
> +		goto err_pm_put;
> +	}
> +
> +	return 0;
> +
> +err_pm_put:
> +	pm_runtime_put(dev);
> +
> +err_pm_disable:
> +	pm_runtime_disable(dev);
> +
> +	return err;
> +}
> +
> +static struct platform_driver rcar_pcie_ep_driver = {
> +	.driver = {
> +		.name = "rcar-pcie-ep",
> +		.of_match_table = rcar_pcie_ep_of_match,
> +		.suppress_bind_attrs = true,
> +	},
> +	.probe = rcar_pcie_ep_probe,
> +};
> +builtin_platform_driver(rcar_pcie_ep_driver);
> diff --git a/drivers/pci/controller/pcie-rcar.h b/drivers/pci/controller/pcie-rcar.h
> index cec7768b4725..0fbeff3d7b78 100644
> --- a/drivers/pci/controller/pcie-rcar.h
> +++ b/drivers/pci/controller/pcie-rcar.h
> @@ -17,6 +17,7 @@
>  #define PCIECDR			0x000020
>  #define PCIEMSR			0x000028
>  #define PCIEINTXR		0x000400
> +#define  ASTINTX		BIT(16)
>  #define PCIEPHYSR		0x0007f0
>  #define  PHYRDY			BIT(0)
>  #define PCIEMSITXR		0x000840
> @@ -55,12 +56,20 @@
> 
>  /* Configuration */
>  #define PCICONF(x)		(0x010000 + ((x) * 0x4))
> +#define  INTDIS			BIT(10)
>  #define PMCAP(x)		(0x010040 + ((x) * 0x4))
> +#define MSICAP(x)		(0x010050 + ((x) * 0x4))
> +#define  MSICAP0_MSIE		BIT(16)
> +#define  MSICAP0_MMESCAP_OFFSET	17
> +#define  MSICAP0_MMENUM_OFFSET	20
> +#define  MSICAP0_MMENUM_MASK	GENMASK(22, 20)
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
> 2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
