Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B02892494A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 09:47:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SolysjVfHmFHyeNGVUjhGO50AfvI7yINsplM3yT7piA=; b=bVqIqNh+bOCEdsBbAOFq4whSq
	2DXdl2VPv2Z0pyw1lrwyk8fZXkHAdM+3b9Ey2jH+Od5NIHujh3win+nZKPsxYv69/o5eQ4qQSj/jH
	Fjsk65J055PEtpXM+uRSXaQ9VM5KuyDag7m77jz3j2H6nJt1zvflRnwmEk60qkBgSwCb8IMyfAgmv
	v6TI1lSs5vBK0wAd0H9Ln7QLeUx8ZE3XU3gS+3V6v75UIR0XDvs4bjvJdUytkBfMlBAMrkEedt9NA
	bV6ViXDVGUPhJsmCBl4gzGwaEZCSlG3AUDdtqERmqIv2SUrvu3GAc0nJkKTw4JtLujzfbahcrG/Uk
	thAW+gCwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSzV1-0006Ne-Q8; Tue, 21 May 2019 07:47:51 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSzUt-0006Mw-Fe
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 07:47:45 +0000
X-Originating-IP: 90.88.22.185
Received: from localhost (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr
 [90.88.22.185]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 2CB2F240004;
 Tue, 21 May 2019 07:47:24 +0000 (UTC)
Date: Tue, 21 May 2019 09:47:23 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Vasily Khoruzhick <anarsoul@gmail.com>
Subject: Re: [PATCH 2/3] thermal: sun50i: add thermal driver for h6
Message-ID: <20190521074723.s3hcrnpc5pkdreqe@flea>
References: <20190512082614.9045-1-tiny.windzz@gmail.com>
 <20190512082614.9045-3-tiny.windzz@gmail.com>
 <20190512133930.t5txssl7mou2gljt@flea>
 <CA+E=qVe82xXPBXpgyLgt2ME6EjGMWWMVvD5eU-b3ntQk_okMdg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+E=qVe82xXPBXpgyLgt2ME6EjGMWWMVvD5eU-b3ntQk_okMdg@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_004743_860001_3EFB6FAC 
X-CRM114-Status: GOOD (  16.91  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Yangtao Li <tiny.windzz@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 bjorn.andersson@linaro.org, marc.w.gonzalez@free.fr,
 mchehab+samsung@kernel.org, paulmck@linux.ibm.com,
 Stefan Wahren <stefan.wahren@i2se.com>, daniel.lezcano@linaro.org,
 Chen-Yu Tsai <wens@csie.org>, Jagan Teki <jagan@amarulasolutions.com>,
 andy.gross@linaro.org, rui.zhang@intel.com,
 devicetree <devicetree@vger.kernel.org>, linux-pm@vger.kernel.org,
 edubezval@gmail.com, Olof Johansson <olof@lixom.net>,
 Rob Herring <robh+dt@kernel.org>, Jonathan.Cameron@huawei.com,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, enric.balletbo@collabora.com,
 "David S. Miller" <davem@davemloft.net>
Content-Type: multipart/mixed; boundary="===============6558717489134309426=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6558717489134309426==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="uzo2p4ihnuoqkun5"
Content-Disposition: inline


--uzo2p4ihnuoqkun5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, May 17, 2019 at 12:21:57PM -0700, Vasily Khoruzhick wrote:
> On Sun, May 12, 2019 at 6:39 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > +static int tsens_get_temp(void *data, int *temp)
> > > +{
> > > +     struct tsensor *s = data;
> > > +     struct tsens_device *tmdev = s->tmdev;
> > > +     int val;
> > > +
> > > +     regmap_read(tmdev->regmap, tmdev->chip->temp_data_base +
> > > +                 0x4 * s->id, &val);
> > > +
> > > +     if (unlikely(val == 0))
> > > +             return -EBUSY;
> >
> > I'm not sure why a val equals to 0 would be associated with EBUSY?
>
> First few reads of temp data return 0, and in case of H6 (and A64) it
> means max temperature, so kernel does emergency shutdown. I used
> -ETIMEDOUT as a workaround in my tree, but it's not appropriate here
> either. Any suggestions are welcome.

If we can use the interrupts and wait for a value to be converted
before we read, then we should do that.

> > Also, it's not in a fast path, so you can drop the unlikely. Chances
> > are it's not that unlikely anyway.
>
> As I said earlier, it's just few samples after start up.

That's not really my point though. unlikely is tricky to get right,
because the compiler has his own meaning of what exactly unlikely
means statistically to be able to do the right branching
optimisations.

However, this particular real case scenario might not have the same
probability, which might result in a poor optimisation choice due to
the unlikely being there.

Moreover, this probability can evolve in the future. For example,
let's assume that we enable dynamic PM in the driver. Starting from
there, most of the reads become "first" reads, and your unlikely case
becomes the likely one.

My point was that, because of this, and because of the fact that it's
really not a hot path, we should just drop it.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--uzo2p4ihnuoqkun5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOOtCwAKCRDj7w1vZxhR
xagHAQDdykPbWKdDic/RhsfGFYna5RZkWIPRvdVdikshfRJofQEAoFj6rDEFv4qd
usQ5po0YFvhjL3xoWPQb0PQV4k9yLwI=
=oWJX
-----END PGP SIGNATURE-----

--uzo2p4ihnuoqkun5--


--===============6558717489134309426==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6558717489134309426==--

