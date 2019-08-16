Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79FC68FBE9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 09:15:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9LE+YYRl6NpyYJ71ALHnAhk3hlWyKpzsiWaDTV5HQ5g=; b=kNoWDhY8AkuHor
	S7tOltK3Rq3cD3WKBHmLklgeK7FqhNhuND8z4dx0j/MYUJblPgYmYGeBK1kM63nZfgE/Eg+AwtO5/
	dF47ysbCLKVRoBk441PNVPyFgaL5dBYj8HySViQ0G/U1xTuQZEXSEhEWziEboCuYKoWkSPL6hHqWQ
	fRp/E9r2oOFDznA4/Gvf2zZBYLxjvbo2755SVOMdOR/1UZH6EFB1tm2J7s25lqQiVjJz0JOp5FoDo
	L179E2CkNOgl0yrfcEwtCSfwfVg+GYrha2kaoUJavCogfKKYVYpfD1jzkZxJitttJDO7zhycY98ON
	tP/XZr4oAPcjHj6BreKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyWSh-0000EN-Qw; Fri, 16 Aug 2019 07:15:47 +0000
Received: from mail-eopbgr40108.outbound.protection.outlook.com
 ([40.107.4.108] helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyWSP-0000E1-Kj
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 07:15:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ToxzcQOKG9Mf3+PMJPrkznXy4JJXJEDI5UxXPjYxZxU1gjwv1XmbqYHTCeRLHVSLyq5JeqMxuKxyvEOFWe1Vu6frzlu8bVWuul4gYYEFpqCq0mqKz48R/vjXKXAkIpc1h095zWcZQkq5zFg0FbFdarIV1MRP7sj43aW5H4rvM1hunKZjbTzrfiBDrzYDjFxiV/Pazt+b+gMLu60ciegv3vbw4kBfB46SmAlOJAzTsC3W5jGPiA7G97+2r/r4lz9E3A6hngZxeGUz+Lb69GukNkk8EnSCJdYw2izFrV3h+xKVJXls46zlxS38zgPewshgJee7meRsP5rU4dIf3pdGdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sLopv+5YtNEuqcfOLgM6jvwCC8YeQ2bj143ACN4G8tw=;
 b=Qtc+SANUDXKw/J2IMwuQcFrl37f00hRYamYOFqViAEnYZcspZgYg4hJ1lGgb6OFKm+m24lFQq9obRBBihPuTxltT1l2VrUuOfjvoIUZYI+XLy2uAde5d8Vp6RXRxB3nZTYN9xZuPVnH4C3NHgfGL8Xq2uJDpSf3Lr/SZWuZ1gAf3NfzYhCRQFTanoQfEiw5KKMkEfjk7k05rj9XQGccZbDwsy0RlUOcaLtJAAs7QgXiBCsbqNtBU/3bKtfeVBt73eWqUOqTAjW1nienl/5PaO50TV+vKkFInRP4ybIZrwZt4lJt/kQZqKHrsDLO3HfyXACDqKPBvQVYz+Zk8lYA7ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sLopv+5YtNEuqcfOLgM6jvwCC8YeQ2bj143ACN4G8tw=;
 b=DV1KkwDX4bgiYYyKFRFmshqRwIl9OAHH2SINBvcj7g03xWCzqacCfE8oPvYmTrCIWM3e6besTrToi2BbLkBtsmP17W1uiQQUjlmfir3zCRha4R/+eslSA+5wxGWIq5Rn/ud7hbZr9dAuumW7femJxIElEb+4iUWDeH8O0cQcXxE=
Received: from VI1PR05MB6544.eurprd05.prod.outlook.com (20.179.27.210) by
 VI1PR05MB4445.eurprd05.prod.outlook.com (52.133.13.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Fri, 16 Aug 2019 07:15:26 +0000
Received: from VI1PR05MB6544.eurprd05.prod.outlook.com
 ([fe80::4810:d157:267a:83b9]) by VI1PR05MB6544.eurprd05.prod.outlook.com
 ([fe80::4810:d157:267a:83b9%4]) with mapi id 15.20.2157.022; Fri, 16 Aug 2019
 07:15:26 +0000
From: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
To: Philippe Schenker <philippe.schenker@toradex.com>
Subject: Re: [PATCH v4 14/21] ARM: dts: imx6ull-colibri: Add sleep mode to fec
Thread-Topic: [PATCH v4 14/21] ARM: dts: imx6ull-colibri: Add sleep mode to fec
Thread-Index: AQHVVAF/HfRzcoAz6UqD9oQ38+Yv/Q==
Date: Fri, 16 Aug 2019 07:15:26 +0000
Message-ID: <CAGgjyvHQt_Gp+Pm5VFabGHY5xGN4fU1Xv3inGRf9vmsRm3fQBQ@mail.gmail.com>
References: <20190812142105.1995-1-philippe.schenker@toradex.com>
 <20190812142105.1995-15-philippe.schenker@toradex.com>
In-Reply-To: <20190812142105.1995-15-philippe.schenker@toradex.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR0202CA0033.eurprd02.prod.outlook.com
 (2603:10a6:208:1::46) To VI1PR05MB6544.eurprd05.prod.outlook.com
 (2603:10a6:803:ff::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=oleksandr.suvorov@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-gm-message-state: APjAAAVpOaJ2UG+O7fA6iUNEx6YbmBNcs30Y2h1YgUNzDcDCG6vO+INV
 Z6ukVhF9I3HX+GOqn/GCqpvUL1kDiZaR8EgYw3k=
x-google-smtp-source: APXvYqxDYNVnQFyOSiEWSjBvWNY3X26uXLGceSwB4VHrFvUgz42BXm1SECYlTknIrsNTkZvz3GWC3xeaA7I2ALcCCNY=
x-received: by 2002:a05:6402:789:: with SMTP id
 d9mr9154728edy.25.1565939359305; Fri, 16 Aug 2019 00:09:19 -0700 (PDT)
x-gmail-original-message-id: <CAGgjyvHQt_Gp+Pm5VFabGHY5xGN4fU1Xv3inGRf9vmsRm3fQBQ@mail.gmail.com>
x-originating-ip: [209.85.208.50]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dd772153-8f15-436e-4a9b-08d7221982fe
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR05MB4445; 
x-ms-traffictypediagnostic: VI1PR05MB4445:
x-microsoft-antispam-prvs: <VI1PR05MB44453DC74C5C1950A20A4CAEF9AF0@VI1PR05MB4445.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0131D22242
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(366004)(136003)(39840400004)(346002)(396003)(199004)(189003)(66066001)(305945005)(7736002)(6116002)(3846002)(5660300002)(2906002)(25786009)(61266001)(6246003)(107886003)(53936002)(229853002)(6636002)(86362001)(6862004)(4326008)(55446002)(11346002)(446003)(498394004)(476003)(8936002)(61726006)(99286004)(95326003)(6436002)(81156014)(66946007)(9686003)(6512007)(81166006)(6486002)(14444005)(66476007)(256004)(14454004)(66446008)(66556008)(8676002)(64756008)(53546011)(26005)(186003)(6506007)(478600001)(386003)(102836004)(71190400001)(486006)(316002)(44832011)(54906003)(71200400001)(76176011)(52116002)(32563001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB4445;
 H:VI1PR05MB6544.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: hcNJ15Hd9hyKRrPOcHALcTI+HgG6shDz+31kMB7oe1z/7MZxfdv9NAVzYqPjOQCOmiAm2FXE/PLXLDItci2lAmxNzT7um3iWWLIRYK+pGQb7HgN4NJWXgU7WLlkzWRAKCCQ/hORXtuJW8NBqZIjo+puc7RvucL/8irl5pkzr88IcPoBPRJAX5m+kSux4YKsnWWFZ5Ht4yVKL5I0BaBL9CEgD7NE8ug2UJZNUiuNEcrzspa2awORW/5e4Hj8uWeGQyYNa3/1jEAZm8yMAHcSjdOQPiSUtGSUZxSG5sgjk/YVr5MiKil2Pw9Eviz4YoPq0yR3qeCt2c8OSgTSwYwAhh9l+cGfvfLmSprrnfcVukZYGD+yoN8scW+moUPGxXj+h02i4vIy+OIo1koLgZ0BT3Dimgkc1/5VHdcVFmKFmkyw=
x-ms-exchange-transport-forked: True
Content-ID: <8890697D42038347B2472161C6680B8A@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dd772153-8f15-436e-4a9b-08d7221982fe
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2019 07:15:26.5103 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LgLI3kw7drmNHeqEQMwg/sJRj0Z8S5V+GSexf81k/WPWSKzWM2kC8G/rModVXUVNEUSioKwXDKqDLRL/nNBzqhiFphuItINkL6tQmSD4P9Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB4445
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_001529_687005_BC101A6F 
X-CRM114-Status: GOOD (  16.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.108 listed in list.dnswl.org]
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

On Mon, Aug 12, 2019 at 5:22 PM Philippe Schenker
<philippe.schenker@toradex.com> wrote:
>
> Do not change the clock as the power for this phy is switched
> with that clock.
>
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
> Acked-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>

Reviewed-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>

>
> ---
>
> Changes in v4:
> - Add Marcel Ziswiler's Ack
>
> Changes in v3: None
> Changes in v2: None
>
>  arch/arm/boot/dts/imx6ull-colibri.dtsi | 18 +++++++++++++++++-
>  1 file changed, 17 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm/boot/dts/imx6ull-colibri.dtsi b/arch/arm/boot/dts/imx6ull-colibri.dtsi
> index d56728f03c35..1019ce69a242 100644
> --- a/arch/arm/boot/dts/imx6ull-colibri.dtsi
> +++ b/arch/arm/boot/dts/imx6ull-colibri.dtsi
> @@ -62,8 +62,9 @@
>  };
>
>  &fec2 {
> -       pinctrl-names = "default";
> +       pinctrl-names = "default", "sleep";
>         pinctrl-0 = <&pinctrl_enet2>;
> +       pinctrl-1 = <&pinctrl_enet2_sleep>;
>         phy-mode = "rmii";
>         phy-handle = <&ethphy1>;
>         status = "okay";
> @@ -220,6 +221,21 @@
>                 >;
>         };
>
> +       pinctrl_enet2_sleep: enet2sleepgrp {
> +               fsl,pins = <
> +                       MX6UL_PAD_GPIO1_IO06__GPIO1_IO06        0x0
> +                       MX6UL_PAD_GPIO1_IO07__GPIO1_IO07        0x0
> +                       MX6UL_PAD_ENET2_RX_DATA0__GPIO2_IO08    0x0
> +                       MX6UL_PAD_ENET2_RX_DATA1__GPIO2_IO09    0x0
> +                       MX6UL_PAD_ENET2_RX_EN__GPIO2_IO10       0x0
> +                       MX6UL_PAD_ENET2_RX_ER__GPIO2_IO15       0x0
> +                       MX6UL_PAD_ENET2_TX_CLK__ENET2_REF_CLK2  0x4001b031
> +                       MX6UL_PAD_ENET2_TX_DATA0__GPIO2_IO11    0x0
> +                       MX6UL_PAD_ENET2_TX_DATA1__GPIO2_IO12    0x0
> +                       MX6UL_PAD_ENET2_TX_EN__GPIO2_IO13       0x0
> +               >;
> +       };
> +
>         pinctrl_ecspi1_cs: ecspi1-cs-grp {
>                 fsl,pins = <
>                         MX6UL_PAD_LCD_DATA21__GPIO3_IO26        0x000a0
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
