Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5624B7CE14
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 22:20:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IiWpVqqwO9d4y4qYG4bPy4NXMG3XwFHIZ9JxGzgfi1Q=; b=OrHEWUhCnxhfd9fljLaj2XEzr
	EGoJMBOZ54p5+2mquMlA7O8QbxOwocfaAYYcMbTysFkET4Wt3EH/8+vOdbEBbv5SgHzSZUXq+l/L4
	vb/5YlycdG8As41TL5W7tpaLxGqGJEIM/VqtgaoL/8CcJn8NZTxlS+3caJ6AW0hd9cgO09d24eUQk
	fpz9jsKECrLYyPoiZWfz+UFiks2xKQZwioizXyGnV/IHe0e+4AQjqXWlUs8D6xk+Z7we5UoXaiJ2z
	qrC97QLCtP3G4aqQ/tPK4e5WzpkoyVbfOy2l1FXKPo1gKGakWujacKulqQWwWh4Sdx/tkp0EZ8PVZ
	khGRCBoew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsv5N-0005T6-II; Wed, 31 Jul 2019 20:20:33 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsv5F-0005Sh-91
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 20:20:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eSpZl/myp0wLmres0SzdL8uz08rnblNQITo3VV+tXno=; b=YYhiErzLfdL7neEK7d0phFEhA
 9rYVeR7x7t8t6paB3ZYVvcpsMo/itLyxCB2hOJT8gnOe2xOO8iAjeWRiY7cTpKhSE6/BN2x8m4rMQ
 cSB16hNa+oZ9qF3mqcbLxgvqdCuQVoTjgi1w17GQcvLfcOoOipIPzkfbVKuqdLoY5fX+c=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hsv4y-0003F9-G4; Wed, 31 Jul 2019 20:20:08 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 634FD2742C99; Wed, 31 Jul 2019 21:20:07 +0100 (BST)
Date: Wed, 31 Jul 2019 21:20:07 +0100
From: Mark Brown <broonie@kernel.org>
To: Jonathan Corbet <corbet@lwn.net>
Subject: Re: [PATCH 0/6] ReST conversion patches not applied yet
Message-ID: <20190731202007.GI4369@sirena.org.uk>
References: <cover.1564603513.git.mchehab+samsung@kernel.org>
 <20190731141734.1fa9ce64@lwn.net>
MIME-Version: 1.0
In-Reply-To: <20190731141734.1fa9ce64@lwn.net>
X-Cookie: FEELINGS are cascading over me!!!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_132025_322336_261A2005 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Dave Kleikamp <shaggy@kernel.org>,
 alsa-devel@alsa-project.org,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Evgeniy Polyakov <zbr@ioremap.net>, linux-cifs@vger.kernel.org,
 Lars-Peter Clausen <lars@metafoo.de>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Chen-Yu Tsai <wens@csie.org>, devicetree@vger.kernel.org,
 Evgeniy Dushistov <dushistov@mail.ru>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mauro Carvalho Chehab <mchehab@infradead.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Mathieu Poirier <mathieu.poirier@linaro.org>, samba-technical@lists.samba.org,
 Liam Girdwood <lgirdwood@gmail.com>, linux-iio@vger.kernel.org,
 linux-spi@vger.kernel.org, Steve French <sfrench@samba.org>,
 Hartmut Knaack <knaack.h@gmx.de>, Jonathan Cameron <jic23@kernel.org>
Content-Type: multipart/mixed; boundary="===============3074929302278304555=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3074929302278304555==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="9s922KAXlWjPfK/Q"
Content-Disposition: inline


--9s922KAXlWjPfK/Q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 31, 2019 at 02:17:34PM -0600, Jonathan Corbet wrote:
> Mauro Carvalho Chehab <mchehab+samsung@kernel.org> wrote:

> > As promised, this is the rebased version of the patches that were not a=
pplied
> > from the /26 patch series because you had merge conflicts.
> >=20
> > They're all based on your docs-next branch, so should apply fine.
> >=20
> > The first one fixes all but one error with a broken reference.
> >=20
> > The only broken reference right now is due to a DT patch with was not
> > accepted (no idea why), but whose driver is upstream.

> All but 5/6 applied, thanks.

Oh, I still hadn't reviewed this version of the SPI stuff :(

There were outstanding questions about where it was going to get moved
to but if I read the diff correctly it looks like it didn't actually get
moved in the end?

--9s922KAXlWjPfK/Q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1B9/YACgkQJNaLcl1U
h9Bg/wf5AdzUWJa+NJteGVMxcv2AdvS61I9agmCR6mMbPERTL3lRkGvteyyk4FqS
OLlGCoSv8ytbJJ7mVGt28aBLCB7cHeDQGGmdf7OM3nJGun9yy4mmhOUIWxgjWRCl
SgO2qZpfOz121zfa2goqOfdNzbPOotjeuIyVJxvNH0NLLvRjjDZ1+4rXUjvMZf26
cVK4dXIu7+m0Kh6N6EFG9vmpNjbh23zfkd89kH8bMBGaOHdhj/3cRmCw2ZxK8Uiz
Z+xwRCyTI0CIegyUp0ZKheAqubruDFR7y0F9sYcI5KR+w0cDrfxYjOUgZa2JJKn7
Rdr1TAWXS/LG/aYR09ZGPHQsIsDKIw==
=V4AT
-----END PGP SIGNATURE-----

--9s922KAXlWjPfK/Q--


--===============3074929302278304555==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3074929302278304555==--

