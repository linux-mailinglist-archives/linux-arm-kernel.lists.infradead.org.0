Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E7230F7B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 16:01:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p6YoVdEFXR4IirDLHDYkMk1zLOz4t+Ijd71Dpr/qHxw=; b=XZOMBzI4AToR4z
	F3Wp6slk//5druJv6k2CaXORayK1VItaWxhjcUd4JtZgKhw3+VvO+qhBQTdrYq2M3XGP67eCdA5n2
	GRYVve4S2uJXeeHVpEsBP3nuWjL7dHOaA5nJdVRLoBbYpjSABsaelfq00TfbfFCFa4QgnBYstaHGH
	f4jqlp30IIoFDx/mOcPlvEwt1vgOvURtNn6cTkcaeSs4MoiNn2g2Jm8JKM5rpp9cBFNOtse/Hpsn/
	z+dRZdW1M+q4+npmTFR/HdNL4tfxdwKX1UAPfYvLCaw+cTsG6hVfg0D+pw8S6V9ou3e3EMGumYTWU
	+VBlfhUCZLdj9mq4IvtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWi6L-00045I-1v; Fri, 31 May 2019 14:01:45 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWi6C-00044r-LV
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 14:01:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gwiVuzFV6bQvlyPXmdEGdPq+Cy17hU8CYkt3Fw8v/lU=; b=lcPC/c3qpa4vkVD3PvIN0ICGd
 0zoixj25uxmyrPC1Gl7gwqwTnH6jZaINctHr7f5EijX5pDknWZP6zUFb2gEvXbD9QQrYgydwfY6Sv
 5MQXJtQCEc1sNkIluhHPJ2YGMK75RfPb7BRy2d5ig5+iwtW0LxtnP6yqh+d7DXzJELG+kxT+grrvB
 R9BBnisnkcsa7ILE9alXYIYhhRpOK6oqTJW5iIehQRjLG/7v5iVG/Ori9lflWJTHLrO0VvwxbBYM4
 VXEkVwSZOlsqgBv8em/B2/mCJBPqpy5foQ28445i0ge0zgUsqpt6kItLt8thiAb5gtuAh5JlKGeQP
 avpaTKeSw==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:56106)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hWi66-0001AF-6m; Fri, 31 May 2019 15:01:30 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hWi64-0006Oj-3h; Fri, 31 May 2019 15:01:28 +0100
Date: Fri, 31 May 2019 15:01:28 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH 1/6] serial: sa1100: add support for mctrl gpios
Message-ID: <20190531140127.yp2o7effrsxencyb@shell.armlinux.org.uk>
References: <20190531111257.27hor6xgb3nsdghg@shell.armlinux.org.uk>
 <E1hWfTn-0003fP-Rl@rmk-PC.armlinux.org.uk>
 <20190531125013.3gkexhmbqjpdvrtf@pengutronix.de>
 <20190531132340.bco6xpyl3aatbryl@shell.armlinux.org.uk>
 <20190531135658.jo4kas3ozj7gpmmc@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190531135658.jo4kas3ozj7gpmmc@pengutronix.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_070136_705946_2946501A 
X-CRM114-Status: GOOD (  17.53  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Fri, May 31, 2019 at 03:56:58PM +0200, Uwe Kleine-K=F6nig wrote:
> On Fri, May 31, 2019 at 02:23:40PM +0100, Russell King - ARM Linux admin =
wrote:
> > On Fri, May 31, 2019 at 02:50:13PM +0200, Uwe Kleine-K=F6nig wrote:
> > > On Fri, May 31, 2019 at 12:13:47PM +0100, Russell King wrote:
> > > > +static int sa1100_serial_add_one_port(struct sa1100_port *sport, s=
truct platform_device *dev)
> > > > +{
> > > > +	sport->port.dev =3D &dev->dev;
> > > > +	sport->gpios =3D mctrl_gpio_init_noauto(sport->port.dev, 0);
> > > =

> > > the _noauto function was only introduced to ease a transition. I think
> > > the driver would benefit to use mctrl_gpio_init() instead.
> > =

> > In what way would the driver benefit?  mctrl_gpio_init() requires that
> > there are IRQs for each input GPIO.  This is not the case with most
> > SA11x0 platforms, where the GPIO controls are implemented using simple
> > latches, hence that interface is entirely unsuitable.
> =

> Ah, but then you can only use the outputs reliably here as an edge on
> (say) CTS stays unnoticed with both mctrl_gpio_init() and
> mctrl_gpio_init_noauto().

Right that is a risk with a polled approach, but that is the approach
that the SA1100 serial driver has taken ever since it was written
almost twenty years ago, and no one has raised any concerns about
that until now.

> Unless I miss something (which is quite possible given that it's quite
> some time ago I looked into mctrl_gpio) with mctrl_gpio_init_noauto()
> having a CTS-gpio is just ignored unless the modem ctrl lines are
> explicitely requestet while with mctrl_gpio_init() it results in an
> error. Isn't the error the better alternative?

Unless the serial driver polls the modem control line status, which
the SA1100 driver continues to do in exactly the same way after this
conversion.

Do you suggest that we just regress the driver by ripping out this
support that no one has had any problems with, and that is known to
work sufficiently in its day, just because we now don't like it?

-- =

RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps =
up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
