Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 736EA36501
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 21:55:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7ghPAXKoMJlzIrWXATJVIhnp/nEJHXYHl9y6yw2Nfqo=; b=CJaaVCgEopza+R0L3bGrTma1c
	BsBpi6b3Nsgly9DHSbYzF1lZtlDFnKlaLA3AQvG2sYZPBYYZSi9SjW6CizZEmLti0Ak8Ed4ulv+mE
	HLKELxjDjiVlfATq73inkD1MKny9NcfkbyfuSkVjSuqRxyamfPEqaabNEPSFrgq5y/J8JPRaehEnX
	f7lIVKn9fmwXGro/T/nbddsIOJNCcvGi2J57eL9naG0MFW2j312X1OlaX6Iv1nMghNTl128+e0T9m
	dLuujyktCQ3mazwbFts3oJg+oq2BqE98XbAVSVfzCKcRgT5I+MJeou5+ZT2yfc31i5R2h3g4mEmwl
	iMdR3ZxBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYc0J-0000EW-SO; Wed, 05 Jun 2019 19:55:23 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYc0C-0000E6-81; Wed, 05 Jun 2019 19:55:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KgTOG/MCFpTyXVOTj1ZuKkvtNmZGpkEpbnA949wWplg=; b=poiGgtvcOkWfzAHuVL95Men3L
 RyJsJbFdF5jvyHsVDjz+UFH1VX2AFLCeFGFxTcLT7kjna8inPhPEgFcf0DOSnNNim+PkYMgCrol36
 DXwfUOlPsXCYCu7DZy33rjRGAMDP7O8GtkdpVHMIYq6VWHk8G4ZZw+69OPy4tTmCUTJzk=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hYc08-0001Q6-5G; Wed, 05 Jun 2019 19:55:12 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id 90214440046; Wed,  5 Jun 2019 20:55:11 +0100 (BST)
Date: Wed, 5 Jun 2019 20:55:11 +0100
From: Mark Brown <broonie@kernel.org>
To: Emil Renner Berthing <kernel@esmil.dk>
Subject: Re: Applied "spi: rockchip: turn down tx dma bursts" to the spi tree
Message-ID: <20190605195511.GX2456@sirena.org.uk>
References: <20190412105320.2924-1-kernel@esmil.dk>
 <20190508103358.5C7EB440010@finisterre.sirena.org.uk>
 <CANBLGcxiXR7KqKn4U-2PgefuxpBFX=yR06cw6A5GEALuqa54FA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CANBLGcxiXR7KqKn4U-2PgefuxpBFX=yR06cw6A5GEALuqa54FA@mail.gmail.com>
X-Cookie: The other line moves faster.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_125516_442477_50D7CA01 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Vicente Bergas <vicencb@gmail.com>, linux-spi@vger.kernel.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============1806113091303662949=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1806113091303662949==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dkgfGZfPp4OU3Le7"
Content-Disposition: inline


--dkgfGZfPp4OU3Le7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jun 05, 2019 at 09:36:44PM +0200, Emil Renner Berthing wrote:
> On Wed, 8 May 2019 at 12:34, Mark Brown <broonie@kernel.org> wrote:

> >    spi: rockchip: turn down tx dma bursts

> I've tried looking in the for-next and for-5.x branches here, and I
> can't seem to find this patch.
> Am I missing something?

> It fixes a problem introduced in 4.19, so it'd be nice if it could
> make it to stable trees eventually.

47300728fb213486a830565d2af49da967c9d16a is in my tree.  When it reaches
Linus' tree send a request to Greg for it to be backported if none of
the stable automation picks it up.

--dkgfGZfPp4OU3Le7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlz4Hh4ACgkQJNaLcl1U
h9BxQgf+Ljplf8ZxX4pzMeNgr9s/Oik21N9dYZN14eGepFYn3eC2JAJ66qWR5ZDX
q18JwvA6GyMsvntlko2y2HjEIJltQ06YGplOfVLtKkwtDWSbiBlV1nkkxpZGjmJd
AC7LI2yRkoD35/DXj4r2x8ZatFl1W+i3isANRYtSFHUeKElyYCQ+fV4YTm8xUHjP
zpRYGv65CG88hJmzygheI3viO+zlwsUxaJaz/jcNkoyZ4etUpz8FEYjtMeBV3SXX
MxUncjiMX3d7HlRU4CY03FyMkUJ4d+8Pfw7YMyNbF2SMDqEbApXGhBG4XS1RcE6x
ujRznnS4Wk9Lc6MdQbWFBAMoYrCUcw==
=Y9+I
-----END PGP SIGNATURE-----

--dkgfGZfPp4OU3Le7--


--===============1806113091303662949==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1806113091303662949==--

