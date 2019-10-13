Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98CD7D5686
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 13 Oct 2019 16:46:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=w09tT3t36cQENOVBJRk+ldsyESjxYnWgPQZTzM+dqXw=; b=Mb+yCZ7dOOKpkt/mEmIyEWpaW
	gbDRVXLi8OrgSTI4dATl8RNlykZ28mUPCt3Z8KDFlFqR2PMcqmeTTb6Zj2aPczeHKrCTtD0PhteB3
	MTITy85m7EbjNgokJelXwMPLXaUqh45kA+S9fGy/w8rAjqdfbh5w4U1+eIvfI0sGR50DHWFsTAHhg
	80h9qJXiDcrkAlTPQ+jxnbRW21VNYtERqNxb10VVz0OMiqfRNV+BtOw5bnm5N6DTYeNdTNQop9BIH
	QMpeEo7+vIa1Q1nujafLyiju4tMYy6r9uTQKREsENWpHVmBho92MdQz/E7Hsz9X4izR7S8b9F1OKn
	s2a+qAiAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJf8h-0005nu-EE; Sun, 13 Oct 2019 14:46:31 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJf8Z-0005nS-G4
 for linux-arm-kernel@lists.infradead.org; Sun, 13 Oct 2019 14:46:25 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id B379F8025D; Sun, 13 Oct 2019 16:46:00 +0200 (CEST)
Date: Sun, 13 Oct 2019 16:46:09 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Tony Lindgren <tony@atomide.com>
Subject: Re: [PATCH 5/8] ARM: OMAP2+: Configure voltage controller for cpcap
Message-ID: <20191013144608.GC13278@amd>
References: <20191010001224.41826-1-tony@atomide.com>
 <20191010001224.41826-6-tony@atomide.com>
MIME-Version: 1.0
In-Reply-To: <20191010001224.41826-6-tony@atomide.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_074623_689892_E90C78BC 
X-CRM114-Status: GOOD (  12.26  )
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
Content-Type: multipart/mixed; boundary="===============4403216939243970364=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4403216939243970364==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="hYooF8G/hrfVAmum"
Content-Disposition: inline


--hYooF8G/hrfVAmum
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed 2019-10-09 17:12:21, Tony Lindgren wrote:
> We can configure voltage controller for cpcap with the data available in
> Motorola Mapphone Android Linux kernel. Let's add it so we can have droid4
> behave the same way for voltage controller as other omap4 devices and save
> some power when idle.
>=20
> Note that we're now using high-speed i2c mode, looks like the Motorola
> kernel had a typo using 0x200 instead of 200 for the timings which may
> caused it to not work properly.
>=20
> Also note that in the long run, this should just become dts data for a
> voltage controller device driver. But let's get things working first to
> make it possible to test further changes easily.

3-5: Acked-by: Pavel Machek <pavel@ucw.cz>

--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--hYooF8G/hrfVAmum
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl2jOLAACgkQMOfwapXb+vIEJACfaOC+s2HMvLdS2v3uYO1Oi2zx
p+AAnih27tb4tyL0MuWGn7s8d7B2QZpb
=iIfp
-----END PGP SIGNATURE-----

--hYooF8G/hrfVAmum--


--===============4403216939243970364==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4403216939243970364==--

