Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C17ED87D13
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 16:45:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iSQGQN5rMiG7b0ttXaAiZK64HgaB120d5mYb5PnpWwc=; b=sn5VkceuwlD/0x
	XldJ7RURkTtswpEZOoM6F2GqbN+nrHa7uSM1h6EGeFcO/MQuvHBRv2t1fb2ipj9b58sE3rUQELI93
	h6pGedYbCOMI8FjrqDpvvcmto5kCBF1SyCqPejbpdTjBX1qISB9bEGHi05isPj3/AXhmdVDH6Z1Bm
	89ylmMlwohAzHxyOfG+RmAGfx/Qy/6ugStpePMRNlUa7RXp9F7Fvr7Hj922HdYdGisasBpIYBH/eO
	Q43LvHwocbagnnTv96aZOgZWNO5zvQ1QT0lC+5Lh4M3dm7801uvU49XLmhdAfQgXfgb6I6/4JZ4EP
	zk9AXe0NewWJaCZPP4ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw69S-0008Fo-AA; Fri, 09 Aug 2019 14:45:54 +0000
Received: from mail-eopbgr50112.outbound.protection.outlook.com
 ([40.107.5.112] helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw69H-0008FC-4z
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 14:45:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AxUmkMwHKHFTPMxHbLlABvbBrKpzL+DIf39rFLZ/o/J53nk6wyk0ElKJgUTwikXSed/kVdYICb2vp0yF2cBDSdbSmmBrKG1rMOpZ4H/b+wmo2ONaQVOxsCdBuBa/q7WBVF+ZFg9TZ2NSIKe+ViOIu2gM3kLsdSxiGY/k2eaXHQJtxBocYsRkpZUDdsbbMCkgOJ25n4zpJqRsd99+HLBZNcrmPJ/BtSmonLcU2F79bEOcYSfknvUwtSMrIgKuZDXLWH10DcxnNysrg1AA8bAAKwgEx2AN6riK/0U/aoiRPjVKJOSIERipOMS/Ym4zB1ByeA9bw/LUDWWWmINWr5fO2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U09dKJtLV2tXZCPVFvJ287v1muxVBul/GnN5ZT1n8X4=;
 b=Hkk37SV/DO38AMObM2UGwkd3ZSVqksCdcRrt58ytJMUG0Cd8MFEJ6jTOhs8nlTAAKcxZ+qNOoHKGyIuoT+9cDsal9fNzVRNjoylBxuT9cEYYhXPSmYV06LEQNTyDj+u9zVoRbCsFUjhFEiETsWVno7XBFZyzbLFpKl0CdlbFsTTLva6uUgZSEie4E/lAVonBA9RK7qmCAKdMK7xRTjJDtSKjY4t1SBA/NsqqOoGAXnv3U+CBvK5MyVMazzcCEtPdnz7sZdwdQNkqtf3yw768GtoOFyhlKaDfN7zw4dznCCKZQckApmJyt53YRzJqidJ+DEpSFoKhuiS0/uJwh3VNIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U09dKJtLV2tXZCPVFvJ287v1muxVBul/GnN5ZT1n8X4=;
 b=HG4Sr55lfeGHnqhYMVi8IzdUseNUUR7mhF9lPJEWCPgtjYMGP2ldgLKG15kfQvRabZelzCbpgn0ctRzoClJ1SyJyWsvC+Bfr3N1/As3bgU+RiHfoOWSLysaXIHu81Sx/rqPJeT6KwwvhPW6g3R2N6AssTJTL0qhg8XNeH4/TFLs=
Received: from VI1PR05MB6415.eurprd05.prod.outlook.com (20.179.27.139) by
 VI1PR05MB4399.eurprd05.prod.outlook.com (52.133.13.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.16; Fri, 9 Aug 2019 14:45:39 +0000
Received: from VI1PR05MB6415.eurprd05.prod.outlook.com
 ([fe80::f1b2:353a:da9b:c19a]) by VI1PR05MB6415.eurprd05.prod.outlook.com
 ([fe80::f1b2:353a:da9b:c19a%4]) with mapi id 15.20.2157.020; Fri, 9 Aug 2019
 14:45:39 +0000
From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
To: Max Krummenacher <max.krummenacher@toradex.com>, "stefan@agner.ch"
 <stefan@agner.ch>, Philippe Schenker <philippe.schenker@toradex.com>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "michal.vokac@ysoft.com"
 <michal.vokac@ysoft.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>
Subject: Re: [PATCH v3 05/21] ARM: dts: add recovery for I2C for iMX7
Thread-Topic: [PATCH v3 05/21] ARM: dts: add recovery for I2C for iMX7
Thread-Index: AQHVTPnI7F5mVF7STU6mUzhQ+mPLGqby6EQA
Date: Fri, 9 Aug 2019 14:45:38 +0000
Message-ID: <139d316e0dd0e6a3f95e94aade8df825c5a2486b.camel@toradex.com>
References: <20190807082556.5013-1-philippe.schenker@toradex.com>
 <20190807082556.5013-6-philippe.schenker@toradex.com>
In-Reply-To: <20190807082556.5013-6-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=marcel.ziswiler@toradex.com; 
x-originating-ip: [2a01:2a8:8501:4d00:ca5b:76ff:fedf:3c49]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a050ed55-8249-437c-fb50-08d71cd83efe
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR05MB4399; 
x-ms-traffictypediagnostic: VI1PR05MB4399:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR05MB43992751B6CB476400EF3121FBD60@VI1PR05MB4399.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2449;
x-forefront-prvs: 01244308DF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39850400004)(396003)(376002)(136003)(366004)(346002)(199004)(189003)(66946007)(66446008)(91956017)(8676002)(53936002)(4326008)(6436002)(7736002)(76116006)(110136005)(66476007)(81156014)(54906003)(64756008)(81166006)(2906002)(6246003)(66556008)(478600001)(229853002)(6116002)(6506007)(14454004)(6512007)(305945005)(7416002)(36756003)(118296001)(25786009)(476003)(8936002)(6486002)(486006)(71190400001)(316002)(86362001)(2616005)(11346002)(71200400001)(99286004)(102836004)(2201001)(2501003)(46003)(446003)(256004)(5660300002)(186003)(76176011)(44832011);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB4399;
 H:VI1PR05MB6415.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: tq2q9GiXP4g/Gsn7aU1uZm9JjClZpOWJUK5UMz0AgREQUiU42k16ULyuQK0wpZSxnpf2Cc1Ahy1vSGyn2WlDrYa6twaRER2yRiDPq5qKu9gmlWTAKiXNFUViWEgvXUK48cX7o1gJzKjj1lZhQiGF8IAcDacVKs9uMCoo3kZv9WJQUGLoQYn4X1iJJRYVMwJjp7SYW+Yf98jSqOmO0LM4QIkA7mDWK5iaV4s7eaa5xTIYlw/7tSoEAhqeoshiRMVHkPV8uiVMn4RrJ737kYfB2xD4t2E6gLMzaW7T7IKb/p2habe6tz5D01vc97tTRTalQc2A7Pm3MEWvtc9bvon5d0uYN8TZVoKSLz62eRnhIlARColteOphCzLhEMfQMhCS3YR9N0rtzaPiYUM+7gulmI26asgUKFohLT723yXOYP8=
Content-ID: <898E8C007F07464AB0BA1BA7D1CAD1D4@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a050ed55-8249-437c-fb50-08d71cd83efe
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2019 14:45:38.9857 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Soncw+fakUVBA8RX8Oxx1A+Bx55k92FMIkzOMpUTCzA9KYHe2AC/xg/KLz5eY9jmTcU7ZT6TSN1yIYqooRoJKVsIGb3TjytqvlX8dXSQQzA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB4399
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_074543_193162_51927354 
X-CRM114-Status: GOOD (  15.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.112 listed in list.dnswl.org]
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
Cc: "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-08-07 at 08:26 +0000, Philippe Schenker wrote:
> From: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
> 
> - add recovery mode for applicable i2c buses for
>   Colibri iMX7 module.
> 
> Signed-off-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>

Acked-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>

> ---
> 
> Changes in v3: None
> Changes in v2: None
> 
>  arch/arm/boot/dts/imx7-colibri.dtsi | 25 +++++++++++++++++++++++--
>  1 file changed, 23 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx7-colibri.dtsi
> b/arch/arm/boot/dts/imx7-colibri.dtsi
> index a8d992f3e897..2480623c92ff 100644
> --- a/arch/arm/boot/dts/imx7-colibri.dtsi
> +++ b/arch/arm/boot/dts/imx7-colibri.dtsi
> @@ -140,8 +140,12 @@
>  
>  &i2c1 {
>  	clock-frequency = <100000>;
> -	pinctrl-names = "default";
> +	pinctrl-names = "default", "gpio";
>  	pinctrl-0 = <&pinctrl_i2c1 &pinctrl_i2c1_int>;
> +	pinctrl-1 = <&pinctrl_i2c1_recovery &pinctrl_i2c1_int>;
> +	scl-gpios = <&gpio1 4 GPIO_ACTIVE_HIGH>;
> +	sda-gpios = <&gpio1 5 GPIO_ACTIVE_HIGH>;
> +
>  	status = "okay";
>  
>  	codec: sgtl5000@a {
> @@ -242,8 +246,11 @@
>  
>  &i2c4 {
>  	clock-frequency = <100000>;
> -	pinctrl-names = "default";
> +	pinctrl-names = "default", "gpio";
>  	pinctrl-0 = <&pinctrl_i2c4>;
> +	pinctrl-1 = <&pinctrl_i2c4_recovery>;
> +	scl-gpios = <&gpio7 8 GPIO_ACTIVE_HIGH>;
> +	sda-gpios = <&gpio7 9 GPIO_ACTIVE_HIGH>;
>  };
>  
>  &lcdif {
> @@ -540,6 +547,13 @@
>  		>;
>  	};
>  
> +	pinctrl_i2c4_recovery: i2c4-recoverygrp {
> +		fsl,pins = <
> +			MX7D_PAD_ENET1_RGMII_TD2__GPIO7_IO8	0x400
> 0007f
> +			MX7D_PAD_ENET1_RGMII_TD3__GPIO7_IO9	0x400
> 0007f
> +		>;
> +	};
> +
>  	pinctrl_lcdif_dat: lcdif-dat-grp {
>  		fsl,pins = <
>  			MX7D_PAD_LCD_DATA00__LCD_DATA0		0x79
> @@ -740,6 +754,13 @@
>  		>;
>  	};
>  
> +	pinctrl_i2c1_recovery: i2c1-recoverygrp {
> +		fsl,pins = <
> +			MX7D_PAD_LPSR_GPIO1_IO04__GPIO1_IO4	0x400
> 0007f
> +			MX7D_PAD_LPSR_GPIO1_IO05__GPIO1_IO5	0x400
> 0007f
> +		>;
> +	};
> +
>  	pinctrl_cd_usdhc1: usdhc1-cd-grp {
>  		fsl,pins = <
>  			MX7D_PAD_LPSR_GPIO1_IO00__GPIO1_IO0	0x59
> /* CD */
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
