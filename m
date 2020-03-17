Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A66B7187A44
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 08:23:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8TScCmdqAnhptpp1zy5unXaoLvmDHhhCIJfevSH977Q=; b=jv8mkMSZaetRVj
	2TVZq/FxarIQzyyGICohl8WhM3dB+KPhilG2VmabW5UU8EOww6mNLs1Ib9wyaPXuJTUthootYR+Cy
	6iWEmUSDYaS2hGknRfCjLZ+d/zkTTcX13d1R5jR2hmtFcwCwX+k/RlJO5kbWa82Kxph+Ng4tChctm
	0G9AEkx1cTB7vys+qnlW/iYpb33mwEFc7OqVnAij2lfR4OGMKo2K9gKK5WFgpBuw/q34Vke/cJKiM
	FwH/1CxiRmIQvh5Gt154qNr15PlwofkF7vd4oA9X1BTK9Ig836ch1IEkqe2TPNNPZ1xdCsL6JzvjC
	TeNZoEBiwyjr1Ovi/Ehg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE6ZL-0007Qb-Jl; Tue, 17 Mar 2020 07:23:19 +0000
Received: from mail-eopbgr1400102.outbound.protection.outlook.com
 ([40.107.140.102] helo=JPN01-TY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE6ZB-0007Q3-BG; Tue, 17 Mar 2020 07:23:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ScETkOJmK9hoqnlRbeOFUuQst7b374hoF0JWatQbCNt2tnnxaU8rnhpn0AJgrMdN9avsZl0JXtKeWOD6lrV7xKTFMn8PWyIG/dw6cC82jRw9zhk2rXfvS/SchuaJ/cB0vqHP9G8YXCa8F6tix9Rqh5qlGGevMj5x9Q2XUerAxNpSYijsPQikoSC81TrlitRr5qgBAYbddfR5yB6X9aP5iLkeswahfG/FGpQqCUsXMaqZw4CatefKieOzgf6aCip9qBIFqfsxobwlawqgMIboagstC9etmxUKtt4ljrSjKmqsUhO7a2h8V7E+vMjUEUvKbaLIFhr3ErguOorzGGhN+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IpBYOmUPJPaSvITyzusXPsdmGvvqLxK3gGHrcihkx2s=;
 b=Kp+0DyTMborC8f8inRVn6AfPVgXWIfhTckPavR4Jjc/zeA/RHCmAlH74bUYCqRCW5vvIAjmwQ4LsF9AOwjjUeYz/CWijPG8tsB+3AAHpwtmWwn7/dPb/iTwEAeJMaBX5LJlVmVw7aqRlvofh1NfC/Nyx3TuyCHIO6Rr1ZfvuAoWW5m8Bf3ENc/WHEjskN36lu1YILaE3lFW+8fnFeM+5G1kaHl7I5aSPddnVkJzbtjuJyOi+8l5GhGjMMmp7SW4im2qQ5o/TiZn4htcOqwNVbOyKjl53e1GmGVkLl1Q6NhZcw6EHO8obr05MyH7KiXBMMTQMO0rhG/So5dcbd0ixYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IpBYOmUPJPaSvITyzusXPsdmGvvqLxK3gGHrcihkx2s=;
 b=jAC8kkTKM6l+7U6QQNckC0F6wDoEZNVeK/eCqm8VaULhNxLxlfv6+NiEsKHZszaJWFoqnPgiGhxGaz04ZpVQFUHTQWRgWHHL1l3meLwszKLpPBgDoQ6WyBGlemR8l79JxIlJOkYRxO8nIfdi3Smk5qufp8bfWOgwq09re9EWSQs=
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com (20.179.175.203) by
 TYAPR01MB2925.jpnprd01.prod.outlook.com (20.177.103.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Tue, 17 Mar 2020 07:23:05 +0000
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::ed7f:1268:55a9:fc06]) by TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::ed7f:1268:55a9:fc06%4]) with mapi id 15.20.2814.021; Tue, 17 Mar 2020
 07:23:05 +0000
From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To: Lad Prabhakar <prabhakar.csengg@gmail.com>
Subject: RE: [PATCH v5 2/7] PCI: rcar: Move shareable code to a common file
Thread-Topic: [PATCH v5 2/7] PCI: rcar: Move shareable code to a common file
Thread-Index: AQHV7k2bHKt2YjEWHkms9uI1DEALDKhMdsDQ
Date: Tue, 17 Mar 2020 07:23:05 +0000
Message-ID: <TYAPR01MB45444A34A4B2DC6F8594EABFD8F60@TYAPR01MB4544.jpnprd01.prod.outlook.com>
References: <20200228154122.14164-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200228154122.14164-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20200228154122.14164-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yoshihiro.shimoda.uh@renesas.com; 
x-originating-ip: [124.210.22.195]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: e6ad7b8e-ae86-471b-26c4-08d7ca44094e
x-ms-traffictypediagnostic: TYAPR01MB2925:|TYAPR01MB2925:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <TYAPR01MB2925B3B876C8AE6E48AF072BD8F60@TYAPR01MB2925.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0345CFD558
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(376002)(366004)(39860400002)(396003)(136003)(199004)(81156014)(8676002)(54906003)(6506007)(71200400001)(8936002)(81166006)(30864003)(86362001)(7416002)(4326008)(66556008)(66476007)(66946007)(5660300002)(55016002)(64756008)(9686003)(76116006)(66446008)(52536014)(2906002)(186003)(26005)(7696005)(6916009)(316002)(478600001)(55236004)(33656002)(579004)(559001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:TYAPR01MB2925;
 H:TYAPR01MB4544.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: p3ucs8GIQRy0aWxk6deYkIvzfqfgEbSAbHEcUEUQLvT2Kg9LJ4JHAQG+rok29zpE2sv/0JyHLGD9/SnaJt0qY9EQi/s7JBXrFOXsk/P5Og5dEEH7cG+P5DzJzM4YZ9X/rtjP7y/wVkJW9vUVg7db52QsgbvgmbePgc6X1c9eRWG/5p2am051+h9D1qoZwSB/+jqLBtuvenxbRV1ZfzcCnUiq9ZkX/oYZXplIC2Rdu/Rk6NdRjRaikeAUB1UKNhzqxnbr/00HE1jBya6usal5ML+1oUdbPAabydPWmmQtv2wXaQwBYRjbv80fxQdVT1SqVFczA4JG4XINmSawoNjedKCJE5JAf7KUCm+C4p57LYR1U+ppKiDcUzquFRIoml2ooDwWhmsN1I8+MTEIjjniiLqmZ18uY1HEFmcFTKTvXQnbTh1X4NuAN/oT4k3CcgKD
x-ms-exchange-antispam-messagedata: YSsiaRziptGWNMcOOt6/fFZ/lgH7okQI2LLYcEFVX3o57pQI1Q2oczdVVIxV31kocfTprNCjNKLA8leO8+SLKb37LgfoquzST7TjaKlQmCXSyzl/l5ldibcRVq3ofqd9jr1b/0aXaNTWKwAHah9TQw==
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6ad7b8e-ae86-471b-26c4-08d7ca44094e
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2020 07:23:05.6569 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N1NtRpLrPkdsfJoHJgh43XRXunCJOMh6M9OgD5GlMPrXPaOvmvbPwP2VR9ph+PIbdugEJHpfhl7U3xHzYrCum5mVA+TwxT1CptdHTa568C+0vW+XS/bJUSUlziJpFDoS
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR01MB2925
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_002309_509945_D760099B 
X-CRM114-Status: GOOD (  23.49  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.140.102 listed in list.dnswl.org]
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
> This patch moves sharable code to common file pcie-rcar.c and the #defines
> to pcie-rcar.h so that the common code can be reused with endpoint driver.
> There are no functional changes with this patch for the host controller
> driver.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  drivers/pci/controller/Makefile         |   2 +-
>  drivers/pci/controller/pcie-rcar-host.c | 358 ++++++++------------------------
>  drivers/pci/controller/pcie-rcar.c      | 117 +++++++++++
>  drivers/pci/controller/pcie-rcar.h      | 125 +++++++++++
>  4 files changed, 324 insertions(+), 278 deletions(-)
>  create mode 100644 drivers/pci/controller/pcie-rcar.c
>  create mode 100644 drivers/pci/controller/pcie-rcar.h
> 
> diff --git a/drivers/pci/controller/Makefile b/drivers/pci/controller/Makefile
> index 4ca2da6..b4ada32 100644
> --- a/drivers/pci/controller/Makefile
> +++ b/drivers/pci/controller/Makefile
> @@ -7,7 +7,7 @@ obj-$(CONFIG_PCI_MVEBU) += pci-mvebu.o
>  obj-$(CONFIG_PCI_AARDVARK) += pci-aardvark.o
>  obj-$(CONFIG_PCI_TEGRA) += pci-tegra.o
>  obj-$(CONFIG_PCI_RCAR_GEN2) += pci-rcar-gen2.o
> -obj-$(CONFIG_PCIE_RCAR_HOST) += pcie-rcar-host.o
> +obj-$(CONFIG_PCIE_RCAR_HOST) += pcie-rcar.o pcie-rcar-host.o
>  obj-$(CONFIG_PCI_HOST_COMMON) += pci-host-common.o
>  obj-$(CONFIG_PCI_HOST_GENERIC) += pci-host-generic.o
>  obj-$(CONFIG_PCIE_XILINX) += pcie-xilinx.o
> diff --git a/drivers/pci/controller/pcie-rcar-host.c b/drivers/pci/controller/pcie-rcar-host.c
> index 759c654..93f22d8 100644
> --- a/drivers/pci/controller/pcie-rcar-host.c
> +++ b/drivers/pci/controller/pcie-rcar-host.c
> @@ -1,7 +1,7 @@
>  // SPDX-License-Identifier: GPL-2.0
>  /*
>   * PCIe driver for Renesas R-Car SoCs
> - *  Copyright (C) 2014 Renesas Electronics Europe Ltd
> + *  Copyright (C) 2014-2020 Renesas Electronics Europe Ltd
>   *
>   * Based on:
>   *  arch/sh/drivers/pci/pcie-sh7786.c
> @@ -30,104 +30,7 @@
>  #include <linux/pm_runtime.h>
>  #include <linux/slab.h>
> 
> -#define PCIECAR			0x000010
> -#define PCIECCTLR		0x000018
> -#define  CONFIG_SEND_ENABLE	BIT(31)
> -#define  TYPE0			(0 << 8)
> -#define  TYPE1			BIT(8)
> -#define PCIECDR			0x000020
> -#define PCIEMSR			0x000028
> -#define PCIEINTXR		0x000400
> -#define PCIEPHYSR		0x0007f0
> -#define  PHYRDY			BIT(0)
> -#define PCIEMSITXR		0x000840
> -
> -/* Transfer control */
> -#define PCIETCTLR		0x02000
> -#define  DL_DOWN		BIT(3)
> -#define  CFINIT			BIT(0)
> -#define PCIETSTR		0x02004
> -#define  DATA_LINK_ACTIVE	BIT(0)
> -#define PCIEERRFR		0x02020
> -#define  UNSUPPORTED_REQUEST	BIT(4)
> -#define PCIEMSIFR		0x02044
> -#define PCIEMSIALR		0x02048
> -#define  MSIFE			BIT(0)
> -#define PCIEMSIAUR		0x0204c
> -#define PCIEMSIIER		0x02050
> -
> -/* root port address */
> -#define PCIEPRAR(x)		(0x02080 + ((x) * 0x4))
> -
> -/* local address reg & mask */
> -#define PCIELAR(x)		(0x02200 + ((x) * 0x20))
> -#define PCIELAMR(x)		(0x02208 + ((x) * 0x20))
> -#define  LAM_PREFETCH		BIT(3)
> -#define  LAM_64BIT		BIT(2)
> -#define  LAR_ENABLE		BIT(1)
> -
> -/* PCIe address reg & mask */
> -#define PCIEPALR(x)		(0x03400 + ((x) * 0x20))
> -#define PCIEPAUR(x)		(0x03404 + ((x) * 0x20))
> -#define PCIEPAMR(x)		(0x03408 + ((x) * 0x20))
> -#define PCIEPTCTLR(x)		(0x0340c + ((x) * 0x20))
> -#define  PAR_ENABLE		BIT(31)
> -#define  IO_SPACE		BIT(8)
> -
> -/* Configuration */
> -#define PCICONF(x)		(0x010000 + ((x) * 0x4))
> -#define PMCAP(x)		(0x010040 + ((x) * 0x4))
> -#define EXPCAP(x)		(0x010070 + ((x) * 0x4))
> -#define VCCAP(x)		(0x010100 + ((x) * 0x4))
> -
> -/* link layer */
> -#define IDSETR1			0x011004
> -#define TLCTLR			0x011048
> -#define MACSR			0x011054
> -#define  SPCHGFIN		BIT(4)
> -#define  SPCHGFAIL		BIT(6)
> -#define  SPCHGSUC		BIT(7)
> -#define  LINK_SPEED		(0xf << 16)
> -#define  LINK_SPEED_2_5GTS	(1 << 16)
> -#define  LINK_SPEED_5_0GTS	(2 << 16)
> -#define MACCTLR			0x011058
> -#define  MACCTLR_NFTS_MASK	GENMASK(23, 16)	/* The name is from SH7786 */
> -#define  SPEED_CHANGE		BIT(24)
> -#define  SCRAMBLE_DISABLE	BIT(27)
> -#define  LTSMDIS		BIT(31)
> -#define  MACCTLR_INIT_VAL	(LTSMDIS | MACCTLR_NFTS_MASK)
> -#define PMSR			0x01105c
> -#define MACS2R			0x011078
> -#define MACCGSPSETR		0x011084
> -#define  SPCNGRSN		BIT(31)
> -
> -/* R-Car H1 PHY */
> -#define H1_PCIEPHYADRR		0x04000c
> -#define  WRITE_CMD		BIT(16)
> -#define  PHY_ACK		BIT(24)
> -#define  RATE_POS		12
> -#define  LANE_POS		8
> -#define  ADR_POS		0
> -#define H1_PCIEPHYDOUTR		0x040014
> -
> -/* R-Car Gen2 PHY */
> -#define GEN2_PCIEPHYADDR	0x780
> -#define GEN2_PCIEPHYDATA	0x784
> -#define GEN2_PCIEPHYCTRL	0x78c
> -
> -#define INT_PCI_MSI_NR		32
> -
> -#define RCONF(x)		(PCICONF(0) + (x))
> -#define RPMCAP(x)		(PMCAP(0) + (x))
> -#define REXPCAP(x)		(EXPCAP(0) + (x))
> -#define RVCCAP(x)		(VCCAP(0) + (x))
> -
> -#define PCIE_CONF_BUS(b)	(((b) & 0xff) << 24)
> -#define PCIE_CONF_DEV(d)	(((d) & 0x1f) << 19)
> -#define PCIE_CONF_FUNC(f)	(((f) & 0x7) << 16)
> -
> -#define RCAR_PCI_MAX_RESOURCES	4
> -#define MAX_NR_INBOUND_MAPS	6
> +#include "pcie-rcar.h"
> 
>  struct rcar_msi {
>  	DECLARE_BITMAP(used, INT_PCI_MSI_NR);
> @@ -155,36 +58,10 @@ struct rcar_pcie {
>  	struct			rcar_msi msi;
>  };
> 
> -static void rcar_pci_write_reg(struct rcar_pcie *pcie, u32 val,
> -			       unsigned int reg)
> -{
> -	writel(val, pcie->base + reg);
> -}
> -
> -static u32 rcar_pci_read_reg(struct rcar_pcie *pcie, unsigned int reg)
> -{
> -	return readl(pcie->base + reg);
> -}
> -
> -enum {
> -	RCAR_PCI_ACCESS_READ,
> -	RCAR_PCI_ACCESS_WRITE,
> -};
> -
> -static void rcar_rmw32(struct rcar_pcie *pcie, int where, u32 mask, u32 data)
> -{
> -	unsigned int shift = BITS_PER_BYTE * (where & 3);
> -	u32 val = rcar_pci_read_reg(pcie, where & ~3);
> -
> -	val &= ~(mask << shift);
> -	val |= data << shift;
> -	rcar_pci_write_reg(pcie, val, where & ~3);
> -}
> -
>  static u32 rcar_read_conf(struct rcar_pcie *pcie, int where)
>  {
>  	unsigned int shift = BITS_PER_BYTE * (where & 3);
> -	u32 val = rcar_pci_read_reg(pcie, where & ~3);
> +	u32 val = rcar_pci_read_reg(pcie->base, where & ~3);

I'd like to avoid these many changes about "pcie" to "pcie->base" somehow.
My idea is moving declaration of struct rcar_pcie to rcar-pcie.h and use it
from both host and ep codes. According to the patch 6/7, the rcar-pcie-ep.c
also has the same name of struct rcar_pcie and this has the same "base" and "dev.
So, common rcar_pcie should have these members. Remaining members are
contained on renamed structures like "rcar_pcie_host" and "rcar_pcie_ep".
And then, the rcar_pcie_{host,ep} have struct rcar_pcie pcie member.

Best regards,
Yoshihiro Shimoda

>  	return val >> shift;
>  }
> @@ -221,13 +98,13 @@ static int rcar_pcie_config_access(struct rcar_pcie *pcie,
>  			return PCIBIOS_DEVICE_NOT_FOUND;
> 
>  		if (access_type == RCAR_PCI_ACCESS_READ) {
> -			*data = rcar_pci_read_reg(pcie, PCICONF(index));
> +			*data = rcar_pci_read_reg(pcie->base, PCICONF(index));
>  		} else {
>  			/* Keep an eye out for changes to the root bus number */
>  			if (pci_is_root_bus(bus) && (reg == PCI_PRIMARY_BUS))
>  				pcie->root_bus_nr = *data & 0xff;
> 
> -			rcar_pci_write_reg(pcie, *data, PCICONF(index));
> +			rcar_pci_write_reg(pcie->base, *data, PCICONF(index));
>  		}
> 
>  		return PCIBIOS_SUCCESSFUL;
> @@ -237,20 +114,23 @@ static int rcar_pcie_config_access(struct rcar_pcie *pcie,
>  		return PCIBIOS_DEVICE_NOT_FOUND;
> 
>  	/* Clear errors */
> -	rcar_pci_write_reg(pcie, rcar_pci_read_reg(pcie, PCIEERRFR), PCIEERRFR);
> +	rcar_pci_write_reg(pcie->base, rcar_pci_read_reg(pcie->base, PCIEERRFR),
> +			   PCIEERRFR);
> 
>  	/* Set the PIO address */
> -	rcar_pci_write_reg(pcie, PCIE_CONF_BUS(bus->number) |
> +	rcar_pci_write_reg(pcie->base, PCIE_CONF_BUS(bus->number) |
>  		PCIE_CONF_DEV(dev) | PCIE_CONF_FUNC(func) | reg, PCIECAR);
> 
>  	/* Enable the configuration access */
>  	if (bus->parent->number == pcie->root_bus_nr)
> -		rcar_pci_write_reg(pcie, CONFIG_SEND_ENABLE | TYPE0, PCIECCTLR);
> +		rcar_pci_write_reg(pcie->base, CONFIG_SEND_ENABLE | TYPE0,
> +				   PCIECCTLR);
>  	else
> -		rcar_pci_write_reg(pcie, CONFIG_SEND_ENABLE | TYPE1, PCIECCTLR);
> +		rcar_pci_write_reg(pcie->base, CONFIG_SEND_ENABLE | TYPE1,
> +				   PCIECCTLR);
> 
>  	/* Check for errors */
> -	if (rcar_pci_read_reg(pcie, PCIEERRFR) & UNSUPPORTED_REQUEST)
> +	if (rcar_pci_read_reg(pcie->base, PCIEERRFR) & UNSUPPORTED_REQUEST)
>  		return PCIBIOS_DEVICE_NOT_FOUND;
> 
>  	/* Check for master and target aborts */
> @@ -259,12 +139,12 @@ static int rcar_pcie_config_access(struct rcar_pcie *pcie,
>  		return PCIBIOS_DEVICE_NOT_FOUND;
> 
>  	if (access_type == RCAR_PCI_ACCESS_READ)
> -		*data = rcar_pci_read_reg(pcie, PCIECDR);
> +		*data = rcar_pci_read_reg(pcie->base, PCIECDR);
>  	else
> -		rcar_pci_write_reg(pcie, *data, PCIECDR);
> +		rcar_pci_write_reg(pcie->base, *data, PCIECDR);
> 
>  	/* Disable the configuration access */
> -	rcar_pci_write_reg(pcie, 0, PCIECCTLR);
> +	rcar_pci_write_reg(pcie->base, 0, PCIECCTLR);
> 
>  	return PCIBIOS_SUCCESSFUL;
>  }
> @@ -332,41 +212,6 @@ static struct pci_ops rcar_pcie_ops = {
>  	.write	= rcar_pcie_write_conf,
>  };
> 
> -static void rcar_pcie_setup_window(int win, struct rcar_pcie *pcie,
> -				   struct resource *res)
> -{
> -	/* Setup PCIe address space mappings for each resource */
> -	resource_size_t size;
> -	resource_size_t res_start;
> -	u32 mask;
> -
> -	rcar_pci_write_reg(pcie, 0x00000000, PCIEPTCTLR(win));
> -
> -	/*
> -	 * The PAMR mask is calculated in units of 128Bytes, which
> -	 * keeps things pretty simple.
> -	 */
> -	size = resource_size(res);
> -	mask = (roundup_pow_of_two(size) / SZ_128) - 1;
> -	rcar_pci_write_reg(pcie, mask << 7, PCIEPAMR(win));
> -
> -	if (res->flags & IORESOURCE_IO)
> -		res_start = pci_pio_to_address(res->start);
> -	else
> -		res_start = res->start;
> -
> -	rcar_pci_write_reg(pcie, upper_32_bits(res_start), PCIEPAUR(win));
> -	rcar_pci_write_reg(pcie, lower_32_bits(res_start) & ~0x7F,
> -			   PCIEPALR(win));
> -
> -	/* First resource is for IO */
> -	mask = PAR_ENABLE;
> -	if (res->flags & IORESOURCE_IO)
> -		mask |= IO_SPACE;
> -
> -	rcar_pci_write_reg(pcie, mask, PCIEPTCTLR(win));
> -}
> -
>  static int rcar_pcie_setup(struct list_head *resource, struct rcar_pcie *pci)
>  {
>  	struct resource_entry *win;
> @@ -382,7 +227,7 @@ static int rcar_pcie_setup(struct list_head *resource, struct rcar_pcie *pci)
>  		switch (resource_type(res)) {
>  		case IORESOURCE_IO:
>  		case IORESOURCE_MEM:
> -			rcar_pcie_setup_window(i, pci, res);
> +			rcar_pcie_set_outbound(i, pci->base, res);
>  			i++;
>  			break;
>  		case IORESOURCE_BUS:
> @@ -404,37 +249,38 @@ static void rcar_pcie_force_speedup(struct rcar_pcie *pcie)
>  	unsigned int timeout = 1000;
>  	u32 macsr;
> 
> -	if ((rcar_pci_read_reg(pcie, MACS2R) & LINK_SPEED) != LINK_SPEED_5_0GTS)
> +	if ((rcar_pci_read_reg(pcie->base, MACS2R) & LINK_SPEED) !=
> +		LINK_SPEED_5_0GTS)
>  		return;
> 
> -	if (rcar_pci_read_reg(pcie, MACCTLR) & SPEED_CHANGE) {
> +	if (rcar_pci_read_reg(pcie->base, MACCTLR) & SPEED_CHANGE) {
>  		dev_err(dev, "Speed change already in progress\n");
>  		return;
>  	}
> 
> -	macsr = rcar_pci_read_reg(pcie, MACSR);
> +	macsr = rcar_pci_read_reg(pcie->base, MACSR);
>  	if ((macsr & LINK_SPEED) == LINK_SPEED_5_0GTS)
>  		goto done;
> 
>  	/* Set target link speed to 5.0 GT/s */
> -	rcar_rmw32(pcie, EXPCAP(12), PCI_EXP_LNKSTA_CLS,
> +	rcar_rmw32(pcie->base, EXPCAP(12), PCI_EXP_LNKSTA_CLS,
>  		   PCI_EXP_LNKSTA_CLS_5_0GB);
> 
>  	/* Set speed change reason as intentional factor */
> -	rcar_rmw32(pcie, MACCGSPSETR, SPCNGRSN, 0);
> +	rcar_rmw32(pcie->base, MACCGSPSETR, SPCNGRSN, 0);
> 
>  	/* Clear SPCHGFIN, SPCHGSUC, and SPCHGFAIL */
>  	if (macsr & (SPCHGFIN | SPCHGSUC | SPCHGFAIL))
> -		rcar_pci_write_reg(pcie, macsr, MACSR);
> +		rcar_pci_write_reg(pcie->base, macsr, MACSR);
> 
>  	/* Start link speed change */
> -	rcar_rmw32(pcie, MACCTLR, SPEED_CHANGE, SPEED_CHANGE);
> +	rcar_rmw32(pcie->base, MACCTLR, SPEED_CHANGE, SPEED_CHANGE);
> 
>  	while (timeout--) {
> -		macsr = rcar_pci_read_reg(pcie, MACSR);
> +		macsr = rcar_pci_read_reg(pcie->base, MACSR);
>  		if (macsr & SPCHGFIN) {
>  			/* Clear the interrupt bits */
> -			rcar_pci_write_reg(pcie, macsr, MACSR);
> +			rcar_pci_write_reg(pcie->base, macsr, MACSR);
> 
>  			if (macsr & SPCHGFAIL)
>  				dev_err(dev, "Speed change failed\n");
> @@ -498,7 +344,7 @@ static int phy_wait_for_ack(struct rcar_pcie *pcie)
>  	unsigned int timeout = 100;
> 
>  	while (timeout--) {
> -		if (rcar_pci_read_reg(pcie, H1_PCIEPHYADRR) & PHY_ACK)
> +		if (rcar_pci_read_reg(pcie->base, H1_PCIEPHYADRR) & PHY_ACK)
>  			return 0;
> 
>  		udelay(100);
> @@ -521,60 +367,31 @@ static void phy_write_reg(struct rcar_pcie *pcie,
>  		((addr & 0xff) << ADR_POS);
> 
>  	/* Set write data */
> -	rcar_pci_write_reg(pcie, data, H1_PCIEPHYDOUTR);
> -	rcar_pci_write_reg(pcie, phyaddr, H1_PCIEPHYADRR);
> +	rcar_pci_write_reg(pcie->base, data, H1_PCIEPHYDOUTR);
> +	rcar_pci_write_reg(pcie->base, phyaddr, H1_PCIEPHYADRR);
> 
>  	/* Ignore errors as they will be dealt with if the data link is down */
>  	phy_wait_for_ack(pcie);
> 
>  	/* Clear command */
> -	rcar_pci_write_reg(pcie, 0, H1_PCIEPHYDOUTR);
> -	rcar_pci_write_reg(pcie, 0, H1_PCIEPHYADRR);
> +	rcar_pci_write_reg(pcie->base, 0, H1_PCIEPHYDOUTR);
> +	rcar_pci_write_reg(pcie->base, 0, H1_PCIEPHYADRR);
> 
>  	/* Ignore errors as they will be dealt with if the data link is down */
>  	phy_wait_for_ack(pcie);
>  }
> 
> -static int rcar_pcie_wait_for_phyrdy(struct rcar_pcie *pcie)
> -{
> -	unsigned int timeout = 10;
> -
> -	while (timeout--) {
> -		if (rcar_pci_read_reg(pcie, PCIEPHYSR) & PHYRDY)
> -			return 0;
> -
> -		msleep(5);
> -	}
> -
> -	return -ETIMEDOUT;
> -}
> -
> -static int rcar_pcie_wait_for_dl(struct rcar_pcie *pcie)
> -{
> -	unsigned int timeout = 10000;
> -
> -	while (timeout--) {
> -		if ((rcar_pci_read_reg(pcie, PCIETSTR) & DATA_LINK_ACTIVE))
> -			return 0;
> -
> -		udelay(5);
> -		cpu_relax();
> -	}
> -
> -	return -ETIMEDOUT;
> -}
> -
>  static int rcar_pcie_hw_init(struct rcar_pcie *pcie)
>  {
>  	int err;
> 
>  	/* Begin initialization */
> -	rcar_pci_write_reg(pcie, 0, PCIETCTLR);
> +	rcar_pci_write_reg(pcie->base, 0, PCIETCTLR);
> 
>  	/* Set mode */
> -	rcar_pci_write_reg(pcie, 1, PCIEMSR);
> +	rcar_pci_write_reg(pcie->base, 1, PCIEMSR);
> 
> -	err = rcar_pcie_wait_for_phyrdy(pcie);
> +	err = rcar_pcie_wait_for_phyrdy(pcie->base);
>  	if (err)
>  		return err;
> 
> @@ -583,51 +400,51 @@ static int rcar_pcie_hw_init(struct rcar_pcie *pcie)
>  	 * class to match. Hardware takes care of propagating the IDSETR
>  	 * settings, so there is no need to bother with a quirk.
>  	 */
> -	rcar_pci_write_reg(pcie, PCI_CLASS_BRIDGE_PCI << 16, IDSETR1);
> +	rcar_pci_write_reg(pcie->base, PCI_CLASS_BRIDGE_PCI << 16, IDSETR1);
> 
>  	/*
>  	 * Setup Secondary Bus Number & Subordinate Bus Number, even though
>  	 * they aren't used, to avoid bridge being detected as broken.
>  	 */
> -	rcar_rmw32(pcie, RCONF(PCI_SECONDARY_BUS), 0xff, 1);
> -	rcar_rmw32(pcie, RCONF(PCI_SUBORDINATE_BUS), 0xff, 1);
> +	rcar_rmw32(pcie->base, RCONF(PCI_SECONDARY_BUS), 0xff, 1);
> +	rcar_rmw32(pcie->base, RCONF(PCI_SUBORDINATE_BUS), 0xff, 1);
> 
>  	/* Initialize default capabilities. */
> -	rcar_rmw32(pcie, REXPCAP(0), 0xff, PCI_CAP_ID_EXP);
> -	rcar_rmw32(pcie, REXPCAP(PCI_EXP_FLAGS),
> -		PCI_EXP_FLAGS_TYPE, PCI_EXP_TYPE_ROOT_PORT << 4);
> -	rcar_rmw32(pcie, RCONF(PCI_HEADER_TYPE), 0x7f,
> -		PCI_HEADER_TYPE_BRIDGE);
> +	rcar_rmw32(pcie->base, REXPCAP(0), 0xff, PCI_CAP_ID_EXP);
> +	rcar_rmw32(pcie->base, REXPCAP(PCI_EXP_FLAGS),
> +		   PCI_EXP_FLAGS_TYPE, PCI_EXP_TYPE_ROOT_PORT << 4);
> +	rcar_rmw32(pcie->base, RCONF(PCI_HEADER_TYPE), 0x7f,
> +		   PCI_HEADER_TYPE_BRIDGE);
> 
>  	/* Enable data link layer active state reporting */
> -	rcar_rmw32(pcie, REXPCAP(PCI_EXP_LNKCAP), PCI_EXP_LNKCAP_DLLLARC,
> -		PCI_EXP_LNKCAP_DLLLARC);
> +	rcar_rmw32(pcie->base, REXPCAP(PCI_EXP_LNKCAP), PCI_EXP_LNKCAP_DLLLARC,
> +		   PCI_EXP_LNKCAP_DLLLARC);
> 
>  	/* Write out the physical slot number = 0 */
> -	rcar_rmw32(pcie, REXPCAP(PCI_EXP_SLTCAP), PCI_EXP_SLTCAP_PSN, 0);
> +	rcar_rmw32(pcie->base, REXPCAP(PCI_EXP_SLTCAP), PCI_EXP_SLTCAP_PSN, 0);
> 
>  	/* Set the completion timer timeout to the maximum 50ms. */
> -	rcar_rmw32(pcie, TLCTLR + 1, 0x3f, 50);
> +	rcar_rmw32(pcie->base, TLCTLR + 1, 0x3f, 50);
> 
>  	/* Terminate list of capabilities (Next Capability Offset=0) */
> -	rcar_rmw32(pcie, RVCCAP(0), 0xfff00000, 0);
> +	rcar_rmw32(pcie->base, RVCCAP(0), 0xfff00000, 0);
> 
>  	/* Enable MSI */
>  	if (IS_ENABLED(CONFIG_PCI_MSI))
> -		rcar_pci_write_reg(pcie, 0x801f0000, PCIEMSITXR);
> +		rcar_pci_write_reg(pcie->base, 0x801f0000, PCIEMSITXR);
> 
> -	rcar_pci_write_reg(pcie, MACCTLR_INIT_VAL, MACCTLR);
> +	rcar_pci_write_reg(pcie->base, MACCTLR_INIT_VAL, MACCTLR);
> 
>  	/* Finish initialization - establish a PCI Express link */
> -	rcar_pci_write_reg(pcie, CFINIT, PCIETCTLR);
> +	rcar_pci_write_reg(pcie->base, CFINIT, PCIETCTLR);
> 
>  	/* This will timeout if we don't have a link. */
> -	err = rcar_pcie_wait_for_dl(pcie);
> +	err = rcar_pcie_wait_for_dl(pcie->base);
>  	if (err)
>  		return err;
> 
>  	/* Enable INTx interrupts */
> -	rcar_rmw32(pcie, PCIEINTXR, 0, 0xF << 8);
> +	rcar_rmw32(pcie->base, PCIEINTXR, 0, 0xF << 8);
> 
>  	wmb();
> 
> @@ -663,16 +480,16 @@ static int rcar_pcie_phy_init_gen2(struct rcar_pcie *pcie)
>  	 * These settings come from the R-Car Series, 2nd Generation User's
>  	 * Manual, section 50.3.1 (2) Initialization of the physical layer.
>  	 */
> -	rcar_pci_write_reg(pcie, 0x000f0030, GEN2_PCIEPHYADDR);
> -	rcar_pci_write_reg(pcie, 0x00381203, GEN2_PCIEPHYDATA);
> -	rcar_pci_write_reg(pcie, 0x00000001, GEN2_PCIEPHYCTRL);
> -	rcar_pci_write_reg(pcie, 0x00000006, GEN2_PCIEPHYCTRL);
> +	rcar_pci_write_reg(pcie->base, 0x000f0030, GEN2_PCIEPHYADDR);
> +	rcar_pci_write_reg(pcie->base, 0x00381203, GEN2_PCIEPHYDATA);
> +	rcar_pci_write_reg(pcie->base, 0x00000001, GEN2_PCIEPHYCTRL);
> +	rcar_pci_write_reg(pcie->base, 0x00000006, GEN2_PCIEPHYCTRL);
> 
> -	rcar_pci_write_reg(pcie, 0x000f0054, GEN2_PCIEPHYADDR);
> +	rcar_pci_write_reg(pcie->base, 0x000f0054, GEN2_PCIEPHYADDR);
>  	/* The following value is for DC connection, no termination resistor */
> -	rcar_pci_write_reg(pcie, 0x13802007, GEN2_PCIEPHYDATA);
> -	rcar_pci_write_reg(pcie, 0x00000001, GEN2_PCIEPHYCTRL);
> -	rcar_pci_write_reg(pcie, 0x00000006, GEN2_PCIEPHYCTRL);
> +	rcar_pci_write_reg(pcie->base, 0x13802007, GEN2_PCIEPHYDATA);
> +	rcar_pci_write_reg(pcie->base, 0x00000001, GEN2_PCIEPHYCTRL);
> +	rcar_pci_write_reg(pcie->base, 0x00000006, GEN2_PCIEPHYCTRL);
> 
>  	return 0;
>  }
> @@ -735,7 +552,7 @@ static irqreturn_t rcar_pcie_msi_irq(int irq, void *data)
>  	struct device *dev = pcie->dev;
>  	unsigned long reg;
> 
> -	reg = rcar_pci_read_reg(pcie, PCIEMSIFR);
> +	reg = rcar_pci_read_reg(pcie->base, PCIEMSIFR);
> 
>  	/* MSI & INTx share an interrupt - we only handle MSI here */
>  	if (!reg)
> @@ -746,7 +563,7 @@ static irqreturn_t rcar_pcie_msi_irq(int irq, void *data)
>  		unsigned int msi_irq;
> 
>  		/* clear the interrupt */
> -		rcar_pci_write_reg(pcie, 1 << index, PCIEMSIFR);
> +		rcar_pci_write_reg(pcie->base, 1 << index, PCIEMSIFR);
> 
>  		msi_irq = irq_find_mapping(msi->domain, index);
>  		if (msi_irq) {
> @@ -760,7 +577,7 @@ static irqreturn_t rcar_pcie_msi_irq(int irq, void *data)
>  		}
> 
>  		/* see if there's any more pending in this vector */
> -		reg = rcar_pci_read_reg(pcie, PCIEMSIFR);
> +		reg = rcar_pci_read_reg(pcie->base, PCIEMSIFR);
>  	}
> 
>  	return IRQ_HANDLED;
> @@ -787,8 +604,8 @@ static int rcar_msi_setup_irq(struct msi_controller *chip, struct pci_dev *pdev,
> 
>  	irq_set_msi_desc(irq, desc);
> 
> -	msg.address_lo = rcar_pci_read_reg(pcie, PCIEMSIALR) & ~MSIFE;
> -	msg.address_hi = rcar_pci_read_reg(pcie, PCIEMSIAUR);
> +	msg.address_lo = rcar_pci_read_reg(pcie->base, PCIEMSIALR) & ~MSIFE;
> +	msg.address_hi = rcar_pci_read_reg(pcie->base, PCIEMSIAUR);
>  	msg.data = hwirq;
> 
>  	pci_write_msi_msg(irq, &msg);
> @@ -839,8 +656,8 @@ static int rcar_msi_setup_irqs(struct msi_controller *chip,
>  	desc->nvec_used = nvec;
>  	desc->msi_attrib.multiple = order_base_2(nvec);
> 
> -	msg.address_lo = rcar_pci_read_reg(pcie, PCIEMSIALR) & ~MSIFE;
> -	msg.address_hi = rcar_pci_read_reg(pcie, PCIEMSIAUR);
> +	msg.address_lo = rcar_pci_read_reg(pcie->base, PCIEMSIALR) & ~MSIFE;
> +	msg.address_hi = rcar_pci_read_reg(pcie->base, PCIEMSIAUR);
>  	msg.data = hwirq;
> 
>  	pci_write_msi_msg(irq, &msg);
> @@ -940,11 +757,11 @@ static int rcar_pcie_enable_msi(struct rcar_pcie *pcie)
>  	}
>  	base = virt_to_phys((void *)msi->pages);
> 
> -	rcar_pci_write_reg(pcie, lower_32_bits(base) | MSIFE, PCIEMSIALR);
> -	rcar_pci_write_reg(pcie, upper_32_bits(base), PCIEMSIAUR);
> +	rcar_pci_write_reg(pcie->base, lower_32_bits(base) | MSIFE, PCIEMSIALR);
> +	rcar_pci_write_reg(pcie->base, upper_32_bits(base), PCIEMSIAUR);
> 
>  	/* enable all MSI interrupts */
> -	rcar_pci_write_reg(pcie, 0xffffffff, PCIEMSIIER);
> +	rcar_pci_write_reg(pcie->base, 0xffffffff, PCIEMSIIER);
> 
>  	return 0;
> 
> @@ -958,10 +775,10 @@ static void rcar_pcie_teardown_msi(struct rcar_pcie *pcie)
>  	struct rcar_msi *msi = &pcie->msi;
> 
>  	/* Disable all MSI interrupts */
> -	rcar_pci_write_reg(pcie, 0, PCIEMSIIER);
> +	rcar_pci_write_reg(pcie->base, 0, PCIEMSIIER);
> 
>  	/* Disable address decoding of the MSI interrupt, MSIFE */
> -	rcar_pci_write_reg(pcie, 0, PCIEMSIALR);
> +	rcar_pci_write_reg(pcie->base, 0, PCIEMSIALR);
> 
>  	free_pages(msi->pages, 0);
> 
> @@ -1054,21 +871,8 @@ static int rcar_pcie_inbound_ranges(struct rcar_pcie *pcie,
>  		mask = roundup_pow_of_two(size) - 1;
>  		mask &= ~0xf;
> 
> -		/*
> -		 * Set up 64-bit inbound regions as the range parser doesn't
> -		 * distinguish between 32 and 64-bit types.
> -		 */
> -		rcar_pci_write_reg(pcie, lower_32_bits(pci_addr),
> -				   PCIEPRAR(idx));
> -		rcar_pci_write_reg(pcie, lower_32_bits(cpu_addr), PCIELAR(idx));
> -		rcar_pci_write_reg(pcie, lower_32_bits(mask) | flags,
> -				   PCIELAMR(idx));
> -
> -		rcar_pci_write_reg(pcie, upper_32_bits(pci_addr),
> -				   PCIEPRAR(idx + 1));
> -		rcar_pci_write_reg(pcie, upper_32_bits(cpu_addr),
> -				   PCIELAR(idx + 1));
> -		rcar_pci_write_reg(pcie, 0, PCIELAMR(idx + 1));
> +		rcar_pcie_set_inbound(pcie->base, cpu_addr, pci_addr,
> +				      lower_32_bits(mask) | flags, idx, true);
> 
>  		pci_addr += size;
>  		cpu_addr += size;
> @@ -1170,7 +974,7 @@ static int rcar_pcie_probe(struct platform_device *pdev)
>  		goto err_phy_shutdown;
>  	}
> 
> -	data = rcar_pci_read_reg(pcie, MACSR);
> +	data = rcar_pci_read_reg(pcie->base, MACSR);
>  	dev_info(dev, "PCIe x%d: link up\n", (data >> 20) & 0x3f);
> 
>  	if (IS_ENABLED(CONFIG_PCI_MSI)) {
> @@ -1223,14 +1027,14 @@ static int rcar_pcie_resume_noirq(struct device *dev)
>  {
>  	struct rcar_pcie *pcie = dev_get_drvdata(dev);
> 
> -	if (rcar_pci_read_reg(pcie, PMSR) &&
> -	    !(rcar_pci_read_reg(pcie, PCIETCTLR) & DL_DOWN))
> +	if (rcar_pci_read_reg(pcie->base, PMSR) &&
> +	    !(rcar_pci_read_reg(pcie->base, PCIETCTLR) & DL_DOWN))
>  		return 0;
> 
>  	/* Re-establish the PCIe link */
> -	rcar_pci_write_reg(pcie, MACCTLR_INIT_VAL, MACCTLR);
> -	rcar_pci_write_reg(pcie, CFINIT, PCIETCTLR);
> -	return rcar_pcie_wait_for_dl(pcie);
> +	rcar_pci_write_reg(pcie->base, MACCTLR_INIT_VAL, MACCTLR);
> +	rcar_pci_write_reg(pcie->base, CFINIT, PCIETCTLR);
> +	return rcar_pcie_wait_for_dl(pcie->base);
>  }
> 
>  static const struct dev_pm_ops rcar_pcie_pm_ops = {
> diff --git a/drivers/pci/controller/pcie-rcar.c b/drivers/pci/controller/pcie-rcar.c
> new file mode 100644
> index 0000000..41275f9
> --- /dev/null
> +++ b/drivers/pci/controller/pcie-rcar.c
> @@ -0,0 +1,117 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * PCIe driver for Renesas R-Car SoCs
> + *  Copyright (C) 2014-2020 Renesas Electronics Europe Ltd
> + *
> + * Author: Phil Edworthy <phil.edworthy@renesas.com>
> + */
> +
> +#include <linux/delay.h>
> +#include <linux/pci.h>
> +
> +#include "pcie-rcar.h"
> +
> +void rcar_pci_write_reg(void __iomem *base, u32 val, unsigned int reg)
> +{
> +	writel(val, base + reg);
> +}
> +
> +u32 rcar_pci_read_reg(void __iomem *base, unsigned int reg)
> +{
> +	return readl(base + reg);
> +}
> +
> +void rcar_rmw32(void __iomem *base, int where, u32 mask, u32 data)
> +{
> +	unsigned int shift = BITS_PER_BYTE * (where & 3);
> +	u32 val = rcar_pci_read_reg(base, where & ~3);
> +
> +	val &= ~(mask << shift);
> +	val |= data << shift;
> +	rcar_pci_write_reg(base, val, where & ~3);
> +}
> +
> +int rcar_pcie_wait_for_phyrdy(void __iomem *base)
> +{
> +	unsigned int timeout = 10;
> +
> +	while (timeout--) {
> +		if (rcar_pci_read_reg(base, PCIEPHYSR) & PHYRDY)
> +			return 0;
> +
> +		msleep(5);
> +	}
> +
> +	return -ETIMEDOUT;
> +}
> +
> +int rcar_pcie_wait_for_dl(void __iomem *base)
> +{
> +	unsigned int timeout = 10000;
> +
> +	while (timeout--) {
> +		if ((rcar_pci_read_reg(base, PCIETSTR) & DATA_LINK_ACTIVE))
> +			return 0;
> +
> +		udelay(5);
> +		cpu_relax();
> +	}
> +
> +	return -ETIMEDOUT;
> +}
> +
> +void rcar_pcie_set_outbound(int win, void __iomem *base,
> +			    struct resource *res)
> +{
> +	/* Setup PCIe address space mappings for each resource */
> +	resource_size_t res_start;
> +	resource_size_t size;
> +	u32 mask;
> +
> +	rcar_pci_write_reg(base, 0x00000000, PCIEPTCTLR(win));
> +
> +	/*
> +	 * The PAMR mask is calculated in units of 128Bytes, which
> +	 * keeps things pretty simple.
> +	 */
> +	size = resource_size(res);
> +	mask = (roundup_pow_of_two(size) / SZ_128) - 1;
> +	rcar_pci_write_reg(base, mask << 7, PCIEPAMR(win));
> +
> +	if (res->flags & IORESOURCE_IO)
> +		res_start = pci_pio_to_address(res->start);
> +	else
> +		res_start = res->start;
> +
> +	rcar_pci_write_reg(base, upper_32_bits(res_start), PCIEPAUR(win));
> +	rcar_pci_write_reg(base, lower_32_bits(res_start) & ~0x7F,
> +			   PCIEPALR(win));
> +
> +	/* First resource is for IO */
> +	mask = PAR_ENABLE;
> +	if (res->flags & IORESOURCE_IO)
> +		mask |= IO_SPACE;
> +
> +	rcar_pci_write_reg(base, mask, PCIEPTCTLR(win));
> +}
> +
> +void rcar_pcie_set_inbound(void __iomem *base,
> +			   u64 cpu_addr, u64 pci_addr,
> +			   u64 flags, int idx, bool host)
> +{
> +	/*
> +	 * Set up 64-bit inbound regions as the range parser doesn't
> +	 * distinguish between 32 and 64-bit types.
> +	 */
> +	if (host)
> +		rcar_pci_write_reg(base, lower_32_bits(pci_addr),
> +				   PCIEPRAR(idx));
> +	rcar_pci_write_reg(base, lower_32_bits(cpu_addr), PCIELAR(idx));
> +	rcar_pci_write_reg(base, flags, PCIELAMR(idx));
> +
> +	if (host)
> +		rcar_pci_write_reg(base, upper_32_bits(pci_addr),
> +				   PCIEPRAR(idx + 1));
> +	rcar_pci_write_reg(base, upper_32_bits(cpu_addr), PCIELAR(idx + 1));
> +	rcar_pci_write_reg(base, 0, PCIELAMR(idx + 1));
> +}
> diff --git a/drivers/pci/controller/pcie-rcar.h b/drivers/pci/controller/pcie-rcar.h
> new file mode 100644
> index 0000000..b529d806
> --- /dev/null
> +++ b/drivers/pci/controller/pcie-rcar.h
> @@ -0,0 +1,125 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * PCIe driver for Renesas R-Car SoCs
> + *  Copyright (C) 2014-2020 Renesas Electronics Europe Ltd
> + *
> + * Author: Phil Edworthy <phil.edworthy@renesas.com>
> + */
> +
> +#ifndef _PCIE_RCAR_H
> +#define _PCIE_RCAR_H
> +
> +#define PCIECAR			0x000010
> +#define PCIECCTLR		0x000018
> +#define  CONFIG_SEND_ENABLE	BIT(31)
> +#define  TYPE0			(0 << 8)
> +#define  TYPE1			BIT(8)
> +#define PCIECDR			0x000020
> +#define PCIEMSR			0x000028
> +#define PCIEINTXR		0x000400
> +#define PCIEPHYSR		0x0007f0
> +#define  PHYRDY			BIT(0)
> +#define PCIEMSITXR		0x000840
> +
> +/* Transfer control */
> +#define PCIETCTLR		0x02000
> +#define  DL_DOWN		BIT(3)
> +#define  CFINIT			BIT(0)
> +#define PCIETSTR		0x02004
> +#define  DATA_LINK_ACTIVE	BIT(0)
> +#define PCIEERRFR		0x02020
> +#define  UNSUPPORTED_REQUEST	BIT(4)
> +#define PCIEMSIFR		0x02044
> +#define PCIEMSIALR		0x02048
> +#define  MSIFE			BIT(0)
> +#define PCIEMSIAUR		0x0204c
> +#define PCIEMSIIER		0x02050
> +
> +/* root port address */
> +#define PCIEPRAR(x)		(0x02080 + ((x) * 0x4))
> +
> +/* local address reg & mask */
> +#define PCIELAR(x)		(0x02200 + ((x) * 0x20))
> +#define PCIELAMR(x)		(0x02208 + ((x) * 0x20))
> +#define  LAM_PREFETCH		BIT(3)
> +#define  LAM_64BIT		BIT(2)
> +#define  LAR_ENABLE		BIT(1)
> +
> +/* PCIe address reg & mask */
> +#define PCIEPALR(x)		(0x03400 + ((x) * 0x20))
> +#define PCIEPAUR(x)		(0x03404 + ((x) * 0x20))
> +#define PCIEPAMR(x)		(0x03408 + ((x) * 0x20))
> +#define PCIEPTCTLR(x)		(0x0340c + ((x) * 0x20))
> +#define  PAR_ENABLE		BIT(31)
> +#define  IO_SPACE		BIT(8)
> +
> +/* Configuration */
> +#define PCICONF(x)		(0x010000 + ((x) * 0x4))
> +#define PMCAP(x)		(0x010040 + ((x) * 0x4))
> +#define EXPCAP(x)		(0x010070 + ((x) * 0x4))
> +#define VCCAP(x)		(0x010100 + ((x) * 0x4))
> +
> +/* link layer */
> +#define IDSETR1			0x011004
> +#define TLCTLR			0x011048
> +#define MACSR			0x011054
> +#define  SPCHGFIN		BIT(4)
> +#define  SPCHGFAIL		BIT(6)
> +#define  SPCHGSUC		BIT(7)
> +#define  LINK_SPEED		(0xf << 16)
> +#define  LINK_SPEED_2_5GTS	(1 << 16)
> +#define  LINK_SPEED_5_0GTS	(2 << 16)
> +#define MACCTLR			0x011058
> +#define  MACCTLR_NFTS_MASK	GENMASK(23, 16)	/* The name is from SH7786 */
> +#define  SPEED_CHANGE		BIT(24)
> +#define  SCRAMBLE_DISABLE	BIT(27)
> +#define  LTSMDIS		BIT(31)
> +#define  MACCTLR_INIT_VAL	(LTSMDIS | MACCTLR_NFTS_MASK)
> +#define PMSR			0x01105c
> +#define MACS2R			0x011078
> +#define MACCGSPSETR		0x011084
> +#define  SPCNGRSN		BIT(31)
> +
> +/* R-Car H1 PHY */
> +#define H1_PCIEPHYADRR		0x04000c
> +#define  WRITE_CMD		BIT(16)
> +#define  PHY_ACK		BIT(24)
> +#define  RATE_POS		12
> +#define  LANE_POS		8
> +#define  ADR_POS		0
> +#define H1_PCIEPHYDOUTR		0x040014
> +
> +/* R-Car Gen2 PHY */
> +#define GEN2_PCIEPHYADDR	0x780
> +#define GEN2_PCIEPHYDATA	0x784
> +#define GEN2_PCIEPHYCTRL	0x78c
> +
> +#define INT_PCI_MSI_NR		32
> +
> +#define RCONF(x)		(PCICONF(0) + (x))
> +#define RPMCAP(x)		(PMCAP(0) + (x))
> +#define REXPCAP(x)		(EXPCAP(0) + (x))
> +#define RVCCAP(x)		(VCCAP(0) + (x))
> +
> +#define PCIE_CONF_BUS(b)	(((b) & 0xff) << 24)
> +#define PCIE_CONF_DEV(d)	(((d) & 0x1f) << 19)
> +#define PCIE_CONF_FUNC(f)	(((f) & 0x7) << 16)
> +
> +#define RCAR_PCI_MAX_RESOURCES	4
> +#define MAX_NR_INBOUND_MAPS	6
> +
> +enum {
> +	RCAR_PCI_ACCESS_READ,
> +	RCAR_PCI_ACCESS_WRITE,
> +};
> +
> +void rcar_pci_write_reg(void __iomem *base, u32 val, unsigned int reg);
> +u32 rcar_pci_read_reg(void __iomem *base, unsigned int reg);
> +void rcar_rmw32(void __iomem *base, int where, u32 mask, u32 data);
> +int rcar_pcie_wait_for_phyrdy(void __iomem *base);
> +int rcar_pcie_wait_for_dl(void __iomem *base);
> +void rcar_pcie_set_outbound(int win, void __iomem *base, struct resource *res);
> +void rcar_pcie_set_inbound(void __iomem *base, u64 cpu_addr, u64 pci_addr,
> +			   u64 mask, int idx, bool host);
> +
> +#endif
> --
> 2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
