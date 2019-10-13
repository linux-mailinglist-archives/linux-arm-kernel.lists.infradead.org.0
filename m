Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12043D568D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 13 Oct 2019 17:08:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=K0QFm3Wyyt+WRc/Az3Dl9zMBlmxh9ugHc2Ap7WgRGTU=; b=myQ8NAxD5IytOHYKq2fc5yElH
	Atl4KnBKy8+IpwBhlUziRFgqUN27DBK29zP9nkYMcQUruAbaAAZPvt0M0xTRrfQK8M0PXZb9sthQt
	U8SF4zo+QaETSjVIleNetQ9zSbP0wUPFnqrcXfyCz1Gh3WAUpRI9JrvgQfVp9Z5sT2+piZI0t1Glj
	TZn4Hx/Y2kGxC64Q4J+0l8g8pBmYY5iNiNrqS5G9eIlQQhxLVDL5sCQE7IEdEtj8I1lnH+bUJPrSx
	WFPVMH9KU0erZv3hHgy9p4JvI+yQVn/fCrZJaUucKWAoo+YjIMupB9Vsdkf42gp/aT9xziaNyY0aK
	6QSl8DJRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJfTZ-0003tk-KR; Sun, 13 Oct 2019 15:08:05 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJfTQ-0003tL-Ku
 for linux-arm-kernel@lists.infradead.org; Sun, 13 Oct 2019 15:07:58 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id DB11F80239; Sun, 13 Oct 2019 17:07:39 +0200 (CEST)
Date: Sun, 13 Oct 2019 17:07:44 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Tony Lindgren <tony@atomide.com>
Subject: Re: [PATCH 2/8] ARM: OMAP2+: Drop bogus wkup domain oswr setting
Message-ID: <20191013150744.GD13278@amd>
References: <20191010001224.41826-1-tony@atomide.com>
 <20191010001224.41826-3-tony@atomide.com>
MIME-Version: 1.0
In-Reply-To: <20191010001224.41826-3-tony@atomide.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_080756_834621_A34FA5AE 
X-CRM114-Status: GOOD (  15.63  )
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
Content-Type: multipart/mixed; boundary="===============7009002446132112942=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7009002446132112942==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="g7w8+K/95kPelPD2"
Content-Disposition: inline


--g7w8+K/95kPelPD2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> The wkup domain is always on and does not have logic off setting. This
> got accidentally added by commit f74297dd9354 ("ARM: OMAP2+: Make sure
> LOGICRETSTATE bits are not cleared") but is harmless.
>=20
> Cc: Merlijn Wajer <merlijn@wizzup.org>
> Cc: Pavel Machek <pavel@ucw.cz>
> Cc: Sebastian Reichel <sre@kernel.org>
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---
>  arch/arm/mach-omap2/pm44xx.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>=20
> diff --git a/arch/arm/mach-omap2/pm44xx.c b/arch/arm/mach-omap2/pm44xx.c
> --- a/arch/arm/mach-omap2/pm44xx.c
> +++ b/arch/arm/mach-omap2/pm44xx.c
> @@ -137,8 +137,7 @@ static int __init pwrdms_setup(struct powerdomain *pw=
rdm, void *unused)
>  	 * smsc911x at least if per hits retention during idle.
>  	 */
>  	if (!strncmp(pwrdm->name, "core", 4) ||
> -	    !strncmp(pwrdm->name, "l4per", 5) ||
> -	    !strncmp(pwrdm->name, "wkup", 4))
> +	    !strncmp(pwrdm->name, "l4per", 5))
>  		pwrdm_set_logic_retst(pwrdm, PWRDM_POWER_RET);

This is rather theoretical, but if the powerdomain is called
"corelation-not-causation", do you still want the if() to trigger?

Best regards,
								Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--g7w8+K/95kPelPD2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl2jPcAACgkQMOfwapXb+vLvaQCfZphVuGB+26TYrQM9wURB4MpE
ujoAoJwodeejH3c14UMdTuuo+wICdQj0
=FiNP
-----END PGP SIGNATURE-----

--g7w8+K/95kPelPD2--


--===============7009002446132112942==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7009002446132112942==--

