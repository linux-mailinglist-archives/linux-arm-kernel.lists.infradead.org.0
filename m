Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB7B03429E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 11:06:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=THg8oXabnpBmK+oIOqcIo3d3YBHcdLkIuWyL/ypCY84=; b=K7u4EhSCJVrgMn
	eFQBnU0DmL8x2gU2rLVcH39836Vt7PLFt8DPRLMYldlKWNE46lD4aC01dLCIFlqEQzQVcwbJ2yqmP
	1ORklAZ3apMk9Sq2Y8iGTocTniE6hzS3Oi9Qcl/OWoekOPti6wQbIqwLYHec4Gr7mcvY1N0BmgcIG
	HGekKmpWkRTse4HdGtGiXyKx/nuWyZPWJBNwawt1A9ttt6G9JSi5Er9Du8/Nr5ZbRA7Q5dz7UxlRB
	700+hpdgZvlpvD/Vfm2B5vSTQl1qX7qtOfkjIAisDHBpP5PLaAug0kQR7PUuwASLdgltvrS8XgEd0
	OGgH0hk/jBgDVYBqqQeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY5Oy-0003gW-TY; Tue, 04 Jun 2019 09:06:40 +0000
Received: from mail-eopbgr30087.outbound.protection.outlook.com ([40.107.3.87]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY5Or-0003fW-Hy
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 09:06:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6uNPxmYFIOIIV+VBRJ1Y41oLlIBoV6G13kNU0BZbpj4=;
 b=IotSr3Tia4Ds1dHIRbm2oOVTuY8anbmc4RjrIinQr0zFvIgipxRL9mcPRqXVQeyMrNW/bdJE/i3k6YEUIUS6GQXfHxdj9NrMf/quEPJJKvlOQmCfyxGs2S+Hn09GxqpkDdLLZb/2L5tHifO4Q+fPhaqw6ZIZ/EGsEwepoGDpRQg=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3723.eurprd04.prod.outlook.com (52.134.72.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.12; Tue, 4 Jun 2019 09:06:28 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec%5]) with mapi id 15.20.1943.018; Tue, 4 Jun 2019
 09:06:28 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "linux@roeck-us.net" <linux@roeck-us.net>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>, Daniel Baluta
 <daniel.baluta@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH RESEND V4 2/3] arm64: dts: imx8qxp: Move watchdog node
 into scu node
Thread-Topic: [PATCH RESEND V4 2/3] arm64: dts: imx8qxp: Move watchdog node
 into scu node
Thread-Index: AQHVCKrxek0Xatu7SEyE08ZoyZ0h7KaLV72w
Date: Tue, 4 Jun 2019 09:06:28 +0000
Message-ID: <DB3PR0402MB39162F3811484D90546B4CC2F5150@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1557655528-12816-1-git-send-email-Anson.Huang@nxp.com>
 <1557655528-12816-2-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1557655528-12816-2-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dbab2455-9e5b-45cb-ffc2-08d6e8cbede3
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3723; 
x-ms-traffictypediagnostic: DB3PR0402MB3723:
x-microsoft-antispam-prvs: <DB3PR0402MB3723941990C3EBC54480B5FBF5150@DB3PR0402MB3723.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2657;
x-forefront-prvs: 0058ABBBC7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39860400002)(396003)(136003)(346002)(376002)(13464003)(189003)(199004)(186003)(2201001)(2501003)(6506007)(53546011)(102836004)(316002)(26005)(110136005)(6246003)(86362001)(256004)(478600001)(55016002)(53936002)(7416002)(76116006)(11346002)(446003)(68736007)(6436002)(9686003)(66446008)(66556008)(66476007)(66946007)(73956011)(64756008)(3846002)(66066001)(52536014)(5660300002)(71190400001)(229853002)(33656002)(476003)(6116002)(71200400001)(44832011)(76176011)(8676002)(25786009)(7696005)(74316002)(81156014)(99286004)(4326008)(7736002)(8936002)(2906002)(305945005)(486006)(81166006)(14454004)(32563001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3723;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: W/J5pFkoTqq6PAbsMjsZVlo0Xgbq93u0w1T9trf07gkC5N+J+tT+YL99mFPnzCr68369DtWx6xAu5udjHHdZggj0kB890c00Ea/S0Woj4N8Y1nJZapL9TK1FQBWmQ9qX+bUFHMAADy5Zy0O4I0tM+hoSaoGMS/72zJzrAKoTl1MIha2DI1Azq1TGekdkQGG2jwvVY21lXGfi/qxWCwxIXLAgtJ7mP74l/a4qFEPT5jxgWZbj5Ef7y+uSE3WuriczVz/hE+2J8dNZ72fbAXFqMQsjDnmxDQCjmLRmrian6F8KPNsrgVOk4sYCoG91IzFq3DNCIZt/w6YPkzfa0sEIfgOCdyo7QTTl9DPKXOuEeqV20WCMrFHsM7BPWm44XLsDwZ7Oc4lds72PymW0HTr8zf5ABi95zDD5e6CTdaiN6ZA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dbab2455-9e5b-45cb-ffc2-08d6e8cbede3
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2019 09:06:28.5012 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3723
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_020633_591567_2FF50CEA 
X-CRM114-Status: GOOD (  16.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.87 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Shawn
	The driver and binding doc are already reviewed and waiting for DT patch, will you help review this DT patch?

Thanks,
Anson

> -----Original Message-----
> From: Anson Huang
> Sent: Sunday, May 12, 2019 6:11 PM
> To: robh+dt@kernel.org; mark.rutland@arm.com; wim@linux-watchdog.org;
> linux@roeck-us.net; shawnguo@kernel.org; s.hauer@pengutronix.de;
> kernel@pengutronix.de; festevam@gmail.com; Aisheng Dong
> <aisheng.dong@nxp.com>; ulf.hansson@linaro.org; Daniel Baluta
> <daniel.baluta@nxp.com>; Peng Fan <peng.fan@nxp.com>;
> devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; linux-
> watchdog@vger.kernel.org; linux-arm-kernel@lists.infradead.org
> Cc: dl-linux-imx <linux-imx@nxp.com>
> Subject: [PATCH RESEND V4 2/3] arm64: dts: imx8qxp: Move watchdog node
> into scu node
> 
> i.MX system controller watchdog has pretimeout function which depends on
> i.MX SCU driver, so it should be a subnode of SCU.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> No change, just resend patch with correct encoding.
> ---
>  arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> index 0683ee2..b17c22e 100644
> --- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> @@ -149,6 +149,11 @@
>  		rtc: rtc {
>  			compatible = "fsl,imx8qxp-sc-rtc";
>  		};
> +
> +		watchdog {
> +			compatible = "fsl,imx8qxp-sc-wdt", "fsl,imx-sc-wdt";
> +			timeout-sec = <60>;
> +		};
>  	};
> 
>  	timer {
> @@ -517,9 +522,4 @@
>  			power-domains = <&pd IMX_SC_R_GPIO_7>;
>  		};
>  	};
> -
> -	watchdog {
> -		compatible = "fsl,imx8qxp-sc-wdt", "fsl,imx-sc-wdt";
> -		timeout-sec = <60>;
> -	};
>  };
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
