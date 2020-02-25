Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5E416B871
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 05:15:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yao+adY91TGJ552X9OBSCYUDRVPq1u9btesNjAHKgP4=; b=cfX1zDywRIxiNP
	0F43k5NtauizC4Ge7Sa0jF46C/8S/i1sjMrt40eKWUaWFpoU5nPs9IxgODBir+D9VqXguLni03sVx
	8Ib+NJVfSN5GnkQdDJnCYGcHzIGp27qaBKMgSIGFkLeWZlQtSqgG+V0JRFZSoTK+fFi6DK0N3Az+2
	xj1WFE0N/2Afo53lXo6VEQ24F8ZIydjzOBpzhl2MH99QL6Qgx1KxNKoaaJPJ9j1yQS8iK3XcNiJ/R
	/Bwo2YB+OYWr6WvVp4LQI8HNFKldR5+/0inH1V2J28LAZzrd726X3VbuIKUhArlqbAGRH8FZsPna7
	NaeYvM5Ue55ZOSYx0Kbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Rcw-0004PJ-OB; Tue, 25 Feb 2020 04:15:22 +0000
Received: from mail-am6eur05on2089.outbound.protection.outlook.com
 ([40.107.22.89] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Rcn-0004KU-C4
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 04:15:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ab07hwmsjZrCmVZzJ3SUy7RNOcwqYS5Ow33mO9BFkn2j/rZ52q/SeM/geK6IEPffVhJkt4kAfn5ULT52WIhHoX23bkxpaZzXZ5782G94pZ9iwCAkdSX8qpl86yyrukPBEgOuaHMcvcjCeBaTkAOaMM9qpGSvIxmmd4h2zpmhlB/4JIt/e6cpjAIQu1lRZ0ob3rA2yxmqH5JINe44qBzp6P06IcmNuAeXF3hgNOUaCmrkeW/yRQAHK6fnyCwlND1MqicfBqHRk5EuR7F7faUMsqA5109sozA/O2oa4rgNNhwi1S6aUb6uJlsSyGzRuab5GaqQ/kvGbKOJI7Wfuqe0IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v427+uFanGN41OZvgX8pMhkN8P9/c/6Q85gWGEGtXdc=;
 b=InAJcdAxjJYTBvt9Ufva/b3W4BeSCLlzc+GxTPpvs5OsMV43t5UNvM7KPWSh+tr+sPdBerz0yV4g3XuKXl6FS1vTsNF7xeKL8AI7mFp2A9k47k+CvoU4xwmKgpB8YZchIc7gzgu8c6ny623Y3b4Fr8JFgkktzMYV2T9vGHwKvwJPD9ZUDCMHzEMk0yQqMJQeqSXiRR+h8GeFFg9dQc2c3WCWEESYUrqrHXeEeGQ+0yn5ozG01Ku66I9y2e4bLZfEz1yGdxUv5I4PiE+aWEtvr3qpzf/q1Ow2T9/d07kVFZ+ktln6yjti+Jzn4m6tvIpN2OPdBkaAh2pfxatjQU2LdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v427+uFanGN41OZvgX8pMhkN8P9/c/6Q85gWGEGtXdc=;
 b=nUHD3zWol2EnqEmNvMCJnRBbSOW0o9sI7LhJHGrJ805tG00N5MYnFc5VDSJymO5yYvlh503xSRGvKmU786tBhiNPZ8au+oNffRgARqH0bNlSFwin2P0CZwhdItLxaATqrYVdO9n90fbUIqvunI/p2TdjOOgrdrlpS6uW/V2qSII=
Received: from VI1PR04MB6992.eurprd04.prod.outlook.com (52.133.247.22) by
 VI1PR04MB6126.eurprd04.prod.outlook.com (20.179.28.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.21; Tue, 25 Feb 2020 04:15:08 +0000
Received: from VI1PR04MB6992.eurprd04.prod.outlook.com
 ([fe80::9879:13e1:8f56:cb3b]) by VI1PR04MB6992.eurprd04.prod.outlook.com
 ([fe80::9879:13e1:8f56:cb3b%6]) with mapi id 15.20.2750.021; Tue, 25 Feb 2020
 04:15:07 +0000
From: Jacky Bai <ping.bai@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: RE: [PATCH] ARM64: dts: imx8m: fix aips dts node
Thread-Topic: [PATCH] ARM64: dts: imx8m: fix aips dts node
Thread-Index: AQHV646vWLiVkiqi30itYtGPLIEo/6grSRNg
Date: Tue, 25 Feb 2020 04:15:07 +0000
Message-ID: <VI1PR04MB69920BD928735E22A8B9928987ED0@VI1PR04MB6992.eurprd04.prod.outlook.com>
References: <1582602242-28577-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1582602242-28577-1-git-send-email-peng.fan@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ping.bai@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 4aab26a5-191e-4994-34d2-08d7b9a94c5b
x-ms-traffictypediagnostic: VI1PR04MB6126:|VI1PR04MB6126:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB6126DFEA18D5CBE0AD54210487ED0@VI1PR04MB6126.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-forefront-prvs: 0324C2C0E2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(396003)(346002)(136003)(376002)(199004)(189003)(86362001)(478600001)(33656002)(4326008)(2906002)(316002)(5660300002)(53546011)(66556008)(54906003)(8676002)(8936002)(64756008)(26005)(66946007)(7696005)(110136005)(66476007)(66446008)(76116006)(186003)(81156014)(81166006)(71200400001)(55016002)(9686003)(52536014)(6506007)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6126;
 H:VI1PR04MB6992.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bBa7htMJxqVYU72Yqv43rV1DyW4OG3OFYpbu5prySTHOLVMS3Fw8Gfb0UBMNNZ3oREHyjzCzslBK2R4ph3C1pTkgJKd02Ix/Q8mWqKpRVi+YeO6NqeagOhf7DpqhdtYQuEjILwi322fk1STdO4jGvQa/Hm8PMXSS/yC+jHtg4URKyAltL8Mg65CIB6VwOIA5XsGv/blS7WM8f5AzogYObn7Swj2MjgiSSCu7FCzavpPqgIUgDfpnRz8CGcxU/4eGytZDgOejpbBiRl95u6RnZ0K3DoO/YWFy3XeJuBf01HQ5RL7saEe7sI6m5Foq7+ca4okRsXoHv/tFKo8XCG0vu9HhZtE0k+mHdnrAx2JWas/yWBMx4yFLGrcTXQH1Lev65PSA9uZAUTMyNr4bZRvyNpgoXVuBKz9J5mcYGvPL2xk5DxqxPD0ipSBPuAQ7A5wW3Ent9QuxmO4pAm994XGlcq+dwjUZmyFARwt84uiNt6YH19MRDSeqHHH5ZMNjf80X
x-ms-exchange-antispam-messagedata: wSXC33zOQKeAnpmQMK/nUv//tr8M93QL6/RzUoBYGHDbAExlZ8wNwKMnpyne051f7MZa7RL7FXrrYLVuvIjM+c2LTx3GlvljUZm+D9XBWoLpyzw/j5U0g5njEmBGV1262l9YviT5xkvug+PwkpICDA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4aab26a5-191e-4994-34d2-08d7b9a94c5b
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2020 04:15:07.5541 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wI810oDkP9XnxquaH0m3bSRuuzpohVvMlWn4tuZHCw6s5aJtucxK+tYtAlbh1EbQfXfA/JS0RXCxonmR/MzwMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6126
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_201513_562584_6A18191B 
X-CRM114-Status: GOOD (  14.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.89 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Anson Huang <anson.huang@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Peng Fan <peng.fan@nxp.com>
> Sent: Tuesday, February 25, 2020 11:44 AM
> To: robh+dt@kernel.org; mark.rutland@arm.com; shawnguo@kernel.org;
> s.hauer@pengutronix.de
> Cc: kernel@pengutronix.de; festevam@gmail.com; dl-linux-imx
> <linux-imx@nxp.com>; devicetree@vger.kernel.org;
> linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org; Anson
> Huang <anson.huang@nxp.com>; Leonard Crestez
> <leonard.crestez@nxp.com>; Daniel Baluta <daniel.baluta@nxp.com>; Peng
> Fan <peng.fan@nxp.com>
> Subject: [PATCH] ARM64: dts: imx8m: fix aips dts node
> 
> From: Peng Fan <peng.fan@nxp.com>
> 
> Per binding doc fsl,aips-bus.yaml, compatible and reg is required. And for reg,
> the AIPS configuration space should be used, not all the AIPS bus space.
> 

Any reason that we need to add the aips bus compatible & reg back? The aips config space
can only be write by secure world, linux has no permission to config the aips port. And it seems
no driver use "fsl,aips" anymore.

BR
Jacky Bai

> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 12 ++++++++----
> arch/arm64/boot/dts/freescale/imx8mn.dtsi | 16 ++++++++--------
> arch/arm64/boot/dts/freescale/imx8mp.dtsi | 12 ++++++------
> arch/arm64/boot/dts/freescale/imx8mq.dtsi | 12 ++++++++----
>  4 files changed, 30 insertions(+), 22 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index b3d0b29d7007..a4356d2047cd 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -227,7 +227,8 @@
>  		ranges = <0x0 0x0 0x0 0x3e000000>;
> 
>  		aips1: bus@30000000 {
> -			compatible = "simple-bus";
> +			compatible = "fsl,aips", "simple-bus";
> +			reg = <0x301f0000 0x10000>;
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			ranges = <0x30000000 0x30000000 0x400000>; @@ -496,7
> +497,8 @@
>  		};
> 
>  		aips2: bus@30400000 {
> -			compatible = "simple-bus";
> +			compatible = "fsl,aips", "simple-bus";
> +			reg = <0x305f0000 0x10000>;
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			ranges = <0x30400000 0x30400000 0x400000>; @@ -555,7
> +557,8 @@
>  		};
> 
>  		aips3: bus@30800000 {
> -			compatible = "simple-bus";
> +			compatible = "fsl,aips", "simple-bus";
> +			reg = <0x309f0000 0x10000>;
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			ranges = <0x30800000 0x30800000 0x400000>; @@ -800,7
> +803,8 @@
>  		};
> 
>  		aips4: bus@32c00000 {
> -			compatible = "simple-bus";
> +			compatible = "fsl,aips", "simple-bus";
> +			reg = <0x32df0000 0x10000>;
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			ranges = <0x32c00000 0x32c00000 0x400000>; diff --git
> a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> index f2775724377f..4848ce82f083 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> @@ -203,8 +203,8 @@
>  		ranges = <0x0 0x0 0x0 0x3e000000>;
> 
>  		aips1: bus@30000000 {
> -			compatible = "simple-bus";
> -			reg = <0x30000000 0x400000>;
> +			compatible = "fsl,aips", "simple-bus";
> +			reg = <0x301f0000 0x10000>;
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			ranges;
> @@ -401,8 +401,8 @@
>  		};
> 
>  		aips2: bus@30400000 {
> -			compatible = "simple-bus";
> -			reg = <0x30400000 0x400000>;
> +			compatible = "fsl,aips", "simple-bus";
> +			reg = <0x305f0000 0x10000>;
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			ranges;
> @@ -461,8 +461,8 @@
>  		};
> 
>  		aips3: bus@30800000 {
> -			compatible = "simple-bus";
> -			reg = <0x30800000 0x400000>;
> +			compatible = "fsl,aips", "simple-bus";
> +			reg = <0x309f0000 0x10000>;
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			ranges;
> @@ -707,8 +707,8 @@
>  		};
> 
>  		aips4: bus@32c00000 {
> -			compatible = "simple-bus";
> -			reg = <0x32c00000 0x400000>;
> +			compatible = "fsl,aips", "simple-bus";
> +			reg = <0x32df0000 0x10000>;
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			ranges;
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> index 71b0c8f23693..eb67f56cdfe2 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> @@ -144,8 +144,8 @@
>  		ranges = <0x0 0x0 0x0 0x3e000000>;
> 
>  		aips1: bus@30000000 {
> -			compatible = "simple-bus";
> -			reg = <0x30000000 0x400000>;
> +			compatible = "fsl,aips", "simple-bus";
> +			reg = <0x301f0000 0x10000>;
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			ranges;
> @@ -309,8 +309,8 @@
>  		};
> 
>  		aips2: bus@30400000 {
> -			compatible = "simple-bus";
> -			reg = <0x30400000 0x400000>;
> +			compatible = "fsl,aips", "simple-bus";
> +			reg = <0x305f0000 0x400000>;
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			ranges;
> @@ -369,8 +369,8 @@
>  		};
> 
>  		aips3: bus@30800000 {
> -			compatible = "simple-bus";
> -			reg = <0x30800000 0x400000>;
> +			compatible = "fsl,aips", "simple-bus";
> +			reg = <0x309f0000 0x400000>;
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			ranges;
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> index 6a1e83922c71..07070464063d 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> @@ -290,7 +290,8 @@
>  		dma-ranges = <0x40000000 0x0 0x40000000 0xc0000000>;
> 
>  		bus@30000000 { /* AIPS1 */
> -			compatible = "simple-bus";
> +			compatible = "fsl,aips", "simple-bus";
> +			reg = <0x301f0000 0x10000>;
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			ranges = <0x30000000 0x30000000 0x400000>; @@ -692,7
> +693,8 @@
>  		};
> 
>  		bus@30400000 { /* AIPS2 */
> -			compatible = "simple-bus";
> +			compatible = "fsl,aips", "simple-bus";
> +			reg = <0x305f0000 0x10000>;
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			ranges = <0x30400000 0x30400000 0x400000>; @@ -751,7
> +753,8 @@
>  		};
> 
>  		bus@30800000 { /* AIPS3 */
> -			compatible = "simple-bus";
> +			compatible = "fsl,aips", "simple-bus";
> +			reg = <0x309f0000 0x10000>;
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			ranges = <0x30800000 0x30800000 0x400000>, @@ -1023,7
> +1026,8 @@
>  		};
> 
>  		bus@32c00000 { /* AIPS4 */
> -			compatible = "simple-bus";
> +			compatible = "fsl,aips", "simple-bus";
> +			reg = <0x32df0000 0x10000>;
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			ranges = <0x32c00000 0x32c00000 0x400000>;
> --
> 2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
