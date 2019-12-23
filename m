Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 619DC1290C3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 02:54:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rmImh7Me+y741y34+1sCaExAE4K7IABXB2J/ST4c9eQ=; b=Oy8O0SX9MVdC23
	AYaB6FS4i/oBFZQL1k8lbS2YSdz8kxIrMbSvYS+Ho9QyOG4JxNqwffZ9uqxKD2cPEcmbE7gsuS0Xr
	fpCFTVqsZVMK42R+XPGC6xTZZSVZfuqk7zmnx8hSfNlzJ2C1PsClAbJjnzeV3qqRfg1/ZGlQAUKNG
	V46WkP+8gDc5c902ZS6mkUBL/u+H8swQefklalwBXSFYk8hCm+r2ZKtmJRuX7IeZhaUkNZO4ryZtD
	YIjp3fXEgvfciMIXDTzaxR+wfpxfThx3N5BqAU8F3zEANf7jsHoTGyY2cFdjwp+lhSLx1u29+m7xE
	Q5yVPmDzmHy1Rh/rnV0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijCvO-0006Rf-IA; Mon, 23 Dec 2019 01:54:22 +0000
Received: from mail-eopbgr40078.outbound.protection.outlook.com ([40.107.4.78]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijCut-00064X-5b
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 01:53:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Am040ic3Fz3peia/Yl6HUg2GIn6D9KhHR64bno2FFni4K9S9vtaPHgVo4gnGsD+ngRi9BhW1nzQhhGe9gpR8BxQqKvVLd5iY+AHtI0ToqOINChmcOqNJcKji4DrqcVgPaWCvUfDjtnjN0nIgstYbfAged/5BoblVa/sY4yu18iwrXSXQCFKN8HYZw3++JIETlq0nGY77FCK7pl9AiIXCg6qrALqQtWSTgrM1lx0FfdqVcuWUA3Iap+VksarOSMMp2G32FbXUS7JYB6NiCo51qWT77QVbrU3xjZF6SbpBrvWhUhEANZpNyMnsg9xLM6jBsJk/TyM7CejQQ1uJSkS8YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fv6x0DLLtptebUOuLqDIJRgFTmCgTk+uFmSgrgrUCnE=;
 b=oBC/Tkv8OYNob+tEgbnI0tupDjFMTK/kUXGiJr2XuCuiDi9tPQTABYJPMFdj7glhtraXI4sdgxw5dXCKqcUMKCWuTSUHwyM03mxD+pjxqPyunDOTTAZluwXE9evRMF5ObMjjg6cZyH7nseueJ2liJhYzLXF6E3jXfq5UH7vZxgH9OrussnbTT2nQ14UKQWnB7N0SoI+AbIPdYPmomB5vSAUUSRJGFpoSAc0c7nOq7KO5iAjqkRJjt+R206MsmNELRshxkOT1koutx1q/G8IW1F/N/lCYUNC44iIcLwHslrwMaFZWF0L9vo5SKjnlj1TdxTON/yhzWtRZQYuLYJ3ClQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fv6x0DLLtptebUOuLqDIJRgFTmCgTk+uFmSgrgrUCnE=;
 b=r5pw0M77bIit/kwCkIh+SxuIldGOJkHaJ4EUWNtU0u6ox/JJWOHE6+L9IL8pCx07DYI8Zjx1eIGphYiZ3iB66eafYJBG/DrOtKszU+mM5geSIEwlPyQFgjlrU93h/97sRKmolNPZBGGeQRZyy0Y+UA3MqpoIBFqMVy/8+Hghc6U=
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com (52.134.3.146) by
 VI1PR0402MB3741.eurprd04.prod.outlook.com (52.134.12.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.17; Mon, 23 Dec 2019 01:53:44 +0000
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::18c:4d15:c3ab:afa6]) by VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::18c:4d15:c3ab:afa6%7]) with mapi id 15.20.2559.016; Mon, 23 Dec 2019
 01:53:44 +0000
From: Andy Duan <fugang.duan@nxp.com>
To: Fabio Estevam <festevam@gmail.com>
Subject: RE: [EXT] Re: iMX6/UART imprecise external abort
Thread-Topic: [EXT] Re: iMX6/UART imprecise external abort
Thread-Index: AQHVt69z4K9VUksIR0CZH5d48DlS+qfEMPEQgABM4YCAAnmM4A==
Date: Mon, 23 Dec 2019 01:53:44 +0000
Message-ID: <VI1PR0402MB36007146C33D2B4F7F24FB46FF2E0@VI1PR0402MB3600.eurprd04.prod.outlook.com>
References: <CAEj2-1PyhkhEJ1+uRWio4vYxGuFOuR9mpZOdxmDDjGt_Az+3uA@mail.gmail.com>
 <FD3C2267-A9B8-45BB-B027-C85DB5E60829@designa-electronics.com>
 <VI1PR0402MB36003DBB288BC2B02A505ADCFF2C0@VI1PR0402MB3600.eurprd04.prod.outlook.com>
 <CAOMZO5BXMdzTBVaM7xbetgDLB9Aycd=yrUe00weGgcQtgZZBXQ@mail.gmail.com>
In-Reply-To: <CAOMZO5BXMdzTBVaM7xbetgDLB9Aycd=yrUe00weGgcQtgZZBXQ@mail.gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=fugang.duan@nxp.com; 
x-originating-ip: [119.31.174.67]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: fd705b65-1cca-475b-c7aa-08d7874af17e
x-ms-traffictypediagnostic: VI1PR0402MB3741:
x-microsoft-antispam-prvs: <VI1PR0402MB37415AE712316149CF797841FF2E0@VI1PR0402MB3741.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0260457E99
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(136003)(39860400002)(346002)(376002)(199004)(189003)(52536014)(81166006)(7696005)(316002)(71200400001)(53546011)(26005)(6506007)(186003)(4744005)(81156014)(8676002)(5660300002)(478600001)(6916009)(33656002)(4326008)(64756008)(66556008)(66476007)(66946007)(86362001)(55016002)(54906003)(8936002)(9686003)(2906002)(66446008)(76116006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3741;
 H:VI1PR0402MB3600.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: p8mRLajAQebDgHPY6I3AEtsNSkoYUg4qrI3WbOF8pL6LtMQgFKtRsNmjipXCwsB0kwCBfMh2oepzSuo/EQch2bqN5mlW7VhUDP/jlchO/hVyabB+Q2rBOd7cZTecp38i8Lej7oVZY8DDUnGJV3gE5a1wuAuBbJo3qSv7+Bt9UH8a+Q5M0kyuu3fvuYKtIlgUTEnU8Ko1GcU5iPd/um95JBKpRjnimonHGzJRRZLn16GaZ5PUg8dND9D8bCw5lgTn6bt7XBQhJNB8d5rVVnsFJjiV/2bT3doqQ/gkH/HxFiYS8u0Vzqx51OmMUr3zMouHa8VvtpScE9YpgzT6shcjEjBaNVVQQra/8Ir8pZy8EVlHpUpNtlpuJM1NBKZb8+dKvIEqb5CaXiTs8Okss9bj9MUNYPB7e0xyLmnA21jYFHuP5+ujLphblhvu3+kp6JB+
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fd705b65-1cca-475b-c7aa-08d7874af17e
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Dec 2019 01:53:44.4312 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uZPPrurIMKQ3w9bNoQ4TUZef8MOPiuK7QlS0bVhk6MAzazqvCiG2DsQkCnPQz85KPL+hBd2uTZJ+4ALKGfPgcw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3741
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_175351_316227_3D3BF411 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.78 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andre Renaud <arenaud@designa-electronics.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "moderated
 list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 =?utf-8?B?VXdlIEtsZWluZS1Lw7ZuaWc=?= <u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Fabio Estevam <festevam@gmail.com> Sent: Saturday, December 21, 2019 8:03 PM
> On Sat, Dec 21, 2019 at 4:31 AM Andy Duan <fugang.duan@nxp.com> wrote:
> 
> > We should ensure the RX FIFO data are not missed since they are valid data.
> > To compatible DMA and cpu PIO mode, to receive all RX FIFO data when
> > start to send, it will involve complex code logic.
> > So I suggest to enable the flag "SER_RS485_RX_DURING_TX", and force to
> > enable the flag for imx uart RS485 driver.
> 
> Inside imx_uart_rs485_config() we have:
> 
> if (rs485conf->flags & SER_RS485_ENABLED) {
>        /* Enable receiver if low-active RTS signal is requested */
>        if (sport->have_rtscts &&  !sport->have_rtsgpio &&
>            !(rs485conf->flags & SER_RS485_RTS_ON_SEND))
>                     rs485conf->flags |= SER_RS485_RX_DURING_TX;
> 
> Maybe the if() logic needs to be changed so that the
> SER_RS485_RX_DURING_TX flag could be set in Andre's case?

I think let the config always is enabled unconditionally: 
	rs485conf->flags |= SER_RS485_RX_DURING_TX;

Regards,
Andy
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
