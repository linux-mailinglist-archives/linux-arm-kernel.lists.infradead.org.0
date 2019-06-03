Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB54325D7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 02:58:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H4dfsALQImg3B+9TP1Bof06RQJ5WQwLmJl6k7bUPb00=; b=uFnQ1sWQJstB7l
	Ju3CvRqkgf2TZqRXbO6SjBQGQq+FM2OLqO36L8ErRJjljYriZkFo5+2yJyj7JYyspIOCqhl1Zr+wA
	cwYPfFvm1I92/xqhYJIzxcojymD0wVGqaGouKCA2oNdgEXSzRmi7BD7SGiFlinfXfMYIYAgVpaMN9
	a32B1nRJxkYh7B+hy5rShejNI2m8L1LL8SLTmXPmlM5LfKtN9/sqTrURWdTJyt26Pb8PMFArFQ34D
	7sA8HrQaK7oY7xYWKs+/buyVdQWqEP8mjUgbT3u1LuVqKLmAV1xZMwJTszZaSGd7k6Ov1Vsbu2rYt
	2ChSzfAmfxQfs/RI7PNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXbIb-0000Yp-8y; Mon, 03 Jun 2019 00:58:05 +0000
Received: from mail-eopbgr130053.outbound.protection.outlook.com
 ([40.107.13.53] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXbIT-0000Xe-Lb
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 00:58:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vtymTfj7aPJD44GzW/a+uhZ+FCO21OlcdnWRHARsh6s=;
 b=pF2QCJO3dAxDKqOa8y2qiuJ82pcCTzlH9WiiGBv5A/nmG9phWlPVA91LOPQmwofN5XVTYMCOxaBoBsG5baYkDTtq9r+U3iEBjA8v1lRuFGyjPqRwBaO4p8PlSFcu1jnM4xnDlYy0F6rNr3oLw2XHtVnvHDlovl72OaUXrDVIE40=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3660.eurprd04.prod.outlook.com (52.134.70.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Mon, 3 Jun 2019 00:57:48 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec%5]) with mapi id 15.20.1943.018; Mon, 3 Jun 2019
 00:57:48 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Subject: RE: [PATCH 2/3] arm64: dts: freescale: Add i.MX8MN dtsi support
Thread-Topic: [PATCH 2/3] arm64: dts: freescale: Add i.MX8MN dtsi support
Thread-Index: AQHVFsxub3h/I8/ZmEeLiTXReak9WqaFmaMAgAOG9fA=
Date: Mon, 3 Jun 2019 00:57:48 +0000
Message-ID: <DB3PR0402MB3916A15A23D1BB0378CC9A80F5140@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190530094706.865-1-Anson.Huang@nxp.com>
 <20190530094706.865-2-Anson.Huang@nxp.com>
 <CAHQ1cqE2UPL6mM0GdS3aLinM46puE1r+80qGUEX2yA9CDMz=EQ@mail.gmail.com>
In-Reply-To: <CAHQ1cqE2UPL6mM0GdS3aLinM46puE1r+80qGUEX2yA9CDMz=EQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b8d3a527-ab28-4816-4778-08d6e7be7f4e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3660; 
x-ms-traffictypediagnostic: DB3PR0402MB3660:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <DB3PR0402MB3660EF5EBBFC0C93F8CD1B07F5140@DB3PR0402MB3660.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2276;
x-forefront-prvs: 0057EE387C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(376002)(396003)(346002)(136003)(39860400002)(13464003)(189003)(199004)(11346002)(316002)(476003)(6916009)(5660300002)(446003)(54906003)(2906002)(7736002)(3846002)(33656002)(305945005)(6436002)(6116002)(6506007)(478600001)(53546011)(74316002)(52536014)(68736007)(7416002)(45080400002)(102836004)(966005)(14454004)(8676002)(186003)(66476007)(66446008)(81166006)(66946007)(73956011)(66556008)(7696005)(9686003)(6306002)(76176011)(86362001)(66066001)(55016002)(81156014)(76116006)(64756008)(53936002)(44832011)(8936002)(4326008)(71190400001)(99286004)(71200400001)(256004)(486006)(6246003)(25786009)(229853002)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3660;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Ks03E5fLAQYOwZC8BTSevrRh5eMZWTMhNHNW7CH5/UmXrynlumPHNUURT+YM97FmnrTbqGTx6eS8owNz0CHGKFw58IZivDPxSckmzS5/Gn0+48kXPOjspyCn1LaYXKoFN+vw92fwn0NhnpymoclRFWiS1KnXDWRexAGRUeLGmNaiG7Ky5xYwVs/Kt5e+qGN9u4YVE4n2o7ldj7yYtGE/fYloBMZspIQrLrL+NCK2/Yq9nCmbZ1jTYolPeaS4MlaoSOAeav6Xw5+v2NubU7DKW9pQM74olMP9hKlIzRsk9chYBRgbA82XoI6sfoQZ4Ccbjr6YXVCxBHUtYq2oJ8F7+R6U4sm1Ju834bSyzx3t2fd4U+tQx/4Q1s+ZN0e5KddsQaKiXQ5Y/ZfqbU8Y2xj+X2wN4Ay9xW7BFNmFx0BS0Ws=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8d3a527-ab28-4816-4778-08d6e7be7f4e
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2019 00:57:48.3473 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3660
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_175757_960834_545F5583 
X-CRM114-Status: GOOD (  21.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.53 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, "open list:OPEN FIRMWARE AND
 FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "bruno.thomsen@gmail.com" <bruno.thomsen@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Leo Li <leoyang.li@nxp.com>,
 Vabhav Sharma <vabhav.sharma@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Bhaskar Upadhaya <bhaskar.upadhaya@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>,
 "manivannan.sadhasivam@linaro.org" <manivannan.sadhasivam@linaro.org>,
 Pramod Kumar <pramod.kumar_1@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Pankaj Bansal <pankaj.bansal@nxp.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Andrey

> -----Original Message-----
> From: Andrey Smirnov <andrew.smirnov@gmail.com>
> Sent: Saturday, June 1, 2019 3:04 AM
> To: Anson Huang <anson.huang@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>; Mark Rutland
> <mark.rutland@arm.com>; Shawn Guo <shawnguo@kernel.org>; Sascha
> Hauer <s.hauer@pengutronix.de>; Sascha Hauer <kernel@pengutronix.de>;
> Fabio Estevam <festevam@gmail.com>; manivannan.sadhasivam@linaro.org;
> bruno.thomsen@gmail.com; Aisheng Dong <aisheng.dong@nxp.com>; Jacky
> Bai <ping.bai@nxp.com>; Leo Li <leoyang.li@nxp.com>; Lucas Stach
> <l.stach@pengutronix.de>; Pankaj Bansal <pankaj.bansal@nxp.com>;
> Bhaskar Upadhaya <bhaskar.upadhaya@nxp.com>; Pramod Kumar
> <pramod.kumar_1@nxp.com>; Vabhav Sharma <vabhav.sharma@nxp.com>;
> Leonard Crestez <leonard.crestez@nxp.com>; open list:OPEN FIRMWARE
> AND FLATTENED DEVICE TREE BINDINGS <devicetree@vger.kernel.org>;
> linux-kernel <linux-kernel@vger.kernel.org>; linux-arm-kernel <linux-arm-
> kernel@lists.infradead.org>; dl-linux-imx <linux-imx@nxp.com>
> Subject: Re: [PATCH 2/3] arm64: dts: freescale: Add i.MX8MN dtsi support
> 
> On Thu, May 30, 2019 at 2:45 AM <Anson.Huang@nxp.com> wrote:
> >
> > From: Anson Huang <Anson.Huang@nxp.com>
> >
> > The i.MX8M Nano Media Applications Processor is a new SoC of the
> > i.MX8M family, it is a 14nm FinFET product of the growing mScale
> > family targeting the consumer market. It is built in Samsung 14LPP to
> > achieve both high performance and low power consumption and relies on
> > a powerful fully coherent core complex based on a quad core ARM
> > Cortex-A53 cluster,
> > Cortex-M7 low-power coprocessor and graphics accelerator.
> >
> > This patch adds the basic dtsi support for i.MX8MN.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> > This patch should be based on below patches for clock and pinctrl head
> files:
> > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatc
> >
> hwork.kernel.org%2Fpatch%2F10968059%2F&amp;data=02%7C01%7CAnson
> .Huang%
> >
> 40nxp.com%7C8d77b87aa30b4c7067ca08d6e5fac8c3%7C686ea1d3bc2b4c6fa
> 92cd99
> >
> c5c301635%7C0%7C0%7C636949262607301101&amp;sdata=tA55rOer30Vbq
> FZ%2Badm
> > XC3K42Y%2BG7niE6BbAB4WD2%2Fk%3D&amp;reserved=0
> > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatc
> >
> hwork.kernel.org%2Fpatch%2F10968267%2F&amp;data=02%7C01%7CAnson
> .Huang%
> >
> 40nxp.com%7C8d77b87aa30b4c7067ca08d6e5fac8c3%7C686ea1d3bc2b4c6fa
> 92cd99
> >
> c5c301635%7C0%7C0%7C636949262607301101&amp;sdata=wMIK9tYicC3Km
> xJ4zLDuw
> > 9Wg65vOUdCkZwX8hg3EUz4%3D&amp;reserved=0
> > ---
> >  arch/arm64/boot/dts/freescale/imx8mn.dtsi | 701
> > ++++++++++++++++++++++++++++++
> >  1 file changed, 701 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/freescale/imx8mn.dtsi
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> > b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> > new file mode 100644
> > index 0000000..c318ee6
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> > @@ -0,0 +1,701 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +/*
> > + * Copyright 2019 NXP
> > + */
> > +
> > +#include <dt-bindings/clock/imx8mn-clock.h>
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/input/input.h>
> > +#include <dt-bindings/interrupt-controller/arm-gic.h>
> > +
> > +#include "imx8mn-pinfunc.h"
> > +
> > +/ {
> > +       compatible = "fsl,imx8mn";
> > +       interrupt-parent = <&gic>;
> > +       #address-cells = <2>;
> > +       #size-cells = <2>;
> > +
> > +       aliases {
> > +               ethernet0 = &fec1;
> > +               gpio0 = &gpio1;
> > +               gpio1 = &gpio2;
> > +               gpio2 = &gpio3;
> > +               gpio3 = &gpio4;
> > +               gpio4 = &gpio5;
> > +               i2c0 = &i2c1;
> > +               i2c1 = &i2c2;
> > +               i2c2 = &i2c3;
> > +               i2c3 = &i2c4;
> > +               mmc0 = &usdhc1;
> > +               mmc1 = &usdhc2;
> > +               mmc2 = &usdhc3;
> > +               serial0 = &uart1;
> > +               serial1 = &uart2;
> > +               serial2 = &uart3;
> > +               serial3 = &uart4;
> > +               spi0 = &ecspi1;
> > +               spi1 = &ecspi2;
> > +               spi2 = &ecspi3;
> > +       };
> > +
> > +       cpus {
> > +               #address-cells = <1>;
> > +               #size-cells = <0>;
> > +
> > +               A53_0: cpu@0 {
> > +                       device_type = "cpu";
> > +                       compatible = "arm,cortex-a53";
> > +                       reg = <0x0>;
> > +                       clock-latency = <61036>;
> > +                       clocks = <&clk IMX8MN_CLK_ARM>;
> > +                       enable-method = "psci";
> > +                       next-level-cache = <&A53_L2>;
> > +               };
> > +
> > +               A53_1: cpu@1 {
> > +                       device_type = "cpu";
> > +                       compatible = "arm,cortex-a53";
> > +                       reg = <0x1>;
> > +                       clock-latency = <61036>;
> > +                       clocks = <&clk IMX8MN_CLK_ARM>;
> > +                       enable-method = "psci";
> > +                       next-level-cache = <&A53_L2>;
> > +               };
> > +
> > +               A53_2: cpu@2 {
> > +                       device_type = "cpu";
> > +                       compatible = "arm,cortex-a53";
> > +                       reg = <0x2>;
> > +                       clock-latency = <61036>;
> > +                       clocks = <&clk IMX8MN_CLK_ARM>;
> > +                       enable-method = "psci";
> > +                       next-level-cache = <&A53_L2>;
> > +               };
> > +
> > +               A53_3: cpu@3 {
> > +                       device_type = "cpu";
> > +                       compatible = "arm,cortex-a53";
> > +                       reg = <0x3>;
> > +                       clock-latency = <61036>;
> > +                       clocks = <&clk IMX8MN_CLK_ARM>;
> > +                       enable-method = "psci";
> > +                       next-level-cache = <&A53_L2>;
> > +               };
> > +
> > +               A53_L2: l2-cache0 {
> > +                       compatible = "cache";
> > +               };
> > +       };
> > +
> > +       memory@40000000 {
> > +               device_type = "memory";
> > +               reg = <0x0 0x40000000 0 0x80000000>;
> > +       };
> > +
> > +       osc_32k: clock-osc-32k {
> > +               compatible = "fixed-clock";
> > +               #clock-cells = <0>;
> > +               clock-frequency = <32768>;
> > +               clock-output-names = "osc_32k";
> > +       };
> > +
> > +       osc_24m: clock-osc-24m {
> > +               compatible = "fixed-clock";
> > +               #clock-cells = <0>;
> > +               clock-frequency = <24000000>;
> > +               clock-output-names = "osc_24m";
> > +       };
> > +
> > +       clk_ext1: clock-ext1 {
> > +               compatible = "fixed-clock";
> > +               #clock-cells = <0>;
> > +               clock-frequency = <133000000>;
> > +               clock-output-names = "clk_ext1";
> > +       };
> > +
> > +       clk_ext2: clock-ext2 {
> > +               compatible = "fixed-clock";
> > +               #clock-cells = <0>;
> > +               clock-frequency = <133000000>;
> > +               clock-output-names = "clk_ext2";
> > +       };
> > +
> > +       clk_ext3: clock-ext3 {
> > +               compatible = "fixed-clock";
> > +               #clock-cells = <0>;
> > +               clock-frequency = <133000000>;
> > +               clock-output-names = "clk_ext3";
> > +       };
> > +
> > +       clk_ext4: clock-ext4 {
> > +               compatible = "fixed-clock";
> > +               #clock-cells = <0>;
> > +               clock-frequency= <133000000>;
> > +               clock-output-names = "clk_ext4";
> > +       };
> > +
> > +       gic: interrupt-controller@38800000 {
> > +               compatible = "arm,gic-v3";
> > +               reg = <0x0 0x38800000 0 0x10000>,
> > +                     <0x0 0x38880000 0 0xC0000>;
> > +               #interrupt-cells = <3>;
> > +               interrupt-controller;
> > +               interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
> > +       };
> 
> GIC should probably go into soc {} node. At least that's how we have it in
> i.MX8MQ AFAICT.

Will move it in V2.

Thanks,
Anson.

> 
> Thanks,
> Andrey Smirnov
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
