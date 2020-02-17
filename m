Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D9B16162F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 16:30:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=O8oIPRT3NKHz24KgxD7T6yoXneIWRjwL1x8lx80zZ2o=; b=G2m0RYTomcjs+qPpkC8e/78KT
	enbWV5TIdro0UheGDEuj7jxiM+aJVwy5PtERQDacrXaj+9xj5N5WOwefAYS1wGVk06os6cPQCzuGu
	HJ+r6MUkDFGYeV28idw3Nug5QNqlC/KxbFVZrK3GtghtIrvVwH1aM/SbX1p6O06BuPWRaMr8Mum1t
	i8to1phVi5eyrr8TnR/o9q5RaaC6MJQz1oHCvFdVoDo6QXXEDrxTGEkt/5Eba0tF6wyfXp4g4y3Pb
	GeYu7Nc9qkcX66H3CGtwlYjqzNkUSyFnc+anOgHAE64VLJn3KDAmShx15A4IWzeSbyUiSMNCcsXl4
	XZKnpfjSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3iM2-0004fQ-0c; Mon, 17 Feb 2020 15:30:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3iLr-0004en-2v
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 15:30:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CCCDE30E;
 Mon, 17 Feb 2020 07:30:25 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4E50E3F703;
 Mon, 17 Feb 2020 07:30:25 -0800 (PST)
Date: Mon, 17 Feb 2020 15:30:23 +0000
From: Mark Brown <broonie@kernel.org>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [RFC PATCH 10/34] ASoC: sun8i-codec: Advertise only
 hardware-supported rates
Message-ID: <20200217153023.GL9304@sirena.org.uk>
References: <20200217064250.15516-1-samuel@sholland.org>
 <20200217064250.15516-11-samuel@sholland.org>
MIME-Version: 1.0
In-Reply-To: <20200217064250.15516-11-samuel@sholland.org>
X-Cookie: There was a phone call for you.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_073027_176399_95ECC070 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 =?iso-8859-1?Q?Myl=E8ne?= Josserand <mylene.josserand@free-electrons.com>,
 stable@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3166822561063455299=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3166822561063455299==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="0qVF/w3MHQqLSynd"
Content-Disposition: inline


--0qVF/w3MHQqLSynd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 17, 2020 at 12:42:26AM -0600, Samuel Holland wrote:
> The hardware does not support 64kHz, 88.2kHz, or 176.4kHz sample rates,
> so the driver should not advertise them. The hardware can handle two
> additional non-standard sample rates: 12kHz and 24kHz, so declare
> support for them via SNDRV_PCM_RATE_KNOT.
>=20
> Cc: stable@kernel.org
> Fixes: 36c684936fae ("ASoC: Add sun8i digital audio codec")
> Fixes: eda85d1fee05 ("ASoC: sun8i-codec: Add ADC support for a33")
> Signed-off-by: Samuel Holland <samuel@sholland.org>

The new sample rates are new functionality, they are definitely not
stable material.   For the sample rates you are removing do we
understand why they were added - do they work for people, are they
perhaps supported for some users and not others for example?

--0qVF/w3MHQqLSynd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5KsY8ACgkQJNaLcl1U
h9DgKwf/RkeIHeM2sJ2RgbLTXWX8YZmWkvlMjMbuWBeFxHTz/Hdo+gM34z7glK5D
vTsYnMg6wYSVtkRJzw6JOjJE/YqT+KFTmpqMHlhJkHhh+0Ce33hnN5vhPWAOyDLX
ajN4NNYMR/RvlHVhAD8YVCjWKy65hpslCTajh+74Pn5GNtXao1z2mH6vDaVOntZj
KsuP3g6wxqKicdi4lrAYDS80cpUVlOD4OkMk49MT5h1U78w3hblZkKULqFjOt3BL
jgdv2os2/zg+/7OxQCcAlJfrfd4m4kBHbI9HF+0IMV9CIt+pR7Kmy7H+zcliwi9L
1zUYINK1EWJvcb+4lIeZcMRp0sH7aQ==
=ZBtq
-----END PGP SIGNATURE-----

--0qVF/w3MHQqLSynd--


--===============3166822561063455299==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3166822561063455299==--

