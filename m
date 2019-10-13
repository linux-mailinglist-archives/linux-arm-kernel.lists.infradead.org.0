Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61C29D55D9
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 13 Oct 2019 13:40:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=C+/A8ZxXDnkT4yymGdXzJI+n5k1uxcMj4Q8LV96YNg8=; b=tVPsuyEZ2eRB4+mK37mlXd+wE
	NaK3HbjMZwRaJEDc5S1KDCrT7Tg074TBVopx4yiIkcPVp3fM4JJy9Wu0pgQUb/Su0R1fjXEIs0EbA
	xBIl/MCIRtwLAJp7L9agYVWPw1YAeY4KnEJQeMPfJd2TYuYtL2rHJ+LngWcK89kMaSHYQ5oE5xaQo
	VCC77F5+hS/LO8kZnsvHWBe8nQl3MLx+3UOIrRfPob/UWO873CPh7f5cAj4WvsFIRdAEw3/igqcFL
	GAD2JKBwOcakD7ipwmoZ0xubh5plxib/GlVauHwQ1Jh4IIM5tVa3idljWG3mYICJpgiEfFfv9mEPx
	r5zTiOEBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJcEk-0006bV-88; Sun, 13 Oct 2019 11:40:34 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJcEa-0006aY-LU
 for linux-arm-kernel@lists.infradead.org; Sun, 13 Oct 2019 11:40:27 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id E42AF80249; Sun, 13 Oct 2019 13:40:00 +0200 (CEST)
Date: Sun, 13 Oct 2019 13:38:17 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Tony Lindgren <tony@atomide.com>
Subject: Re: [PATCH 1/8] ARM: OMAP2+: Remove unused wakeup_cpu
Message-ID: <20191013113817.GE26237@amd>
References: <20191010001224.41826-1-tony@atomide.com>
 <20191010001224.41826-2-tony@atomide.com>
MIME-Version: 1.0
In-Reply-To: <20191010001224.41826-2-tony@atomide.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_044024_858581_8E1C26AF 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.113.26.193 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Merlijn Wajer <merlijn@wizzup.org>, linux-omap@vger.kernel.org,
 Sebastian Reichel <sre@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1191912582871940712=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1191912582871940712==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="maH1Gajj2nflutpK"
Content-Disposition: inline


--maH1Gajj2nflutpK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed 2019-10-09 17:12:17, Tony Lindgren wrote:
> After commit 32d174ed1bd7 ("ARM: OMAP4: MPUSS PM: remove unnecessary
> shim functions for powerdomain control") this is no longer used.
>=20
> The code continues execution after context restore on the same CPU,
> so we can just use pm_info->pwrdm.
>=20
> Cc: Merlijn Wajer <merlijn@wizzup.org>
> Cc: Pavel Machek <pavel@ucw.cz>

Acked-by: Pavel Machek <pavel@ucw.cz>

--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--maH1Gajj2nflutpK
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl2jDKkACgkQMOfwapXb+vKtLACfVZ9KXYe7o/TIDG5OEIN9EC3R
NzQAn1+QROYC4Pb01avEehDBz1epcXDX
=h1+g
-----END PGP SIGNATURE-----

--maH1Gajj2nflutpK--


--===============1191912582871940712==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1191912582871940712==--

