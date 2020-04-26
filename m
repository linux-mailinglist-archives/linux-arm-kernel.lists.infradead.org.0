Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF4341B8DF6
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 10:34:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JrhrF8as4uk8y9NidvBSPowY6uh8uo1JUjzmUSar9Vw=; b=NinyLRHP/QR7FUtzjtTLUIW7a
	d7egxo0aB/t03pfoB5Q7nNlO7QgAgcnPzriwUZLN6YRiFAJwHPIsMzaJgCBLrwBx78BawgUYXzu6K
	jy59n9tXeP0qwRYedaeVUudeUkyqyVDJ6CiUwuUJ8ziyhJohcEIxcUw/g9S0NX6DCDfRFlt7eS4BF
	FvQMqRrO8lvzCLyBS1vOtty7E4YGbNbOkCVXXyGbASFLh4LSvFNTC53LAZ7isIDeACNh96tB4fzZL
	23l5PqDyoLpie0H1r4fXGsxWrzsnPYTEPxS5YkwRSehfH2WW7Wa5io9cHiGqGk53l1Tj2g+oWCXn/
	t19uNCsVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSckP-0006As-Jf; Sun, 26 Apr 2020 08:34:45 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSckH-00069e-Qn
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 08:34:39 +0000
Received: from localhost (p54B33954.dip0.t-ipconnect.de [84.179.57.84])
 by pokefinder.org (Postfix) with ESMTPSA id 13C172C01E8;
 Sun, 26 Apr 2020 10:34:37 +0200 (CEST)
Date: Sun, 26 Apr 2020 10:34:36 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
Subject: Re: [PATCH v1 1/1] i2c: iproc: generate stop event for slave writes
Message-ID: <20200426083436.GK1262@kunai>
References: <20200322182019.32493-1-rayagonda.kokatanur@broadcom.com>
MIME-Version: 1.0
In-Reply-To: <20200322182019.32493-1-rayagonda.kokatanur@broadcom.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_013438_017060_A38C4C00 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Lori Hikichi <lori.hikichi@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 linux-kernel@vger.kernel.org,
 Shreesha Rajashekar <shreesha.rajashekar@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-i2c@vger.kernel.org,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5112964209604159183=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5112964209604159183==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Ah40dssYA/cDqAW1"
Content-Disposition: inline


--Ah40dssYA/cDqAW1
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Mar 22, 2020 at 11:50:19PM +0530, Rayagonda Kokatanur wrote:
> When slave status is I2C_SLAVE_RX_END, generate I2C_SLAVE_STOP
> event to i2c_client.
>=20
> Fixes:=C2=A0c245d94ed106 ("i2c: iproc: Add multi byte read-write support =
for slave mode")
> Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>

Applied to for-current, thanks!


--Ah40dssYA/cDqAW1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl6lR5wACgkQFA3kzBSg
KbYm7Q//YsRV9dQZeGL7ZIX+nZD3jYHK40hDerV4NX+m/X2LMSzHiVTgxHvi9fOg
ypRSssFcf77olTqRXKCCgiI9170TV2s2FsCXGcR18iOc3l72wpw9QGpwNt3d0zM9
YAGYHpJ/dE5OMwLld3EDWwhGXeiPiApkrgSAbMGeLEbnJET4pM7ukCerLjLoEPv0
m+8d0RHMEg0t6vMelWpzqEzOoJUrI0Po0BlFFQwW3aDTOGk+0iBMI8p30pE5Xp0Q
5zN0ZovhZr7SKO2aw7W6/6nm4mvN/B35iPT0Np9NUzEnBMqK/8DRVSAOIZPVh+cA
/bBEXHIYLGn7ZLg2uDMGwSnoFskIXCfLOIAojJc7rSPRbZB3xBe6ydchs0a4qIcq
VeyNP/AYiVgcn7rFReDlWiNaVfdo5dS+S9zWW4h6mUiLfd3mZ80wyzAurDtOHNbc
UrM8Fv80i3OkOQVleIMhcvl8hJnMaOOzGdZ3ce3N+nH+ITDZkZT+lxQoagNhlo27
6PweR8k7vLUM9QbH/fZl5O9DhrxtOIJyzUG17+cJRe0d0+4OqhWg/JVpPcMtPAJ1
gkzEFkask+4xyTLVVrMeAWise4V83xLwNNYQLbXaKHBh7vo5/k0OLqUPC76ynJdt
Ox4/ZS5BfrTZRDNFSWwwGLIj2464aSD2FMCh0+D0aBFQjGStBbA=
=NQLy
-----END PGP SIGNATURE-----

--Ah40dssYA/cDqAW1--


--===============5112964209604159183==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5112964209604159183==--

