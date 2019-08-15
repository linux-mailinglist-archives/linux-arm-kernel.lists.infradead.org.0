Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82AEE8ED59
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 15:51:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rItIAKLwXbV+6tLGtagoSYyy44tSfGlDjsutbSJN3pI=; b=BG1j84j2GkZpuS
	HLQC/jS5xTk0so0CcsR4wKyyLpZDD/uDmNI2kyLiXreoo1bwFtfPZ0utKGoEXRbxhZ90EplpizOrR
	mHw3ZLdkafv3Mz9wYbMOGpViPfNNPOWdJiPZv6E1ZDZpkuAYTgPUa6srSwPcHgbGsH549KyV1aFoK
	H33DjCkldO5+pt80pk4pdtyX7CWu6FAyKxQqfEp7KOYdHouAddzakFkwLqak9e7vKV/IKQQ2enlSm
	iUBOF+Jh4rgXJX3FhMMRnVZUikyDVcr6JGGFoDqQQTeyMLa80cWha78K6Ylpt26CCi74ubwYhjjB7
	idhTyMYkAiC+36yqfOfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyG9p-0005iG-SC; Thu, 15 Aug 2019 13:51:14 +0000
Received: from mail-eopbgr60093.outbound.protection.outlook.com ([40.107.6.93]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyG9c-0005hV-Dj
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 13:51:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lZlv1wsfKQ6oI08ztFvdwWmAm5nriTc6t13iUmhJgU6FQgNCNjyosPJD1QmOx+vD1bt5oIa14DseEUvYzaaHkO4tiXCcKE2UjPM2t/APVZGgJgpdgo3H2+nwLRuBXDqDyGPW76ov0GhXLT11Au0QTzLgJOvU4+P+Epj+dCNmbuKsZOk8I37qzwP+8zJfF5BD6qXrSTNoJRJg+SqPk8BiemPRZYigABJcuHZqr8xsmLCa7D69Gq5zODJbbSDU0pDBT1pzMe3BhTP6JajzwNdCHMvLROXiNjFyLsLwjuIhCQdJPFMX+gWwaFR6YXArUxk/UDDjOOTfBg982BU1L6SfLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/k//nUEraPgm5k1EcUWcJrEeglR9RYdlVUg2KMZuqdU=;
 b=WpucBAeqtdcWjX0mYRMBkg2ACSxYPxw2bfFg5Er8i9c3UabNdPaghS32mccRWru9xgzKYQH30Rdp6j40xrWrn5D4BoHVBl55nuHLHq63kFCbmLVKoEgd1QKgvZMF/gNEBJ+edTNmR9g/CWwQ6dcCJZ05zxI08sWVyNjmFUK+zowII5LNkIZ34FKGETRNCnILaqrmpwMkKizUjsDn87ItmEnBj1TLpf86F/ozL2UHMVI1l6JIhuJi1LsGWFEiI+G1fm8llYsx1qfoWlV08nI18u9SsHLZ4R5xFBP2xCIoSqX6rsMv8aBkZKH7tLcnqCCXfNWFrRpwF7U+bscuVbarHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/k//nUEraPgm5k1EcUWcJrEeglR9RYdlVUg2KMZuqdU=;
 b=EgSA0tcykJn6Hwi7en0aBofgaNgPDrkB+74EoYzYIqjSaKC/p0no+pnZhOwvqHGQEckN9GT8PTzc0HwSKiJ1mS3IM1Ftke7OjUJwTu1aMJs6NNKqLobKiuEEZAB2pbedmPaRzNJ64A2awEq3zUmbqwOojl+avex9xm82Qd0B0/g=
Received: from VI1PR05MB6544.eurprd05.prod.outlook.com (20.179.27.210) by
 VI1PR05MB4637.eurprd05.prod.outlook.com (20.176.3.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.18; Thu, 15 Aug 2019 13:50:57 +0000
Received: from VI1PR05MB6544.eurprd05.prod.outlook.com
 ([fe80::4810:d157:267a:83b9]) by VI1PR05MB6544.eurprd05.prod.outlook.com
 ([fe80::4810:d157:267a:83b9%4]) with mapi id 15.20.2157.022; Thu, 15 Aug 2019
 13:50:57 +0000
From: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
To: Philippe Schenker <philippe.schenker@toradex.com>
Subject: Re: [PATCH v4 18/21] ARM: dts: imx6ull-colibri: Add general wakeup
 key used on Colibri
Thread-Topic: [PATCH v4 18/21] ARM: dts: imx6ull-colibri: Add general wakeup
 key used on Colibri
Thread-Index: AQHVU29+5EKLAPrjz0meIc5Mt81I6w==
Date: Thu, 15 Aug 2019 13:50:57 +0000
Message-ID: <CAGgjyvFSUCYUxbCU2fOXNH6gBOpw5gay+T8eyk=AKHB0OTornA@mail.gmail.com>
References: <20190812142105.1995-1-philippe.schenker@toradex.com>
 <20190812142105.1995-19-philippe.schenker@toradex.com>
In-Reply-To: <20190812142105.1995-19-philippe.schenker@toradex.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR01CA0030.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:69::43) To VI1PR05MB6544.eurprd05.prod.outlook.com
 (2603:10a6:803:ff::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=oleksandr.suvorov@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-gm-message-state: APjAAAU52sTc5SX7y9Ndn7J7gwslo4A8m0u/gyh/IG3oI2eSbgcLOp7p
 3JkddMlPiB9DDajdJ/vfFmTX87Rg8gz3G570R+Y=
x-google-smtp-source: APXvYqz2aWlA5FtxQU478yrfyBzlUiVVpdPuB5J9HooRP3eJBco0tbChI9YfB5VmOCqezypY67MivtPzL2bPUd33A/s=
x-received: by 2002:a50:9084:: with SMTP id c4mr5464976eda.237.1565876653514; 
 Thu, 15 Aug 2019 06:44:13 -0700 (PDT)
x-gmail-original-message-id: <CAGgjyvFSUCYUxbCU2fOXNH6gBOpw5gay+T8eyk=AKHB0OTornA@mail.gmail.com>
x-originating-ip: [209.85.208.41]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 784b096e-eaec-4df4-0f05-08d721879930
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR05MB4637; 
x-ms-traffictypediagnostic: VI1PR05MB4637:
x-microsoft-antispam-prvs: <VI1PR05MB463754A981605FB5DA1E8FACF9AC0@VI1PR05MB4637.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 01304918F3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39840400004)(396003)(346002)(376002)(366004)(136003)(189003)(199004)(66066001)(66476007)(6246003)(478600001)(53936002)(8936002)(66556008)(3846002)(66446008)(6116002)(256004)(66946007)(81166006)(81156014)(107886003)(6862004)(25786009)(54906003)(61726006)(61266001)(99286004)(95326003)(316002)(8676002)(4326008)(64756008)(11346002)(386003)(55446002)(6506007)(76176011)(44832011)(102836004)(53546011)(26005)(71190400001)(186003)(7736002)(86362001)(52116002)(446003)(14454004)(229853002)(2906002)(5660300002)(476003)(305945005)(6512007)(6486002)(6636002)(498394004)(6436002)(71200400001)(486006)(9686003)(32563001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB4637;
 H:VI1PR05MB6544.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: gRIvQJeWu9ixZckLkHanTTVxaDb/N0GisFTsQgLxY0IKkY9mj4ijJcc2RUh9FbWfhz4uIvZOQuEJ53MaFchrIJbWGftlvRC4lJyAJWafLTU5uz+x2kMxpom9lxLnPiLTriZR/NjSvZC+jRTA5t2KyoxiYj3gOJqGuK73TgP+7+0A2sC6jjCSjiENTVs2XY9OtIP/Q6zgGB2iuMlJcOAvvjGb0dLgmwqyqpo96Yww1zZqmVuUB5gniDCR+kPm7XuksQ8QSFBEqwGjX/N4YhCwf3FyT/dvHBL8hD/dzNudkSZw4VkWatTSgMs+SnIEdWySoXR1WjDmuHSnwJL5VpxWGG09PF3cwFYxDp+Huki+0Fb2ra36izhjuSPkEgBNtUl/A5Y0VeJp0fUsJ3a+oLD7/sV68vXmrSaVM1uYdZfQ8zc=
x-ms-exchange-transport-forked: True
Content-ID: <A9F00536F5D67A4AB080CBD3DE4A5740@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 784b096e-eaec-4df4-0f05-08d721879930
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Aug 2019 13:50:57.2228 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lFUqVSRPO6z8vr4O5xGPua1vQm8efRLi2S5msq8ofXVlXO3qUCB6dN6Mc6G32FtFuvd4EREt6ViMi9wzJ/GGaSt2JRP9qOvRXINZ5bfpJ6A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB4637
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_065100_468427_45C3FDF7 
X-CRM114-Status: GOOD (  17.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.93 listed in list.dnswl.org]
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

On Mon, Aug 12, 2019 at 5:23 PM Philippe Schenker
<philippe.schenker@toradex.com> wrote:
>
> This adds the possibility to wake the module with an external signal
> as defined in the Colibri standard
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
>  arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>
> diff --git a/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi b/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
> index b6147c76d159..a78849fd2afa 100644
> --- a/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
> +++ b/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
> @@ -8,6 +8,20 @@
>                 stdout-path = "serial0:115200n8";
>         };
>
> +       gpio-keys {
> +               compatible = "gpio-keys";
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&pinctrl_snvs_gpiokeys>;
> +
> +               power {
> +                       label = "Wake-Up";
> +                       gpios = <&gpio5 1 GPIO_ACTIVE_HIGH>;
> +                       linux,code = <KEY_WAKEUP>;
> +                       debounce-interval = <10>;
> +                       wakeup-source;
> +               };
> +       };
> +
>         /* fixed crystal dedicated to mcp2515 */
>         clk16m: clk16m {
>                 compatible = "fixed-clock";
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
