Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 494FE87D20
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 16:47:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HH8ZFyn2YKWgyVpO7hBYGkVjADMEcbtuSt50RDApsl8=; b=qF0PosHCtQDF2q
	ZsLrQVxFk0xSLbJw2isuGZBF4tjfjVpPFWirZPPkgpybKyTobolKc+mfpfK9iQYwYpMov9IPTVaHY
	vtas+MS+F437WfHsnnbYaNcFgzFrhaShLkYJClop2APlVBvx/9bORZPhsayBQQNIxLeImL4nNByYe
	8m81U49nT8csenvk4JPKHr7yeQesUPSgmLn5+Zc2yD09BSWe5OSiLxMHgc+/2uoKDOwDLWVrKR8Bt
	6MXJEExvSbzrA7s/J13xgFNp/cgPBUlS4JWyizFflfyTWTwHpTD0Grb/6SOp4hGH3qiKw+io4vj30
	CM6e61XZCSQUap2q7Psg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw6Ad-0000oV-0j; Fri, 09 Aug 2019 14:47:07 +0000
Received: from mail-eopbgr80133.outbound.protection.outlook.com
 ([40.107.8.133] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw6AP-0000mP-5U
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 14:46:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AASEWaM7ddPi8/vQyPzmsXYzbjgRI+jCovtcCJbT/K890fCzH3pvxFe3R2Vc7Fad+HiZuvEBO9BM/i85587nKj4u3MnS10tEgf3ZpS08eJ8z2dTkVpV+L2aMuNFqYRiNQzj405NItssnWNJ22Lr2cZZi4OBNsYZWrbsQFfnht70siVn/+uq19dnXvItIeOFq3w95alclI2/GXZ5LRsN2YEjK+ddzQKJnUrc4TFZE1DIlgkjAclKh6t4ruji9FlQIBrb0DbdpDD14EOeq7WoXOMC0rx+L1yjTZeVygdynNG0v8K3qX8HKTfVB+ZE0O1PvenW7wHxOHdp34RvWJkxBmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t8FGAAqSOIVt6+GeFtwH5HAoWHQ2RZx2+2GiCrZ6l+o=;
 b=IiwZA0k+Z7vCH2hlcm5c+h0pEn42wPdLjUgjsE44zJGtkqH7C6Pe1pswC5KnFxUsu1USqwX5eFmAv99nuPDsQdhX11UuKX7NGc1yVYy+D2iyQ2iTxbm3p9sRFlqTVLQSkX8lDw1wqEXsB1ArtXX983ToPmfz0zsisQSobR5XsLPj8wpqgqpQDCcL0Im4Pn9Iaz5clwa94KVRQFr+yeHT0UssrG+qQomtK0jZBNJBocScVezCa595KkYqpkxN/xd0ljq8ymcLgg7yqWlZ8SWelvFNQW3cTWmTwhNyVAYauIVXnikanQhmpHFJ73lT/qZ5LTKERXE4iVs1hGGPAz8wsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t8FGAAqSOIVt6+GeFtwH5HAoWHQ2RZx2+2GiCrZ6l+o=;
 b=cX0VkzKbpXQIN376ilJq8ULarp6bkl7/CqzCHv/Au5mOxkuNR7o3Bu+18jE2hOGxv0LSW9cbR9U1tqkLOh/miFfqrXrKtD5PPLw6GaAQfaycYB4bMOIHxysoN2QRLFAWS+ICU1M+LRj4m17qm7wKN5JO4WX+Z2LROqMYCQYZits=
Received: from VI1PR05MB6415.eurprd05.prod.outlook.com (20.179.27.139) by
 VI1PR05MB5440.eurprd05.prod.outlook.com (20.177.200.82) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.18; Fri, 9 Aug 2019 14:46:49 +0000
Received: from VI1PR05MB6415.eurprd05.prod.outlook.com
 ([fe80::f1b2:353a:da9b:c19a]) by VI1PR05MB6415.eurprd05.prod.outlook.com
 ([fe80::f1b2:353a:da9b:c19a%4]) with mapi id 15.20.2157.020; Fri, 9 Aug 2019
 14:46:49 +0000
From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
To: Max Krummenacher <max.krummenacher@toradex.com>, "stefan@agner.ch"
 <stefan@agner.ch>, Philippe Schenker <philippe.schenker@toradex.com>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "michal.vokac@ysoft.com"
 <michal.vokac@ysoft.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>
Subject: Re: [PATCH v3 06/21] ARM: dts: imx7-colibri: add GPIO wakeup key
Thread-Topic: [PATCH v3 06/21] ARM: dts: imx7-colibri: add GPIO wakeup key
Thread-Index: AQHVTPnJ+SDlOD7jtU+c0RxdN58MfKby6JcA
Date: Fri, 9 Aug 2019 14:46:48 +0000
Message-ID: <8088ec7589bea82c185253466dee2276e763d2ce.camel@toradex.com>
References: <20190807082556.5013-1-philippe.schenker@toradex.com>
 <20190807082556.5013-7-philippe.schenker@toradex.com>
In-Reply-To: <20190807082556.5013-7-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=marcel.ziswiler@toradex.com; 
x-originating-ip: [2a01:2a8:8501:4d00:ca5b:76ff:fedf:3c49]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a0518f0f-46da-4fd3-d173-08d71cd868a9
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR05MB5440; 
x-ms-traffictypediagnostic: VI1PR05MB5440:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR05MB5440E20445A4D11BE1D5731CFBD60@VI1PR05MB5440.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 01244308DF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(366004)(39850400004)(136003)(376002)(346002)(199004)(189003)(99286004)(6486002)(2906002)(6116002)(5660300002)(229853002)(44832011)(486006)(14444005)(256004)(46003)(86362001)(6436002)(478600001)(476003)(2616005)(71190400001)(71200400001)(11346002)(446003)(14454004)(2201001)(6506007)(186003)(102836004)(76176011)(2501003)(7416002)(64756008)(4326008)(6246003)(66946007)(53936002)(316002)(25786009)(305945005)(91956017)(76116006)(66446008)(7736002)(6512007)(81166006)(36756003)(8676002)(81156014)(54906003)(110136005)(66556008)(66476007)(118296001)(8936002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB5440;
 H:VI1PR05MB6415.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ZP1MyXzz8WVwvROCp/CFmSPfN30ZJiFrOK7Gxa2DaK0f50jzT4sX+r8T3gwr7IEyI406luzASq39/XbPL3vkKbsx4n6l9x2r0WsSeW7nTXg+k+U1B0f+EYjtG4uOHWVRbJAJ5dhAo4xki4ac+3nyOgeJ8eP9pYffk2as02NtJhlkndoHML2VFRZmVSKSspm6lg90WrKAT/B+rJYtoSVsJmZ2BjYL7HBlUHW5no7hdv1/FyRlaniDfq+8YiULRF5TiqctimFAk7kTMOxx9gA19hL4+hb5ASrFDuKg8Z2KXWkwfU3M/xN+OXLSMQnceUXwxAQUJM1B8gS3c6U+b8P658A+Csprl9b2W5uzoni2w790SSPK54yswODrN8Vy20KyqOGDiETCN/hAX0UV2CFtrEfEVpLRDdc553Bbl8zbYjg=
Content-ID: <D4D46136C27E614B8CD7EB6377F8E038@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a0518f0f-46da-4fd3-d173-08d71cd868a9
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2019 14:46:48.9058 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: d82dEVO4my3EKtk6+WPzFvU6YBGiZSTkP5bSmgtsuntd3r9FbyVrbZKTjbn92DkYRQnp3tNcFDr/eS9ivhvCNGof7IFdhBkclbdl0xU0N0U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB5440
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_074653_214127_D3185D19 
X-CRM114-Status: GOOD (  15.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.133 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Stefan Agner <stefan.agner@toradex.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-08-07 at 08:26 +0000, Philippe Schenker wrote:
> From: Stefan Agner <stefan.agner@toradex.com>
> 
> Add wakeup GPIO key which is able to wake the system from sleep
> modes (e.g. Suspend-to-Memory).
> 
> Signed-off-by: Stefan Agner <stefan.agner@toradex.com>
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>

Acked-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>

> ---
> 
> Changes in v3: None
> Changes in v2: None
> 
>  arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi | 14 ++++++++++++++
>  arch/arm/boot/dts/imx7-colibri.dtsi         |  7 ++++++-
>  2 files changed, 20 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
> b/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
> index 3f2746169181..d4dbc4fc1adf 100644
> --- a/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
> +++ b/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
> @@ -52,6 +52,20 @@
>  		clock-frequency = <16000000>;
>  	};
>  
> +	gpio-keys {
> +		compatible = "gpio-keys";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_gpiokeys>;
> +
> +		power {
> +			label = "Wake-Up";
> +			gpios = <&gpio1 1 GPIO_ACTIVE_HIGH>;
> +			linux,code = <KEY_WAKEUP>;
> +			debounce-interval = <10>;
> +			gpio-key,wakeup;
> +		};
> +	};
> +
>  	panel: panel {
>  		compatible = "edt,et057090dhu";
>  		backlight = <&bl>;
> diff --git a/arch/arm/boot/dts/imx7-colibri.dtsi
> b/arch/arm/boot/dts/imx7-colibri.dtsi
> index 2480623c92ff..16d1a1ed1aff 100644
> --- a/arch/arm/boot/dts/imx7-colibri.dtsi
> +++ b/arch/arm/boot/dts/imx7-colibri.dtsi
> @@ -741,12 +741,17 @@
>  
>  	pinctrl_gpio_lpsr: gpio1-grp {
>  		fsl,pins = <
> -			MX7D_PAD_LPSR_GPIO1_IO01__GPIO1_IO1	0x59
>  			MX7D_PAD_LPSR_GPIO1_IO02__GPIO1_IO2	0x59
>  			MX7D_PAD_LPSR_GPIO1_IO03__GPIO1_IO3	0x59
>  		>;
>  	};
>  
> +	pinctrl_gpiokeys: gpiokeysgrp {
> +		fsl,pins = <
> +			MX7D_PAD_LPSR_GPIO1_IO01__GPIO1_IO1	0x19
> +		>;
> +	};
> +
>  	pinctrl_i2c1: i2c1-grp {
>  		fsl,pins = <
>  			MX7D_PAD_LPSR_GPIO1_IO05__I2C1_SDA	0x400
> 0007f
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
