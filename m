Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9329F5042D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 10:04:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OwfCkXFnQvdOPfeFFSzp7rZpjy8kx73L0YVxKt0c1KY=; b=OWwfBupPyE1vET
	0NWaDIUnsQ+6ATSyiVTlwdw/E4IMwxXJsKQHP/VHvpZUrudl3nlTLxGt0Irv+aPWlpDh+p6LVRkxK
	yEZfoDodZoWlGpclXLCmnlVETgWLgMkfWkSdU/6YnBcPZyIwS83PaXefOxckRpD81hGyzUtYVCFVR
	ugzLr4fNoytLLqcGAQ7CDcNWph+zGplrZV/GVRU5JNfTAnE3kCdAriq0WvhOjLL6AfYUs0KoePK4/
	SJidfMtFJ6OFpqGaDm2iPm/CuiGvrOWDGKyBZHgkLVZbzM3su+KLxUQUaKiz80EkzGAFn1Z9LKBj+
	RtfgrISyl1dGi3sRYPjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfJy3-0005HL-Gz; Mon, 24 Jun 2019 08:04:47 +0000
Received: from mail-eopbgr20087.outbound.protection.outlook.com ([40.107.2.87]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfJxi-0005Gi-H1
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 08:04:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bBOYBXzozbCtfIO5X4wDYJcGRtkAIQ0gxvXtpKDMoNQ=;
 b=dKww+5G8mb1Wb54v83DgQ1p+/37MTBAFIPCISNJissxHrGCoCCWAgJRfKZsxoO/T1fcx/j+v2E/4TD3JkRUgCK8gVkXvsfGiK94PoxZ66G3Amc+h9g0ima/k6z0Mk/Kld14Q362fXrK2l53ozeTqCpuIds4RS9d/CCM0zBYU2aU=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3946.eurprd04.prod.outlook.com (52.134.72.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Mon, 24 Jun 2019 08:04:23 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191%4]) with mapi id 15.20.2008.014; Mon, 24 Jun 2019
 08:04:23 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "corbet@lwn.net" <corbet@lwn.net>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>, "rui.zhang@intel.com"
 <rui.zhang@intel.com>, "edubezval@gmail.com" <edubezval@gmail.com>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>, Aisheng Dong
 <aisheng.dong@nxp.com>, "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 Peng Fan <peng.fan@nxp.com>, "mchehab+samsung@kernel.org"
 <mchehab+samsung@kernel.org>, "linux@roeck-us.net" <linux@roeck-us.net>,
 Daniel Baluta <daniel.baluta@nxp.com>, "maxime.ripard@bootlin.com"
 <maxime.ripard@bootlin.com>, "horms+renesas@verge.net.au"
 <horms+renesas@verge.net.au>, "olof@lixom.net" <olof@lixom.net>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>, Leonard Crestez
 <leonard.crestez@nxp.com>, "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-pm@vger.kernel.org"
 <linux-pm@vger.kernel.org>
Subject: RE: [PATCH V15 1/5] dt-bindings: fsl: scu: add thermal binding
Thread-Topic: [PATCH V15 1/5] dt-bindings: fsl: scu: add thermal binding
Thread-Index: AQHVJXvnLQPj9qjL2U2LZTWuyBDONqaqeq9g
Date: Mon, 24 Jun 2019 08:04:22 +0000
Message-ID: <DB3PR0402MB39162C5B5AF828B127DD871EF5E00@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190618021820.14885-1-Anson.Huang@nxp.com>
In-Reply-To: <20190618021820.14885-1-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 49b87960-1f61-4e28-99d3-08d6f87a918b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3946; 
x-ms-traffictypediagnostic: DB3PR0402MB3946:
x-microsoft-antispam-prvs: <DB3PR0402MB3946FDB3407C7C806D9766F9F5E00@DB3PR0402MB3946.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 007814487B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(376002)(396003)(366004)(346002)(199004)(189003)(9686003)(71190400001)(74316002)(7736002)(81156014)(8676002)(8936002)(81166006)(68736007)(25786009)(478600001)(7416002)(33656002)(110136005)(4326008)(316002)(305945005)(3846002)(6116002)(2501003)(55016002)(14454004)(53936002)(44832011)(66066001)(229853002)(76176011)(7696005)(26005)(99286004)(186003)(6436002)(102836004)(6506007)(2201001)(256004)(476003)(5660300002)(446003)(486006)(52536014)(6246003)(71200400001)(76116006)(73956011)(11346002)(66946007)(66446008)(64756008)(66556008)(66476007)(86362001)(2906002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3946;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: pTN/hE4UnGZ5M3DnEeJbwIhVdk8pXzNpc9l1I8sxTDkzxCwu2h4JzeRBNzQWnYJnfDHt0NoSIrqWkLvbiafQUGgZjkvK7jDnqD4zDU5HIOOeyf6h0Fi5zMOb/DglCZmQbRqiCXYSnPFXUDgxGmzs5n3VrD7FVxAjMzpGr/gLHzgm/tguGkCWQ633Zw5fJmYhGbHI/gNZWuzLMgNi+/w+N/M4rLEoTOhzKulHVJqm5veGeTGoH2onAwg8/OUH/Qf5UpseVMrBqFVEM3sM19910R4Zx6HyTJJmqNrtfzKWNUPlJ/OZMdVE73rUn7FHdEYosVf4LU6weyD/vCWNDybFPQJ34XOkyWIFCCugDic99bmK1C7oR7Kav3TRHQEBUcn/CKFQ52yjLvJiCfbNZIgxh859FcLODmBDfviui/QQ3Cg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 49b87960-1f61-4e28-99d3-08d6f87a918b
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2019 08:04:22.8858 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3946
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_010426_564495_70F01F72 
X-CRM114-Status: GOOD (  17.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.87 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi, Daniel/Rui/Eduardo
	Could you please take a look at this patch series? 

Anson

> From: Anson Huang <Anson.Huang@nxp.com>
> 
> NXP i.MX8QXP is an ARMv8 SoC with a Cortex-M4 core inside as system
> controller, the system controller is in charge of system power, clock and
> thermal sensors etc. management, Linux kernel has to communicate with
> system controller via MU (message unit) IPC to get temperature from thermal
> sensors, this patch adds binding doc for i.MX system controller thermal
> driver.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
> ---
> No change.
> ---
>  .../devicetree/bindings/arm/freescale/fsl,scu.txt        | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> index a575e42..fc3844e 100644
> --- a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> +++ b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> @@ -155,6 +155,17 @@ Required properties:
>  Optional properties:
>  - timeout-sec: contains the watchdog timeout in seconds.
> 
> +Thermal bindings based on SCU Message Protocol
> +------------------------------------------------------------
> +
> +Required properties:
> +- compatible:			Should be :
> +				  "fsl,imx8qxp-sc-thermal"
> +				followed by "fsl,imx-sc-thermal";
> +
> +- #thermal-sensor-cells:	See
> Documentation/devicetree/bindings/thermal/thermal.txt
> +				for a description.
> +
>  Example (imx8qxp):
>  -------------
>  aliases {
> @@ -222,6 +233,11 @@ firmware {
>  			compatible = "fsl,imx8qxp-sc-wdt", "fsl,imx-sc-wdt";
>  			timeout-sec = <60>;
>  		};
> +
> +		tsens: thermal-sensor {
> +			compatible = "fsl,imx8qxp-sc-thermal", "fsl,imx-sc-
> thermal";
> +			#thermal-sensor-cells = <1>;
> +		};
>  	};
>  };
> 
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
