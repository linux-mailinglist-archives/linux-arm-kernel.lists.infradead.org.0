Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9101E1FB8FB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 18:01:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Fz7NJXsryGixxsVotLkTmevnoZsZ0uTuJEpuGS+SmdI=; b=ax7QQUPvCsh48eIZIF0onFc9n
	DdUkHMzbW3/RiHGO6ntS9fqcjK9wX7rM6Z89+ZEYNdPbYYjpdPKgtzBuuXlbW30tEpt5is1JNVaD4
	8OBW2201URc1r/bfaOPt+o/aMQ6C5gs7YgPQ/zcOtWRWOk2kUC6rK1D9Vq2rKsS2xO61u1oYEQFmk
	i13XpQea13ZkE8MBa/Fp5KzBy7P6xH/EXkhhp0Cf5JVdJoCToG6OaWvMH/CbFAY/9GEdug4oWlOIJ
	bu2C1fEbGBMP2PynHhwgFYlcvv0TXNb5x+6KyYBgp1nDiA03J095QwEQ/58njsxXbpkAXDJLLkG1q
	PXgpobiQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlE18-0007ju-Ce; Tue, 16 Jun 2020 16:00:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlE04-0004YF-I4
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 15:59:50 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1jlE00-0006UR-UO; Tue, 16 Jun 2020 17:59:44 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1jlE00-0000SA-Dq; Tue, 16 Jun 2020 17:59:44 +0200
Date: Tue, 16 Jun 2020 17:59:44 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: peng.fan@nxp.com
Subject: Re: [PATCH] soc: imx: Kconfig: force using OF when COMPILE_TEST
Message-ID: <20200616155944.ujespw6johpjst4g@taurus.defre.kleine-koenig.org>
References: <1592216485-20574-1-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
In-Reply-To: <1592216485-20574-1-git-send-email-peng.fan@nxp.com>
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_085948_623690_083C3DB8 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: aisheng.dong@nxp.com, s.hauer@pengutronix.de, linux-imx@nxp.com,
 kernel@pengutronix.de, leonard.crestez@nxp.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5933635355332050663=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5933635355332050663==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tgmnsyb5bhwizxtg"
Content-Disposition: inline


--tgmnsyb5bhwizxtg
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 15, 2020 at 06:21:25PM +0800, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
>=20
> Fix the build warning with x86_64-randconfig
> >> drivers/soc/imx/soc-imx8m.c:150:34: warning: unused variable
> >> 'imx8_soc_match' [-Wunused-const-variable]
> static const struct of_device_id imx8_soc_match[] =3D { ^
>=20
> Fixes: fc40200ebf82 ("soc: imx: increase build coverage for imx8m soc dri=
ver")
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  drivers/soc/imx/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/soc/imx/Kconfig b/drivers/soc/imx/Kconfig
> index d515d2cc20ed..aadf13c9d396 100644
> --- a/drivers/soc/imx/Kconfig
> +++ b/drivers/soc/imx/Kconfig
> @@ -19,7 +19,7 @@ config IMX_SCU_SOC
> =20
>  config SOC_IMX8M
>  	bool "i.MX8M SoC family support"
> -	depends on ARCH_MXC || COMPILE_TEST
> +	depends on ARCH_MXC || (COMPILE_TEST && OF)

A bit prettier (IMHO) would be:

config SOC_IMX8M
 	bool "i.MX8M SoC family support"
 	depends on ARCH_MXC || COMPILE_TEST
+	depends on OF
 	default ARCH_MXC && ARM64
 	select SOC_BUS
 	help

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--tgmnsyb5bhwizxtg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAl7o7G0ACgkQwfwUeK3K
7Akv4gf/b+7ZW0H4OtCmYKO/wRvq0XxaMu5mTwK/HMfYXnas3a37iSz7HpZmqTjU
SdnQMgPzKb1NhhgZD1kVFiBTi/c46Q+ZsEmocQJH+rhh/E+7tLJORll6oAFf35d+
jDOylaZErOnjGI+2JSzaGqwRUYDhA6D66IAfeDFLMAWrfvhAVw+MbxK0dmDqxpPO
uWcll/4JnKVPMDTrERsq8w0arfIdd3AN1uD6AC1dtC2YP1m9/M4n6CcZl7saidhu
wqdBRCD/KR/tnAoGC73DbUsMl8JDvk9oHV3mGCrdAE5I4X14j4uDvaHu8nDSoDFD
uSFm/25Lmx2NXkh7E4bttryR/MV71A==
=UWah
-----END PGP SIGNATURE-----

--tgmnsyb5bhwizxtg--


--===============5933635355332050663==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5933635355332050663==--

