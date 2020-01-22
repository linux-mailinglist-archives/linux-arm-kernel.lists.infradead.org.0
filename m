Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32939145469
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 13:34:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FbC91owk/fvFQi2spOHM9jfY9qJACvWorBcVtysIXO8=; b=YL855iq/wZcoqa7oXr7SUOE7C
	7qgYTAzG8WWyRJr1Sqndt4AEyWo8hUXuIIjbgHUO2EgBU7kDF/yyjz6oPJ23iB4kApI4EuiowedYx
	f8BpHulFPkEBIx5MUL3NDzViLofiv2S9p9n3LZHT6nCutc/J5ouE6t+W7UHK3bVLx4Veqi0JwoCOD
	OZB+8Y581F62gmnWp0VGf9ic7Fmqa8wkkTNjiGTbd9wo/PHSjF1hQWg4jGhus95X9ICa+icaT0V7n
	jO5YYPkUQbg2BUrpNWf/JuGKwtrA3MgAdSCeZlGfAxaT5m1sZOhnvXGJHsq9OQ9R3QH6FOsPsWj4a
	2+ERfRnhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuFD4-0004Sc-8W; Wed, 22 Jan 2020 12:34:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuFCu-0004Rr-Ai; Wed, 22 Jan 2020 12:34:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4ECCE328;
 Wed, 22 Jan 2020 04:34:03 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C34943F52E;
 Wed, 22 Jan 2020 04:34:02 -0800 (PST)
Date: Wed, 22 Jan 2020 12:34:01 +0000
From: Mark Brown <broonie@kernel.org>
To: Wen Su <Wen.Su@mediatek.com>
Subject: Re: [RESEND 3/4] regulator: mt6359: Add support for MT6359 regulator
Message-ID: <20200122123401.GD3833@sirena.org.uk>
References: <1579506450-21830-1-git-send-email-Wen.Su@mediatek.com>
 <1579506450-21830-4-git-send-email-Wen.Su@mediatek.com>
 <20200120190427.GO6852@sirena.org.uk>
 <1579659806.6612.12.camel@mtkswgap22>
MIME-Version: 1.0
In-Reply-To: <1579659806.6612.12.camel@mtkswgap22>
X-Cookie: Sorry.  Nice try.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_043404_457931_9A625FD5 
X-CRM114-Status: GOOD (  18.87  )
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0101392824149724177=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0101392824149724177==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rqzD5py0kzyFAOWN"
Content-Disposition: inline


--rqzD5py0kzyFAOWN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 22, 2020 at 10:23:26AM +0800, Wen Su wrote:
> On Mon, 2020-01-20 at 19:04 +0000, Mark Brown wrote:

> > This looks like you should be using regulator_list_voltage_table() and
> > associated functions, probably map_voltage_ascend() or _iterate() and
> > just a simple set_voltage_sel_regmap().

> Thanks for your suggestion.
> Currently it's using regulator_list_voltage_table() and
> regulator_map_voltage_iterate() as below:

> The reason to use mt6359_set_voltage_sel() is to convert selector value
> to hardware register index value:
> 	idx =3D pvol[selector];

The whole idea behind regulator_list_voltage_table() is that it does the
selector to voltage conversion for you, you shouldn't need to do any
additional mapping.

> To avoid using mt6359_set_voltage_sel(), the *_voltages array need to be
> filled with zeros as below:=20
> Current:
> static const u32 vemc_voltages[] =3D {
> 	2900000, 3000000, 3300000,
> };
> static const u32 vemc_idx[] =3D {
> 	10, 11, 13,
> };

> change to:
> static const u32 vxo22_voltages[] =3D {
> 	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900000, 3000000, 0, 3300000,
> };

That's fine, the table is small and it only needs to be iterated in
contexts where we're doing I2C I/O.  If it's really a problem introduce
generic helpers for this rather than open coding.

> > > +	switch (mode) {
> > > +	case REGULATOR_MODE_FAST:
> > > +		if (curr_mode =3D=3D REGULATOR_MODE_IDLE) {
> > > +			WARN_ON(1);
> > > +			dev_notice(&rdev->dev,
> > > +				   "BUCK %s is LP mode, can't FPWM\n",
> > > +				   rdev->desc->name);
> > > +			return -EIO;

> > I'd expect the device to go out of low power mode then into force PWM
> > mode if it has to do that rather than reject the operation.

> The device low power mode may control by hardware pad, so that the
> reason to reject the operation is the device low power mode can not go
> out by software.

If this is being forced by hardware you need to check for that directly
rather than just rejecting it without even trying (but hopefully the
user set their constraints such that this doesn't happen).

> Another scenario is one user set the device to low power mode, we think
> it's not suitable to change device mode to _FAST mode by another user.

It's not your driver's problem to worry about arbitrating between higher
level users, let the framework deal with that (and notice that we have
no code in kernel that actually sets the mode directly at runtime).
That way we will have consistent behaviour between devices rather than
devices trying to enforce their own policies.

--rqzD5py0kzyFAOWN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl4oQTgACgkQJNaLcl1U
h9D4Ygf+Nziq8bZrmbOIKqexjp2v9TvNwy09gwUlAJs9KJ9MjXFHTprK96JdeRLn
qfl46x/Qb1TgrDRaFus46RApEELBHLOJ8MjMIz0MSlaVeJqyHwn46vTild91pSl3
6vHfkJKRFHx3Ix2wudcdRcvpGn/HHGCydNn8+mLDOR9GDaZCOn2aOq2LVTU01izu
7ulyEaYk3jIE86BfISfoXXGZ8eyHYaSynQia91odZsZD4J6W9IaGXFms9MORVIbm
Ii3wwPwOufroxvff+6HOucaYbNN6UpVbKsvxJ4f0S9U5+T77RgDDdv6Jp6jv/Kjx
jzkOyueUpjLzFBvhEKl52FhmXf74Vg==
=ZzAE
-----END PGP SIGNATURE-----

--rqzD5py0kzyFAOWN--


--===============0101392824149724177==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0101392824149724177==--

