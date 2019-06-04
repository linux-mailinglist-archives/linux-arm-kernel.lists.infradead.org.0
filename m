Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47AC53453D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 13:18:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UXcKNoLiEOr4iOQdVmKrgV/234pykLg94bq1w3SnQgM=; b=FDdbigIiyLIEuE
	qSGYTBsQlbfTXlRZcN0OAIUQ+hrcm7suhzRa6WLtIdiVBn9m5J1ANOM5+hcz7PFoU5aQDlwEogQ5k
	Aguj6l2N2XUkwOpOr7VybbPn1UpI0IVzyRcs5g2ush7g7AmoC81FnWr5KikZSS5ZtTC5e4HWqKrWv
	CzTyrjpYtl+ZI63mOrSzBQiNmbzGA/g8t2y5XL4gDHGeK46MEDJMGR60htjgmbZn9HZjd/n+FdKiB
	dgo/dRDODlL0rvUMzwxmkX9XoONbc0l9FjT2J1QumBbtZYvHmEK7lRiLUDtKrfarc/M4e0LW8zXFC
	WebDQ/c8oCi1zqS34ZQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY7SW-0003wT-1l; Tue, 04 Jun 2019 11:18:28 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY7SO-0003qb-S9
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 11:18:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wnIWM1sutZPHP5l1xG0B5EZ8RdjswMiBjWZmLmapwzs=; b=g645oWxA7WoMXJOZWqq4PNrSj
 LqQ/7oxcWul9/UOJpiqiWEft+ac5lyzwr6P9aB/WVKj74xvOLUE8Nx/H4ZfT5LC8Zre2y2bLYq2c5
 3CIKHQDFRUe1nJISyS3+XgO7/bykhCUsQz4GXOLVoAK4bRJ7UCbTzbarpMnqsGkXuPJbYq6yTtLzS
 K551QN5CGADIpxcju76NnsVaAFaNIidN3zPKhMAaJpn2CPRhO20sQISl++Gw8iKPdw5q/eRRqnNBb
 Cdsdvh0zf5LjTa0TG8RQoLbDERwBKQedazTEA99h3e6JgV3OSOyA3uSXNHgL/HS+x8oS7jGSQBoDI
 iqcRjub/A==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:56180)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hY7QG-0000na-CG; Tue, 04 Jun 2019 12:16:08 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hY7QD-0001St-IE; Tue, 04 Jun 2019 12:16:05 +0100
Date: Tue, 4 Jun 2019 12:16:05 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v2] serial: sa1100: add note about modem control signals
Message-ID: <20190604111605.thwhicndrqmy7rlx@shell.armlinux.org.uk>
References: <20190531155700.crrawgf3iot2sm2t@shell.armlinux.org.uk>
 <E1hWjyQ-0008Ni-8V@rmk-PC.armlinux.org.uk>
 <20190531212702.cmqbaqwdybgkb3ug@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190531212702.cmqbaqwdybgkb3ug@pengutronix.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_041821_054568_80FB2386 
X-CRM114-Status: GOOD (  17.73  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 31, 2019 at 11:27:02PM +0200, Uwe Kleine-K=F6nig wrote:
> Hello Russell,
> =

> On Fri, May 31, 2019 at 05:01:42PM +0100, Russell King wrote:
> > As suggested by Uwe, add a note indicating that the modem control
> > signals do not support interrupts, which precludes the driver from
> > using mctrl_gpio_init().
> > =

> > Suggested-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> > ---
> >  drivers/tty/serial/sa1100.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> > =

> > diff --git a/drivers/tty/serial/sa1100.c b/drivers/tty/serial/sa1100.c
> > index 97bdfeccbea9..8e618129e65c 100644
> > --- a/drivers/tty/serial/sa1100.c
> > +++ b/drivers/tty/serial/sa1100.c
> > @@ -860,6 +860,10 @@ static int sa1100_serial_resume(struct platform_de=
vice *dev)
> >  static int sa1100_serial_add_one_port(struct sa1100_port *sport, struc=
t platform_device *dev)
> >  {
> >  	sport->port.dev =3D &dev->dev;
> > +
> > +	// mctrl_gpio_init() requires that the GPIO driver supports interrupt=
s,
> > +	// but we need to support GPIO drivers for hardware that has no such
> > +	// interrupts.  Use mctrl_gpio_init_noauto() instead.
> =

> I hope it's not an impostor who claimed to be Linus to spread deviance
> from K&R :-)
> =

> Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> =

> If you want to, squash this in the commit that introduced
> mctrl_gpio_init_noauto while keeping my Ack on the resulting patch.

I'd prefer to keep it separate to avoid invalidating the acks that I
already have on the first patch.

-- =

RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps =
up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
