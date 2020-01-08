Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B8F133BC9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 07:41:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZmXo1vSuw69EJGrBZScoKB9Z+QvNOBNwT1HeVNHfB2c=; b=e4qC/3cTVf2m09
	Dwv5WY0j4fCice8V8spsEH0mUYWOZenq/kFSXt4hNFR5EgNBYbRIexy+yqdBrWsOz2qahpwM6bqzJ
	zSXwz3xqSo0+7kKho+jCWbBh5SiG38vMw722ah2Ty9c624MZr0n02mhDLwZh9xvTc/SsL63lbXleQ
	elItDGJKv8512DO+8lAUCS2TOVN4seohVsTOhxLYZUiajDIarJR8qywxWINYvE3mVE0bMUQVGbTl8
	cq+iJOSEq3Z7OChhfrjHwKYwZS0OhcVNcTuiz9FlBKZDC5C0eR+HTDBzYICGlYSEsEwcXp1OyZDIK
	2H0tlbvMpjisERbhufQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip525-0001F3-Di; Wed, 08 Jan 2020 06:41:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip51X-0000uw-7s
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 06:41:00 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1ip51V-0007qu-0J; Wed, 08 Jan 2020 07:40:57 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1ip51U-0003VA-7C; Wed, 08 Jan 2020 07:40:56 +0100
Date: Wed, 8 Jan 2020 07:40:56 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Andy Duan <fugang.duan@nxp.com>
Subject: Re: [EXT] Re: iMX6/UART imprecise external abort
Message-ID: <20200108064056.qj2nwltolbs7pwil@pengutronix.de>
References: <CAEj2-1PyhkhEJ1+uRWio4vYxGuFOuR9mpZOdxmDDjGt_Az+3uA@mail.gmail.com>
 <FD3C2267-A9B8-45BB-B027-C85DB5E60829@designa-electronics.com>
 <VI1PR0402MB36003DBB288BC2B02A505ADCFF2C0@VI1PR0402MB3600.eurprd04.prod.outlook.com>
 <CAOMZO5BXMdzTBVaM7xbetgDLB9Aycd=yrUe00weGgcQtgZZBXQ@mail.gmail.com>
 <VI1PR0402MB36007146C33D2B4F7F24FB46FF2E0@VI1PR0402MB3600.eurprd04.prod.outlook.com>
 <20191223101627.p4a72y6ai5ns7pit@pengutronix.de>
 <20200107222406.vw7ewgm7uilu2x6e@pengutronix.de>
 <VI1PR0402MB3600DACC1709D2FB5EB25E9AFF3E0@VI1PR0402MB3600.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR0402MB3600DACC1709D2FB5EB25E9AFF3E0@VI1PR0402MB3600.eurprd04.prod.outlook.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_224059_301863_8B3A37FD 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On Wed, Jan 08, 2020 at 01:43:12AM +0000, Andy Duan wrote:
> From: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de> Sent: Wednesday=
, January 8, 2020 6:24 AM
> > The fix is to do the check for UCR1_RRDYEN and UCR2_ATEN (and all the
> > other similar checks) under the port lock.
> =

> Add RXEN check before accessing RX register.
> =

> if ((usr1 & (USR1_RRDY | USR1_AGTIM)) &&
>    ucr2 & UCR2_RXEN) {
> 	imx_uart_rxint(irq, dev_id);
> 	...
> }

FTR: This doesn't fix the issue as RXEN might be disabled after the
check and before imx_uart_rxint() grabs the lock.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
