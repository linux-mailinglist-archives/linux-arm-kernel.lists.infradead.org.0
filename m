Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7E5145BA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 10:06:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P/qFo5KC9unVOK4uWipvfZCaqKdZKjcfHpKaz3d2SdM=; b=I+VJkIckwbvmnk
	Hev8R8PY2BH+5oZ4hTSKnwjAh2OwoXFbnyQv25jLYpknwLVY4CyVmqJ+l6O9MVOT2K3m1kIXMCUAk
	XqKoI756QCKtPsp9kBJDLuwRk2WXa9cakgwSI1E4ArbwhZ7pTwL00mtHUC/CebOefOxY5yCEcxysD
	DrGQboCdW5qC+GT2PLhrcCj7kby14p6HYlP4fbgzJz0+pPWsITVVPUHTcI9OofFioEYLLvScomV9f
	uHw8ToS5g+6X8cjSrSbq4Hixzs0OB2ezexd3gid7I8roE+4Du6w/VJJNfcwBcgucZA4KqtSm7SIM1
	G5qYSrMsMzF2hNk+/9NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNYdn-0006V5-HV; Mon, 06 May 2019 08:06:27 +0000
Received: from mail-ve1eur03on0629.outbound.protection.outlook.com
 ([2a01:111:f400:fe09::629]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNYdd-0006UT-Cg
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 08:06:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CU+hwGzRti1+kaLy9fvGYn3ov9kqvmkT3oTPANuuDac=;
 b=m/VZOe7y3VDaGET3QP5RBXqFVUrpxntaLViM9oqkhsUZIoocDQPIf3n8dzXAnoRRcY7BVujr/pIuChTMkx+N3Eg4oGJuQUgvLUi+G3PSFYodkkTODSjVQ+DAH7mNC6SD5tHwCkT/sVp4JptIjcKUcmJwy75nrk4qAbl6+8MRhPk=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB4034.eurprd04.prod.outlook.com (52.134.124.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.10; Mon, 6 May 2019 08:06:09 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13%6]) with mapi id 15.20.1856.012; Mon, 6 May 2019
 08:06:09 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "srinivas.kandagatla@linaro.org" <srinivas.kandagatla@linaro.org>
Subject: RE: [PATCH 1/4] dt-bindings: fsl: scu: add ocotp binding
Thread-Topic: [PATCH 1/4] dt-bindings: fsl: scu: add ocotp binding
Thread-Index: AQHVA0ZjnXjmGbRNIUCIpXt7yxOkeqZduNCg
Date: Mon, 6 May 2019 08:06:09 +0000
Message-ID: <AM0PR04MB4211BC6C3321648BEB67927480300@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <20190505134130.28071-1-peng.fan@nxp.com>
In-Reply-To: <20190505134130.28071-1-peng.fan@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 12b43b4e-aa27-4f40-4025-08d6d1f9b2cb
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4034; 
x-ms-traffictypediagnostic: AM0PR04MB4034:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <AM0PR04MB403416152A7FF3E3D6DE580280300@AM0PR04MB4034.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0029F17A3F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(39860400002)(396003)(366004)(136003)(346002)(199004)(189003)(102836004)(66066001)(6506007)(4326008)(229853002)(74316002)(305945005)(68736007)(8676002)(25786009)(7736002)(5660300002)(81156014)(81166006)(8936002)(33656002)(256004)(66476007)(66446008)(64756008)(66556008)(71200400001)(66946007)(71190400001)(73956011)(76116006)(110136005)(54906003)(6436002)(44832011)(476003)(2201001)(7696005)(99286004)(76176011)(7416002)(55016002)(52536014)(11346002)(446003)(26005)(186003)(6306002)(9686003)(966005)(3846002)(6116002)(14454004)(6246003)(2501003)(478600001)(53936002)(2906002)(316002)(486006)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4034;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ZAoXo2tKK4iJeOYrDYQxumjBNXXxjPOjfWDFFpvBDk4Ntx/gQLe92Ss73qmJDqr8sfbb7jXwVaGcKS47V49t6oQaBT/IAkNELyTnKgaqZeUj99gLyZzlkl8iK8vgBJmqbjjTd90DrFzToNoKW5/s2RzI8W3INAp4bRVJTy3BDrKRM+oJmtr2isZOYWAGuhvF4WycC8ke2JCcvM8DC6QGMjK0NtJYlkE5nvpM5RKOAEUQjPfbMX3GK20X5ElvVmaPj1OoFQoaKlX9Xlgdtk5lQq/7vo6Q47+WxyS9bmYv3YW1LD66smxQYPxvHvDGMx8k36LVytWHabq4pJNYzUjndA6Q49DdbP3zaIGjL/Bz1Adn/8x79cWl+4LREdB4aHNXvimHXEwaEbRcJMAH6bzoMDKo7bzM5SrFapypPyVa4NA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 12b43b4e-aa27-4f40-4025-08d6d1f9b2cb
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2019 08:06:09.4931 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4034
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_010620_302626_2D31DEC5 
X-CRM114-Status: GOOD (  18.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe09:0:0:0:629 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Anson Huang <anson.huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Peng Fan
> Sent: Sunday, May 5, 2019 9:28 PM
> 
> NXP i.MX8QXP is an ARMv8 SoC with a Cortex-M4 core inside as system
> controller(SCU), the ocotp controller is being controlled by the SCU, so Linux
> need use RPC to SCU for ocotp handling. This patch adds binding doc for i.MX8
> SCU OCOTP driver.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Aisheng Dong <aisheng.dong@nxp.com>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Ulf Hansson <ulf.hansson@linaro.org>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: Anson Huang <anson.huang@nxp.com>
> Cc: devicetree@vger.kernel.org
> ---
>  Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt | 13
> +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> index 5d7dbabbb784..9cb7d52bdf26 100644
> --- a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> +++ b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> @@ -100,6 +100,13 @@ ID in its "clocks" phandle cell.
>  See the full list of clock IDs from:
>  include/dt-bindings/clock/imx8qxp-clock.h
> 
> +OCOTP bindings based on SCU Message Protocol
> +------------------------------------------------------------
> +Required properties:
> +- compatible:		Should be "fsl,imx8qxp-ocotp"
> +- #address-cells:	Must be 1. Contains byte index
> +- #size-cells:		Must be 1. Contains byte length
> +

Please put this unimportant one to the last.
And it's better to mention the optional child nodes for data cells as
Above #address-cells and #size-cells are used for it.
Just like:
Documentation/devicetree/bindings/nvmem/imx-ocotp.txt

>  Pinctrl bindings based on SCU Message Protocol
>  ------------------------------------------------------------
> 
> @@ -177,6 +184,12 @@ firmware {
>  			...
>  		};
> 
> +		ocotp: imx8qx-ocotp {
> +			#address-cells = <1>;
> +			#size-cells = <1>;

Not sure if it's a free choice, but AFAIK we usually write #address-cells and #size-cells
under compatible string according to the example in DT spec and doc.
https://elinux.org/Device_Tree_Usage
https://github.com/devicetree-org/devicetree-specification/releases/tag/v0.2

Maybe Rob can comment to avoid confusing.

Otherwise, this patch seems good to me.

Regards
Dong Aisheng

> +			compatible = "fsl,imx8qxp-ocotp";
> +		};
> +
>  		pd: imx8qx-pd {
>  			compatible = "fsl,imx8qxp-scu-pd", "fsl,scu-pd";
>  			#power-domain-cells = <1>;
> --
> 2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
