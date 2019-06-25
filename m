Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B32CB5529E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 16:55:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HMf46tDY5uyX55OqszYhqYWk01poeWO+pEs1MT3hBgA=; b=jNAvgQfMriS9Voz6+ht1W0i7g
	Dvu8UrSPpxsaNPflaMgJduWYRyhAE0lqXVEPl/Gz45pHyu9R4VxH4kShUjppHMpChXQDVfGZEBazr
	Jbjhw4sgF3fnnks/zCy08WK86UDiUtAfU4MlnEpL5nPZZkoQ93RUJXXwJ/HGVhFPqAdWiXZvO0i1I
	lFUKjB1Gczo1mDfI/rppKgcOlYRmaUr6mISVF7OaRpX9NVdW9Z+95JVOFryOvSz8ngEAw0jiX99Ij
	iGkLqAlpciADedJjtRgMTgoO/4TvAvzPD48iM1A9EdxkC6gQYDOkfiFvRKxAIW98BCiGXhtMufrZC
	KeOKXBJkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfmrU-00009M-8I; Tue, 25 Jun 2019 14:55:56 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfmrH-00008e-U6
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 14:55:45 +0000
X-Originating-IP: 90.88.16.156
Received: from localhost (aaubervilliers-681-1-41-156.w90-88.abo.wanadoo.fr
 [90.88.16.156]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id DCB981C0006;
 Tue, 25 Jun 2019 14:55:41 +0000 (UTC)
Date: Tue, 25 Jun 2019 16:55:41 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Olof Johansson <olof@lixom.net>
Subject: Re: [GIT PULL] Allwinner Device Tree Changes for 5.3
Message-ID: <20190625145541.55c4mszwphx4corj@flea>
References: <459c0bad-c02e-40f0-9e56-1dcdad9c6591.lettre@localhost>
 <20190625114119.tgxsiwstd3pfm64i@localhost>
 <20190625123219.hwg5vjz3qocxavn5@flea>
 <CAOesGMhXVnNuEKHPBo6s9GBWrKAiX8zFPSt89cQRYNS711ymvw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAOesGMhXVnNuEKHPBo6s9GBWrKAiX8zFPSt89cQRYNS711ymvw@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_075544_144888_5E66B951 
X-CRM114-Status: GOOD (  19.53  )
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
Content-Type: multipart/mixed; boundary="===============6533368807150783008=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6533368807150783008==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="x5qmipsia5wvk7uu"
Content-Disposition: inline


--x5qmipsia5wvk7uu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jun 25, 2019 at 02:36:30PM +0200, Olof Johansson wrote:
> On Tue, Jun 25, 2019 at 2:32 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> >
> > Hi Olof,
> >
> > On Tue, Jun 25, 2019 at 04:41:19AM -0700, Olof Johansson wrote:
> > > On Fri, Jun 21, 2019 at 10:08:08AM +0200, Maxime Ripard wrote:
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
> > > >   https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git refs/tags/sunxi-dt-for-5.3-201906210807
> > >
> > > You know, there's a timestamp in the tag too, no need to encode it in the name.
> >
> > Yeah, I've switched to some tooling to send them instead of doing them
> > manually, and having a timestamp was the easiest solution to avoid a
> > collision, but I guess having it down to the minute was a bit
> > overkill. Do you have any preference on this?
>
> Main thing for me is that I can't tell from time timestamps if it's a
> respin/new version, or a re-stamp, i.e. if it's something I should
> care about or not.
>
> I.e. it doesn't carry any useful signal for the consuming side and is
> mostly noise.

Ok, so you'd prefer something like <tag>, <tag>-2 if there's multiple,
subsequent, PR, and <tag>, <tag>-again if the latter replaces the former?

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--x5qmipsia5wvk7uu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXRI17QAKCRDj7w1vZxhR
xSzuAQDbb/FEykM8Xn8XTxslBIqSgR7CfhO0pMijMXcv9I634gEA6w42jH2ZuE0r
A4WUrd6oEucAj1074cRaFMHF6mkC+QI=
=cyId
-----END PGP SIGNATURE-----

--x5qmipsia5wvk7uu--


--===============6533368807150783008==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6533368807150783008==--

