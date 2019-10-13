Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F163D5690
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 13 Oct 2019 17:08:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rxLeuXDm2NrgE/15Rwcv/UirInfp+O7SqXiLy7bnWTs=; b=sbgbTmYKQ5jH43YuZtPyrXTYD
	d6174aEOZsWB+jb5wXLxT10m7/LTr+kRTbEE+QHHsw/mC2eWewp3Q4bAltjiol/TGBVOtopBtCAe+
	IimNPhuVLk+2ultChSJcQpyS+9vQWWY8+E/B/oGFpDRg0DwwwIR8PDiAmagNjOUADY69zwkj9ar3x
	QFFXSwbczV0uZ69u+XUtJsDbHhqcuywNyMpJJTr1ztXFnKdbBUFeAxK31C8uWP37nYYG5DRKr5bBM
	g74s/kPZBsqBtQ/dTHU7znGLdVoqhJIjDgwtEq6Qjt9db3ZjbTBLGMTJgoyhaxrtUdzIMangm+sgA
	koeFf1I7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJfTx-00047L-Gc; Sun, 13 Oct 2019 15:08:29 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJfTh-00045R-RD
 for linux-arm-kernel@lists.infradead.org; Sun, 13 Oct 2019 15:08:15 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id 3837C80239; Sun, 13 Oct 2019 17:07:56 +0200 (CEST)
Date: Sun, 13 Oct 2019 17:08:07 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Tony Lindgren <tony@atomide.com>
Subject: Re: [PATCH 7/8] ARM: OMAP2+: Allow core oswr for omap4
Message-ID: <20191013150806.GE13278@amd>
References: <20191010001224.41826-1-tony@atomide.com>
 <20191010001224.41826-8-tony@atomide.com>
MIME-Version: 1.0
In-Reply-To: <20191010001224.41826-8-tony@atomide.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_080814_030066_0B113D28 
X-CRM114-Status: GOOD (  13.78  )
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
Content-Type: multipart/mixed; boundary="===============5302955438175212347=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5302955438175212347==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="vmttodhTwj0NAgWp"
Content-Disposition: inline


--vmttodhTwj0NAgWp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed 2019-10-09 17:12:23, Tony Lindgren wrote:
> Commit f74297dd9354 ("ARM: OMAP2+: Make sure LOGICRETSTATE bits are not
> cleared") disabled oswr (open switch retention) for per and core domains
> as various GPIO related issues were noticed if the bootloader had
> configured the bits for LOGICRETSTATE for per and core domains.
>=20
> With the recent gpio-omap fixes, mostly related to commit e6818d29ea15
> ("gpio: gpio-omap: configure edge detection for level IRQs for idle
> wakeup"), things now behave for enabling core oswr for omap4.
>=20
> Cc: Merlijn Wajer <merlijn@wizzup.org>
> Cc: Pavel Machek <pavel@ucw.cz>
> Cc: Sebastian Reichel <sre@kernel.org>
> Signed-off-by: Tony Lindgren <tony@atomide.com>

2,7,8 basically modify same lines of code? Should that be done in one
patch?

Best regards,

									Pavel
> =20
> -	/*
> -	 * Bootloader or kexec boot may have LOGICRETSTATE cleared
> -	 * for some domains. This is the case when kexec booting from
> -	 * Android kernels that support off mode for example.
> -	 * Make sure it's set at least for core and per, otherwise
> -	 * we currently will see lost GPIO interrupts for wlcore and
> -	 * smsc911x at least if per hits retention during idle.
> -	 */
> -	if (!strncmp(pwrdm->name, "core", 4)
> -		pwrdm_set_logic_retst(pwrdm, PWRDM_POWER_RET);
> -
> -	if (!strncmp(pwrdm->name, "l4per", 5)
> +	if (!strncmp(pwrdm->name, "core", 4) ||
> +	    !strncmp(pwrdm->name, "l4per", 5))
>  		pwrdm_set_logic_retst(pwrdm, PWRDM_POWER_OFF);
> =20
>  	pwrst =3D kmalloc(sizeof(struct power_state), GFP_ATOMIC);

--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--vmttodhTwj0NAgWp
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl2jPdYACgkQMOfwapXb+vIJzACeMNSoapkU3z/f5DKDV6Y0WjlP
2mUAoJQ12bblkgVJi+y4SH2xOqtXPW2x
=yYl4
-----END PGP SIGNATURE-----

--vmttodhTwj0NAgWp--


--===============5302955438175212347==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5302955438175212347==--

