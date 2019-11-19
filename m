Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC2C102289
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 12:03:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HHOTdlaE9KyUupLRgzRJY4IwdYMhohfYx0YTGFBoX6M=; b=F05+3kc76jVjLk
	QiWh9y2/rTESWW4YphW9ayL7+VtJhuY5QaHOcMwMJtJ7lNpNveFxHQjlkC8ctBk7UneQ4is2jdCXj
	IDzpL3j1l7Vne8kLv+awvArtOAgsYrcJ/e+x6CeH1hH3XMBvgpSPUYYCtH921xmVk615D4Jk5GnNR
	mBoz/zI/AGSTnzY3rNC56RyK4c4TRmEQclyHhUmC01jYrQMgP2drzZhMC/MZdmz4z2geT1S0zPnmx
	pI+TQYFmt1zMWhTsTq/0Wwfu6NmqQ9OQGe4hBe6ZOmWYgaNmASoGt+N6fcKLcz5BohWPcGKZURg5r
	rErgRbFqvf6Zv3JZmLSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX1Hu-0003nY-Qa; Tue, 19 Nov 2019 11:03:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX1Hn-0003mx-5A
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 11:03:08 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iX1Hh-0004eq-RG; Tue, 19 Nov 2019 12:03:01 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iX1Hh-0006A0-1I; Tue, 19 Nov 2019 12:03:01 +0100
Date: Tue, 19 Nov 2019 12:03:00 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: Using a GPIO as an interrupt line
Message-ID: <20191119110300.yy6diigjffu2ix63@pengutronix.de>
References: <f0d383f3-8efa-ae68-62af-68f69cd4143f@free.fr>
 <20191119095748.GX25745@shell.armlinux.org.uk>
 <07db59e7-ff16-0457-87f2-fba10dc182d6@free.fr>
 <20191119105619.4osmin7m5ryqfwih@pengutronix.de>
 <20191119110030.GA25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191119110030.GA25745@shell.armlinux.org.uk>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_030307_196127_7FCC1F18 
X-CRM114-Status: GOOD (  10.27  )
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
Cc: Marc Gonzalez <marc.w.gonzalez@free.fr>,
 Marc Zyngier <marc.zyngier@arm.com>, MSM <linux-arm-msm@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, GPIO <linux-gpio@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Russell,

On Tue, Nov 19, 2019 at 11:00:31AM +0000, Russell King - ARM Linux admin wr=
ote:
> On Tue, Nov 19, 2019 at 11:56:19AM +0100, Uwe Kleine-K=F6nig wrote:
> > Having a pin configured as GPIO is the boot default setting for many
> > SoCs/pins. So you might get away with not specifying a setting for pin
> > 42, but that's not as robust as configuring that explicitly.
> =

> If only that was universally true - the LX2160A as an example doesn't
> default to GPIO mode...

FTR: My statement is universally true. Note I wrote "many" not "all"
SoCs/pins :-)

SCNR
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
