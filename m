Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B0F7DC10
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 15:02:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bp0roeKH9Gwo1cqCjhTLlSaV7ElJdmMHHeOSHu5xh1s=; b=r9YCGsdM1vc20WRtHupjzcYyz
	S0wwK5ikDhosxpVA9hrii2NLAfNdgpQFXN573UaqpQxkATYolGg4Y80bs8/SrOX0fPGEu60zNyZb4
	d/HAOiArQ6tFA02vyVCt7HfZs7HaA1QRk8u/bJZ9x4sl6jAq5NYf3OJxSqN9rgp18a1x4dvoRHR3L
	NO7CFD+7VSlHu75J2zqHxR8YWhzXmUYcXjTgMABIPu3be3jaV/rw8XYWOn0K5IFGtAAjCSeC6Su3j
	Wh/2Zwc0djoynxwiCrCUOjqmHmd4soTWZ9pCkBsBgkiD5QX6jsQ0sHA6150wGaAYpMZFfEdgUQUlD
	4Cgkye+Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htAiT-0003gV-8k; Thu, 01 Aug 2019 13:01:57 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1htAiF-0003ck-9G
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 13:01:45 +0000
Received: from localhost (p54B333D2.dip0.t-ipconnect.de [84.179.51.210])
 by pokefinder.org (Postfix) with ESMTPSA id 633B42C2817;
 Thu,  1 Aug 2019 15:01:42 +0200 (CEST)
Date: Thu, 1 Aug 2019 15:01:42 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Subject: Re: [PATCH] i2c: s3c2410: Mark expected switch fall-through
Message-ID: <20190801130141.GO1659@ninjato>
References: <20190728235138.GA23429@embeddedor>
MIME-Version: 1.0
In-Reply-To: <20190728235138.GA23429@embeddedor>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_060143_590711_21C6283E 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, linux-samsung-soc@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4913933406007060465=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4913933406007060465==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sGwo475CiIwWEjLI"
Content-Disposition: inline


--sGwo475CiIwWEjLI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Jul 28, 2019 at 06:51:38PM -0500, Gustavo A. R. Silva wrote:
> Mark switch cases where we are expecting to fall through.
>=20
> This patch fixes the following warning:
>=20
> drivers/i2c/busses/i2c-s3c2410.c: In function 'i2c_s3c_irq_nextbyte':
> drivers/i2c/busses/i2c-s3c2410.c:431:6: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
>    if (i2c->state =3D=3D STATE_READ)
>       ^
> drivers/i2c/busses/i2c-s3c2410.c:439:2: note: here
>   case STATE_WRITE:
>   ^~~~
>=20
> Notice that, in this particular case, the code comment is
> modified in accordance with what GCC is expecting to find.
>=20
> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>

Applied to for-current, thanks!


--sGwo475CiIwWEjLI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl1C4rUACgkQFA3kzBSg
Kba28RAApiI7u/wDnAuTCpteayRX5I68w5cXuFTG+gDegwQ3YOswZdkoM9v4W9pd
rfQ84jLH0clY/G4g7qapeZltQIF9QUrknnCPjHQ0x7sp3pwg1QHVnaq58x6BasaP
cQC/UAWpxY9Q0FqWE8g0Q4rCwsCtxRqLR1k+3gqzHpt6elXnApvsm0gfX6wHVZps
7hWXbs49+RR8FEmGJr6CMR8tbkObH9RjS5HnIFlgG+jsxhuIABRRK3b70elZFBXx
rGC+J5uUN9OgJn8qxSJ+6JlxVPRm4oimxJtiH6IkYCMYgINOXQUClLvkXFv4/Dzs
ErS/Kk1EQoZ5jS9T44iZBh1LfY/NrR8gclTIrpmqjiPnrmx7RziaKplg/26VjuDN
rkrCF8HOqC+aD1e3dGhBzxSLxs2PNQQcojjthdmXTFipHhteg3d2iMEjBXHG45yw
I6dyfQpT+n0tjyWoh+DWOIxqD3NlXyyunym/gSEjir0bgnC7TaUQiKQ+xg3pspGd
EnCcXA0TRuNncT7HElrt6wXMi7bnHOh1Fwlkb8cOhR2fxfL6EuSfsNhud3eDgLzU
ow2sNRMl0wpJTYk50ypFHo2l8Bei1/4hRJUH6NYmmJAKaZ1Bakp/cMsY3v2XAj91
3VNl2U3/o5snGmU3Rzjh5x1DMdzL5G+7Xl5dDGfe4aPfvZW+Rhg=
=WUQP
-----END PGP SIGNATURE-----

--sGwo475CiIwWEjLI--


--===============4913933406007060465==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4913933406007060465==--

