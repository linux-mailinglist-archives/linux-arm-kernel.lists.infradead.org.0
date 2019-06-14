Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 655EF456E2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 10:02:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Vbml2LSPHw4auhhMOvVb38kWTWOHrfXDenTx5/hhN3A=; b=MCjrRJT5ndq84GVYai5Hve60g
	xXzhDmrw1SNZRlunNenyy6eQxIXDcXK8w6Zdn+YBzGkiyhVuT6YSFs9q2MI8e61dvnIhJCYaGbt6H
	PspmCmvAyJSJ2B9OSrtbVZ/ogPcGowXCqouexNGSvGb86QUsbUWZzx3CkvCASuSjadDBlBAA/X2DG
	Lkc6IAkDwNqh1J1R1iqlKSDM6TjfR7ceSF5o1Pwubg5gK3jatFmowK7Od1dF9z8PrGWcJSMmUo+TT
	cAXGVRh82FOzkV51xjgB+35BiE2JbzRyKgNzXJAvmZ7FrxyKD2yJ75KrRH+t1wsgTpn053Z8DL4Eb
	Mx7+XMe2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbhAP-0007P7-RI; Fri, 14 Jun 2019 08:02:33 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbhAA-0007O3-Lj
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 08:02:20 +0000
X-Originating-IP: 90.88.23.150
Received: from localhost (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr
 [90.88.23.150]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 33ACCE000E;
 Fri, 14 Jun 2019 08:02:01 +0000 (UTC)
Date: Fri, 14 Jun 2019 10:02:00 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Frank Lee <tiny.windzz@gmail.com>
Subject: Re: [PATCH v3 1/3] thermal: sun8i: add thermal driver for h6
Message-ID: <20190614080200.fc3mah5q3mmihxa5@flea>
References: <20190525181329.18657-1-tiny.windzz@gmail.com>
 <20190525181329.18657-2-tiny.windzz@gmail.com>
 <20190527122752.uc7q6zkjti3zag4q@flea>
 <CAEExFWtxEB67Pv-8x4ry=tZcJjOD6Kxydq_YB73Gox25VmQn7A@mail.gmail.com>
 <20190612154325.m6z7xsxlpdq4wkxv@flea>
 <CAEExFWskAsNquULKBLtBFUOosNpks8L6aUhw-+cF=oZ0aghAtQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAEExFWskAsNquULKBLtBFUOosNpks8L6aUhw-+cF=oZ0aghAtQ@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_010219_034948_93CB5D27 
X-CRM114-Status: GOOD (  23.20  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Linux PM <linux-pm@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, rui.zhang@intel.com,
 paulmck@linux.ibm.com, David Miller <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============7965508350391872190=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7965508350391872190==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="dxk6xy5el3dsgg5j"
Content-Disposition: inline


--dxk6xy5el3dsgg5j
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Thu, Jun 13, 2019 at 11:35:15PM +0800, Frank Lee wrote:
> On Thu, Jun 13, 2019 at 9:26 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> >
> > On Fri, Jun 07, 2019 at 09:34:44PM +0800, Frank Lee wrote:
> > > On Mon, May 27, 2019 at 8:27 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > > +     ret = devm_request_threaded_irq(dev, irq, NULL,
> > > > > +                                     tmdev->chip->irq_thread,
> > > > > +                                     IRQF_ONESHOT, "ths", tmdev);
> > > > > +     if (ret)
> > > > > +             return ret;
> > > >
> > > > Is there any particular reason to use a threaded interrupt?
> > >
> > > Just to improve real-time.
> >
> > What do you mean by real-time here? If anything, that will increase
> > the latency of the interrupts here.
> >
> > And in preempt-rt, regular top-half interrupts will be forced into a
> > threaded interrupt anyway.
> >
> > > > > +static int sun8i_ths_remove(struct platform_device *pdev)
> > > > > +{
> > > > > +     struct ths_device *tmdev = platform_get_drvdata(pdev);
> > > > > +
> > > > > +     clk_disable_unprepare(tmdev->bus_clk);
> > > >
> > > > I know that we discussed that already, but I'm not sure why you switch
> > > > back to a regular call to regmap_init_mmio, while regmap_init_mmio_clk
> > > > will take care of enabling and disabling the bus clock for you?
> > >
> > > It seems that regmap_init_mmio_clk just get clk and prepare clk
> > > but no enable.
> >
> > At init time, yes. But it will enable it only when you access the
> > registers, which is what you want anyway.
>
> But after accessing the register, it turns the clock off, which
> affects the ad conversion and the occurrence of the interrupt.

Ah, so that's how it works. Yeah, it makes sense then.

> In addition, when resuming from suspend, we need to enable
> the clock, so I think it is necessary to have a clock pointer.

Yep, indeed.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--dxk6xy5el3dsgg5j
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXQNUbwAKCRDj7w1vZxhR
xTHXAQDbQy0XDEjBIuIG+GZONRc1Ot+viplVAkNIuNN7+kFqRQD/VS0rr3UB9Kuc
LhxMlX6QWweIU+7DDpUsc+GtkieIvAY=
=PMaQ
-----END PGP SIGNATURE-----

--dxk6xy5el3dsgg5j--


--===============7965508350391872190==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7965508350391872190==--

