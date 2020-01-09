Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF25E1350FF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 02:34:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vhvIoZ1e4v/obeHpF1iAW+03SVUmYgnEo0Og1Y8zJWs=; b=uPQII/U9jHyUwv
	8wKii1DEXih/KbOf3v0TJ4kRRHwiS015+PXvMj4VPfOfDDkasCoSChcArbq23Q53iLn7pFXm0ZpCg
	pexU+eKOyRI1QAr5YS4QaXWcHvbHMH1CdP040GmTdTrAEf7WVCJoX+Hiq2fQFwbt5CafeuIYo5cIc
	R7yJ7zvL+CuwHSECjKsp6tmFjsO/9vUi0m4KHXiiey4oSUum9uKryStuBCJW+ITXF9jHpq+y/NlOY
	OScz9jK7asi/13xfetr8MreNDomj/ChmJZ7aGIGeuFbS7AzrFXZQDC/pHnjMfjDLt4l1H7clYce9M
	HOZoovqnkDCq+XWF/ExA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipMiF-00044c-4R; Thu, 09 Jan 2020 01:34:15 +0000
Received: from mail-db8eur05on2070.outbound.protection.outlook.com
 ([40.107.20.70] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipMi3-00043t-R5
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 01:34:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OBmXZZUYTP2bbmCMefkUzKPTQUeWgNaYIY8WCktEPqTZyuP/6l1EjAXWgQg8E3Mli/7KfiOHYM2+MHCeRXRSETX6sNepWW3T8irIJ12fsa87z8bKa1x8xETFv34mPMGHLc8NtJBZ75mu7isRQGoKrNh+N8me41jVzC45ViaeymFOFvNGCixXxIG+s0qwBDYmzPQc3VGW0mzLrpQRO8qMTrp5l/qz+pzjE4gcWHw5hm7nM+5XzW+NpeF3bij37QROjk7+Nc6NUIRsDm5Dw+XNORc2l8QgY7gkdmIh9VF6FVisyQ/I26S3Daz5c56K6m2R5pfPBmJg+L/2NEGFrJbWVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aJXDxe9dKAXbO/QR6mq/K2AHS7QSu9+dGhpB0GdSO0Y=;
 b=CfqydRvd4Mxmk2hUxc98nu8Pi4O/N/nz8hMCacwIsttY55W9+uZ3N6jx9DlYNthw9Uuy2/SCzJSvpa2PxXq8fKkyQWradZAxfrCXpwckA8MhGgyoyJEoWGPyVNYOqX7gHt9ZnMwsBQQmi/3CMw5tJOQLVt7KrkmD/y9tizkC7oQLEK3Dvlu7F14oqTAo8syWFFrMuntpPG6PH+qZON1Kxz7uMaVw6pY/arT/TFdk6bCm1TqhTH4vTgwuUMmSNaBOzdCNDrjP0lo1LH9q9yMwWxLtQpZXYQ6xVWtXYbDRThFmfsixff4CAz9GfAATcvTPGmUGo49xwP5XSBZA0Rg6RQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aJXDxe9dKAXbO/QR6mq/K2AHS7QSu9+dGhpB0GdSO0Y=;
 b=VYF5jcz0gQPPmdzIa6sDIn8MA7Fc5ZIhjkf1y56oGc8AMDSNrLIgeb39B/FqZ4TcnZ7qt7jw2Y1BYzLwNroeSYd7rYGcHRczJJ8/NH/O6X/Ztis0e7wvGxqBPbZyOIv8Taiuzqc7hq10RkLTQmbVSbjFcpf2fzsPzy28lwQnd7Y=
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com (52.134.3.146) by
 VI1PR0402MB3485.eurprd04.prod.outlook.com (52.134.3.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.11; Thu, 9 Jan 2020 01:33:57 +0000
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::18c:4d15:c3ab:afa6]) by VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::18c:4d15:c3ab:afa6%7]) with mapi id 15.20.2623.010; Thu, 9 Jan 2020
 01:33:57 +0000
From: Andy Duan <fugang.duan@nxp.com>
To: =?iso-8859-1?Q?Uwe_Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Andre Renaud <arenaud@designa-electronics.com>
Subject: RE: [EXT] Re: iMX6/UART imprecise external abort
Thread-Topic: [EXT] Re: iMX6/UART imprecise external abort
Thread-Index: AQHVt69z4K9VUksIR0CZH5d48DlS+qfEMPEQgABM4YCAAnmM4IAAjVWAgBheRgCAANmxgIAA7WIA
Date: Thu, 9 Jan 2020 01:33:57 +0000
Message-ID: <VI1PR0402MB3600935D4F9F78FC27AD54C5FF390@VI1PR0402MB3600.eurprd04.prod.outlook.com>
References: <CAEj2-1PyhkhEJ1+uRWio4vYxGuFOuR9mpZOdxmDDjGt_Az+3uA@mail.gmail.com>
 <FD3C2267-A9B8-45BB-B027-C85DB5E60829@designa-electronics.com>
 <VI1PR0402MB36003DBB288BC2B02A505ADCFF2C0@VI1PR0402MB3600.eurprd04.prod.outlook.com>
 <CAOMZO5BXMdzTBVaM7xbetgDLB9Aycd=yrUe00weGgcQtgZZBXQ@mail.gmail.com>
 <VI1PR0402MB36007146C33D2B4F7F24FB46FF2E0@VI1PR0402MB3600.eurprd04.prod.outlook.com>
 <20191223101627.p4a72y6ai5ns7pit@pengutronix.de>
 <20200107222406.vw7ewgm7uilu2x6e@pengutronix.de>
 <20200108112315.kgbwrc7qcjcjcaxh@pengutronix.de>
In-Reply-To: <20200108112315.kgbwrc7qcjcjcaxh@pengutronix.de>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-Mentions: arenaud@designa-electronics.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=fugang.duan@nxp.com; 
x-originating-ip: [119.31.174.67]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 8b9d2dfa-1ff9-4f01-4c71-08d794a3ff08
x-ms-traffictypediagnostic: VI1PR0402MB3485:
x-microsoft-antispam-prvs: <VI1PR0402MB34852AF56D3D70F81699F00EFF390@VI1PR0402MB3485.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2150;
x-forefront-prvs: 02778BF158
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10001)(10009020)(4636009)(366004)(396003)(39860400002)(376002)(136003)(346002)(189003)(199004)(86362001)(81156014)(71200400001)(9686003)(8936002)(33656002)(81166006)(55016002)(4326008)(8676002)(7696005)(52536014)(53546011)(2906002)(54906003)(6506007)(26005)(110136005)(186003)(316002)(5660300002)(478600001)(66446008)(966005)(45080400002)(66946007)(66556008)(66476007)(64756008)(76116006)(66574012)(309714004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3485;
 H:VI1PR0402MB3600.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5AiKEbIBvntO2MFq8CzhyBrz9EKwRkeu7TfRdQM89m5xQ0A1dSCKLBI+7Gi90YaL4mSBAmhK0zl8eMPSmr4siU2veuhKsCdKs9yE937TORt8Py2fixtWu0jPlqQax/1eNmlt4BmEZQ+/o8kpSdxILQwTFh9yM8i8l2dTA6eTjRPpfIJLatoJrQGsL/5DLhNFw4iNODbMdEAZsf4skTTgSb9QSqH8RJVp7dPu2yuzlhQLgn5nkuKgcoU1jYuBw24ll7XsVb4h5wmOq+Sfq3MPNLgokekV6QUVsrc44sulm/zb//IGE9mjHV/94sjJmJ7xYA+ewqX7ptybL3y+vGXTtEJIrSk6hbRELXXM/Kdgv7NBg7n2W93zPP7GYqHsllJWU3kQ2rBB0GnZnowHZ6VW6lCrjzys169tF/KePNIr9apF2wn1RZQLkUAtDZgWKasoizdopo1fYXzhmR9AHj16aQG0n5rBMW3+7YT2tMgP2kcsAUY4W8D8iRESaTeiWKcM/gdEJiVen0xlutRo7vRziK7ubnIMtWkolGfEDkKDncrqVDovbXGRtuSMnL7nCjVEHh/qPZg0e6vmxq9VPlLWn/6xWEA2jwfif0o1YtWWjcXuDUezl62b7rJbOuutZz2H2+e8PnunsOcdTBlMIyyckQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b9d2dfa-1ff9-4f01-4c71-08d794a3ff08
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2020 01:33:57.4169 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YcP7rHi1RagySNK7aTVk1cOu8IKjNwawXtZ8MTxPisjuVWLAV39xhO42b/NmRgDC8FKwVWywpGSVrFhBmqsa9w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3485
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_173403_940530_21DC4E70 
X-CRM114-Status: GOOD (  19.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.70 listed in list.dnswl.org]
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
Cc: "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de> Sent: Wednesday, =
January 8, 2020 7:23 PM
> Hello,
> =

> On Tue, Jan 07, 2020 at 11:24:06PM +0100, Uwe Kleine-K=F6nig wrote:
> > I will look into this again tomorrow when I'm well rested and create a
> > patch.
> =

> Here you go, for now without proper commit log etc.pp.
> =

> Please test if this fixes your problems.
> =

> I currently don't have the setup to trigger this bug, but normal console =
usage
> still works for me.

I also have not the environment to reproduce the issue.
@Andre Renaud, can you try Uwe's patch ?


Regards,
Andy
> =

> Best regards
> Uwe
> =

> -------->8--------
> From 025a72c6de6df8b71414378a0297568df371bd73 Mon Sep 17 00:00:00
> 2001
> From: =3D?UTF-8?q?Uwe=3D20Kleine-K=3DC3=3DB6nig?=3D
> <u.kleine-koenig@pengutronix.de>
> Date: Wed, 8 Jan 2020 09:47:20 +0100
> Subject: [PATCH RFT] serial: imx: fix a race condition in receive path
> =

> ---
>  drivers/tty/serial/imx.c | 52 ++++++++++++++++++++++++++++++----------
>  1 file changed, 39 insertions(+), 13 deletions(-)
> =

> diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c index
> a9e20e6c63ad..679b2de27c4d 100644
> --- a/drivers/tty/serial/imx.c
> +++ b/drivers/tty/serial/imx.c
> @@ -700,22 +700,33 @@ static void imx_uart_start_tx(struct uart_port
> *port)
>         }
>  }
> =

> -static irqreturn_t imx_uart_rtsint(int irq, void *dev_id)
> +static irqreturn_t __imx_uart_rtsint(int irq, void *dev_id)
>  {
>         struct imx_port *sport =3D dev_id;
>         u32 usr1;
> =

> -       spin_lock(&sport->port.lock);
> -
>         imx_uart_writel(sport, USR1_RTSD, USR1);
>         usr1 =3D imx_uart_readl(sport, USR1) & USR1_RTSS;
>         uart_handle_cts_change(&sport->port, !!usr1);
>         wake_up_interruptible(&sport->port.state->port.delta_msr_wait);
> =

> -       spin_unlock(&sport->port.lock);
>         return IRQ_HANDLED;
>  }
> =

> +static irqreturn_t imx_uart_rtsint(int irq, void *dev_id) {
> +       struct imx_port *sport =3D dev_id;
> +       irqreturn_t ret;
> +
> +       spin_lock(&sport->port.lock);
> +
> +       ret =3D __imx_uart_rtsint(irq, dev_id);
> +
> +       spin_unlock(&sport->port.lock);
> +
> +       return ret;
> +}
> +
>  static irqreturn_t imx_uart_txint(int irq, void *dev_id)  {
>         struct imx_port *sport =3D dev_id; @@ -726,14 +737,12 @@ static
> irqreturn_t imx_uart_txint(int irq, void *dev_id)
>         return IRQ_HANDLED;
>  }
> =

> -static irqreturn_t imx_uart_rxint(int irq, void *dev_id)
> +static irqreturn_t __imx_uart_rxint(int irq, void *dev_id)
>  {
>         struct imx_port *sport =3D dev_id;
>         unsigned int rx, flg, ignored =3D 0;
>         struct tty_port *port =3D &sport->port.state->port;
> =

> -       spin_lock(&sport->port.lock);
> -
>         while (imx_uart_readl(sport, USR2) & USR2_RDR) {
>                 u32 usr2;
> =

> @@ -792,11 +801,26 @@ static irqreturn_t imx_uart_rxint(int irq, void
> *dev_id)
>         }
> =

>  out:
> -       spin_unlock(&sport->port.lock);
>         tty_flip_buffer_push(port);
> +
>         return IRQ_HANDLED;
>  }
> =

> +static irqreturn_t imx_uart_rxint(int irq, void *dev_id) {
> +       struct imx_port *sport =3D dev_id;
> +       struct tty_port *port =3D &sport->port.state->port;
> +       irqreturn_t ret;
> +
> +       spin_lock(&sport->port.lock);
> +
> +       ret =3D __imx_uart_rxint(irq, dev_id);
> +
> +       spin_unlock(&sport->port.lock);
> +
> +       return ret;
> +}
> +
>  static void imx_uart_clear_rx_errors(struct imx_port *sport);
> =

>  /*
> @@ -855,6 +879,8 @@ static irqreturn_t imx_uart_int(int irq, void *dev_id)
>         unsigned int usr1, usr2, ucr1, ucr2, ucr3, ucr4;
>         irqreturn_t ret =3D IRQ_NONE;
> =

> +       spin_lock(&sport->port.lock);
> +
>         usr1 =3D imx_uart_readl(sport, USR1);
>         usr2 =3D imx_uart_readl(sport, USR2);
>         ucr1 =3D imx_uart_readl(sport, UCR1); @@ -888,27 +914,25 @@
> static irqreturn_t imx_uart_int(int irq, void *dev_id)
>                 usr2 &=3D ~USR2_ORE;
> =

>         if (usr1 & (USR1_RRDY | USR1_AGTIM)) {
> -               imx_uart_rxint(irq, dev_id);
> +               __imx_uart_rxint(irq, dev_id);
>                 ret =3D IRQ_HANDLED;
>         }
> =

>         if ((usr1 & USR1_TRDY) || (usr2 & USR2_TXDC)) {
> -               imx_uart_txint(irq, dev_id);
> +               imx_uart_transmit_buffer(sport);
>                 ret =3D IRQ_HANDLED;
>         }
> =

>         if (usr1 & USR1_DTRD) {
>                 imx_uart_writel(sport, USR1_DTRD, USR1);
> =

> -               spin_lock(&sport->port.lock);
>                 imx_uart_mctrl_check(sport);
> -               spin_unlock(&sport->port.lock);
> =

>                 ret =3D IRQ_HANDLED;
>         }
> =

>         if (usr1 & USR1_RTSD) {
> -               imx_uart_rtsint(irq, dev_id);
> +               __imx_uart_rtsint(irq, dev_id);
>                 ret =3D IRQ_HANDLED;
>         }
> =

> @@ -923,6 +947,8 @@ static irqreturn_t imx_uart_int(int irq, void *dev_id)
>                 ret =3D IRQ_HANDLED;
>         }
> =

> +       spin_unlock(&sport->port.lock);
> +
>         return ret;
>  }
> =

> --
> 2.24.0
> =

> =

> =

> --
> Pengutronix e.K.                           | Uwe Kleine-K=F6nig
> |
> Industrial Linux Solutions                 |
> https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fwww.
> pengutronix.de%2F&amp;data=3D02%7C01%7Cfugang.duan%40nxp.com%7Ca7
> 00379685894ff5ceeb08d7942d28d8%7C686ea1d3bc2b4c6fa92cd99c5c3016
> 35%7C0%7C0%7C637140793993226335&amp;sdata=3DKH2pKxhQxNLv6jV8ZST
> j7UuZHYDAnzP8%2BTkHNTr5T4Y%3D&amp;reserved=3D0 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
