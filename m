Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D0114D9E6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 12:35:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6/7IzMXXNWfoVxKm3DozEzuu/0dk8aQjWgw7xLz7Vn4=; b=gJUAH8XgUTfhpw
	4j5rTs2KKHHpmOagUHCC8s0uU05UKjgRIfxT86vaRV/fQ1scEdvOJcyleS4wT++5r8Ac0QeEqOvp5
	md3g+f5ZS20T7vhVM9jqKryBi/30ayy4zLx2gw8D68WLlsXaIrduB/j3OREFwYYcu0H4Jn+qen4M0
	BasTBwXW+gXIb6HUzxMSgqIyJd9eVS4ZQVH1r29Ur7k6eQZ6XQpPy9yxtlIowEzR7s4sPc/50ybFL
	QXv3mgsLwR9y84mq/TE36dhpahp/3jKtvsbvYNTfR8W7tt3f8jkyRqEjpNPLDT6pHdo8nH2avWtZh
	aFzsFmmk+s6p7h3MJtfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix86h-0007vY-Jd; Thu, 30 Jan 2020 11:35:35 +0000
Received: from mail-eopbgr140098.outbound.protection.outlook.com
 ([40.107.14.98] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix86Z-0007v5-6V
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 11:35:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DcF6Ut6rZgQ+lz9J4Fw1mrL/F6WVaIoq2moj9QdSa/3tQv6F1xjYUNxyNqPfcZulEjB5GVBevFAnFTu8gKxq1FSTkN74bSfjbfstMvH8EZbZYbeIFiCPyzp3B/o4AvkpUTOk7XdhsoWsNyS3zfzamp5j7xib65rPiO9CNFds4kXgIDgUeA6LYm5mMkOQH97FS0UgnfGDovE2hYfn+j7ifAgborcouyw7fsWWd0s2PIq0aYRsDh6Ou/nJqDsQzVGjUcuKYU9qorTbvmmtNzMf9PIQwu8UWk4AcNPekG0w2f7BweNV6kcRFwiFE38HKGGQJjGnN9cBYnooRdo3BpiTkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fVZ238uqztJzFIIjeMmknp4LvunONIXBq+2sDryVdgA=;
 b=a+O/o6ji3FsRZ7chnAdNXQkx+mHyptghD2Jk1xxzXMby8jxBWJQL37ToPilHcT074vLwQIjNz9VJtxM2jj3g5xWigau8A5UgOYMaU0DXr/ibJl4cj4Nqlz0H5Prgz5t0qzc9j/7T2v3+ip2cwCmgH4bPAaymnTxT5lTkpLj4BaMLLoat9absRp6glvZyB5JwXGXNgGk4CWUoyALv5Hw3buphhC9UwK6hI+4qTVanS/nVclKLRwtgsJMdWnT7LU7nUggtsVW+22V4syb7f7xlmegSOuAFNfODzOZOzojNIAbc6+lzx21sXloEKmFqWM2+nWhoV880hplfmRX25xQuQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fVZ238uqztJzFIIjeMmknp4LvunONIXBq+2sDryVdgA=;
 b=iKfMYj8xa4up2g1S/3G3TsSlACDKACfQuNXXgKewgZLtLI15OnWjNGKovsGXGESoipUP6UO09hUtSWb4FnlfWG4k5ows9MZi9SLT5LM7gSFJKmNXrFD/thm6aXbaI53LeLlfX8Lo36nNuO70SL78QvtMZD35dIwpU0w6YRorrHw=
Received: from AM6PR05MB6120.eurprd05.prod.outlook.com (20.179.1.217) by
 AM6PR05MB4117.eurprd05.prod.outlook.com (52.135.160.152) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.27; Thu, 30 Jan 2020 11:35:21 +0000
Received: from AM6PR05MB6120.eurprd05.prod.outlook.com
 ([fe80::dee:ffa2:1d09:30e]) by AM6PR05MB6120.eurprd05.prod.outlook.com
 ([fe80::dee:ffa2:1d09:30e%4]) with mapi id 15.20.2665.027; Thu, 30 Jan 2020
 11:35:20 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: "stefan@agner.ch" <stefan@agner.ch>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "shawnguo@kernel.org" <shawnguo@kernel.org>
Subject: Re: [PATCH] ARM: dts: imx7-colibri: add gpio-line-names
Thread-Topic: [PATCH] ARM: dts: imx7-colibri: add gpio-line-names
Thread-Index: AQHV1u6T6Au7sACMnESk84HTgdWk3KgDFNYA
Date: Thu, 30 Jan 2020 11:35:20 +0000
Message-ID: <44749d26e921bee56d23eba10158160841e741da.camel@toradex.com>
References: <20200129215336.417431-1-stefan@agner.ch>
In-Reply-To: <20200129215336.417431-1-stefan@agner.ch>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-originating-ip: [31.10.206.124]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3a13122f-b977-4d95-d0a3-08d7a5787d18
x-ms-traffictypediagnostic: AM6PR05MB4117:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR05MB411741D8E1166DD6EF46877DF4040@AM6PR05MB4117.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 02981BE340
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39850400004)(396003)(136003)(346002)(376002)(366004)(199004)(189003)(54906003)(36756003)(478600001)(6506007)(6512007)(110136005)(5660300002)(8936002)(86362001)(6486002)(26005)(186003)(7416002)(44832011)(76116006)(91956017)(4326008)(66446008)(66946007)(66476007)(2616005)(316002)(66556008)(64756008)(71200400001)(81166006)(81156014)(2906002)(8676002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:AM6PR05MB4117;
 H:AM6PR05MB6120.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jJWUFq82Vrx1hlgRikqK8I2vW8BgN3kjyjoJZVD4EDqqHAyqQnjFJXDI8Jje8VTZU6pY5jB1NgzqFDOnvwEXjosUKVTNqlLCe8dnuQvfN8StWcC2cI5STz3p7YHLBHE+FY5tntA+ZNWl5vyyF6Wj4eWpqVhCaJsbJFnIu3KZ1fUFU5r9P58m/oKllz+GNKZ5bvYEXUiAwfADCUWYCTkdAPpCWfXWmddhb5bPcRp1RwRHnTXU3yi3beOi/RP2zr+e/wkZRubgYGpwd0w7jPA4gNbzTQdxovex/csFvyv//KuBVqH2YNiAOyVa+8uTZTZm/EOU9uKhe8uFuyC5qBAstloUJY4/2TqHUQcou6Y1b1mDZM0vvhZiKqeOslVLwHfWjkZ+2MyYiqxyWivGBc7QgBGmU/8xju5s9uf/BunI60CefirzbPcQhsnrHBH1oD+Z
x-ms-exchange-antispam-messagedata: V1iRwMeeZgB6x5yeidyAVhViZJUt2h1PURDRhNFQaWt93t0L7pQmyvSYygixCF5x9205CHK0wLyL8Xi5WjLI2YzMotzX8cq3hhOzNKoKsSkzVaZg2NYtwhL9l9Bx5L4nljk/OsPKgNh3L53KFgbn/w==
Content-ID: <03481DAB07273745B91714928981943B@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a13122f-b977-4d95-d0a3-08d7a5787d18
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jan 2020 11:35:20.8352 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hUmvhweFM6HMiF4E3MMD0+w0mWkZ3EIvZ1+BV/dYajRoeP518thm94Xnlqx3xUJtWRm9B9OD39Pv6+cXBuwOTcEs/oBrN+e5mKvNluJzxm8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR05MB4117
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_033527_304922_49A49288 
X-CRM114-Status: GOOD (  19.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.98 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Stefan Agner <stefan.agner@toradex.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2020-01-29 at 22:53 +0100, Stefan Agner wrote:
> From: Stefan Agner <stefan.agner@toradex.com>
> 
> Add Colibri SODIMM numbers as GPIO line names on module level. The
> GPIO
> lines with a name are all available on the SODIMM edge connector of
> the
> Colibri iMX7 module and therefore a customer might use it as a GPIO.
> The
> Toradex Evaluation Board has the SODIMM numbers printed on the silk-
> screen. This allows a customer to quickly control a GPIO on a pin-
> header
> by using the name printed next to it.
> 
> Putting the GPIO line name on module level makes sure that a customer
> gets a reasonable default. If more meaningful names are available on a
> custom carrier board, the user can overwrite the line names in a
> carrier
> board level device tree.
> 
> The eMMC based modules share all GPIO names except two GPIOs on bank 6
> which are not available on the raw NAND devices. Hence overwrite GPIO
> line names of bank 6 in the eMMC specific device tree file.
> 
> Signed-off-by: Stefan Agner <stefan.agner@toradex.com>

Reviewed-by: Philippe Schenker <philippe.schenker@toradex.com>

> ---
>  arch/arm/boot/dts/imx7-colibri.dtsi       | 178
> ++++++++++++++++++++++
>  arch/arm/boot/dts/imx7d-colibri-emmc.dtsi |  26 ++++
>  2 files changed, 204 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/imx7-colibri.dtsi
> b/arch/arm/boot/dts/imx7-colibri.dtsi
> index d05be3f0e2a7..10d8880e8d13 100644
> --- a/arch/arm/boot/dts/imx7-colibri.dtsi
> +++ b/arch/arm/boot/dts/imx7-colibri.dtsi
> @@ -130,6 +130,184 @@ &flexcan2 {
>  	status = "disabled";
>  };
>  
> +&gpio1 {
> +	gpio-line-names = "SODIMM_43",
> +			  "SODIMM_45",
> +			  "SODIMM_135",
> +			  "SODIMM_22",
> +			  "",
> +			  "",
> +			  "SODIMM_37",
> +			  "SODIMM_29",
> +			  "SODIMM_59",
> +			  "SODIMM_28",
> +			  "SODIMM_30",
> +			  "SODIMM_67",
> +			  "",
> +			  "",
> +			  "SODIMM_188",
> +			  "SODIMM_178";
> +};
> +
> +&gpio2 {
> +	gpio-line-names = "SODIMM_111",
> +			  "SODIMM_113",
> +			  "SODIMM_115",
> +			  "SODIMM_117",
> +			  "SODIMM_119",
> +			  "SODIMM_121",
> +			  "SODIMM_123",
> +			  "SODIMM_125",
> +			  "SODIMM_91",
> +			  "SODIMM_89",
> +			  "SODIMM_105",
> +			  "SODIMM_152",
> +			  "SODIMM_150",
> +			  "SODIMM_95",
> +			  "SODIMM_126",
> +			  "SODIMM_107",
> +			  "SODIMM_114",
> +			  "SODIMM_116",
> +			  "SODIMM_118",
> +			  "SODIMM_120",
> +			  "SODIMM_122",
> +			  "SODIMM_124",
> +			  "SODIMM_127",
> +			  "SODIMM_130",
> +			  "SODIMM_132",
> +			  "SODIMM_134",
> +			  "SODIMM_133",
> +			  "SODIMM_104",
> +			  "SODIMM_106",
> +			  "SODIMM_110",
> +			  "SODIMM_112",
> +			  "SODIMM_128";
> +};
> +
> +&gpio3 {
> +	gpio-line-names = "SODIMM_56",
> +			  "SODIMM_44",
> +			  "SODIMM_68",
> +			  "SODIMM_82",
> +			  "SODIMM_93",
> +			  "SODIMM_76",
> +			  "SODIMM_70",
> +			  "SODIMM_60",
> +			  "SODIMM_58",
> +			  "SODIMM_78",
> +			  "SODIMM_72",
> +			  "SODIMM_80",
> +			  "SODIMM_46",
> +			  "SODIMM_62",
> +			  "SODIMM_48",
> +			  "SODIMM_74",
> +			  "SODIMM_50",
> +			  "SODIMM_52",
> +			  "SODIMM_54",
> +			  "SODIMM_66",
> +			  "SODIMM_64",
> +			  "SODIMM_57",
> +			  "SODIMM_61",
> +			  "SODIMM_136",
> +			  "SODIMM_138",
> +			  "SODIMM_140",
> +			  "SODIMM_142",
> +			  "SODIMM_144",
> +			  "SODIMM_146";
> +};
> +
> +&gpio4 {
> +	gpio-line-names = "SODIMM_35",
> +			  "SODIMM_33",
> +			  "SODIMM_38",
> +			  "SODIMM_36",
> +			  "SODIMM_21",
> +			  "SODIMM_19",
> +			  "SODIMM_131",
> +			  "SODIMM_129",
> +			  "SODIMM_90",
> +			  "SODIMM_92",
> +			  "SODIMM_88",
> +			  "SODIMM_86",
> +			  "SODIMM_81",
> +			  "SODIMM_94",
> +			  "SODIMM_96",
> +			  "SODIMM_75",
> +			  "SODIMM_101",
> +			  "SODIMM_103",
> +			  "SODIMM_79",
> +			  "SODIMM_97",
> +			  "SODIMM_67",
> +			  "SODIMM_59",
> +			  "SODIMM_85",
> +			  "SODIMM_65";
> +};
> +
> +&gpio5 {
> +	gpio-line-names = "SODIMM_69",
> +			  "SODIMM_71",
> +			  "SODIMM_73",
> +			  "SODIMM_47",
> +			  "SODIMM_190",
> +			  "SODIMM_192",
> +			  "SODIMM_49",
> +			  "SODIMM_51",
> +			  "SODIMM_53",
> +			  "",
> +			  "",
> +			  "SODIMM_98",
> +			  "SODIMM_184",
> +			  "SODIMM_186",
> +			  "SODIMM_23",
> +			  "SODIMM_31",
> +			  "SODIMM_100",
> +			  "SODIMM_102";
> +};
> +
> +&gpio6 {
> +	gpio-line-names = "",
> +			  "",
> +			  "",
> +			  "",
> +			  "",
> +			  "",
> +			  "",
> +			  "",
> +			  "",
> +			  "",
> +			  "",
> +			  "",
> +			  "SODIMM_169",
> +			  "",
> +			  "",
> +			  "",
> +			  "SODIMM_77",
> +			  "SODIMM_24",
> +			  "",
> +			  "SODIMM_25",
> +			  "SODIMM_27",
> +			  "SODIMM_32",
> +			  "SODIMM_34";
> +};
> +
> +&gpio7 {
> +	gpio-line-names = "",
> +			  "",
> +			  "SODIMM_63",
> +			  "SODIMM_55",
> +			  "",
> +			  "",
> +			  "",
> +			  "",
> +			  "SODIMM_196",
> +			  "SODIMM_194",
> +			  "",
> +			  "SODIMM_99",
> +			  "",
> +			  "",
> +			  "SODIMM_137";
> +};
> +
>  &gpmi {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_gpmi_nand>;
> diff --git a/arch/arm/boot/dts/imx7d-colibri-emmc.dtsi
> b/arch/arm/boot/dts/imx7d-colibri-emmc.dtsi
> index 898f4b8d7421..af39e5370fa1 100644
> --- a/arch/arm/boot/dts/imx7d-colibri-emmc.dtsi
> +++ b/arch/arm/boot/dts/imx7d-colibri-emmc.dtsi
> @@ -13,6 +13,32 @@ memory@80000000 {
>  	};
>  };
>  
> +&gpio6 {
> +	gpio-line-names = "",
> +			  "",
> +			  "",
> +			  "",
> +			  "",
> +			  "",
> +			  "",
> +			  "",
> +			  "",
> +			  "",
> +			  "",
> +			  "",
> +			  "SODIMM_169",
> +			  "SODIMM_157",
> +			  "",
> +			  "SODIMM_163",
> +			  "SODIMM_77",
> +			  "SODIMM_24",
> +			  "",
> +			  "SODIMM_25",
> +			  "SODIMM_27",
> +			  "SODIMM_32",
> +			  "SODIMM_34";
> +};
> +
>  &usbotg2 {
>  	dr_mode = "host";
>  };
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
