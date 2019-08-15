Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2591C8E5A8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 09:43:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7OgHDZEhhVMeYEdzOJJwiS/Y+jnffQBFUuApC3d+4vs=; b=l9m+p+s1XPGL4z
	qlm8uJ96iSb+Xi4ZdiSx9QT0jQyeUxtoBNgfXQ7iNMIqmmFoPEMQFvGif/ZI8SknTX4txjuEZltFM
	ogPNu4DT/8LyoE3lYPFBB5JQAVvwdCtz60mtzZ1ZNMp/pbqY62Cu68FP25HjwgrHz3uUmjZ8PU7cA
	rLWQ1UouWgzOn9g8Np+ecIyD6oqyOKlHo8agPZ4YCR6eBcwcvaMoNPxuNpKYTHFAhPFlG/QEDVbJI
	tje2T/axchM4+je/pwBxI74OGP7yOLU5AYYJkWn1cbDUudR5O1rwDOrOhop2gImbrhbWmlXOt7w6T
	iddd3QLt9B3+m5dQm2zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyAPY-00067P-9U; Thu, 15 Aug 2019 07:43:04 +0000
Received: from mail-eopbgr80125.outbound.protection.outlook.com
 ([40.107.8.125] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyAPL-00066g-K1
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 07:42:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oQHxdVbp9XqM4UPUKgw6ts9HZEv9R9i4/Q+LUWncdcRZvHa3U4YT8kKOSRobJiKFiCqX39BarncMtTuWBH1co7CShKh3TJrLZkdXqFLZUMXBhWzFEhWvqD/i0mJuBfv5B4qwuvhXyHoCFuJHDkpNf6El4mNiGYDIzzCYQMWio3iNdH/roVpfJg+0t7S7JtpYLrGdL/mWCBHFDD6e03EDGkz71THeKaZva92uGDXeIJT2APVvNvlcltXrVN36A07b5RF7WoCbzMv9L9tNADU+YhfFaj0kiEuv9my0fU60DgMQpaP/16e6aTD8j0AkKBlAvcvYcQ+INghYrHrbjhhW6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YyPAAwQXi7UbHk9cv7pNm4qTho3KuMWswcakzFgYrD0=;
 b=CcWcuJli0xVM67kiCtLGiN8cF2rKZk9G7bBXi/ucZvCy25pttAsl0sxr9pA/C+8uWzvclz+iPz8/D6xhIiuxlaLGgtGrI5MvHkqIalQt6YHgB7vk+DYVRajwd8j57+tPWpy6LiDa/HuYql7SiWEj3ck4f4b7UtL+SPxP+NvWZX/liKDwgk45tmZw9DlL9K/Eit6ralz5Yqfsqn1yuBUzEcegETb0G1dZF39ytOS1qrsLv9kQ98/EhrGyN+0+nABGecMawZaBhuMaVro8tQqxpsT87yjiEmWp7zsiYDuKbcV0fI174buAU7Hv9hLc2tw+1/c5oetx1Enzv3eifJYrMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YyPAAwQXi7UbHk9cv7pNm4qTho3KuMWswcakzFgYrD0=;
 b=iQWy9WqWHBKBZY23ESgieIamL2Ju1aoud/64S54dh6vrkVK2FduGj9aaPDKSm6gbUQlO3NTU9iCirCw2AQq0GBNtZA+k8kVFemjbAp48HrRC3jgWgqCAARiiFb8J0QfcqSILScn14B3D6ct1yXdke2dYSIf2wmveRAJRInpNsTY=
Received: from VI1PR05MB6544.eurprd05.prod.outlook.com (20.179.27.210) by
 VI1PR05MB6144.eurprd05.prod.outlook.com (20.178.205.90) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Thu, 15 Aug 2019 07:42:38 +0000
Received: from VI1PR05MB6544.eurprd05.prod.outlook.com
 ([fe80::4810:d157:267a:83b9]) by VI1PR05MB6544.eurprd05.prod.outlook.com
 ([fe80::4810:d157:267a:83b9%4]) with mapi id 15.20.2157.022; Thu, 15 Aug 2019
 07:42:38 +0000
From: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
To: Philippe Schenker <philippe.schenker@toradex.com>
Subject: Re: [PATCH v4 17/21] ARM: dts: imx6ull: improve can templates
Thread-Topic: [PATCH v4 17/21] ARM: dts: imx6ull: improve can templates
Thread-Index: AQHVUzz64LFMvw0vFEC8FM2ndGfujQ==
Date: Thu, 15 Aug 2019 07:42:37 +0000
Message-ID: <CAGgjyvHi=DhUFE_6e_iPn91RNqJgDbGAEvZodji6OME9x5crrw@mail.gmail.com>
References: <20190812142105.1995-1-philippe.schenker@toradex.com>
 <20190812142105.1995-18-philippe.schenker@toradex.com>
In-Reply-To: <20190812142105.1995-18-philippe.schenker@toradex.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM3PR07CA0087.eurprd07.prod.outlook.com
 (2603:10a6:207:6::21) To VI1PR05MB6544.eurprd05.prod.outlook.com
 (2603:10a6:803:ff::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=oleksandr.suvorov@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-gm-message-state: APjAAAXfEpzNwzZA3rZu7KnmZpc+lJiRoVEkezvk+koVzsENKU5RXBb8
 x/Tc1c7DroADQzRh7OZ0mUGMPUz+rWB7Td65Oms=
x-google-smtp-source: APXvYqx4tjUxCzIeh16S5Mr6goxour78zIRul8lCMmCgPaFA1PcD2y5gnUcQDq4KmrnOqeZ7bNtofEAGqXD8W8nUJIk=
x-received: by 2002:a05:6402:125a:: with SMTP id
 l26mr4007976edw.192.1565854956140; Thu, 15 Aug 2019 00:42:36 -0700 (PDT)
x-gmail-original-message-id: <CAGgjyvHi=DhUFE_6e_iPn91RNqJgDbGAEvZodji6OME9x5crrw@mail.gmail.com>
x-originating-ip: [209.85.208.49]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ba5622c4-e1b0-4cb5-8403-08d721542473
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR05MB6144; 
x-ms-traffictypediagnostic: VI1PR05MB6144:
x-microsoft-antispam-prvs: <VI1PR05MB61447C45B5DBA390856A95D6F9AC0@VI1PR05MB6144.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2150;
x-forefront-prvs: 01304918F3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(346002)(136003)(39840400004)(396003)(376002)(199004)(189003)(14444005)(66556008)(66446008)(64756008)(66476007)(8676002)(6486002)(66946007)(6636002)(81156014)(81166006)(6436002)(498394004)(8936002)(66066001)(71200400001)(71190400001)(486006)(61726006)(54906003)(14454004)(2906002)(86362001)(256004)(229853002)(61266001)(5660300002)(6512007)(9686003)(4326008)(102836004)(26005)(99286004)(478600001)(386003)(186003)(6506007)(6246003)(305945005)(55446002)(7736002)(53936002)(107886003)(446003)(44832011)(3846002)(6116002)(11346002)(6862004)(25786009)(52116002)(476003)(95326003)(76176011)(53546011)(316002)(32563001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB6144;
 H:VI1PR05MB6544.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: BsGHrjfDblcy7O1+/ZeLlaTjS91rRnzBfbwOOVo16FqJY4ZHBZkdPo96j+W787/77RSvWBBg3te7hoLXZJeScY1jleKajbCNxqhwmKzseFRHCHIc9NzEWnxQks6bsmwCNXUovfjHZBz8yTB7/hN9Yke88qBmGv+wbXKq/m6Z9a5QQX11uVGSzeBQpgg7had+0aPo3yAVAbTLVzilJVHeF7ua5pTPXm/+T3pP0z8xCJj3KE0IXNlZKJVLkNeqHBPwqJDiLb0Iho9ksqPYdK4A8jlvGkOWb6WAdbGDHcr/CFg1cf3oZeyt9crjWnfxmTZp6JpLZAzlNGDBTJpfVG8ZlQ5c6S9UAfq7/Xj9NuNaG9xKBcDhrBMmweoBdoyyZL2d2Dq7MElOGiCGaZ6O2g4Bz+HODHq+u4mxbDcn4zS19tc=
x-ms-exchange-transport-forked: True
Content-ID: <E4FA979EF7ED3C41B14CE8144F7E4A6C@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ba5622c4-e1b0-4cb5-8403-08d721542473
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Aug 2019 07:42:37.0633 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: j/JDXWhM1ohq4hYKk1+FsVnTX7RsuWqQt0xiOKYdmg4MzxKQ3fx9zUQ9vK90AY0VVac4mqZ64NoNXnGyt9RfOcvRCYIPwospguozKa4PVGo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB6144
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_004251_667992_1D1C706B 
X-CRM114-Status: GOOD (  18.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.125 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 =?utf-8?B?TWljaGFsIFZva8OhxI0=?= <michal.vokac@ysoft.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stefan@agner.ch" <stefan@agner.ch>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 12, 2019 at 5:24 PM Philippe Schenker
<philippe.schenker@toradex.com> wrote:
>
> From: Max Krummenacher <max.krummenacher@toradex.com>
>
> Add the pinmuxing and a inactive node for flexcan1 on SODIMM 55/63
> and move the inactive flexcan nodes to imx6ull-colibri-eval-v3.dtsi
> where they belong.
>
> Note that this commit does not enable flexcan functionality, but rather
> eases the effort needed to do so.
>
> Signed-off-by: Max Krummenacher <max.krummenacher@toradex.com>
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>

Reviewed-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>

>
> ---
>
> Changes in v4:
> - Move can nodes to module deviceteree include imx6ull-colibri.dtsi
>
> Changes in v3: None
> Changes in v2: None
>
>  .../arm/boot/dts/imx6ull-colibri-nonwifi.dtsi |  2 +-
>  arch/arm/boot/dts/imx6ull-colibri-wifi.dtsi   |  2 +-
>  arch/arm/boot/dts/imx6ull-colibri.dtsi        | 28 +++++++++++++++++--
>  3 files changed, 28 insertions(+), 4 deletions(-)
>
> diff --git a/arch/arm/boot/dts/imx6ull-colibri-nonwifi.dtsi b/arch/arm/boot/dts/imx6ull-colibri-nonwifi.dtsi
> index fb213bec4654..95a11b8bcbdb 100644
> --- a/arch/arm/boot/dts/imx6ull-colibri-nonwifi.dtsi
> +++ b/arch/arm/boot/dts/imx6ull-colibri-nonwifi.dtsi
> @@ -15,7 +15,7 @@
>  &iomuxc {
>         pinctrl-names = "default";
>         pinctrl-0 = <&pinctrl_gpio1 &pinctrl_gpio2 &pinctrl_gpio3
> -               &pinctrl_gpio4 &pinctrl_gpio5 &pinctrl_gpio6>;
> +               &pinctrl_gpio4 &pinctrl_gpio5 &pinctrl_gpio6 &pinctrl_gpio7>;
>  };
>
>  &iomuxc_snvs {
> diff --git a/arch/arm/boot/dts/imx6ull-colibri-wifi.dtsi b/arch/arm/boot/dts/imx6ull-colibri-wifi.dtsi
> index 038d8c90f6df..a0545431b3dc 100644
> --- a/arch/arm/boot/dts/imx6ull-colibri-wifi.dtsi
> +++ b/arch/arm/boot/dts/imx6ull-colibri-wifi.dtsi
> @@ -26,7 +26,7 @@
>  &iomuxc {
>         pinctrl-names = "default";
>         pinctrl-0 = <&pinctrl_gpio1 &pinctrl_gpio2 &pinctrl_gpio3
> -               &pinctrl_gpio4 &pinctrl_gpio5>;
> +               &pinctrl_gpio4 &pinctrl_gpio5 &pinctrl_gpio7>;
>
>  };
>
> diff --git a/arch/arm/boot/dts/imx6ull-colibri.dtsi b/arch/arm/boot/dts/imx6ull-colibri.dtsi
> index e3220298dd6f..6d850d997e1e 100644
> --- a/arch/arm/boot/dts/imx6ull-colibri.dtsi
> +++ b/arch/arm/boot/dts/imx6ull-colibri.dtsi
> @@ -54,6 +54,18 @@
>         vref-supply = <&reg_module_3v3_avdd>;
>  };
>
> +&can1 {
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_flexcan1>;
> +       status = "disabled";
> +};
> +
> +&can2 {
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_flexcan2>;
> +       status = "disabled";
> +};
> +
>  /* Colibri SPI */
>  &ecspi1 {
>         cs-gpios = <&gpio3 26 GPIO_ACTIVE_HIGH>;
> @@ -256,6 +268,13 @@
>                 >;
>         };
>
> +       pinctrl_flexcan1: flexcan1-grp {
> +               fsl,pins = <
> +                       MX6UL_PAD_ENET1_RX_DATA0__FLEXCAN1_TX   0x1b020
> +                       MX6UL_PAD_ENET1_RX_DATA1__FLEXCAN1_RX   0x1b020
> +               >;
> +       };
> +
>         pinctrl_flexcan2: flexcan2-grp {
>                 fsl,pins = <
>                         MX6UL_PAD_ENET1_TX_DATA0__FLEXCAN2_RX   0x1b020
> @@ -271,8 +290,6 @@
>
>         pinctrl_gpio1: gpio1-grp {
>                 fsl,pins = <
> -                       MX6UL_PAD_ENET1_RX_DATA0__GPIO2_IO00    0x74 /* SODIMM 55 */
> -                       MX6UL_PAD_ENET1_RX_DATA1__GPIO2_IO01    0x74 /* SODIMM 63 */
>                         MX6UL_PAD_UART3_RX_DATA__GPIO1_IO25     0X14 /* SODIMM 77 */
>                         MX6UL_PAD_JTAG_TCK__GPIO1_IO14          0x14 /* SODIMM 99 */
>                         MX6UL_PAD_NAND_CE1_B__GPIO4_IO14        0x14 /* SODIMM 133 */
> @@ -325,6 +342,13 @@
>                 >;
>         };
>
> +       pinctrl_gpio7: gpio7-grp { /* CAN1 */
> +               fsl,pins = <
> +                       MX6UL_PAD_ENET1_RX_DATA0__GPIO2_IO00    0x74 /* SODIMM 55 */
> +                       MX6UL_PAD_ENET1_RX_DATA1__GPIO2_IO01    0x74 /* SODIMM 63 */
> +               >;
> +       };
> +
>         pinctrl_gpmi_nand: gpmi-nand-grp {
>                 fsl,pins = <
>                         MX6UL_PAD_NAND_DATA00__RAWNAND_DATA00   0x100a9
> --
> 2.22.0
>


-- 
Best regards
Oleksandr Suvorov

Toradex AG
Altsagenstrasse 5 | 6048 Horw/Luzern | Switzerland | T: +41 41 500
4800 (main line)
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
