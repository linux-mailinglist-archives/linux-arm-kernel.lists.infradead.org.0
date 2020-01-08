Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06F2C1338A1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 02:43:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UFmSH64osMfvZlXWxYZhL8XNkXwITnUpfxHTPmPJEYo=; b=sZLvd9hTxem5nv
	dYfe+arOzOJYf0MkD2yl7XlePGLNfp6TMhifc7IKTvteBHv0dpAW2EInDYozFcjM7zK4UjqM6sqKi
	pHXbuqzp1uNQ4ha6WhYSFydrNworAJUSSEhymGNoWPt/M1xRoNZuFw0ftqwd9V3hcEN82XHATWsKs
	GdJQU15Vhvx0qvKmTXQWj9aehAbSLGI4qTDGH9o9ept9IzTCtJxL4Bgs4s9YlZgC4B36gpQ8n7Utj
	iAQmv2Z7WZByngv5Effvjf4SHEGEFNq3q73irpyvnzdLtedi7sQoLvjzHdvrENTzOrKOWmybRR2GL
	DbxT6F8gldcs0Q04atMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip0Nb-0000F9-4l; Wed, 08 Jan 2020 01:43:27 +0000
Received: from mail-eopbgr130073.outbound.protection.outlook.com
 ([40.107.13.73] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip0NS-0000Ej-Lm
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 01:43:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=edUQOX3nIEVtO0SOIg9IWsHefHyeBzIZ91q+vBwYfceP+0ztsPiXX33cntZGvqHXOTeUYtRiWmD6Ifz7Oq4ZF+FfbG/BQK5N9GlccL54mgleOh1//NVneO1+be+Tl0hERA/HpX8NRgv4jIZONWf28uA5Axe4KICMe5V0E1r5RA2z/LuzfIBggrAjiLdlGuFIkwTRBP41ZsmTQtE0OdKvl/WC9KtN+vLiwAg1vCb3BbnJgl50TDyy/udrdh/W7MYqsvqU8c3QOKMH92ieq3Urly7vDsaOKFeinFQWLhO0drvyeljITAeft/fEIJijKK/1hd4RDQ+XY2uUnIbpSWtv3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i5V/vK2e9k2kMJGCKghtk4pGptUPz95pGclG8N6vrf8=;
 b=bGsR9lkmk/OTW3KaiUZOSZ6F1vBUlVGkWdyzcyxaTC9HszrURNeDrFN6+yz4ROHziwQ/tdXt+p2bHk+NxHQNXe7De9U6IbtRlU9uiwa9WBDE+ACua+4UBNm/z9MXVOreUxb1UFF6bx1au8CQvn0aVBREl2yxeUcHVoWTJwgad/VwMe4LbcLRAu2C1GdbfxP52Sbh4f4ebuoizSZzRMr9Sk6/obvRn25F8kl/wISiXAg99WHtNB73ufy8cl+bWD9rVEvtramggepe5eAfCe7aDZspTlA0905QGhWQXD/IO/koAo4ySOC8lfbakazXMynjZA0pjWlUS80FPKeBKaUOEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i5V/vK2e9k2kMJGCKghtk4pGptUPz95pGclG8N6vrf8=;
 b=VqSS4Gxinh854hBSka2VixxcWZTzA/vc3W0FO3kqkwVXHrzrfA7tmWL00wKWGoDF3t68Tn0tVk3K1gtDZKJWJWk/wmIZq58tYGGL7cSOco8Ku0/8mo+V5jHPMM9+CTIcJhRPguH8FVOE1elmzJqqUlaiH8XHs6voPvsrdLr6vto=
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com (52.134.3.146) by
 VI1PR0402MB2733.eurprd04.prod.outlook.com (10.175.22.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.13; Wed, 8 Jan 2020 01:43:13 +0000
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::18c:4d15:c3ab:afa6]) by VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::18c:4d15:c3ab:afa6%7]) with mapi id 15.20.2602.015; Wed, 8 Jan 2020
 01:43:13 +0000
From: Andy Duan <fugang.duan@nxp.com>
To: =?iso-8859-1?Q?Uwe_Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Andre Renaud <arenaud@designa-electronics.com>
Subject: RE: [EXT] Re: iMX6/UART imprecise external abort
Thread-Topic: [EXT] Re: iMX6/UART imprecise external abort
Thread-Index: AQHVt69z4K9VUksIR0CZH5d48DlS+qfEMPEQgABM4YCAAnmM4IAAjVWAgBheRgCAADZHsA==
Date: Wed, 8 Jan 2020 01:43:12 +0000
Message-ID: <VI1PR0402MB3600DACC1709D2FB5EB25E9AFF3E0@VI1PR0402MB3600.eurprd04.prod.outlook.com>
References: <CAEj2-1PyhkhEJ1+uRWio4vYxGuFOuR9mpZOdxmDDjGt_Az+3uA@mail.gmail.com>
 <FD3C2267-A9B8-45BB-B027-C85DB5E60829@designa-electronics.com>
 <VI1PR0402MB36003DBB288BC2B02A505ADCFF2C0@VI1PR0402MB3600.eurprd04.prod.outlook.com>
 <CAOMZO5BXMdzTBVaM7xbetgDLB9Aycd=yrUe00weGgcQtgZZBXQ@mail.gmail.com>
 <VI1PR0402MB36007146C33D2B4F7F24FB46FF2E0@VI1PR0402MB3600.eurprd04.prod.outlook.com>
 <20191223101627.p4a72y6ai5ns7pit@pengutronix.de>
 <20200107222406.vw7ewgm7uilu2x6e@pengutronix.de>
In-Reply-To: <20200107222406.vw7ewgm7uilu2x6e@pengutronix.de>
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
x-ms-office365-filtering-correlation-id: f4ef6178-5bc8-4337-3709-08d793dc1fc0
x-ms-traffictypediagnostic: VI1PR0402MB2733:
x-microsoft-antispam-prvs: <VI1PR0402MB273343C9691FABE11926091CFF3E0@VI1PR0402MB2733.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 02760F0D1C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10001)(10009020)(4636009)(39860400002)(136003)(366004)(346002)(396003)(376002)(199004)(189003)(8936002)(55016002)(316002)(33656002)(66446008)(76116006)(64756008)(66556008)(66946007)(81156014)(66476007)(81166006)(26005)(7696005)(54906003)(66574012)(4326008)(5660300002)(110136005)(86362001)(8676002)(9686003)(45080400002)(2906002)(186003)(478600001)(53546011)(52536014)(71200400001)(966005)(6506007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB2733;
 H:VI1PR0402MB3600.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0jRA0Co6M7Waf21GmM4pkqG7rBTIGoUNfLIK8ptkx2GLy8XrduikNB2yIzMelCJm1J4DzTu/6QRp4NvjiWVM2BlXvBvfuDmzIo6jmEn1wh4uWPoAo7+/igfvqSGJ3paTb1HzBcF/PL+9DJb7TxNPOE9JuAsxWP5UyrNR+Q84EbL3MRryuGMfTavLP3iVpow5kzbAMJKRyfen/tzPd0boc4hvHRtakAgTqFakOBXjNOe+vj0Dy9Umsm/NYXXDFE84Q4gHnyZBsfm2zP3ScSkhz+hoGuKuD7KDLaMgxjpfCkbGvNw/lEBCM3rN0/yHCza7JB/mlbubUSIOj8C59eVJwLTapWmxizmDKf8vbr9ZqxhNOEBcalz/SkoWsVfNRbwO1OpsOsxCh6e+rtR+igK3HPs6Zy0/elS7crqPgWQh6QuHvfachVdhFgunEQ9D1TlVTX+3EgSYmM/5ZGQAbR14mb9IgDXzeQVyt5KcG6//3XXXlRQWIB/c7egb/dK9d2TExRaqwAAvAt+Tc7m025C4ik3X/9Kj9J2C7cZaA2GAcXAfOpBx2R9icT5hvyiZdrMxbxgZeKpVqj4H6zVUPuaN9w==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f4ef6178-5bc8-4337-3709-08d793dc1fc0
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2020 01:43:12.9304 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YNb8uckjKdD01zRuqO4RQlQIvrAfisPfax3rQppWKo1UaAKMOmB1W0tJhVwvVzs9FjCXw+T/fISJrutKj5W/wg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB2733
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_174318_718099_6713D201 
X-CRM114-Status: GOOD (  26.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.73 listed in list.dnswl.org]
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
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "moderated list:ARM/FREESCALE IMX /
 MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de> Sent: Wednesday, =
January 8, 2020 6:24 AM
> On Mon, Dec 23, 2019 at 11:16:27AM +0100, Uwe Kleine-K=F6nig wrote:
> > Hello,
> >
> > On Mon, Dec 23, 2019 at 01:53:44AM +0000, Andy Duan wrote:
> > > From: Fabio Estevam <festevam@gmail.com> Sent: Saturday, December
> > > 21, 2019 8:03 PM
> > > > On Sat, Dec 21, 2019 at 4:31 AM Andy Duan <fugang.duan@nxp.com>
> wrote:
> > > >
> > > > > We should ensure the RX FIFO data are not missed since they are v=
alid
> data.
> > > > > To compatible DMA and cpu PIO mode, to receive all RX FIFO data
> > > > > when start to send, it will involve complex code logic.
> > > > > So I suggest to enable the flag "SER_RS485_RX_DURING_TX", and
> > > > > force to enable the flag for imx uart RS485 driver.
> > > >
> > > > Inside imx_uart_rs485_config() we have:
> > > >
> > > > if (rs485conf->flags & SER_RS485_ENABLED) {
> > > >        /* Enable receiver if low-active RTS signal is requested */
> > > >        if (sport->have_rtscts &&  !sport->have_rtsgpio &&
> > > >            !(rs485conf->flags & SER_RS485_RTS_ON_SEND))
> > > >                     rs485conf->flags |=3D
> SER_RS485_RX_DURING_TX;
> > > >
> > > > Maybe the if() logic needs to be changed so that the
> > > > SER_RS485_RX_DURING_TX flag could be set in Andre's case?
> > >
> > > I think let the config always is enabled unconditionally:
> > >     rs485conf->flags |=3D SER_RS485_RX_DURING_TX;
> >
> > I think it should be possible to fix without forcing
> > SER_RS485_RX_DURING_TX (which might have surprising effects for
> > userspace). Actually I was convinced this problem was fixed in a
> > different way in the imx driver already since 76821e222c18 ("serial:
> > imx: ensure that RX irqs are off if RX is off").
> >
> > The key idea is to disable the RX irq and dma request and only then
> > disable RX. This way it is not given that the RX FIFO is empty on
> > disable, but the characters are not read and so the exception doesn't
> > happen.
> >
> > I'll take a deeper look after my vacations in the new year, probably
> > some rx485 path was missed in the fix.
> =

> I took a look now and found a race condition that might trigger this prob=
lem.
> The following can happen (in the non-DMA case):
> =

> =

>         imx_uart_int()
>           usr1 =3D imx_uart_readl(sport, USR1);
>           ...
>           ucr1 =3D imx_uart_readl(sport, UCR1);
>           ucr2 =3D imx_uart_readl(sport, UCR2);
>           ...
>           if ((ucr1 & UCR1_RRDYEN) =3D=3D 0)
>             usr1 &=3D ~USR1_RRDY;
>           if ((ucr2 & UCR2_ATEN) =3D=3D 0)
>             usr1 &=3D ~USR1_AGTIM;
> =

> imx_uart_start_tx()
> =

> imx_uart_stop_rx()
>                                                             ...
> =

> ucr1 &=3D ~UCR1_RRDYEN;
> =

> ucr2 &=3D ~(UCR2_ATEN | UCR2_RXEN)
> =

> imx_uart_writel(sport, ucr1, UCR1);
> =

> imx_uart_writel(sport, ucr2, UCR2);
> =

>           if (usr1 & (USR1_RRDY | USR1_AGTIM)) {
>             imx_uart_rxint(irq, dev_id);
>             ...
>           }
> =

> Which results in the left execution thread to read from the RX register w=
hile
> RXEN is off and so trigger the fault.
> =

> Currently imx_uart_rxint() grabs the port lock (and imx_uart_start_tx() a=
lso
> holds it), and so the decision to call imx_uart_rxint() is done without h=
olding
> the lock.
> =

> The fix is to do the check for UCR1_RRDYEN and UCR2_ATEN (and all the
> other similar checks) under the port lock.

Add RXEN check before accessing RX register.

if ((usr1 & (USR1_RRDY | USR1_AGTIM)) &&
   ucr2 & UCR2_RXEN) {
	imx_uart_rxint(irq, dev_id);
	...
}

> =

> So assuming the problem is indeed what we are experiencing here, the
> workaround by Andre (i.e. run the UART user and the UART irq on the same
> cpu) is a good one.

@Andre Renaud,  can you add kernel command line "nosmp" to check the issue ?
Suppose one core cannot reproduce the issue.

> =

> I will look into this again tomorrow when I'm well rested and create a pa=
tch.
> =

> Best regards
> Uwe
> =

> --
> Pengutronix e.K.                           | Uwe Kleine-K=F6nig
> |
> Industrial Linux Solutions                 |
> https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fwww.
> pengutronix.de%2F&amp;data=3D02%7C01%7Cfugang.duan%40nxp.com%7C47
> 502f86fd7847bd952a08d793c05094%7C686ea1d3bc2b4c6fa92cd99c5c3016
> 35%7C0%7C0%7C637140326517408679&amp;sdata=3Dyt7kjoP9DgEUl19MRQP
> mGwTskdI7fpSnN%2FtlklaPozw%3D&amp;reserved=3D0 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
