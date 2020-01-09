Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B86E0135E3C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:28:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4BUeGwTJZ/nu/eaV1ff6tvbS1f7pXq6GQr9C9WXgRWw=; b=D2WuNOk+LKPYtoC4AiXy8P8Bk
	n+34/N3rdFfaq8z+ax0Y0/WYrvFUx78ZEgdJaZb+uFUJcwNk06m0mpWyoSQhNBbu54BM1TIzQ3bHA
	kJMMEuzmHl1wwgfBeWnw49helZfXiowJSrOVmpzJuNKsigBeoXOr8aSmGM6j2ooCcXMEgA3wnTCK2
	tvQbd5ygV9bjUwj/8szUAUugBcb4qgtLvfQvwERFzqPa03RG/Pq2rpESNtgTc3+XO/0Lt7T5GQcel
	KAzO4LLcILtPQNuklJxU5B18Msb25PWb+wev4QAnu5hONj5bkj/V00Qv20IzGzSmQebt0M+oOB+UL
	XPWM6qJEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipafZ-0004tF-PG; Thu, 09 Jan 2020 16:28:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipafR-0004sc-Rt; Thu, 09 Jan 2020 16:28:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CE6271FB;
 Thu,  9 Jan 2020 08:28:16 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 52D173F703;
 Thu,  9 Jan 2020 08:28:16 -0800 (PST)
Date: Thu, 9 Jan 2020 16:28:14 +0000
From: Mark Brown <broonie@kernel.org>
To: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH v2 4/7] drm/panfrost: Add support for a second regulator
 for the GPU
Message-ID: <20200109162814.GB3702@sirena.org.uk>
References: <20200108052337.65916-1-drinkcat@chromium.org>
 <20200108052337.65916-5-drinkcat@chromium.org>
 <20200108132302.GA3817@sirena.org.uk>
 <CANMq1KBo8ND+YDHaCw3yZZ0RUr69-NSUcVbqu38DuZvHUB-LFw@mail.gmail.com>
 <09ddfac3-da8d-c039-92a0-d0f51dc3fea5@arm.com>
MIME-Version: 1.0
In-Reply-To: <09ddfac3-da8d-c039-92a0-d0f51dc3fea5@arm.com>
X-Cookie: Killing turkeys causes winter.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_082817_985507_D6229024 
X-CRM114-Status: GOOD (  23.14  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 Devicetree List <devicetree@vger.kernel.org>,
 Nicolas Boichat <drinkcat@chromium.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>,
 lkml <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Hsin-Yi Wang <hsinyi@chromium.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============3164395380486573612=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3164395380486573612==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="St7VIuEGZ6dlpu13"
Content-Disposition: inline


--St7VIuEGZ6dlpu13
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jan 09, 2020 at 02:14:42PM +0000, Steven Price wrote:
> On 08/01/2020 22:52, Nicolas Boichat wrote:

> > That'd be a bit awkward to match, though... Currently all bifrost
> > share the same compatible "arm,mali-bifrost", and it'd seem
> > weird/wrong to match "mediatek,mt8183-mali" in this driver? I have no
> > idea if any other Mali implementation will require a second regulator,
> > but with the MT8183 we do need it, see below.

This doesn't sound particularly hard, just new.  Plenty of other devices
have quirks done based on the SoC they're in or the IP revision, this
would just be another of those quirks.

> > Well if devfreq was working (see patch 7
> > https://patchwork.kernel.org/patch/11322851/ for a partial
> > implementation), it would adjust both mali and sram regulators, see
> > the OPP table in patch 2
> > (https://patchwork.kernel.org/patch/11322825/): SRAM voltage needs to
> > be increased for frequencies >=698Mhz.

> > Now if you have some better idea how to implement this, I'm all ears!

Set a flag based on the compatible, then base runtime decisions off
that.

> I'm not sure if it's better, but could we just encode the list of
> regulators into device tree. I'm a bit worried about special casing an
> "sram" regulator given that other platforms might have a similar
> situation but call the second regulator a different name.

Obviously the list of regulators bound on a given platform is encoded in
the device tree but you shouldn't really be relying on that to figure
out what to request in the driver - the driver should know what it's
expecting.  Bear in mind that getting regulator stuff wrong can result
in physical damage to the system so it pays to be careful and to
consider that platform integrators have a tendency to rely on things
that just happen to work but aren't a good idea or accurate
representations of the system.  It's certainly *possible* to do
something like that, the information is there, but I would not in any
way recommend doing things that way as it's likely to not be robust.

The possibility that the regulator setup may vary on other platforms
(which I'd expect TBH) does suggest that just requesting a bunch of
supply names optionally and hoping that we got all the ones that are
important on a given platform is going to lead to trouble down the line.

Steve, please fix your mail client to word wrap within paragraphs at
something substantially less than 80 columns.  Doing this makes your
messages much easier to read and reply to.

--St7VIuEGZ6dlpu13
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl4XVJ0ACgkQJNaLcl1U
h9AYxwf+KvXLp3chGCrua6k7mYwzuRnBu6lxudNUYlU35S6W/jvj7j24xoetg2SJ
9bvm5PnWREES8yFnNE3P0v0XhwZ7KP223VeOsNEUEXaD34txxpfgIsFJ0pBSl5MY
2s7l8R4CSe0EYuBc2Rg1g+KGb8mOwvdVaOYKdgMXHiscQ4Iq2QNNA+1kVjLFGE72
kTPnycN7SvQLsxzJbMm7zday5eObx2CHrfxZjdlnSjGnao7fIcyIRnc6rjSf4VkG
+WjOYltzHe0oe9yfN+4+wjawAPt5OIr9BeD3L/Vdm9Lvy59wTPuairTYgV1e0+oV
GDQ1CHWCdcr1P9Yi96zKy/4P4eEShw==
=+CID
-----END PGP SIGNATURE-----

--St7VIuEGZ6dlpu13--


--===============3164395380486573612==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3164395380486573612==--

