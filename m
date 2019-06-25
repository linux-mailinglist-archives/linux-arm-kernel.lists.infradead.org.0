Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F066A54F5F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 14:53:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=No+Gcgm61JE1DtHYb+yMP5Z3MZFi4uuOcYSxIXQrqIM=; b=TcNU6XPad3RD30qR2uSJvJSSS
	Xie1itakMFIN7/n5xAsQywTTn9CaUqY3OY5Mub4R9IJSfvCPVc1+Lzo22//DyL5m8hQPMFaaC95na
	gBgZYlmG+q0GlFIDtNZZVWFYtK2IKZez1W421ZWXxMhp4VptPARiGATFhXmLFmBaH+q0yyCnr76PO
	GwZe+30pyhBg8HjLfql0q9/EKNF2rOUf0/PPmHhzGh/ESzTgtOMYma6uwOj9X9PMZpmt7ZWrmdCOd
	MIp6JzarA7YClxYNu2H0Imky4cQs7+SAZNPvNEyBkHoOtDhMa97ietnwlIjEviV7QU35pp5t385q3
	Bhn4ikKIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkxI-0004J3-MY; Tue, 25 Jun 2019 12:53:48 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkx6-0004IT-M7
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 12:53:38 +0000
X-Originating-IP: 90.88.16.156
Received: from localhost (aaubervilliers-681-1-41-156.w90-88.abo.wanadoo.fr
 [90.88.16.156]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 7FDAA1C000F;
 Tue, 25 Jun 2019 12:53:27 +0000 (UTC)
Date: Tue, 25 Jun 2019 14:53:26 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Olof Johansson <olof@lixom.net>
Subject: Re: [GIT PULL] Allwinner H3/H5 Device Tree Changes for 5.3
Message-ID: <20190625125326.y65zmy4iewfq74k2@flea>
References: <df322d29-330c-40b9-8e87-282e06bbf3dd.lettre@localhost>
 <20190625114301.aah64vukqr4uesei@localhost>
 <20190625123256.tyh2weckscdwsuvk@flea>
 <CAOesGMjKpQz3hnn+f_sahUAr9OVF59wDxvPKSU374FJvsWmMyA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAOesGMjKpQz3hnn+f_sahUAr9OVF59wDxvPKSU374FJvsWmMyA@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_055336_880463_2F7CF29E 
X-CRM114-Status: GOOD (  19.36  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
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
Cc: Chen-Yu Tsai <wens@csie.org>, ARM-SoC Maintainers <arm@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============4107663316418354348=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4107663316418354348==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kjnv6bjtkecjoyjy"
Content-Disposition: inline


--kjnv6bjtkecjoyjy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jun 25, 2019 at 02:37:13PM +0200, Olof Johansson wrote:
> On Tue, Jun 25, 2019 at 2:32 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > On Tue, Jun 25, 2019 at 04:43:01AM -0700, Olof Johansson wrote:
> > > On Fri, Jun 21, 2019 at 10:13:14AM +0200, Maxime Ripard wrote:
> > > > Hi,
> > > >
> > > > Please pull the following changes for the next release.
> > > >
> > > > Thanks!
> > > > Maxime
> > > >
> > > > The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> > > >
> > > >   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> > > >
> > > > are available in the Git repository at:
> > > >
> > > >   https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git refs/tags/sunxi-h3-h5-for-5.3-201906210812
> > > >
> > > > for you to fetch changes up to 9fbbbb7b8d637f7ca1d5c4e23452bf450c7cb05f:
> > > >
> > > >   ARM: dts: sunxi: h3/h5: Fix GPIO regulator state array (2019-05-29 09:27:56 +0200)
> > > >
> > > > ----------------------------------------------------------------
> > > > This time we only have a single patch for our command branch between
> > > > arm and arm64, a fix for the array syntax raised by our DT schemas.
> > >
> > > Merged, thanks!
> > >
> > > I don't think we'll start separating 32/64-bit DT updates again, so if you want
> > > to you can combine them now.
> >
> > Do you have a preference on which tree we should apply it to then?
>
> Oh, I meant you can bundle 32+64+h3-h5 in one branch at your end, so
> fold all 3 down to 1.

Oh, ok. That's going to be much more convenient :)

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--kjnv6bjtkecjoyjy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXRIZRgAKCRDj7w1vZxhR
xfeEAQDSj61wDzS6yJe6pz/0jBq+LDea4UT6h/PufN/iF+claQD8DEY3rWwgmpsp
lE4uDOBNVx+QGpd7byTLId9TIYm6pAs=
=IXLf
-----END PGP SIGNATURE-----

--kjnv6bjtkecjoyjy--


--===============4107663316418354348==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4107663316418354348==--

