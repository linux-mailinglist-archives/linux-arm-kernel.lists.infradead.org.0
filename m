Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF70B161580
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 16:05:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dG+JyeUdgOx5zdeAdNUWwh1XGEWc6etn6F9iD+HJDUE=; b=UEr8uI02gijyrSSmvqnRB0QPo
	6CI0vf6Iy35VYK2mFRt1QbwEaXJFjRK01CFHjOniozDeUwtD8tXrg74gA2TQBAP8vYMAjyvv3yKvW
	YAvn5TihZM1tqwAp6qZExACaBnzi5v17qpAXgcCJX/s0pwgwdR7yiTD6UMM5jFbqlz04VZUnQksNf
	HePCMs8yF6WU2liJFMsyC8N0gi69HC9WDuZzWjOF/4p5zPreeSG6uMF6pi9Nqs4KjsNLPhGrxEONM
	BRmJ6eOWjP8bQjQzThmFaewJLDX9yNtrjqZ+OFjZSx6LjtzyU04B55P4mGDogqr8CcUZUuyQ7VXPG
	TG/CP/XuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3hxD-0000Ps-NE; Mon, 17 Feb 2020 15:04:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3hwz-0000K9-Bh
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 15:04:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D586B30E;
 Mon, 17 Feb 2020 07:04:44 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 599683F703;
 Mon, 17 Feb 2020 07:04:44 -0800 (PST)
Date: Mon, 17 Feb 2020 15:04:42 +0000
From: Mark Brown <broonie@kernel.org>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [RFC PATCH 04/34] ASoC: sun8i-codec: Remove unused dev from
 codec struct
Message-ID: <20200217150442.GH9304@sirena.org.uk>
References: <20200217064250.15516-1-samuel@sholland.org>
 <20200217064250.15516-5-samuel@sholland.org>
MIME-Version: 1.0
In-Reply-To: <20200217064250.15516-5-samuel@sholland.org>
X-Cookie: There was a phone call for you.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_070445_462089_520F78E1 
X-CRM114-Status: GOOD (  10.64  )
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
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7798333356828342830=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7798333356828342830==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zhtSGe8h3+lMyY1M"
Content-Disposition: inline


--zhtSGe8h3+lMyY1M
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Feb 17, 2020 at 12:42:20AM -0600, Samuel Holland wrote:
> This field is not used anywhere in the driver, so remove it.

> Fixes: 36c684936fae ("ASoC: Add sun8i digital audio codec")

This is in no way a bug fix, it's a random cleanup.  This means that the
Fixes tag isn't really appropriate and it should be done after the
subsequent changes in the series that fix real bugs.  You should always
put bug fixes first so that they don't have any unneeded depenencies on
other things and can be merged without them.

--zhtSGe8h3+lMyY1M
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5Kq4oACgkQJNaLcl1U
h9A9Vgf9HMozS/Ywu0JGI1L5GM/qN7H8wiz+zVCv1G3I0c+5ZQ+1uicI8yt2ECLS
IBLZEnRacg0QqjVmh9Ht3Ar/Z1j8ZWEFHKW/633TvvKsd+sCGUxhdruB9h54TAuP
Zp+7hjdRerC9Qwm9mZUohiIL/SYarUiuw7rOuaky+K9uhQTfq9XRtQX7AebIuXNh
Zrg/+DrbfQriYkwAvLcS7Adk8LrJ1bDw4WGmBP1zhDFwLCXQ6E2abkf4NltY+TeY
9F481r+90owgmj4x8/yFy+oD0HPgqU3fRXVgXB6H3P4L4HJylgrfjwLXwr3Sg6ln
SR4qJz3ixLII+/p8RcAUkach3NRrww==
=RpUW
-----END PGP SIGNATURE-----

--zhtSGe8h3+lMyY1M--


--===============7798333356828342830==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7798333356828342830==--

