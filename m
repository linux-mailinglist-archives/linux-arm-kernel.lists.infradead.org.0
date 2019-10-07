Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 407AECEA10
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 19:05:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3e0pGon5Fm3qk/AD79JlI6z8EC6KHl3zTE4miv4R35I=; b=RHigNRTPNsUEzRvBjIjUTKZsJ
	/ASJ9CiRhq7olWthaIPGnx26BgWASRzQo5oqufhOCCw6cAG/NRs6yeREF2VkjTG5YgujU8mfLlOzq
	nt+WP4j7Q4o3Rd/hXFfUiHxDQa64wj6HCC1bWtV9hKpUPWYsKS3aoc3/NGXS4pKw3xtKbCaWR1xLc
	YvjzlWu9I5Zps2OWrS+WhIO60Bbfs6ClRWE+jn/1s9Kwo4z3ViaIzmGK5ayD6x04QUR4hMQxOCOq/
	xuQ5pA4gZqkgBc2YPJu7QacK3/5fsp0bbMtyt8BmLhPPohjAom7fsWp9tLHIsuC74qC+rhgK7n0eY
	kIctT1McA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHWRP-000305-8j; Mon, 07 Oct 2019 17:04:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHWRH-0002zD-Do
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 17:04:52 +0000
Received: from earth.universe (dyndsl-037-138-090-170.ewe-ip-backbone.de
 [37.138.90.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4FF22206C0;
 Mon,  7 Oct 2019 17:04:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570467889;
 bh=BOSxj+PbQ1BvxlkuWcNqwjbGF5ytNDQBfi3Ioz8A9RQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dsRX/zC2HcBFZgChcpJyDI+i4gajoUvhCBmhI0kaqlSq24fZGjaMG80cwgJwVvb2j
 BetaNhEyORIuE/5xKMaKtOEaElhGn8xiS56iXu2AQ6zyhgUVS2rsAVdybamTWDxypj
 jpFnpsHHD+tK1HZ4ROhFb928jUi60cHNIQqXi04w=
Received: by earth.universe (Postfix, from userid 1000)
 id F3A573C0CA1; Mon,  7 Oct 2019 19:04:46 +0200 (CEST)
Date: Mon, 7 Oct 2019 19:04:46 +0200
From: Sebastian Reichel <sre@kernel.org>
To: Andreas Kemnade <andreas@kemnade.info>
Subject: Re: [PATCH] drm: panels: fix spi aliases of former omap panels
Message-ID: <20191007170446.yotb24s6jhe6nx3r@earth.universe>
References: <20191007164130.31534-1-andreas@kemnade.info>
MIME-Version: 1.0
In-Reply-To: <20191007164130.31534-1-andreas@kemnade.info>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_100451_499011_E268E342 
X-CRM114-Status: GOOD (  16.67  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linux-OMAP <linux-omap@vger.kernel.org>, airlied@linux.ie,
 omi Valkeinen <tomi.valkeinen@ti.com>, Jyri Sarha <jsarha@ti.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Tony Lindgren <tony@atomide.com>, thierry.reding@gmail.com,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, daniel@ffwll.ch,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 sam@ravnborg.org, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============4873167116162814778=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4873167116162814778==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="iql274jatv4mpjov"
Content-Disposition: inline


--iql274jatv4mpjov
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Oct 07, 2019 at 06:41:30PM +0200, Andreas Kemnade wrote:
> When the panels were moved from omap/displays/ to panel/
> omapdss prefix was stripped, which cause spi modalias
> to not contain the vendor-prefix anymore.
>=20
> so we had e.g. in former times:
> compatible=3Domapdss,tpo,td028ttec1 -> modalias=3Dspi:tpo,td028ttec1
> now:
> compatible=3Dtpo,td028ttec1 -> modalias=3Dspi:td028ttec1
>=20
> This is consistent with other drivers. Tested the td028ttec.c
> only, but the pattern looks the same for the other ones.
>=20
> Fixes: 45f16c82db7e8 ("drm/omap: displays: Remove unused panel drivers")
> Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
> ---

Patch looks good to me, but you have one false positive.

> [...]
>
> diff --git a/drivers/gpu/drm/panel/panel-sharp-ls037v7dw01.c b/drivers/gp=
u/drm/panel/panel-sharp-ls037v7dw01.c
> index 46cd9a2501298..838d39a263f53 100644
> --- a/drivers/gpu/drm/panel/panel-sharp-ls037v7dw01.c
> +++ b/drivers/gpu/drm/panel/panel-sharp-ls037v7dw01.c
> @@ -204,7 +204,7 @@ static int ls037v7dw01_remove(struct platform_device =
*pdev)
>  }
> =20
>  static const struct of_device_id ls037v7dw01_of_match[] =3D {
> -	{ .compatible =3D "sharp,ls037v7dw01", },
> +	{ .compatible =3D "ls037v7dw01", },
>  	{ /* sentinel */ },
>  };
> =20

The DT compatible should have a vendor prefix.

> [...]

-- Sebastian

--iql274jatv4mpjov
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAl2bcCsACgkQ2O7X88g7
+pqKSQ/9HclHNhGRa3L+55z5K08PEFcrfqZTjrhBUnQW/JOnaun8CyHC229w9gfF
cZ8Z3E0HY6xKlIFHP6K3kjdjcPghU58QXAhneBIf8zr0OiChnuleAe3gZ89WAB8f
Zy/PCAj+tNLWaUzhlwYe0VW+IXkDbXrF5VCkwUIs96QFNAduLraco7wMxpnl1Kcl
FQScSqD7wEXQD55dqnJwEVrYfi1C3JjdrtTPXTAZj3mBcpKekYLQ0JzVAx7JqpwQ
PkRXYjCrVwQ7VfO0gXkqxEjXucK+K/gN6dcIz0wj6Evrl+Pj0e3GKl8RPzWZnk0h
dAtJ/HXclZyh+qlQKLj0dmFuVHebBlWaLO30Kl4WiuKsGXAq2NfpXS9+Nq4ZaRXM
X/pH730gVRGvA6/nlPkkkHoqL/0p2/APW40uPBdzUoKCWpOUGoFbG1rknKfVR7Ug
MNCpJXPv7Jgu9U7pd/mkmlLE08Yu76tshniFFZPz8kzkrkkRwrxIimO/65VTIrFr
hpzDkZPD8DLDb2q287r7UwL3zgccP85jMrPj+l+XPyhZTErWk6HTadm+JRqAWSX3
c1Bh47Pb3PPdxSoOp6tddkbeYWutsufe9CA+lXG46tH8X0VKYQ7KtIj+BzclQLkd
NbbAU4Ja6+mExXInkjgnjB1DGIZ/qSZF9TtwmbZUS6Pe5Rp3NEA=
=vfl2
-----END PGP SIGNATURE-----

--iql274jatv4mpjov--


--===============4873167116162814778==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4873167116162814778==--

