Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C68A0EDC47
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 11:15:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PCcjBF1ksSPr3aiAN0kbQ01s3eIWPQenz2/S+OxbPBI=; b=fbvD4FPFwir/QRqydvS0lBf3X
	W0ZQ8XVcBGpB5N3JyGfKKjrEpcbopIm1WLC++nuiGTcL5w/ALgb6bRM/KIP/1bwCzA6GtaswZqEOx
	P0rnoOvZaPMPv+MhNRmuN+KsvFI08matLKUwwNdNeM7zurf/vZAyLQ8e8O0i1YxnocPYN73b4A9fY
	yJ8M2FoFcthbUsmLz9go5sH2VNVxDfbsR9p2hAAYKcGOk96EXVs50B6mwyYKEjuz5p5M8R5wQLZ/e
	SJ0O9Qyre5FyEof6AWOheJ31TuOheCL7eiqw45Tm6N5vvPLh7TjZ8UTSar49xmjPslYpZXrBYVqOj
	uXs6X1tBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRZO8-0005Gp-Tt; Mon, 04 Nov 2019 10:15:08 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRZNr-0005FW-Qc
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 10:14:54 +0000
X-Originating-IP: 86.250.200.211
Received: from aptenodytes (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 74C8EE0004;
 Mon,  4 Nov 2019 10:14:42 +0000 (UTC)
Date: Mon, 4 Nov 2019 11:14:42 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH 3/3] media: cedrus: Increase maximum supported size
Message-ID: <20191104101442.GF502900@aptenodytes>
References: <20191026074959.1073512-1-jernej.skrabec@siol.net>
 <20191026074959.1073512-4-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20191026074959.1073512-4-jernej.skrabec@siol.net>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_021453_107094_AAC2609B 
X-CRM114-Status: GOOD (  15.09  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, mripard@kernel.org,
 wens@csie.org, hverkuil-cisco@xs4all.nl, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============3734395295555793490=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3734395295555793490==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rV8arf8D5Dod9UkK"
Content-Disposition: inline


--rV8arf8D5Dod9UkK
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sat 26 Oct 19, 09:49, Jernej Skrabec wrote:
> There are few variations of 4k resolutions. The biggest one is
> 4096x2304 which is also supported by HW. It has also nice property that
> both width and size are divisible by maximum HEVC CTB size, which is 64.
>=20
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>

Acked-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

As I said on the other email, it would be nice to eventually reflect the ac=
tual
per-platform maximum dimensions instead of hardcoding the maximum for all
platforms confounded.

Cheers,

Paul

> ---
>  drivers/staging/media/sunxi/cedrus/cedrus_video.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/=
staging/media/sunxi/cedrus/cedrus_video.c
> index cc15a5cf107d..15cf1f10221b 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> @@ -29,8 +29,8 @@
> =20
>  #define CEDRUS_MIN_WIDTH	16U
>  #define CEDRUS_MIN_HEIGHT	16U
> -#define CEDRUS_MAX_WIDTH	3840U
> -#define CEDRUS_MAX_HEIGHT	2160U
> +#define CEDRUS_MAX_WIDTH	4096U
> +#define CEDRUS_MAX_HEIGHT	2304U
> =20
>  static struct cedrus_format cedrus_formats[] =3D {
>  	{
> --=20
> 2.23.0
>=20

--rV8arf8D5Dod9UkK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl2/+hEACgkQ3cLmz3+f
v9F9EQf7BuXGwf7hxl/hT3TH7m427gHG7ubncUhQ9fE5TUozKfHLhBQtDy0nutMV
e80cMMJgttDQQIh4dPL7AullJp4uAjP3x0+poGS1pdKNyjrdNciU5WMCIpBKWivd
BfOohr0AHgdsg9zDWZf1fLzmsv89M6194mpwpj6eq6n7keN5VVBAzPKHDPqOLRTN
913aRH1vp/ox3ksnvlgZjqPNx8ZkrdF4U0vWNSsh22KuCY5LE5sA4u/6mzgqqYO1
FgpEoj1Wr2LmYdzzHwerWHU4i6ypmZt21wEXcfHFIf1uilTVddWn3BTgFjVk96ix
bVC1uditJShGLWVwSxwq+nPaY6mpuQ==
=Iloe
-----END PGP SIGNATURE-----

--rV8arf8D5Dod9UkK--


--===============3734395295555793490==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3734395295555793490==--

