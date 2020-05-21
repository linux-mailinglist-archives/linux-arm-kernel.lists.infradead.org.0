Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F951DC6C7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 08:02:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Uig8m+v6RX03tTVRyz7EH4cudR3tUFOBBIOEDGCrUQ=; b=TdZ5Ib5mUoXPyW
	HvSXEBK96Ll+QlR9cp+5WUdM1Dcita1UYOh6zZcxER4HZNb7ecLyP1L9Dfk//Myr6UdHtksquT9Sk
	7mBx5jWB8xN2P25wpgmgg+j+QzbEBoS4t6akjCt/iCMDEbzeMylzT4XB6/c/2twSWum5/n3YAh3GF
	4IYjkZy1RYuLUKrXMaZKhs1IRTUYidTgejECEjnK0iSAZxDr6OxCxjFkg3s8jk+zTPIZV0ndPobuH
	YGWmLAoK080InlqCTgW5aO7qGKW2ybZPWXnpBOqAR5PcTqHAoxxJ0M3wYm0mkl9IyOwfsUqjeFt3c
	irbKLvp10ChJYlnRPHgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbeHw-0006sb-8f; Thu, 21 May 2020 06:02:40 +0000
Received: from mail-eopbgr00075.outbound.protection.outlook.com ([40.107.0.75]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbeHo-0006ri-Od
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 06:02:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m+IRgvb98lYSeIqFyAnQw3B4+dgsy/OH5tD7fdUFjKLVssro3dRg/5/egjPnnyr41YGIijmO+QeI1oSzlJFk5eaLVxTxFuhzeCRXZJq2iBv5cRTo8zI42s72v5PQeB44xZN3N9PCyCDtMcGIuCVXj+GgTx76F5hjlCRu1NM/z88JAvCfJoPpazV1o9ZmcPv6n56LXtfJWbeUIpEOTmT3OGB+7WiEX/nb0xUfGuwTq37BDnc8W6V7DJGfZVqoosc6pWT5UhkdTv1diSF8Jlgs8swxcZstNbBG93Fin1SQSK20k2JbrIrpiPXCth387j3D/+VkRorZinkuZVXaod+f4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6HAfyWLXl1LQgvZgM1LwF3z29A5+h+8dEL2+pMl2RZ4=;
 b=ST0queO0f0J3rVzpa+OafOCuubHUksp0IlBZnwDcgqlJ190tQMGlNXnfhao+9U/4VJO51a856tS4Ph9fGaazxeuu1ninG26zt6xCWIvQT2n40iNpaH4wHWdh24em5Bsk4opQH3JQCtwI4IF8fHqRisZtIwL7stl6nWcUSXrwRiJlDHa3q12p39r713A7pqW2xBYT+UlZY01HUkaLBFcjoB/p1ZpdC+p1I4+WA49XaTZcL2AS6ZhLHou6L285R6AqjuO+YmWfGh+me920SOY2A4J3cOwx5YEGaZoGSXdiApnHyEor2FmnhxoPuPY7LTzp3NuPTnGsxdxLpbaSTjGzwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6HAfyWLXl1LQgvZgM1LwF3z29A5+h+8dEL2+pMl2RZ4=;
 b=YmQ8IdzEglmzdnUwlUCDhBjM++NKAhZnOy2mSlSWYLU/Zip7b4oCPpbPCQH47cwhcSPHDp76Zo7Pay46tTG5iwYMo+QlGbh+72FUyBvj75Vzhc53Q2ujzzFRtPaAxWwcHusN65kfbuIkoCBajpMvt4w1obKTWfrXJROeE29TlB4=
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2710.eurprd04.prod.outlook.com (2603:10a6:4:95::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.20; Thu, 21 May
 2020 06:02:24 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.3021.020; Thu, 21 May 2020
 06:02:24 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Robin Gong <yibin.gong@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, Anson Huang <anson.huang@nxp.com>
Subject: RE: [PATCH v1 2/2] arm64: dts: imx8mn-ddr4-evk: correct ldo1/ldo2
 voltage range
Thread-Topic: [PATCH v1 2/2] arm64: dts: imx8mn-ddr4-evk: correct ldo1/ldo2
 voltage range
Thread-Index: AQHWLx+QIxebg2Y/5kmAxIei6CuwCKiyDF8g
Date: Thu, 21 May 2020 06:02:24 +0000
Message-ID: <DB6PR0402MB2760907E5DE55EBA3BE38D9B88B70@DB6PR0402MB2760.eurprd04.prod.outlook.com>
References: <1590060368-2282-1-git-send-email-yibin.gong@nxp.com>
 <1590060368-2282-2-git-send-email-yibin.gong@nxp.com>
In-Reply-To: <1590060368-2282-2-git-send-email-yibin.gong@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 352697ec-f1de-4f55-09cf-08d7fd4c8857
x-ms-traffictypediagnostic: DB6PR0402MB2710:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0402MB27108869A0DB5983E6F84B6A88B70@DB6PR0402MB2710.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 041032FF37
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HOjR2kzYGym0HGmYy9ivT87UIdkUDW7F6p+T2miioUxxzYIrtUCCQCPjPcxo3tdgKKACPcNdbuMWoecI7gFyjfznOahGcut7uQpUm1b0x7nuVT6LB5U0z1Lzwb2K+fjbRaB6+2CR+gVun6A+L1HQCpH+xVZUjTkk04UmM6EVruhP/vuRLGeblYM2nosrq20V8l5hi/I8jpusUaqx+mn0xexAXGxte4s71GH/YOKGzdyWI0cDq+t3Vm3CCcr/J72sjYre80xFTVUHflAw66noBBYdqadMCrWt8AFRxgMoGEVaEVb2iwHpsQhcS1MUdNvxxr8yPcDZrEhBv6PT2T9CZ+Yt2mZTHnjQwC+UUxpWNc+V1LYfD0RokuAGkOSUqqN2lMS/BLmBs09INfr8sqBkE/07oDA3R5RPqU3RmmXXoZIdYGXAihJOU2VpApXqavNS50To/eHQht7N2ZUu3hKyDjz0CvBA5tD+iUeKNuqeyam9ORnmaDRHveUY0F+wYMhU
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(376002)(366004)(136003)(346002)(39860400002)(86362001)(2906002)(186003)(76116006)(66446008)(66556008)(64756008)(66946007)(33656002)(44832011)(71200400001)(66476007)(4326008)(52536014)(316002)(26005)(5660300002)(6636002)(478600001)(6506007)(54906003)(55016002)(110136005)(7696005)(9686003)(8936002)(8676002)(32563001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: Xv3xPdMgHOUZxaVnbJMDYf53ZE/nHplY9sx8lGwIXcx4YL/XJiF8ySkrVjr4cXPo4IXn/UGSkuQ5ebbtLntN4xmNoX63b3F5Rtn2L4aIrRtXzLJGLGCHcagniGgE7+vW/9077B0QdkGMb/3SbWHKNWktDKdrh3uy3JaeeoIjv+piwSowHkvrzQoy0ykB7EL/2c51SdkUa0XisCoipVqETv52j2i4rFGMIoCKOdNnHeS6bbWtvvYLwzTZMnmRDJWfRL0/MX76Th1fpW71JB2NPiB7vRCzEhFgSHWy/pzjJndObx/oyJ/Wr6MKZx2hakSNNogfLA0saAAzPLqHGJQLapUnn8W8Gle/IEfnkM9tyGQ2ra55yB5Uxy+g1xpkPjXlxfCP5OlCw7eSDzqhlMPUgpHwWpaQ4SXsd4SKDT0dBxA8MTOg6EB/JtoCsWAW3iaBtQAOXR+OGZHXoEDfh7n9SzMQuUSGoVWaxFxCiepgHSzBXmRINM3HJhlIGee1ZwTr
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 352697ec-f1de-4f55-09cf-08d7fd4c8857
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2020 06:02:24.1992 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KIZvqn57OKTIpDGbJvuI4rB476KHKnCEDiGQ71CnZozF5EXG0IJARp83mJgoECIyA8uZDol3C4OUqc+lhvbOQg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2710
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_230232_802765_302E44F7 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.0.75 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.0.75 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: [PATCH v1 2/2] arm64: dts: imx8mn-ddr4-evk: correct ldo1/ldo2
> voltage range
> 
> Correct ldo1 voltage range from wrong high group(3.0v~3.3v) to low group
> (1.6v~1.9v) because the ldo1 should be 1.8v. Actually, two voltage groups
> have been supported at bd718x7-regulator driver, hence, just corrrect the
> voltage range to 1.6v~3.3v. For ldo2@0.8v, correct voltage range too.
> Otherwise, ldo1 would be kept @3.0v and ldo2@0.9v which violate i.mx8mm
> datasheet as the below warning log in kernel:
> 
> [    0.995524] LDO1: Bringing 1800000uV into 3000000-3000000uV
> [    0.999196] LDO2: Bringing 800000uV into 900000-900000uV
> 
> Signed-off-by: Robin Gong <yibin.gong@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts | 4 ++--
>  arch/arm64/boot/dts/freescale/imx8mn-evk.dts      | 9 +++++++++
>  2 files changed, 11 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
> b/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
> index d07e0e6..a1e5483 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
> @@ -113,7 +113,7 @@
> 
>  			ldo1_reg: LDO1 {
>  				regulator-name = "LDO1";
> -				regulator-min-microvolt = <3000000>;
> +				regulator-min-microvolt = <1600000>;
>  				regulator-max-microvolt = <3300000>;
>  				regulator-boot-on;
>  				regulator-always-on;
> @@ -121,7 +121,7 @@
> 
>  			ldo2_reg: LDO2 {
>  				regulator-name = "LDO2";
> -				regulator-min-microvolt = <900000>;
> +				regulator-min-microvolt = <800000>;
>  				regulator-max-microvolt = <900000>;
>  				regulator-boot-on;
>  				regulator-always-on;
> diff --git a/arch/arm64/boot/dts/freescale/imx8mn-evk.dts
> b/arch/arm64/boot/dts/freescale/imx8mn-evk.dts
> index 61f3519..117ff4b 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mn-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mn-evk.dts
> @@ -13,6 +13,15 @@
>  	compatible = "fsl,imx8mn-evk", "fsl,imx8mn";  };
> 
> +&ecspi1 {
> +	status = "okay";
> +spidev0: spi@0 {
> +	compatible = "ge,achc";
> +	reg = <0>;
> +	spi-max-frequency = <1000000>;
> +	};
> +};
> +

This was added by mistake?

Regards,
Peng.

>  &A53_0 {
>  	/delete-property/operating-points-v2;
>  };
> --
> 2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
