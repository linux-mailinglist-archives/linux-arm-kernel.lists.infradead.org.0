Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 156D31AEC71
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 14:37:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AF42qwtn15Bdd6Y2lNFJjRJ3fdiUn2EtNFyRxK75g94=; b=A21qQ67ENnaUuz
	dQb1wAJxyt53xaJi7lNl7m1Y6Bhsivw60lw6wStIm1HnKHTMCyTppYxSSbNPZneYwKvNzVijZ0JU/
	EF146BmE0MdmckWQTgFs9zZRxJHBX3/xnClFk5YRVNoQEtCXaP/6uOaDYGMMIb1uwJpZtrKrQE+qp
	d6D5zON+8D4YW9i5KekB5arsC22ig612PGFV5MvLfrkNrgCsqlAVcCIG5GqWwcQ4qPCCW2pMPTFp7
	Ilacs+OTdm8B42l6ea/DxsDhi+5s5arvecVdqtwOuI8fRQaKXErqwkP9bGyfW+z3fDPbuAO/pM2lp
	DmCc6qkL7j3/Sj7upufQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPmj9-0000m3-Nv; Sat, 18 Apr 2020 12:37:43 +0000
Received: from mail-db5eur03on061f.outbound.protection.outlook.com
 ([2a01:111:f400:fe0a::61f]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPmiy-0000kP-Ru
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 12:37:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=musXbUpQkYgz1nMQGbFcEN4bEyImumwpoWw9xttYozUXX3T5i175g/AgMx6ki+vA5EMJtIdf0azqy5oKTYCH6Gj5BTO0qLLduZSWbqTGkNP4L7CjLKsJufbxs3idC7tQhzPk+QYmRDhVvaBaBUaCgSqpKkrCJ6DANVneuTz5EKEHexQt70+QIj+pdPoCRqrWrc8B2ho02zO/RItDr445IBfu6px1uesrbDrPq28lGqI5tAsFHDMMLJo64aje8uXXIMzA6hKLm122DH5josKbT6HY7f3xbh9UEk3ZfH0ulzPYRcIsNEohI9EItlhOvQ2SZJOswINfm0S7XD/okO9JJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8Yar2lPpKC9A2MFniQ1lZok/P1s3GObr9pXavmCIzGM=;
 b=k4ta4Qiqu+R3/5tbNTKMgy8xZ20a5Y8jXYJod8aheEtXdrhJ44M473syOYRaEPhetz3fHDUPZYWqOHjirUqn5A9jXMynwRvPoo22bG5rxUMd4CUa6C+GOfLoYQF6lMFECEjApQbHFWwRWlMws+lYrWV/MRQcQKKPqIWdxrpM7P7HDafoCm7pVF767d1ICbQBVn0yxgSreJaeCpN0vonM/ceeRcLeDP1/CrvOcdGOp1b1YCAiNurcLwaWWrMXil0TBGYykuPjSZpIcKZZncnbNz8hEbH16ERRb54qbj65Gjq2mgnAfewPQuMUOjdQsbvNFB1+4Eqg6iXI4szSzXVONg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8Yar2lPpKC9A2MFniQ1lZok/P1s3GObr9pXavmCIzGM=;
 b=jorHqg4m+V37HrZaefwrViawzf6m3sGa/39fsx0jVy1KAKCAM5FWjOOoMrsSzKX9y+ZwYhEsdiqWk9MGgMbqxglOLKYwEm4Ke13M9hztp4x9w7nxrJSxnhEuvoc/d22ouzAf5Z6ya7MuAx2u2zMOMOw6XmVXtBg3A0+Bqnodx8M=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB5927.eurprd04.prod.outlook.com (2603:10a6:20b:a8::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Sat, 18 Apr
 2020 12:37:27 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3%7]) with mapi id 15.20.2921.027; Sat, 18 Apr 2020
 12:37:27 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "manivannan.sadhasivam@linaro.org" <manivannan.sadhasivam@linaro.org>,
 "michael@walle.cc" <michael@walle.cc>, "rjones@gateworks.com"
 <rjones@gateworks.com>, Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 "sebastien.szymanski@armadeus.com" <sebastien.szymanski@armadeus.com>,
 "jon@solid-run.com" <jon@solid-run.com>, Cosmin Stefan Stoica
 <cosmin.stoica@nxp.com>, "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH 1/3] arm64: dts: imx: Add imx8dxl support
Thread-Topic: [PATCH 1/3] arm64: dts: imx: Add imx8dxl support
Thread-Index: AQHWBPL5gL+FAAPzb0mDVDqG1X3UQKh+8F8Q
Date: Sat, 18 Apr 2020 12:37:27 +0000
Message-ID: <AM6PR04MB4966F930E99DF0D22D8D2F4E80D60@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1585394015-27825-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1585394015-27825-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [218.82.155.143]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 87115dd1-bb07-4193-6312-08d7e395412f
x-ms-traffictypediagnostic: AM6PR04MB5927:|AM6PR04MB5927:|AM6PR04MB5927:
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB5927769D0C9D044607C9FD9380D60@AM6PR04MB5927.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0377802854
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(396003)(366004)(136003)(376002)(346002)(39860400002)(55016002)(9686003)(86362001)(4326008)(316002)(478600001)(186003)(7416002)(30864003)(110136005)(2906002)(8936002)(8676002)(81156014)(52536014)(71200400001)(6506007)(26005)(76116006)(5660300002)(66446008)(7696005)(66946007)(33656002)(44832011)(66476007)(66556008)(64756008)(32563001)(921003);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yUkZccJ+Awt9w/jmGTgq71lCLPjWDarmT2HMlNlc/FFa2Qcp7lNu17PUY54vLMjW89In8MxMPkUrvmEFw3M2G6DFBfXyuBnq7k8fXb02WHaU9tkvb8NctutmEdbEyUvvMdFYeAi2hb07eC+ccjXloTW9Q2mGCLxlLZoEdv9aZBCTKVRocX6Cg+9FQzYhRG/Bv1Wg3BLuzCA5AQz4huuPUzdkPr4hFUMrOsBcYvVn+NRNWujRPgsk03T3DnjcsoP/ufObjbzC/TcRh1Bq+/2cKUocI9AebEEfK7bCjCqKPSTNrt6xLkhjxY+rTF2htILKW1Ik/IXH2HkYxFIKywx9oa4VHqJnhYOvt8nHVKI5ZylIHVts/UVxKbL8XnUa5FQPaefHusM6x3c6OXkwU8a50psNPb43AjF95KH8RtJIk/KcLZFRBr66AMNzT3fDeex/SpEzZUCr3JU99oK1q+czXgAeKNc28aH/TE3TnJ7XjiwUiERg2EKM1uaVWJV4urmi
x-ms-exchange-antispam-messagedata: AS3a1dSLIAKrek4D8lVK+gw6Lc14bEnJoLKCQa3q2zpWf5ugbH4kMfxmNhKgPJv7pHa+TIClKCK8lGnKjzL73Ys9w40MzBM1mJGyTenUQV1w/HfpqA7/C9vVIFMhMjgsoCNNja1Xew3bZHTMgJOZxQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 87115dd1-bb07-4193-6312-08d7e395412f
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Apr 2020 12:37:27.8298 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MxyLzO1/PeDhJgK8zLnT53C51NoY4rMYStKmc5uJS8QtoqIpurZ7B76W0ZBwSZv2NROKMxfu8KcvwOS+M29/5g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5927
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_053733_037175_2BB9A286 
X-CRM114-Status: GOOD (  17.30  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0a:0:0:0:61f listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Anson Huang <Anson.Huang@nxp.com>
> Sent: Saturday, March 28, 2020 7:14 PM
> 
> i.MX8DXL is a dual Cortex-A35 proccessor with Cortex-M4 system controller
> inside. Add the SoC dtsi file support.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

As we know that old clock binding will not be used and maintained anymore and all device node
will be moved Into each SS dtsi, so I'm not sure if we should still introduce such a big change using
the known deprecated things now. May be better to hold on a bit and wait for Shawn's suggestion
on the pending dts re-org patchset first.

Regards
Aisheng

> ---
> ---
>  arch/arm64/boot/dts/freescale/imx8dxl.dtsi | 416
> +++++++++++++++++++++++++++++
>  1 file changed, 416 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8dxl.dtsi
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8dxl.dtsi
> b/arch/arm64/boot/dts/freescale/imx8dxl.dtsi
> new file mode 100644
> index 0000000..4d4b287
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8dxl.dtsi
> @@ -0,0 +1,416 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright 2019~2020 NXP
> + */
> +
> +#include <dt-bindings/clock/imx8-clock.h> #include
> +<dt-bindings/firmware/imx/rsrc.h>
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/pinctrl/pads-imx8dxl.h>
> +#include <dt-bindings/thermal/thermal.h>
> +
> +/ {
> +	interrupt-parent = <&gic>;
> +	#address-cells = <2>;
> +	#size-cells = <2>;
> +
> +	aliases {
> +		gpio0 = &lsio_gpio0;
> +		gpio1 = &lsio_gpio1;
> +		gpio2 = &lsio_gpio2;
> +		gpio3 = &lsio_gpio3;
> +		gpio4 = &lsio_gpio4;
> +		gpio5 = &lsio_gpio5;
> +		gpio6 = &lsio_gpio6;
> +		gpio7 = &lsio_gpio7;
> +		mmc0 = &usdhc1;
> +		mmc1 = &usdhc2;
> +		mu1 = &lsio_mu1;
> +		serial0 = &adma_lpuart0;
> +	};
> +
> +	cpus {
> +		#address-cells = <2>;
> +		#size-cells = <0>;
> +
> +		/* We have 1 clusters with 2 Cortex-A35 cores */
> +		A35_0: cpu@0 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a35";
> +			reg = <0x0 0x0>;
> +			enable-method = "psci";
> +			next-level-cache = <&A35_L2>;
> +			clocks = <&clk IMX_A35_CLK>;
> +			operating-points-v2 = <&a35_opp_table>;
> +			#cooling-cells = <2>;
> +		};
> +
> +		A35_1: cpu@1 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a35";
> +			reg = <0x0 0x1>;
> +			enable-method = "psci";
> +			next-level-cache = <&A35_L2>;
> +			clocks = <&clk IMX_A35_CLK>;
> +			operating-points-v2 = <&a35_opp_table>;
> +			#cooling-cells = <2>;
> +		};
> +
> +		A35_L2: l2-cache0 {
> +			compatible = "cache";
> +		};
> +	};
> +
> +	a35_opp_table: opp-table {
> +		compatible = "operating-points-v2";
> +		opp-shared;
> +
> +		opp-900000000 {
> +			opp-hz = /bits/ 64 <900000000>;
> +			opp-microvolt = <1000000>;
> +			clock-latency-ns = <150000>;
> +		};
> +
> +		opp-1200000000 {
> +			opp-hz = /bits/ 64 <1200000000>;
> +			opp-microvolt = <1100000>;
> +			clock-latency-ns = <150000>;
> +			opp-suspend;
> +		};
> +	};
> +
> +	gic: interrupt-controller@51a00000 {
> +		compatible = "arm,gic-v3";
> +		reg = <0x0 0x51a00000 0 0x10000>, /* GIC Dist */
> +		      <0x0 0x51b00000 0 0xc0000>; /* GICR (RD_base + SGI_base)
> */
> +		#interrupt-cells = <3>;
> +		interrupt-controller;
> +		interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
> +	};
> +
> +	pmu {
> +		compatible = "arm,armv8-pmuv3";
> +		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
> +	};
> +
> +	psci {
> +		compatible = "arm,psci-1.0";
> +		method = "smc";
> +	};
> +
> +	scu {
> +		compatible = "fsl,imx-scu";
> +		mbox-names = "tx0", "tx1", "tx2", "tx3",
> +			     "rx0", "rx1", "rx2", "rx3",
> +			     "gip3";
> +		mboxes = <&lsio_mu1 0 0
> +			  &lsio_mu1 0 1
> +			  &lsio_mu1 0 2
> +			  &lsio_mu1 0 3
> +			  &lsio_mu1 1 0
> +			  &lsio_mu1 1 1
> +			  &lsio_mu1 1 2
> +			  &lsio_mu1 1 3
> +			  &lsio_mu1 3 3>;
> +
> +		clk: clock-controller {
> +			compatible = "fsl,imx8dxl-clk", "fsl,imx8qxp-clk";
> +			#clock-cells = <1>;
> +			clocks = <&xtal32k &xtal24m>;
> +			clock-names = "xtal_32KHz", "xtal_24Mhz";
> +		};
> +
> +		iomuxc: pinctrl {
> +			compatible = "fsl,imx8dxl-iomuxc";
> +		};
> +
> +		ocotp: imx8qx-ocotp {
> +			compatible = "fsl,imx8dxl-scu-ocotp", "fsl,imx8qxp-scu-ocotp";
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +		};
> +
> +		pd: imx8qx-pd {
> +			compatible = "fsl,imx8dxl-scu-pd", "fsl,imx8qxp-scu-pd";
> +			#power-domain-cells = <1>;
> +		};
> +
> +		scu_key: scu-key {
> +			compatible = "fsl,imx8dxl-sc-key", "fsl,imx-sc-key";
> +			linux,keycodes = <KEY_POWER>;
> +			status = "disabled";
> +		};
> +
> +		rtc: rtc {
> +			compatible = "fsl,imx8dxl-sc-wdt", "fsl,imx8qxp-sc-rtc";
> +		};
> +
> +		tsens: thermal-sensor {
> +			compatible = "fsl,imx8dxl-sc-thermal", "fsl,imx-sc-thermal";
> +			#thermal-sensor-cells = <1>;
> +		};
> +
> +		watchdog {
> +			compatible = "fsl,imx8dxl-sc-wdt", "fsl,imx-sc-wdt";
> +			timeout-sec = <60>;
> +		};
> +	};
> +
> +	timer {
> +		compatible = "arm,armv8-timer";
> +		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>, /* Physical Secure
> */
> +			     <GIC_PPI 14 IRQ_TYPE_LEVEL_LOW>, /* Physical
> Non-Secure */
> +			     <GIC_PPI 11 IRQ_TYPE_LEVEL_LOW>, /* Virtual */
> +			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>; /* Hypervisor */
> +	};
> +
> +	xtal32k: clock-xtal32k {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <32768>;
> +		clock-output-names = "xtal_32KHz";
> +	};
> +
> +	xtal24m: clock-xtal24m {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <24000000>;
> +		clock-output-names = "xtal_24MHz";
> +	};
> +
> +	adma_subsys: bus@59000000 {
> +		compatible = "simple-bus";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		ranges = <0x59000000 0x0 0x59000000 0x2000000>;
> +
> +		adma_lpcg: clock-controller@59000000 {
> +			compatible = "fsl,imx8dxl-lpcg-adma", "fsl,imx8qxp-lpcg-adma";
> +			reg = <0x59000000 0x2000000>;
> +			#clock-cells = <1>;
> +		};
> +
> +		adma_lpuart0: serial@5a060000 {
> +			compatible = "fsl,imx8dxl-lpuart", "fsl,imx8qxp-lpuart";
> +			reg = <0x5a060000 0x1000>;
> +			interrupts = <GIC_SPI 228 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&adma_lpcg IMX_ADMA_LPCG_UART0_IPG_CLK>,
> +				 <&adma_lpcg IMX_ADMA_LPCG_UART0_BAUD_CLK>;
> +			clock-names = "ipg", "baud";
> +			power-domains = <&pd IMX_SC_R_UART_0>;
> +			status = "disabled";
> +		};
> +	};
> +
> +	conn_subsys: bus@5b000000 {
> +		compatible = "simple-bus";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		ranges = <0x5b000000 0x0 0x5b000000 0x1000000>;
> +
> +		conn_lpcg: clock-controller@5b200000 {
> +			compatible = "fsl,imx8dxl-lpcg-conn", "fsl,imx8qxp-lpcg-conn";
> +			reg = <0x5b200000 0xb0000>;
> +			#clock-cells = <1>;
> +		};
> +
> +		usdhc1: mmc@5b010000 {
> +			compatible = "fsl,imx8dxl-usdhc", "fsl,imx7d-usdhc";
> +			interrupts = <GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>;
> +			reg = <0x5b010000 0x10000>;
> +			clocks = <&conn_lpcg IMX_CONN_LPCG_SDHC0_IPG_CLK>,
> +				 <&conn_lpcg IMX_CONN_LPCG_SDHC0_PER_CLK>,
> +				 <&conn_lpcg IMX_CONN_LPCG_SDHC0_HCLK>;
> +			clock-names = "ipg", "per", "ahb";
> +			power-domains = <&pd IMX_SC_R_SDHC_0>;
> +			status = "disabled";
> +		};
> +
> +		usdhc2: mmc@5b020000 {
> +			compatible = "fsl,imx8dxl-usdhc", "fsl,imx7d-usdhc";
> +			interrupts = <GIC_SPI 139 IRQ_TYPE_LEVEL_HIGH>;
> +			reg = <0x5b020000 0x10000>;
> +			clocks = <&conn_lpcg IMX_CONN_LPCG_SDHC1_IPG_CLK>,
> +				 <&conn_lpcg IMX_CONN_LPCG_SDHC1_PER_CLK>,
> +				 <&conn_lpcg IMX_CONN_LPCG_SDHC1_HCLK>;
> +			clock-names = "ipg", "per", "ahb";
> +			power-domains = <&pd IMX_SC_R_SDHC_1>;
> +			fsl,tuning-start-tap = <20>;
> +			fsl,tuning-step= <2>;
> +			status = "disabled";
> +		};
> +	};
> +
> +	lsio_subsys: bus@5d000000 {
> +		compatible = "simple-bus";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		ranges = <0x5d000000 0x0 0x5d000000 0x1000000>;
> +
> +		lsio_gpio0: gpio@5d080000 {
> +			compatible = "fsl,imx8dxl-gpio", "fsl,imx35-gpio";
> +			reg = <0x5d080000 0x10000>;
> +			interrupts = <GIC_SPI 78 IRQ_TYPE_LEVEL_HIGH>;
> +			gpio-controller;
> +			#gpio-cells = <2>;
> +			interrupt-controller;
> +			#interrupt-cells = <2>;
> +			power-domains = <&pd IMX_SC_R_GPIO_0>;
> +		};
> +
> +		lsio_gpio1: gpio@5d090000 {
> +			compatible = "fsl,imx8dxl-gpio", "fsl,imx35-gpio";
> +			reg = <0x5d090000 0x10000>;
> +			interrupts = <GIC_SPI 79 IRQ_TYPE_LEVEL_HIGH>;
> +			gpio-controller;
> +			#gpio-cells = <2>;
> +			interrupt-controller;
> +			#interrupt-cells = <2>;
> +			power-domains = <&pd IMX_SC_R_GPIO_1>;
> +		};
> +
> +		lsio_gpio2: gpio@5d0a0000 {
> +			compatible = "fsl,imx8dxl-gpio", "fsl,imx35-gpio";
> +			reg = <0x5d0a0000 0x10000>;
> +			interrupts = <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>;
> +			gpio-controller;
> +			#gpio-cells = <2>;
> +			interrupt-controller;
> +			#interrupt-cells = <2>;
> +			power-domains = <&pd IMX_SC_R_GPIO_2>;
> +		};
> +
> +		lsio_gpio3: gpio@5d0b0000 {
> +			compatible = "fsl,imx8dxl-gpio", "fsl,imx35-gpio";
> +			reg = <0x5d0b0000 0x10000>;
> +			interrupts = <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>;
> +			gpio-controller;
> +			#gpio-cells = <2>;
> +			interrupt-controller;
> +			#interrupt-cells = <2>;
> +			power-domains = <&pd IMX_SC_R_GPIO_3>;
> +		};
> +
> +		lsio_gpio4: gpio@5d0c0000 {
> +			compatible = "fsl,imx8dxl-gpio", "fsl,imx35-gpio";
> +			reg = <0x5d0c0000 0x10000>;
> +			interrupts = <GIC_SPI 82 IRQ_TYPE_LEVEL_HIGH>;
> +			gpio-controller;
> +			#gpio-cells = <2>;
> +			interrupt-controller;
> +			#interrupt-cells = <2>;
> +			power-domains = <&pd IMX_SC_R_GPIO_4>;
> +		};
> +
> +		lsio_gpio5: gpio@5d0d0000 {
> +			compatible = "fsl,imx8dxl-gpio", "fsl,imx35-gpio";
> +			reg = <0x5d0d0000 0x10000>;
> +			interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
> +			gpio-controller;
> +			#gpio-cells = <2>;
> +			interrupt-controller;
> +			#interrupt-cells = <2>;
> +			power-domains = <&pd IMX_SC_R_GPIO_5>;
> +		};
> +
> +		lsio_gpio6: gpio@5d0e0000 {
> +			compatible = "fsl,imx8dxl-gpio", "fsl,imx35-gpio";
> +			reg = <0x5d0e0000 0x10000>;
> +			interrupts = <GIC_SPI 84 IRQ_TYPE_LEVEL_HIGH>;
> +			gpio-controller;
> +			#gpio-cells = <2>;
> +			interrupt-controller;
> +			#interrupt-cells = <2>;
> +			power-domains = <&pd IMX_SC_R_GPIO_6>;
> +		};
> +
> +		lsio_gpio7: gpio@5d0f0000 {
> +			compatible = "fsl,imx8dxl-gpio", "fsl,imx35-gpio";
> +			reg = <0x5d0f0000 0x10000>;
> +			interrupts = <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>;
> +			gpio-controller;
> +			#gpio-cells = <2>;
> +			interrupt-controller;
> +			#interrupt-cells = <2>;
> +			power-domains = <&pd IMX_SC_R_GPIO_7>;
> +		};
> +
> +		lsio_mu0: mailbox@5d1b0000 {
> +			compatible = "fsl,imx8dxl-mu", "fsl,imx6sx-mu";
> +			reg = <0x5d1b0000 0x10000>;
> +			interrupts = <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
> +			#mbox-cells = <2>;
> +			status = "disabled";
> +		};
> +
> +		lsio_mu1: mailbox@5d1c0000 {
> +			compatible = "fsl,imx8dxl-mu", "fsl,imx6sx-mu";
> +			reg = <0x5d1c0000 0x10000>;
> +			interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>;
> +			#mbox-cells = <2>;
> +		};
> +
> +		lsio_mu2: mailbox@5d1d0000 {
> +			compatible = "fsl,imx8dxl-mu", "fsl,imx6sx-mu";
> +			reg = <0x5d1d0000 0x10000>;
> +			interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>;
> +			#mbox-cells = <2>;
> +			status = "disabled";
> +		};
> +
> +		lsio_mu3: mailbox@5d1e0000 {
> +			compatible = "fsl,imx8dxl-mu", "fsl,imx6sx-mu";
> +			reg = <0x5d1e0000 0x10000>;
> +			interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
> +			#mbox-cells = <2>;
> +			status = "disabled";
> +		};
> +
> +		lsio_mu4: mailbox@5d1f0000 {
> +			compatible = "fsl,imx8dxl-mu", "fsl,imx6sx-mu";
> +			reg = <0x5d1f0000 0x10000>;
> +			interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
> +			#mbox-cells = <2>;
> +			status = "disabled";
> +		};
> +
> +		lsio_lpcg: clock-controller@5d400000 {
> +			compatible = "fsl,imx8dxl-lpcg-lsio", "fsl,imx8qxp-lpcg-lsio";
> +			reg = <0x5d400000 0x400000>;
> +			#clock-cells = <1>;
> +		};
> +	};
> +
> +	thermal_zones: thermal-zones {
> +		cpu-thermal0 {
> +			polling-delay-passive = <250>;
> +			polling-delay = <2000>;
> +			thermal-sensors = <&tsens IMX_SC_R_SYSTEM>;
> +
> +			trips {
> +				cpu_alert0: trip0 {
> +					temperature = <107000>;
> +					hysteresis = <2000>;
> +					type = "passive";
> +				};
> +
> +				cpu_crit0: trip1 {
> +					temperature = <127000>;
> +					hysteresis = <2000>;
> +					type = "critical";
> +				};
> +			};
> +
> +			cooling-maps {
> +				map0 {
> +					trip = <&cpu_alert0>;
> +					cooling-device =
> +						<&A35_0 THERMAL_NO_LIMIT
> THERMAL_NO_LIMIT>,
> +						<&A35_1 THERMAL_NO_LIMIT
> THERMAL_NO_LIMIT>;
> +				};
> +			};
> +		};
> +	};
> +};
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
