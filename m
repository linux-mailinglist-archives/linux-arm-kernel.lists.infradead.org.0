Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D1EA175646
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 09:47:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RCgkQzlNaahcf6AqXghmn2ZSe9Zn9ucR5BRvxkMKDY8=; b=XpAwJe9+B+N4H5
	p/Crb42XXKIM6sY7TIFZUKQuYchszFGufP6dpYAkDGcCldj0RKJ9aAyO3BCsXFDZp9di5iRIvRnsY
	6vA2tHbPa1fIPI3FqK7drSsJREhYNupflZZi+SATXp9O0uRX7CZo3FNZTrCMeLv13Ut6Jx7LCaLRM
	bZr3v3QUej4zjygSiKA7XhCeHxxrI1xyOlIP6j1s6v8Kf5JWxqnsbqZSggxbAmInjV5ozNhBbXQAs
	8yw1T+hiVHfyCf0lipMu7PkjeQ7lAt3KXlxbFSR3kOQO+T/pfTnrzbY7C8N1rvJ8vBruGHF50O3kB
	SaPOeqjvfOhDrnINTjMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8gji-00031B-Fs; Mon, 02 Mar 2020 08:47:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8gjb-000307-Rp
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 08:47:33 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1j8gjZ-0000kI-Rz; Mon, 02 Mar 2020 09:47:29 +0100
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1j8gjY-0002Mv-G8; Mon, 02 Mar 2020 09:47:28 +0100
Date: Mon, 2 Mar 2020 09:47:28 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: GPIOs not correctly exported via sysfs on ATSAMA5D2
Message-ID: <20200302084728.n7rblgkqlfiscjgx@pengutronix.de>
References: <CAMiSF3BULWkyWTytTBcFfch9YaV_QzuBiawk-ZqEcQnsuGdUiQ@mail.gmail.com>
 <20200228123910.hbf2bnk3w2dbishr@M43218.corp.atmel.com>
 <CACRpkdYKemE6+OkWOWqOAqzaVEDNE9id+P_XRFaNzWs8N6c7mw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdYKemE6+OkWOWqOAqzaVEDNE9id+P_XRFaNzWs8N6c7mw@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_004731_904548_8BBFF881 
X-CRM114-Status: GOOD (  22.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Russell King <linux@armlinux.org.uk>,
 Linux GPIO List <linux-gpio@vger.kernel.org>,
 Romain Izard <romain.izard.pro@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 28, 2020 at 02:36:11PM +0100, Linus Walleij wrote:
> On Fri, Feb 28, 2020 at 1:39 PM Ludovic Desroches
> <ludovic.desroches@microchip.com> wrote:
> =

> > The AT91 PIO4 pinctrl driver doesn't implement gpio_request_enable()
> > contrary to the AT91 PIO pinctrl driver. If we implement it, then you
> > would be able to change the pin muxing and configuration from the sysfs.
> > The issue is nothing prevent you do this and so to possibly break a
> > device.
> >
> > There is the strict pinmux_ops property which prevents from this
> > situation. The side effect is that we must not declare a pinmux/conf for
> > a GPIO so all the DT files have to been updated. That's not a big deal,
> > the problem is, at that time, the GPIO subsystem didn't allow to set the
> > bias for instance. It may have changed but not sure it covers all the
> > possible configurations we have from the pinmuxing subsystem.
> =

> Yes and Russell also points very clearly to the root of the problem:
> =

> - Some pin multiplexers are non-strict meaning a line can be used
>   for say GPIO and something else (such as SDIO) at the same time.
>   Usually this is an observation from electronics, such that the GPIO
>   input register will always report the logical state on the line whether
>   it is in "gpio mode" or something else, making it possible to snoop
>   the line, or, as in the I2C case, it is perfectly fine to, without glit=
ches,
>   pull the line out of other use cases and into the GPIO realm and do
>   GPIO things such as bus recovery actively driving the line despite
>   it being connected in the mux to SDIO or I2C at the same time.
> =

> - At the same time some system designers and driver authors are
>   driven by the ambition to create a system that is simple, has no
>   exceptions and has a clear separation of concerns, making it
>   impossible for the user - even a kernel developer or real savvy
>   hacker playing around with the deprecated sysfs ABI - to shoot
>   themselves in the foot. These are ambitious and admirable people
>   that want to protect their users and make it easy to do the right
>   thing. So they sort everything out and flag their pin multiplexers
>   as "strict", allowing only one use case at the time: this device is
>   either I2C or SDIO.
> =

> Personally I am not flagging any of my drivers strict because I'm
> just a pragmatist and don't use the system architect type of reasoning
> much in what I do. But it is admittedly a matter of taste. The flag
> "strict" tells you something about the driver author's values and
> ambition.

This points out another problem: Drivers behave differently in an area
where there is no technical need. So people are surprised which is a bad
thing. For me giving a gpio/pinctrl driver maintainer the freedom to
label the device as "strict" or not is similar to putting policy in the
kernel which is frowed for.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
