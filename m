Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4748A87EAD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 17:55:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZX7UmnuA1/LcmwjQ097rn3m0dAT9V+59iSpJgDixSxM=; b=A9shIa0Mu6eRBz
	eU+BIn+eHirb6nBeYpLY2shSYBjuYSsMnuv/MXbNXQNsw/gQV9viR/jCo2cMmrFRo4SmY9qZChERc
	ptSlcpkYimGZg9LlDk+rFX4/LV2nDj/vsBHrX0jWDBPIIIHx/GgCldL1fTx+kTsak4g9re8A+eqrz
	7+8PvJ+o+jveht2dHpUUjJlE9szVPzEoY2kZlsncy+s1kH5J2PEUL43zMFdHtbx86andoXJsCtLsQ
	CCCyuO0bjZW6EhH7C85U3aNrG7rJzXKM3e3Gqe8qPSNFCs8s2fjNvujlSP6kr+gS9+cnXx5Uq0a1Q
	I6YdNJ4gYVM7peYY9KYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw7ET-0001OS-Sx; Fri, 09 Aug 2019 15:55:09 +0000
Received: from mail-eopbgr130134.outbound.protection.outlook.com
 ([40.107.13.134] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw7EG-0001NJ-M2
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 15:54:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UtVSQqBPoO+G+YYTCRMX1tkQeZZ9Ack+zvrpIh+Eob5eWHgkIwqv4YaJyIAV/zdPUUVBHhyXTsxnUFSs8CNZh/WBAbV6r4MER957mKjoXVB6Uy2pPrJxRHVtX+5VXr43dU9RQ2XfliB4imnJy0HujXr6sOXvxfdomsoFQ4/AyIvZYZ48dvUP7vCfsdahaszU7x9aZK/Sht+ExIEG8GPYdxBl27vK9HzWjE5N+eZkprvoOiIwaZIDGn5jBNRxhuYSt5T0IWFwawjtA9z4XJHISitkAuIVokzl7H22sMZnWO1QC9AVl8YZn4WZ6tx1KpUnBiQAN97qgDA1pQEJyvcFbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wMIQ3LKlVpwZwW25lvNlrrC/nb/SfcrvPV/wOxbiCVk=;
 b=TcpA+B5uqamYdkoIvfdVUeImFcQJhyi1QMLrsLyr0MaWBBFEXMNJnC26cYbucy0akmrGGc6aU/x1flISh7Orj7nkwBF4kipNQtqNW+xW4LZJavq9OPb9C8AVlW/jKUP+qCs1FxnzS65DRg7+cpuCQDHGChmGmvvSbYfPMJs3NzKExhYOSathqcDsJqJ7mKcnabdHjdYiowS8K/GCXf1RF7S4MFfl04Lbm3uPhX8HPVgkCdc2jMTCkdlk7Kd0rU6IiDJzosHlh213ew0ruJu6Ytz103Vn/IZ4G5At15dXcKX5vrCOkxINe4x19o92gFjuBCW10no4cKFTkqyKUHMTxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=toradex.com;dmarc=pass action=none
 header.from=toradex.com;dkim=pass header.d=toradex.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wMIQ3LKlVpwZwW25lvNlrrC/nb/SfcrvPV/wOxbiCVk=;
 b=Lo4YPI+err8OSPVXrccUjrvEoz+0WVOkW1+uct0eA2k9aesDTkiqqclumWtPk8hsZTL3LUsXHKkewm618bIEMmlLDhF1UFtdpkwUHrthiy0KPNmRd7qujJ4Us98FIGdeL8oP9n14OGNGhaAqNKTh0TuPv1KK4AFRCDxRaBauI1M=
Received: from VI1PR05MB6415.eurprd05.prod.outlook.com (20.179.27.139) by
 VI1PR05MB6752.eurprd05.prod.outlook.com (10.186.160.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.16; Fri, 9 Aug 2019 15:54:53 +0000
Received: from VI1PR05MB6415.eurprd05.prod.outlook.com
 ([fe80::f1b2:353a:da9b:c19a]) by VI1PR05MB6415.eurprd05.prod.outlook.com
 ([fe80::f1b2:353a:da9b:c19a%4]) with mapi id 15.20.2157.020; Fri, 9 Aug 2019
 15:54:53 +0000
From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
To: Max Krummenacher <max.krummenacher@toradex.com>, "stefan@agner.ch"
 <stefan@agner.ch>, Philippe Schenker <philippe.schenker@toradex.com>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "michal.vokac@ysoft.com"
 <michal.vokac@ysoft.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>
Subject: Re: [PATCH v3 20/21] ARM: dts: imx6ull-colibri: Add touchscreen used
 with Eval Board
Thread-Topic: [PATCH v3 20/21] ARM: dts: imx6ull-colibri: Add touchscreen used
 with Eval Board
Thread-Index: AQHVTPnbX5TuINx5REGgBdWJDofJzaby+52A
Date: Fri, 9 Aug 2019 15:54:53 +0000
Message-ID: <c3eb930aa727067e3d5bbc62523feb6b032244c0.camel@toradex.com>
References: <20190807082556.5013-1-philippe.schenker@toradex.com>
 <20190807082556.5013-21-philippe.schenker@toradex.com>
In-Reply-To: <20190807082556.5013-21-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=marcel.ziswiler@toradex.com; 
x-originating-ip: [2a01:2a8:8501:4d00:ca5b:76ff:fedf:3c49]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f71fcf0b-d995-471d-8722-08d71ce1eb50
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR05MB6752; 
x-ms-traffictypediagnostic: VI1PR05MB6752:
x-microsoft-antispam-prvs: <VI1PR05MB67520FB7EBCC510EEB243D48FBD60@VI1PR05MB6752.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 01244308DF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(39850400004)(366004)(346002)(136003)(396003)(189003)(199004)(99286004)(2906002)(478600001)(316002)(71190400001)(305945005)(2201001)(5660300002)(110136005)(118296001)(54906003)(7736002)(64756008)(66946007)(66556008)(66446008)(229853002)(6512007)(66476007)(6486002)(53936002)(6436002)(36756003)(256004)(14444005)(71200400001)(91956017)(76116006)(6506007)(186003)(86362001)(102836004)(4326008)(76176011)(2501003)(446003)(25786009)(6116002)(14454004)(6246003)(46003)(44832011)(11346002)(2616005)(476003)(486006)(7416002)(8936002)(81166006)(8676002)(81156014)(32563001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB6752;
 H:VI1PR05MB6415.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: duNSDpQAtODwuiaaEMNZ8FyyC80rfG82hbmJkiMeWhA6VIMYy3UR1ucFlx7H1LYSCw+n/5BHmCzl/vHEgNCEjftCIgSKiPOWb6nCq7Vsj5wa+77stb3sGq/AkYxd93S2UHt7u24mF0tk4O9yHl6EN/6oZNsi+9Bz7NwtvmTGT3bpzV2S05FN8icysCp+DX8avQ++uTkzmO2ZrJRObn2e401NfOcM6w+uFjOiAq3Rsy+bGnHFWJNUC9T10DNkD1GD3PA+8BQIa63IKP/NOAXVrY98XsdGtUpm2UwkInbXliBabf3m1jl3HVnQXpgPxlVF4exfx5vivbj9xbsZz1H4UlrDvXWV/pA+qyT3awjO7dpW9nychVWNDF1iB5y9Pun9My0D+7GN8w9+6OAFkIF1bwhshPZOLHN2FTWbhPmWc1k=
Content-ID: <5F14F17A2735E34D8E74A7B44EB49797@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f71fcf0b-d995-471d-8722-08d71ce1eb50
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2019 15:54:53.6167 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OhREyP9VWeDGaom3WXq9DanPvF2hpl1JtlUtrsWy8gnAbeQOonoHQzrZ1YSp3iSRlxNbbmOaXrb3kbSwduKHVnZmRRlK9UzZB4W2/HYbnz0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB6752
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_085456_729012_30236B85 
X-CRM114-Status: GOOD (  18.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.134 listed in list.dnswl.org]
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
Cc: "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Philippe

On Wed, 2019-08-07 at 08:26 +0000, Philippe Schenker wrote:
> This adds the common touchscreen that is used with Toradex's
> Eval Boards.

Is that really Eval Board specific?

> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
> 
> ---
> 
> Changes in v3: None
> Changes in v2:
> - Removed f0710a, that is downstream only
> - Changed to generic node name
> - Better comment
> 
>  .../arm/boot/dts/imx6ull-colibri-eval-v3.dtsi | 24
> +++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
> b/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
> index d3c4809f140e..78e74bfeca1b 100644
> --- a/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
> +++ b/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
> @@ -112,6 +112,21 @@
>  &i2c1 {
>  	status = "okay";
>  
> +	/*
> +	 * Touchscreen is using SODIMM 28/30, also used for PWM<B>,
> PWM<C>,
> +	 * aka pwm2, pwm3. so if you enable touchscreen, disable the
> pwms
> +	 */
> +	touchscreen@4a {
> +		compatible = "atmel,maxtouch";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_gpiotouch>;
> +		reg = <0x4a>;
> +		interrupt-parent = <&gpio4>;
> +		interrupts = <16 IRQ_TYPE_EDGE_FALLING>;	/* SODIMM 28
> */
> +		reset-gpios = <&gpio2 5 GPIO_ACTIVE_HIGH>;	/*
> SODIMM 30 */
> +		status = "disabled";
> +	};
> +
>  	/* M41T0M6 real time clock on carrier board */
>  	m41t0m6: rtc@68 {
>  		compatible = "st,m41t0";
> @@ -188,3 +203,12 @@
>  	sd-uhs-sdr104;
>  	status = "okay";
>  };
> +
> +&iomuxc {
> +	pinctrl_gpiotouch: touchgpios {
> +		fsl,pins = <
> +			MX6UL_PAD_NAND_DQS__GPIO4_IO16		0x74
> +			MX6UL_PAD_ENET1_TX_EN__GPIO2_IO05	0x14
> +		>;
> +	};
> +};

I guess that could also be moved to the module's dtsi for any carrier board to potentially profit from.

Cheers

Marcel
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
