Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1488133E3F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 10:24:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ePtkVvZjX2KyT6MhabAzAp+oZgji5VhBgK0rc+VIT/A=; b=mZonLfQDwRqwKM
	tAKZH2A1hdtwVREZpCIvUxjueS5tHopJueAJgaet0T1T9igyu1KmCeaAcW533mAT4EtjhYqIzeM3h
	3A2Ql7BrLHaeceoAO7LpES3c8kkweo4ZldX9azra4wBTq6LI0KxvSpnQFjh249Fc+WInDLE9ohQHN
	ZiAbuLVX0Vkr3IoQhdUFjutFZ3uGc++klrgQEqSTj7YiZwqkKX+T7+adGl7flBNySGRsjNm1vq5OR
	v4uHAfnh+flFUk+bxZ27NxvMU98didAyKm788tqGMXuJeuluyucmNjsVBv1f3wYiEIhjCZWioaalW
	gmj8zUZCk/Eldj+PlMtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip7Zs-0003Ij-PE; Wed, 08 Jan 2020 09:24:36 +0000
Received: from mail-eopbgr60078.outbound.protection.outlook.com ([40.107.6.78]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip7Zk-0003IE-I2
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 09:24:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hh0fQb7sUMOChzXDPzmIqMHtU30axxE/Muf/JSFkyPw5SEr8f7O9sTvVUv6tM/QoQPasvQTIpjuck68ural7K/npozc/vNqw9FYx5AkfX+yUCXcelggYlW8tSks/FvgbaD5fC8iL6gFBS0+Bb3qzxqUJPCmWBRSTDR0vIhKTFSJWgpZ3f43p4OBnv92xVtmSXdOwyz50tII9arxaQaP3sHHyKb59DfZRw91Mf1wIrJ2zhH9a6C2RvOxPmWRf4B3Cm8nkgtRI7YTNxsDhoV+iBOWocti69hsqrkbm3yLFmrBxcPYpWokLEHLcGTLBbd7Vf+fXRQWLmRy/IPbiQF6tiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2P0BfBckPYteBZ4wnxpx8Pb7QdbPpGw8N4C8ZiEuevg=;
 b=ikQ8/ajqLEKjxTQsKynTmWW/uhXOyzt1ghpOb8wnpzXMIzIIaI+eLJEr4ECcysRlUo34Xx+QIUavdPL1x+ehzNwxIhNiljE1+3lx89hUvt15HHRpkBEvTjeq8jVawbqHy5zHXD52o7xrdv5JxnSaiMCs3EAsoBONx9uQFM2/ZGNeZCPO4TWw4HWJJZa20Sh+kYoaUMKInCdbwQku1iC2NGn3hRIExH88ek0uwI+IQXxmpatHM8SNlmm43H7hM6vuaWA/1b4XcSeMifltOHi4wsBlX/Jgelh/7ajX6sT2xCmodPaQd9NigSjkhI/qIDV7S5Q9Y5pfPvvfXZQJAQAYag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2P0BfBckPYteBZ4wnxpx8Pb7QdbPpGw8N4C8ZiEuevg=;
 b=ehuU7VmvZb6bXHa8/vzPoe4ZnyLGMDR2URm+vhS51v/IY2lF/W9DY3ZBcpYlHC7j08zKoYpX7JKaZFIHlbL1Y5+6Lw3UL8m4wsuoveCbTu6aWQZlu3tMBqZhu3u1Nl9EIkgTjohTl00k7+wddZLFFCFyOi/InFA5rwuL8mMif6o=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4882.eurprd04.prod.outlook.com (20.176.215.32) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.12; Wed, 8 Jan 2020 09:24:25 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::c58c:e631:a110:ba58]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::c58c:e631:a110:ba58%6]) with mapi id 15.20.2602.015; Wed, 8 Jan 2020
 09:24:25 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Daniel Baluta
 <daniel.baluta@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>, "S.j.
 Wang" <shengjiu.wang@nxp.com>, Jacky Bai <ping.bai@nxp.com>, Jun Li
 <jun.li@nxp.com>, "aford173@gmail.com" <aford173@gmail.com>, Abel Vesa
 <abel.vesa@nxp.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 1/2] arm64: dts: imx8mm: Memory node should be in board DT
Thread-Topic: [PATCH 1/2] arm64: dts: imx8mm: Memory node should be in board DT
Thread-Index: AQHVxfVdclGKJZdXA0CpCbMA+bQZVKfgcJZA
Date: Wed, 8 Jan 2020 09:24:25 +0000
Message-ID: <AM0PR04MB4481882847C1233593E84DE8883E0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1578468329-9983-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1578468329-9983-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 4454dd86-d085-46cb-28c6-08d7941c8d9a
x-ms-traffictypediagnostic: AM0PR04MB4882:|AM0PR04MB4882:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4882332655AE82F0EB41A824883E0@AM0PR04MB4882.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-forefront-prvs: 02760F0D1C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(396003)(376002)(136003)(346002)(189003)(199004)(33656002)(86362001)(52536014)(6506007)(5660300002)(8936002)(316002)(4326008)(110136005)(7696005)(8676002)(2906002)(66946007)(81156014)(81166006)(66476007)(64756008)(66556008)(55016002)(76116006)(9686003)(66446008)(186003)(71200400001)(26005)(7416002)(478600001)(44832011)(32563001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4882;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 49+Qs5/hWKThs8j4aiIZ5btnVP6etT0SWUNMKN6j9MV0kYP+bZtxJlNtt0psb2e0uXaeD3hp7J8EEdBUKkk07FjJuZwn2QK26SEdrMenoCjQ5rzPagMNr0brVGeTkC5GyFtybE0ZfEU6EAYMhMkOoQmY7Eogd9lq9m3yNSOLw2qFBF/HbGf+36n6WqL6JcmRUK4txmGpaHTLDlT1hyMo78HvCjIrK1Jv3ABQKwIfO6V5r5Cu0aEOMqn0EMFvfddF8peMnRbvb9oM77p3OUDLHuuufmXl2bLdreWDZDoe1kabfcuzdAYdcdxD8gLwzTwMcIgpYSTAmTLFf5f3lDrtWZK+C/73W32z9oJHaDwZc4n/gcA1LRghSsbFKGsXpzFjcs85Qr+Q9AENiUFn3GHDr6Y2CKCQNNHFjS/UipuSFgz/FIP/tLNU/iUOagbvIR5Vg93IVQYcVAi70FAHiXrhxcMrvtxot4Z80RBoSvlAI28yGo2hm+u9AdaAFNIXlfODsFnoTS5HO5YVaBVPWcyB8Q==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4454dd86-d085-46cb-28c6-08d7941c8d9a
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2020 09:24:25.0770 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gwx3Y9vFk9TXlq5q3mtJa0Sl9SLJ4EafPY6K5GdYHeQav4/ekJ04npPtV/B/eIIPtdrYNwXr8owMKPSSX96p/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4882
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_012428_592483_BBF31E5D 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.78 listed in list.dnswl.org]
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Cc: dl-linux-imx <linux-imx@nxp.com>
> Subject: [PATCH 1/2] arm64: dts: imx8mm: Memory node should be in board
> DT
> 
> Memory address/size depends on board design, so memory node should be in
> board DT.

Not sure it really matters, bootloader will update/create memory node of device
tree.

Regards,
Peng.

> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mm-evk.dts | 5 +++++
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi    | 5 -----
>  2 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> index cf044dd..9e54747 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> @@ -16,6 +16,11 @@
>  		stdout-path = &uart2;
>  	};
> 
> +	memory@40000000 {
> +		device_type = "memory";
> +		reg = <0x0 0x40000000 0 0x80000000>;
> +	};
> +
>  	leds {
>  		compatible = "gpio-leds";
>  		pinctrl-names = "default";
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index a3d179b..1e5e115 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -140,11 +140,6 @@
>  		};
>  	};
> 
> -	memory@40000000 {
> -		device_type = "memory";
> -		reg = <0x0 0x40000000 0 0x80000000>;
> -	};
> -
>  	osc_32k: clock-osc-32k {
>  		compatible = "fixed-clock";
>  		#clock-cells = <0>;
> --
> 2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
