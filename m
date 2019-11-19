Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B188102ABF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 18:25:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=stLf3omLUZIhQ+hrg/NUcuxv1+8LJFn2FH9epUV5Hqw=; b=m7YGLVJQpMRLStFnDCd3cfI+j
	iEzdlSihqnlgueLNo3sha7QYdz9SPCgNHDZc52B1lybrwYGmUgA35r4L9oRqk1XNytb+SCazGVSS8
	VJtMLfU/Gq+dtKHXa05ohyJQJ2x2X3ylBT6c2tUefaOZ3rt5Nxm4wgUH/YFUWnbeZsfjX/45E5QZ/
	BBWlsWaSwipPX60xJRlf6DOyhe8AnsEgDFD6+wWkITirH6KfbwkE3RvdRsJIQR2GDb5kiFrvhdd6M
	x3eF9v1J9TP8E/aWg52Wlllph2Ki46RpLANUsqE/BV5TRkSqJXUGCO6ul72UhYA3W6GKMPla28kH9
	5mV0Wkyig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX7Fp-0005Z2-Cq; Tue, 19 Nov 2019 17:25:29 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX7Fh-0005YB-DQ; Tue, 19 Nov 2019 17:25:22 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id B4EA7B20B;
 Tue, 19 Nov 2019 17:25:19 +0000 (UTC)
Message-ID: <e3e192e178fadddcd862c2c1f4644b5a1fe3a3d0.camel@suse.de>
Subject: Re: [PATCH v2 3/3] ARM: dts: bcm2711: Enable HWRNG support
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stephen Brennan <stephen@brennan.io>
Date: Tue, 19 Nov 2019 18:25:16 +0100
In-Reply-To: <BYK1FVFPTH7J.159A75JOGITR1@pride>
References: <BYK1FVFPTH7J.159A75JOGITR1@pride>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_092521_599179_11FEC7B6 
X-CRM114-Status: GOOD (  17.09  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Scott Branden <sbranden@broadcom.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matt Mackall <mpm@selenic.com>, linux-kernel@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, linux-crypto@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Ray Jui <rjui@broadcom.com>, linux-arm-kernel@lists.infradead.org,
 Stefan Wahren <wahrenst@gmx.net>
Content-Type: multipart/mixed; boundary="===============6764348859832838238=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6764348859832838238==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-Q1OudO4sDtl+ITj8Di/3"


--=-Q1OudO4sDtl+ITj8Di/3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2019-11-19 at 09:09 -0800, Stephen Brennan wrote:
> Hi Nicolas,
>=20
> On Tue Nov 19, 2019 at 11:07 AM, Nicolas Saenz Julienne wrote:
> > Hi Stephen, thanks for the follow-up.
> >=20
> >=20
> > On Mon, 2019-11-18 at 22:14 -0800, Stephen Brennan wrote:
> > > BCM2711 features a RNG200 hardware random number generator block, whi=
ch i=3D
> > s
> > > different from the BCM283x from which it inherits. Move the rng block=
 fro=3D
> > m
> > > BCM283x into a separate common file, and update the rng declaration o=
f
> > > BCM2711.
> > > =3D20
> > > Signed-off-by: Stephen Brennan <stephen@brennan.io>
> > > ---
> >=20
> > It's petty in this case but you should add a list of changes here too.
>=20
> To make sure I understand, you mean listing out the changes in each=20
> revision of the patch series?

What's generally expected is for the cover letter to contain an overview of=
 the
series changes. No need to go into specific detail. Then, every patch shoul=
d
list its local modifications.

Also remember to add the list of changes after the '---' line in your patch=
,
this way they won't show up in the final commit log.

If in doubt have a look at the kernel mailing lists, there are plenty of
examples.

Regards,
Nicolas


--=-Q1OudO4sDtl+ITj8Di/3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3UJXwACgkQlfZmHno8
x/5J8gf/Wg/IrKzrAi1fKuJaY4CfPJSLpKvLtmOfDqcchsMm6aq0nBODopwXGT0y
bcPiG7OOnwcDqlD8pxyBL8iBG48gsidg51JSizuSnJ6lgxPpSN6JHoD4HUi2hnS5
y0wXzThHmoZB00Vep0o6EmBsY2hHU/URLfH1uWnSwut9CRQfC/dVJ8UhxPVuCaqJ
HLYdPveYV3S6P1YUk0RgO95RqhjEegya1zsvT3W0pGwda042QbvweKzaUtzRERT2
GwN2eIcP2SJ+8S/P8edIPwd3T6uL7gMLLsw7WWCp9DOQPI/ORFPm7c2dUEkdXW1l
mAscggOyCMH1qNaOc7lVVZ7o92N1mA==
=d9p8
-----END PGP SIGNATURE-----

--=-Q1OudO4sDtl+ITj8Di/3--



--===============6764348859832838238==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6764348859832838238==--


