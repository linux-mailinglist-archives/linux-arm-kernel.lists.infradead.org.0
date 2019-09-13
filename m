Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF6CB1D1D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 14:11:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4S5XWIDIMyfDU3INqIEl3djhdvvFEOSrvbo44VvmQq0=; b=YmRO1ctdnigIthoCI5XDXsTQE
	NleqxiM+NIiVYlirPVQ6XDxne4Brbo4izOBPevWngNfntAz5EYauuvOcAaeFt/GfECrQ+GOS2X1I6
	lrvWCN2+G6cRUgRVYa8pWKN28ysDVAhfmDROQ0KPGbwXifi9JekkoYw1uZS6VabPns8QDhQJV2g4d
	7Eoyo1VNVIVOXDmaDTSXQ91hG6mEpozy0pADd/lrCNS18Mf9EN3P5w+6+3G2bywD1OOs6FzGFwxeJ
	uN7+evvmhldmRl1oO76yhvnmnZyYsIlWrryo9zbRLFq7aikJPJ/fZC02XR0SQWgvBmKaAvCWNO9D4
	sq1dUMi6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8kQT-00076i-2f; Fri, 13 Sep 2019 12:11:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8kQB-00075Y-2m
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 12:11:30 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 492572084F;
 Fri, 13 Sep 2019 12:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568376686;
 bh=/yuo8LkwG/vK/Jb+QiIu8OrXJNZtg/fik8C0+OyD7Hk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sUuajaYi7mGVPkYopS1AqkdFgGHainGr/gFIVTgTFj4NMzKmhzsepPa+usLvieQUN
 dMuKx/90Qo2hO8vo88PimuVso31oG8ACymDRc1FiPDfcFb+uyCy3gJc/Br0IrC5YRH
 N/jCU2YES2jDkCLv5dUBl3+wC5+8TahER8kXag7s=
Date: Fri, 13 Sep 2019 14:11:24 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH 3/9] dt-bindings: crypto: Add DT bindings documentation
 for sun8i-ce Crypto Engine
Message-ID: <20190913121124.clfi46vcnrxhzmwh@localhost.localdomain>
References: <20190906184551.17858-1-clabbe.montjoie@gmail.com>
 <20190906184551.17858-4-clabbe.montjoie@gmail.com>
 <20190907040116.lib532o2eqt4qnvv@flea> <20190911183158.GA8264@Red>
 <20190912093737.s6iu63sdncij2qib@localhost.localdomain>
 <CAGb2v678WGQm5PNy8GhOTpz+fYeLP3k0dnR0F00yyZpSRcA4yA@mail.gmail.com>
 <20190912203301.is4ubixhk64dl5t7@localhost.localdomain>
 <CAGb2v646YkM93BAo=hrpL+tgDU-JJ49-uMCMGECUbouoJrpg=w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGb2v646YkM93BAo=hrpL+tgDU-JJ49-uMCMGECUbouoJrpg=w@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_051127_145417_236FB23E 
X-CRM114-Status: GOOD (  15.77  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Herbert Xu <herbert@gondor.apana.org.au>, Russell King <linux@armlinux.org.uk>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 Corentin Labbe <clabbe.montjoie@gmail.com>, linux-crypto@vger.kernel.org,
 David Miller <davem@davemloft.net>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============5024350495696930036=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5024350495696930036==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mxfblhwyykii33ch"
Content-Disposition: inline


--mxfblhwyykii33ch
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 12, 2019 at 09:37:17PM +0100, Chen-Yu Tsai wrote:
> On Thu, Sep 12, 2019 at 9:33 PM Maxime Ripard <mripard@kernel.org> wrote:
> > On Thu, Sep 12, 2019 at 09:26:27PM +0100, Chen-Yu Tsai wrote:
> > > > >
> > > > >   clock-names:
> > > > >     items:
> > > > >       - const: ahb
> > > > >       - const: mod
> > > > >       - const: mbus
> > > >
> > > > And here as well
> > > >
> > > > Something I missed earlier though was that we've tried to unify as
> > > > much as possible the ahb / apb / axi clocks around the bus name, it
> > > > would be great if you could do it.
> > >
> > > I think we also want to standardize "mbus" as "dram"?
> >
> > Do we? The only user so far seems to be sun9i-de, while mbus has more
> > users. I don't really care though, both mbus and dram are pretty
> > generic to me. What makes you prefer dram over mbus?
>=20
> Argh... it's actually "ram" we use the most. Both "dram" and "mbus"
> have only one instance each.

Let's use ram then :)

Maxime

--mxfblhwyykii33ch
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXXuHbAAKCRDj7w1vZxhR
xazRAP9q4WVrPnh+fZ02hS/8DFlnUg4ZEiOZEKaupnYTZODnDgEA3aUQ5mkgXMdG
FzX2x3Ap9qkbqSmmGBRWN/QtgReLcg0=
=KM0B
-----END PGP SIGNATURE-----

--mxfblhwyykii33ch--


--===============5024350495696930036==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5024350495696930036==--

