Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF5C43682
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 15:27:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JHKdaooYtfhSWoBl1HMRA0a3Z4diQKwv5QB5MupuEiE=; b=blvM4vrjcvzZAftHc2w8NGW5r
	u94+REot3TufrH85ukr9FmsuKs3dWGSPaVHu/5u4T3VYrIB9BTn1z7OkTFj7ztJaubQTtfaGJQb+I
	//7gBT25GlPxpHUIFU+GIi1hH/dPYOdsFTaPP3p/S2clJaY8gFKWW+sgeTINsYfTN8N/zvgw0RBz4
	GVM4Adp0RN39URI6y2ShevPWSQQeVZvZsAoUfDFyANwJ0zm843DpgeYpBH2wUFhT8dhl3WemrTWt7
	edO8VCAJGKKEdAp763favyFp1Ik+q7kmgl4msAgv/qp/bDZk+LCEnlDVPUyXS4884q46PtHMG7FDg
	wUZOIUlKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbPlX-0004Pa-CK; Thu, 13 Jun 2019 13:27:43 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbPk2-0003L0-81
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 13:26:12 +0000
X-Originating-IP: 90.88.159.246
Received: from localhost (aaubervilliers-681-1-40-246.w90-88.abo.wanadoo.fr
 [90.88.159.246]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 48DD74000A;
 Thu, 13 Jun 2019 13:26:04 +0000 (UTC)
Date: Wed, 12 Jun 2019 17:43:25 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Frank Lee <tiny.windzz@gmail.com>
Subject: Re: [PATCH v3 1/3] thermal: sun8i: add thermal driver for h6
Message-ID: <20190612154325.m6z7xsxlpdq4wkxv@flea>
References: <20190525181329.18657-1-tiny.windzz@gmail.com>
 <20190525181329.18657-2-tiny.windzz@gmail.com>
 <20190527122752.uc7q6zkjti3zag4q@flea>
 <CAEExFWtxEB67Pv-8x4ry=tZcJjOD6Kxydq_YB73Gox25VmQn7A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAEExFWtxEB67Pv-8x4ry=tZcJjOD6Kxydq_YB73Gox25VmQn7A@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_062610_548489_A2DAEF27 
X-CRM114-Status: GOOD (  15.90  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.8 DATE_IN_PAST_12_24     Date: is 12 to 24 hours before Received: date
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
 Linux PM <linux-pm@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 robh+dt@kernel.org, Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 rui.zhang@intel.com, paulmck@linux.ibm.com, David Miller <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============5789302248751940124=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5789302248751940124==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="oy7r5ps7iphlasam"
Content-Disposition: inline


--oy7r5ps7iphlasam
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jun 07, 2019 at 09:34:44PM +0800, Frank Lee wrote:
> On Mon, May 27, 2019 at 8:27 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > +     ret = devm_request_threaded_irq(dev, irq, NULL,
> > > +                                     tmdev->chip->irq_thread,
> > > +                                     IRQF_ONESHOT, "ths", tmdev);
> > > +     if (ret)
> > > +             return ret;
> >
> > Is there any particular reason to use a threaded interrupt?
>
> Just to improve real-time.

What do you mean by real-time here? If anything, that will increase
the latency of the interrupts here.

And in preempt-rt, regular top-half interrupts will be forced into a
threaded interrupt anyway.

> > > +static int sun8i_ths_remove(struct platform_device *pdev)
> > > +{
> > > +     struct ths_device *tmdev = platform_get_drvdata(pdev);
> > > +
> > > +     clk_disable_unprepare(tmdev->bus_clk);
> >
> > I know that we discussed that already, but I'm not sure why you switch
> > back to a regular call to regmap_init_mmio, while regmap_init_mmio_clk
> > will take care of enabling and disabling the bus clock for you?
>
> It seems that regmap_init_mmio_clk just get clk and prepare clk
> but no enable.

At init time, yes. But it will enable it only when you access the
registers, which is what you want anyway.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--oy7r5ps7iphlasam
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXQEdnQAKCRDj7w1vZxhR
xXCpAQCYtE67+V1lgKQJZxd7NFi0spq61ecHzscNxJ/t6H+OXQD/ZYw/N1ST4pg3
MGrcJRd4vnNOs5alaAicdNFepVsmQQQ=
=g51D
-----END PGP SIGNATURE-----

--oy7r5ps7iphlasam--


--===============5789302248751940124==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5789302248751940124==--

