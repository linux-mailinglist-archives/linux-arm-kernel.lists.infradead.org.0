Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BADF128D3A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Dec 2019 09:34:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yAFyf9vZjh9tX5Nuf2sidSZqj3vuqhg0IZvf1PJyL1I=; b=HPiJWY7Mi5if4a
	OhyOjT7PVtHjalUUi7LKM7y8xRIvkiCgV8PMwPociGhKX4/Q9c8XOuInDrfuxEvGqF+cFB6/xkVH1
	0qa0AT5oTypE3yLBadsIfRigGR8WOF3mI+tKf2kOdhzcjgJTR3AsO2g5v7pl8ux+b9n9gEUcxY2AV
	sDBykiP/t55nb3SKGUkD3NSv670dqsxrTUBaF1QSNx5AvqZ6EtgC4A6JzIgiwUVXQm+uWZcxRlLC4
	NdbOI3OtcETv5iptUtkMHJ38ry/9qlUjhDUeowhwDAJcpjuB0q7vcoFsCMmSBrkT6o/O1TxldkEDT
	GtREmKmvdw6fLy4TAE4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiwgX-0002km-Uv; Sun, 22 Dec 2019 08:33:57 +0000
Received: from mail-eopbgr60046.outbound.protection.outlook.com ([40.107.6.46]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiwgP-0002jN-Ib
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Dec 2019 08:33:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WRfxznIBqRNDDgjxFZrcFigeDEMcVBCR1fRuqAy6+NZiZ1/aPbkOoUMoA3t9R9X0vyKKZgxm5TbWCN8UzLG+7362xU0icDONrlOHtvezFAXg4KPzvDGZsm7hORIxQwRR9s/wWt8F+c0o1Ety2IpqxUGZtBzU0d5nb1etrBu9H2j2MftrfYc0C/OcnTlDqRSqYzlRkbMTEmp8OzjKDZb3sD1OJZEvlmzwIqRJ28i/ocRtnbmkJs0pMg3dZAlcbFtRk4uD2w+ishU4NAKC9sI7Q5lQMqroS2TlF4Dwu2TcReGEaktF8EOaZJR3oaxWzSxnulsPfzyIHWzVGlfyg6y4TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wiuebbQxG4m+g5zj95Co2xPf+L1xEARNpxcqY/cLDuo=;
 b=jsVAfYPseUU9uCSCHSIFMXy4y8RF/LOBDsCX3MPupUAsofEDlMQB0hNRzIc/9rtaFvBL754c9AazvlX2qxA43CAawT4o/W0uz7kPCSlzRCkRGZj8pz57qbggmxVut2+XQRG6qgOJag6apvuviayyKDDgujNsGKkw2nJVchfi94cVdNAxIaGyWuunkMUkREu1cOia6avWQtnkI19EeHBx/3KDQinrM48L94yJnp45nJ72QA5X6QciuWpjv1vdO4svluuiwnvGLRGMkgBx/nJx7ZjYiFyMBX51cCnmQPLPhtu2t3ZA+iDgSQGoMnH7m8XZn8rC5rpndEZGwgKRTQbotQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wiuebbQxG4m+g5zj95Co2xPf+L1xEARNpxcqY/cLDuo=;
 b=Fp3musXE5lq01HwldVh4UU8bru0ml9nqCOIswHCmgTP+VIZX70RakAGW62TDK+Yc4OKg57xkXuAoXsIdx4yPrOTDrUFd3g+HQTvTjJa+dTP3zSoeOBNy+X0DikUTVysmS22jZ+NGZpAWc2bAFxHRpxNRHfRgDIXOYXSL9AEokCE=
Received: from DB7PR04MB5178.eurprd04.prod.outlook.com (20.176.234.92) by
 DB7PR04MB4091.eurprd04.prod.outlook.com (52.134.110.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.19; Sun, 22 Dec 2019 08:33:40 +0000
Received: from DB7PR04MB5178.eurprd04.prod.outlook.com
 ([fe80::1551:2aea:3229:156c]) by DB7PR04MB5178.eurprd04.prod.outlook.com
 ([fe80::1551:2aea:3229:156c%4]) with mapi id 15.20.2559.015; Sun, 22 Dec 2019
 08:33:40 +0000
From: Jacky Bai <ping.bai@nxp.com>
To: Adam Ford <aford173@gmail.com>, arm-soc
 <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH V2 0/7] soc: imx: Enable additional functionality of
 i.MX8M Mini
Thread-Topic: [PATCH V2 0/7] soc: imx: Enable additional functionality of
 i.MX8M Mini
Thread-Index: AQHVsc8x4RTvJU9lNECpxKqRtqzo7KfEvPUAgAEe+lA=
Date: Sun, 22 Dec 2019 08:33:40 +0000
Message-ID: <DB7PR04MB5178EA739587B2DB084570B9872F0@DB7PR04MB5178.eurprd04.prod.outlook.com>
References: <20191213160542.15757-1-aford173@gmail.com>
 <CAHCN7xKuVCGqgRpixa9UPkWq92Gg=dm4XxAczBKAZCoMzcBVJg@mail.gmail.com>
In-Reply-To: <CAHCN7xKuVCGqgRpixa9UPkWq92Gg=dm4XxAczBKAZCoMzcBVJg@mail.gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ping.bai@nxp.com; 
x-originating-ip: [114.220.27.191]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: c4d18664-3f7e-4e9f-e1ce-08d786b9a5d1
x-ms-traffictypediagnostic: DB7PR04MB4091:|DB7PR04MB4091:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB40912925CE1F0D178ECEAA13872F0@DB7PR04MB4091.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 02596AB7DA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(396003)(136003)(39860400002)(366004)(189003)(199004)(13464003)(2906002)(54906003)(71200400001)(66556008)(66946007)(66476007)(478600001)(76116006)(52536014)(33656002)(64756008)(5660300002)(66446008)(4326008)(7416002)(9686003)(86362001)(26005)(186003)(8676002)(81166006)(8936002)(6506007)(316002)(110136005)(55016002)(53546011)(81156014)(7696005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4091;
 H:DB7PR04MB5178.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TXYSzY9HweQ8wfPfBYf6qcY2yLEYOxPJHYXQfw5sQYZnmV/cpQaCht2POyY9/X37gdosUIfNH/PpCtiyEQEw7c9BUOit2H1DKwhm91N6307WdQSS/CYs3dXGDCddjwJSq8RLJk27CDEgr+EFFrqasGUUhpxdD19NEpJaYKqqF0Ue1g7qdogc5+1xgP8ZcfjImLfno/BTN1jGSx7AUC6b604qihiwfZACHvjqBKRP0kq3vx8fHjtyMna8VJhCQkRKT9An54B+j9Yui6w/zecOl2pDzRchUCjgDwqyqo80Uqw3tN46/zOPLUx5ToOPnHZiOrB04h84uovz4Rj3YMKOUrH88Z0hGAv+6xRmEitptEuTVyTr+bI5o+XrhzUSblMu7fRq0KVp+x5UDxokRI2UfiToH3rKfyDrsqlEPDGI6b1aERo5aYiE13ttPUy5inB7rDrF93hZBseSACcraqanIUUqyZ9AaS70t50HGxu+gHZHqeIm9lB393AuijQGWFid
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c4d18664-3f7e-4e9f-e1ce-08d786b9a5d1
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Dec 2019 08:33:40.3902 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w87p7M5o7M21VE3putApA/ffui0wo8MlX0PnoDHNOkawvfKoLOfKMNMkyauP6eJDII6zAQhQfSPRBlxLCfx1oQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4091
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_003349_691382_B0853B6C 
X-CRM114-Status: GOOD (  30.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.46 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Peng Fan <peng.fan@nxp.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Adam Ford <aford173@gmail.com>
> Sent: Saturday, December 21, 2019 11:07 PM
> To: arm-soc <linux-arm-kernel@lists.infradead.org>
> Cc: Peng Fan <peng.fan@nxp.com>; Jacky Bai <ping.bai@nxp.com>; Rob
> Herring <robh+dt@kernel.org>; Mark Rutland <mark.rutland@arm.com>;
> Shawn Guo <shawnguo@kernel.org>; Sascha Hauer
> <s.hauer@pengutronix.de>; Pengutronix Kernel Team
> <kernel@pengutronix.de>; Fabio Estevam <festevam@gmail.com>;
> dl-linux-imx <linux-imx@nxp.com>; devicetree <devicetree@vger.kernel.org>;
> Linux Kernel Mailing List <linux-kernel@vger.kernel.org>; Leonard Crestez
> <leonard.crestez@nxp.com>
> Subject: Re: [PATCH V2 0/7] soc: imx: Enable additional functionality of
> i.MX8M Mini
> 
> On Fri, Dec 13, 2019 at 10:05 AM Adam Ford <aford173@gmail.com> wrote:
> >
> > The GPCv2 controller on the i.MX8M Mini is compatible with the driver
> > used for the i.MX8MQ except for the register locations and names.
> > The GPCv2 controller is used to enable additional periperals currently
> > unavailable on the i.MX8M Mini.  In order to make them function, the
> > GPCv2 needs to be adapted so the drivers can associate their power
> > domain to the GPCv2 to enable them.
> >
> > This series makes one include file slightly more generic, adds the
> > iMX8M Mini entries, updates the bindings, adds them to the device
> > tree, then associates the new power domain to both the OTG and PCIe
> > controllers.
> >
> > Some peripherals may need additional power domain drivers in the
> > future due to limitations of the GPC driver, but the drivers for VPU
> > and others are not available yet.
> 
> Before I do a V3 to address Rob's comments, I am thinking I'll drop the items
> on the GPC that Jacky suggested would not work, and we don't have drivers
> for those other peripherals (GPU, VPU, etc.) anyway.  My main goal here was
> to try and get the USB OTG ports working, so I'd like to enabled enough of the
> items on the GPC that are similar to the i.MX8MQ and leave the more
> challenging items until we have either a better driver available and/or actual
> peripheral support coming.  I haven't seen LCDIF or DSI drivers pushed
> upstream yet, so I doubt we'll see GPU or VPU yet until those are done.
> 
> Does anyone from the NXP team have any other comments/concerns?
> 

If you look into NXP's release code, you will find that it is not easy to handle the
power domain more generically in GPCv2 driver for imx8mm. That's the reason why we use
SIP service to handle all the power domain in TF-A. we tried to upstream the SIP version
power domain that can be reused for all i.MX8M, but rejected by ARM guys. they think
we need to use SCMI to implement it. as there is no SCMI over SMC available, upstream is
on the way, so the power domain for i.MX8MM/MN is pending.

Actually, I am confused why we can't use SIP service, even if the SCMI over SMC is ready in
the future, It seems the SMCC function ID still need to choose from SIP service function id bank.

Another concern for adding power domain support in GPCv2 is that, each time a new
SOC is added, we need to add hundred lines of code in GPCv2 driver. it is not a best way
to keep driver reuse. The GPCv2 driver is originally used for i.MX7D, then reused by i.MX8MQ,
as i.MX8MQ has very simple power domain design as i.MX7D. But for i.MX8MM, it is not the
case.

There is another concern, we don't want to export GPC module to rich OS side, it is not a must.

BR
Jacky Bai

> adam
> >

> > Adam Ford (7):
> >   soc: imx: gpcv2: Rename imx8mq-power.h to imx8m-power.h
> >   soc: imx: gpcv2: Update imx8m-power.h to include iMX8M Mini
> >   soc: imx: gpcv2: add support for i.MX8M Mini SoC
> >   dt-bindings: imx-gpcv2: Update bindings to support i.MX8M Mini
> >   arm64: dts: imx8mm: add GPC power domains
> >   ARM64: dts: imx8mm: Fix clocks and power domain for USB OTG
> >   arm64: dts: imx8mm: Add PCIe support
> >
> >  .../bindings/power/fsl,imx-gpcv2.txt          |   6 +-
> >  arch/arm64/boot/dts/freescale/imx8mm.dtsi     | 127 ++++++++-
> >  arch/arm64/boot/dts/freescale/imx8mq.dtsi     |   2 +-
> >  drivers/soc/imx/gpcv2.c                       | 246
> +++++++++++++++++-
> >  .../power/{imx8mq-power.h => imx8m-power.h}   |  14 +
> >  5 files changed, 387 insertions(+), 8 deletions(-)  rename
> > include/dt-bindings/power/{imx8mq-power.h => imx8m-power.h} (57%)
> >
> > --
> > 2.20.1
> >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
