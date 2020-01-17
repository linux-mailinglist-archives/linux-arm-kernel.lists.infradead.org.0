Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C422F1410EA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 19:39:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=80knrkfTGPyPp3J7OZJSB/byqnkuQNj5QnODloSA82Q=; b=pY4DtHFRvnu4RQulx0pbXS8cx
	bSlG71RV7iEWs3wOOcrIaBaa6jrMU0GdhpluK6vWODGOhwZUiSTizH25V6crjsFWJ9lFzLy7jJkb6
	yHeQcMvpJatonU+Xt6QkBYItsoN2AG+ZnP8t7FG2H7hGEOBsRD43kEByI57K4q8axMyiEw8UxLhc1
	jUOcaHWlFMTC4AFH+mLVuOUgBsjbJ18Ow/4a8FnsV1ogOVs7cLOXwQ57hS8s6PyGmiXQhBJIhF2kn
	GPmmjo984nW16oyc6c4tp/xdYbciOp7t7YjTTWTi5I8nNnI8hKmuXWQbpNDfhoIzSuL9dBHk8M5p8
	so9d3s3jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isWWX-0006eE-EZ; Fri, 17 Jan 2020 18:39:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isWWP-0006dX-54
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 18:39:06 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C5B122072B;
 Fri, 17 Jan 2020 18:39:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579286344;
 bh=6rm5uepdIyjw+aZoxr4SzBFKL0Tg5MKu9jhMt9uBjGk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mWzHbgtEjfc9srjAIxQV6fbaWdY6wToG6L4lKDAdWOKc8scRm4r13SqQpktEw0axz
 xxGlxYZFS6YL+bi0X/wE/Hw/Ns1pw1l4zJbygQhCfBsGRgt/kWhVj33wMHi+AzumNR
 IrpnQ4XJpt9NhT2AC/ztRfkeRDYphvHxlvRf6zyc=
Date: Fri, 17 Jan 2020 19:39:01 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@siol.net>
Subject: Re: [PATCH] arm64: dts: allwinner: h6: tanix-tx6: Use internal
 oscillator
Message-ID: <20200117183901.lkieha3hu6nz2hoj@gilmour.lan>
References: <20200113180720.77461-1-jernej.skrabec@siol.net>
 <20200116080652.mp5z7dtrtj3nyhpq@gilmour.lan>
 <20509747.EfDdHjke4D@jernej-laptop>
MIME-Version: 1.0
In-Reply-To: <20509747.EfDdHjke4D@jernej-laptop>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_103905_239494_EC796EA9 
X-CRM114-Status: GOOD (  27.76  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, wens@csie.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2427592325420039200=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2427592325420039200==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="pymbu5lgw5irb6p6"
Content-Disposition: inline


--pymbu5lgw5irb6p6
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Jan 16, 2020 at 05:47:12PM +0100, Jernej =C5=A0krabec wrote:
> Dne =C4=8Detrtek, 16. januar 2020 ob 09:06:52 CET je Maxime Ripard napisa=
l(a):
> > Hi Jernej,
> >
> > On Mon, Jan 13, 2020 at 07:07:20PM +0100, Jernej Skrabec wrote:
> > > Tanix TX6 doesn't have external 32 kHz oscillator, so switch RTC clock
> > > to internal one.
> > >
> > > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > > ---
> > >
> > > While this patch gives one possible solution, I mainly want to start
> > > discussion why Allwinner SoC dtsi reference external 32 kHz crystal
> > > although some boards don't have it. My proposal would be to make clock
> > > property optional, based on the fact if external crystal is present or
> > > not. However, I'm not sure if that is possible at this point or not.
> >
> > It's probably a bit of a dumb question but.. are you sure the crystal
> > is missing?
>
> Although I don't have schematic, I'm pretty sure. Without this patch or o=
ne at
> [1], RTC gives a lot of errors in dmesg. I think that unpopulated XC2 pads
> near SoC (see [2]) are probably reserved for crystal.
>
> With patch in [1], which enables automatic switching in case of error, I =
saw
> that on this box RTC always switched to internal RC.
>
> >
> > The H6 datasheet mentions that the 32kHz crystal needs to be there,
> > and it's part of the power sequence, so I'd expect all boards to have
> > it.
>
> Can you be more specific where it is stated that crystal is mandatory?

I was mostly referring to the power sequence mentionned in the H6
Datasheet (not the user manual, the smaller one).

https://linux-sunxi.org/images/5/5c/Allwinner_H6_V200_Datasheet_V1.1.pdf

Page 74

> Note that schematic of some boards, like OrangePi PC2 (H5) or OrangePi Ze=
ro
> (H3) don't even have 32K crystal in them.

And we can't use the compatible for these..

> >
> > > Driver also considers missing clock property as deprecated (old DT) [=
1],
> > > so this might complicate things even further.
> > >
> > > What do you think?
> >
> > I'm pretty sure (but that would need to be checked) that we never got
> > a node without the clocks property on the H6. If that's the case, then
> > we can add a check on the compatible.
>
> Yes, that would be nice solution. I can work something out if you agree t=
hat
> this is the way.

So if we want to have something that works for the H3 too, then I
guess we need to revert the patch that switches the 32kHz clock source
to the external one all the time, and do it only if we have a clock
provided.

If we don't, we would run from the internal oscillator (which would
work for both the H3 and H6 boards you have I guess?) and if we do we
will still use the better, more accurate, clock.

That would change a bit the behaviour of the old DTs again and revert
to the old behaviour we had, but we didn't hear anything the first
time we did, so I wouldn't be overly concerned.

Does that make sense?
Maxime

--pymbu5lgw5irb6p6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXiH/RQAKCRDj7w1vZxhR
xbfcAP9i1ZlK+Y2jyWhOcBVCr7LdqTqBFTaqpH+3E3F0/+TWaAD/bYjxs8/lrxo+
1KQCUUoscHHEne5JK4ivcaQbvqiZ4gw=
=bHvI
-----END PGP SIGNATURE-----

--pymbu5lgw5irb6p6--


--===============2427592325420039200==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2427592325420039200==--

