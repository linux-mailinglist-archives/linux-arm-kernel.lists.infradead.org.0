Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00EBF1249DF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 15:39:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NLE+hYYZnLJyNa6fM8W2Rkms/dlmmDWqblEaT5ZX1Mc=; b=X95E61buR5PVB+II4ARH8QjEO
	Gmm/Ah1KiZu92LhLoUw0mzrykJsl0NCBtUPfUK/nAzCKRb60DJCnE+9GOMoJbNeNIep1WgdR5Z36v
	UrripaiKzbkhJD5mi8Nvr5CVwVNkfnMDK4z2ATiMWB6o5Izvat43i/FFJPSwacq2Gzb+NCo4C7nAA
	NirBiwiK8gMUWdKfIVbqgPMke2sLevd98EhUoasPlLPLm7HRV+GRDLQjBwPNrPeLgnsRdkDYBfKjh
	DrkHy4oRaQJnIovtPEQOrjOGBl+AHoufOI1HAHcfLbxdXRA5z1w2wI/+ggg83oyUoxEuNWkZphIzu
	LV8OPWOzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihaU0-00006Z-P7; Wed, 18 Dec 2019 14:39:24 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihaTs-000060-Eu
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 14:39:17 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 55C4EB3E2;
 Wed, 18 Dec 2019 14:39:13 +0000 (UTC)
Message-ID: <78a1badd7c08ca39e7f62c6b66addeb2bf485a1e.camel@suse.de>
Subject: Re: [PATCH] gpu/drm/v3d: Add ARCH_BCM2835 to DRM_V3D Kconfig
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Peter Robinson <pbrobinson@gmail.com>, Eric Anholt <eric@anholt.net>, 
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 dri-devel@lists.freedesktop.org, Florian Fainelli <f.fainelli@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Date: Wed, 18 Dec 2019 15:39:02 +0100
In-Reply-To: <20191218084320.312561-1-pbrobinson@gmail.com>
References: <20191218084320.312561-1-pbrobinson@gmail.com>
User-Agent: Evolution 3.34.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_063916_645631_DD4712E3 
X-CRM114-Status: GOOD (  18.51  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Content-Type: multipart/mixed; boundary="===============8668517640185024654=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8668517640185024654==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-dQNxoxTSFb/E0Lltjh2W"


--=-dQNxoxTSFb/E0Lltjh2W
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Peter,

On Wed, 2019-12-18 at 08:43 +0000, Peter Robinson wrote:
> On arm64 the config ARCH_BCM doesn't exist so to be able to
> build for platforms such as the Raspberry Pi 4 we need to add
> ARCH_BCM2835 similar to what has been done on vc4.
>=20
> Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> ---

v3d's upstream implementation doesn't support RPi4 for now. So I don't see =
how
we could benefit from this.

That said you're more than welcome to have a go at adding support for RPi4.=
 It
seems to me that the divergence betweeen us and Raspberry Pi foundation's
kernel isn't that big. Maybe Eric can share some extra light on this.

Regards,
Nicolas

>  drivers/gpu/drm/v3d/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/v3d/Kconfig b/drivers/gpu/drm/v3d/Kconfig
> index 9a5c44606337..b0e048697964 100644
> --- a/drivers/gpu/drm/v3d/Kconfig
> +++ b/drivers/gpu/drm/v3d/Kconfig
> @@ -1,7 +1,7 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  config DRM_V3D
>  	tristate "Broadcom V3D 3.x and newer"
> -	depends on ARCH_BCM || ARCH_BCMSTB || COMPILE_TEST
> +	depends on ARCH_BCM || ARCH_BCMSTB || ARCH_BCM2835 || COMPILE_TEST
>  	depends on DRM
>  	depends on COMMON_CLK
>  	depends on MMU


--=-dQNxoxTSFb/E0Lltjh2W
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl36OgYACgkQlfZmHno8
x/53VAf+OP1RkfSy/jgroNYtSQKCf77Xv18wNpP9BAd/32YNu65bmnM25QYvqVza
s/HrSqBvmae80LkVRUnj3danXmHmHx+c9gx/6VEGi2+BZ0EF6hotsCthvlkABi4o
dT3w/0S0uYzejyne1f1v/MnuvBgPcvVl6Xl193SHT9Bt8a6Y2GwCrrkzq+Vy1tGw
ddK3BVyOWTsyVstI0pYQ7UE51k4Xn0Ka/yiB1FZuIU+5mT0EvYZhBd2ivtX9I9AY
a+zcIJ42OzGQVMIr+9ve0r+7QuveM9GHIwjqxRnP5EsPlO/PN209IwVePNyiWiLw
AOQOihepJh3qInBRU2Ppn+na2ZooUQ==
=bMtf
-----END PGP SIGNATURE-----

--=-dQNxoxTSFb/E0Lltjh2W--



--===============8668517640185024654==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8668517640185024654==--


