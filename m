Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8857CB0C43
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 12:07:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DzjN29NEiSUzYmf28SWAbByTm5G2iZqx7Z+uCQKCbxM=; b=LIvf0Von42oKh8
	hQ8hAWhyinJy/gcRvKezXCcwA9MuYuUJmDxlYSh+YxeIcu0MrjBzbsbUepVU++VhK0mFd4E5XCNeQ
	cIn5QheSMArJn0AWrqAxiOGFRreiHfatgXqCpdRy2bMUk7MEWRb5+lBOBUSpXQh7PYOjI8TwwPfZO
	RylfyrYWoTHMszqvamqc6K2k6PaOvd+pkP6aH8wdVwoBz8paeJRRJ47Pe0NVXHbrGm8k2EjcixJpk
	600immVTkp8l6eFqDnUDCWbWhikwCyLhMHgc4FDnjJHNN22WYHYkaOBQ7g3VNkaGTR4A7SQ2HbaNg
	q3Dtk0nXnMsBRfGjoJfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8M0L-0003kA-Pc; Thu, 12 Sep 2019 10:07:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8M0A-0003jf-8a
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 10:06:59 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1i8M08-0000kf-G0; Thu, 12 Sep 2019 12:06:56 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1i8M07-00077t-7R; Thu, 12 Sep 2019 12:06:55 +0200
Date: Thu, 12 Sep 2019 12:06:55 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH RFC] gpio: define gpio-init nodes to initialize pins
 similar to hogs
Message-ID: <20190912100655.jucqrh2jaf6vgwm2@pengutronix.de>
References: <20190909105919.30418-1-u.kleine-koenig@pengutronix.de>
 <CACRpkdZTzYtxjmiEnbvSn0-WQtxADLrxJGb_Q83gtRFhcShRiQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdZTzYtxjmiEnbvSn0-WQtxADLrxJGb_Q83gtRFhcShRiQ@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_030658_303345_97340E4B 
X-CRM114-Status: GOOD (  22.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Pawel Moll <pawel.moll@arm.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Ian Campbell <ijc+devicetree@hellion.org.uk>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 Kumar Gala <galak@codeaurora.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 12, 2019 at 10:05:23AM +0100, Linus Walleij wrote:
> On Mon, Sep 9, 2019 at 11:59 AM Uwe Kleine-K=F6nig
> <u.kleine-koenig@pengutronix.de> wrote:
> =

> > Sometimes it is handy to be able to easily define a "safe" state for a
> > GPIO. This might for example be used to ensure that an ethernet phy is
> > properly reset during startup or just that all pins have a defined state
> > to minimize leakage current. As such a pin must be requestable (and
> > changable) by a device driver, a gpio-hog cannot be used.
> >
> > So define a GPIO initializer with a syntax identical to a GPIO hog just
> > using "gpio-init" as identifier instead of "gpio-hog".
> >
> > The usage I have in mind (and also implemented in a custom patch stack
> > on top of barebox already) is targeting the bootloader and not
> > necessarily Linux as such an boot-up initialisation should be done as
> > early as possible.
> >
> > Not-yet-signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.=
de>
> > ---
> > Hello,
> >
> > maybe it also makes sense to use "gpio-safe"? Maybe it (then) makes
> > sense to reset the gpio in the indicated state after it is released?
> >
> > Also it might be beneficial to make the wording more explicit in the
> > description and for example tell that only one of gpio-hog and gpio-init
> > must be provided.
> =

> It's no secret that I am in favor of this approach, as I like consistency
> with the hogs.
> =

> The DT people have been against, as they prefer something like an
> initial array of values akin to gpio-names IIRC. But this is a good
> time for them to speak up.

To be fair, I added them to Cc:. For the new readers: The diff I
suggested looks as follows (probably whitespace broken as I cut-n-pasted):

> diff --git a/Documentation/devicetree/bindings/gpio/gpio.txt b/Documentat=
ion/devicetree/bindings/gpio/gpio.txt
> index a8895d339bfe..5b7883f5520f 100644
> --- a/Documentation/devicetree/bindings/gpio/gpio.txt
> +++ b/Documentation/devicetree/bindings/gpio/gpio.txt
> @@ -182,13 +182,16 @@ gpio-controller@00000000 {
>                 "poweroff", "reset";
>  }
> =

> -The GPIO chip may contain GPIO hog definitions. GPIO hogging is a mechan=
ism
> -providing automatic GPIO request and configuration as part of the
> -gpio-controller's driver probe function.
> +The GPIO chip may contain GPIO hog and init definitions. GPIO hogging is=
 a
> +mechanism providing automatic GPIO request and configuration as part of =
the
> +gpio-controller's driver probe function. An GPIO initializer is similar =
but
> +doesn't prevent later requesting and reconfiguration.
> =

>  Each GPIO hog definition is represented as a child node of the GPIO cont=
roller.
>  Required properties:
>  - gpio-hog:   A property specifying that this child node represents a GP=
IO hog.
> +- gpio-init:  A property specifying that this child node represents a GP=
IO
> +              initializer.
>  - gpios:      Store the GPIO information (id, flags, ...) for each GPIO =
to
>                affect. Shall contain an integer multiple of the number of=
 cells
>                specified in its parent node (GPIO controller node).

How would this alternate approach look like? Something like:

	gpio-controler@123450 {
		compatible =3D "..";
		gpio-controller;
		#gpio-cells =3D <2>;

		init =3D "", "output-high", "", "input", "", "", "output-low";
	};

? Compared to the solution I suggested (and hogs) this differs as you cannot
pass flags like GPIO_ACTIVE_LOW.

(Sidenode: As

	mygpio {
		gpio-hog;
		gpios =3D <5 GPIO_ACTIVE_LOW>;
		output-low;
	};

makes AFAIK the output high it would be less surprising if the binding
supported "output-active" and "output-inactive".)

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
