Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48A7B1F9D59
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 18:26:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ywCqI7nA449zzxCBN9dhyd5Fvsxfvzhl+yGXUyc9K8w=; b=MXuGJIvzxB0nN0ou2niUj7oFx
	T+Gs3x19dUmQrg6IVa0GssyDKTJlMZEQ3XdRnuEYrKaReQtvudGjrHKyMThKgI/jfeZAwQDS7NRYN
	jtVTZgZmBVgbPiq3+Jp1IZS3shGJBFZSEko8iZ8Nztnq7N8he/AecLJTVmTyWvCHSjp32IQl58qZQ
	jr2T0rJY8XbkRIykfYGVTSeUr+uaefP57/wtFs/kVVJNrhhvt5OcXU/ut/y6fS56/7Oyqkl5XSPAo
	ZuQT2d/eMDR34DrjP9sVwneyIUqp0xbAWnr5meHKsF0o7JMddUmMVqZwDhGDAgu3x0F+KSucHSTov
	UX5WtXUvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkrwe-0000OE-OW; Mon, 15 Jun 2020 16:26:48 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkrwF-0000HJ-E5; Mon, 15 Jun 2020 16:26:24 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 747E9ACFE;
 Mon, 15 Jun 2020 16:26:25 +0000 (UTC)
Message-ID: <810816166d8ef554e1bb1f4a2b39ea0b8a1a3d5b.camel@suse.de>
Subject: Re: [PATCH v4 3/3] ARM: dts: bcm2711: Add HDMI DVP
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Mike Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>
Date: Mon, 15 Jun 2020 18:26:19 +0200
In-Reply-To: <e22222ca7f41b960e9bb1a31e0dd2de95b8c0cd1.1591867332.git-series.maxime@cerno.tech>
References: <cover.4c4625a8e076f3163b800b3d8986b282ee98d908.1591867332.git-series.maxime@cerno.tech>
 <e22222ca7f41b960e9bb1a31e0dd2de95b8c0cd1.1591867332.git-series.maxime@cerno.tech>
User-Agent: Evolution 3.36.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_092623_634940_EF484452 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stephen Boyd <sboyd@kernel.org>, Mike Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, MaximeRipard <maxime@cerno.tech>,
 Philipp Zabel <p.zabel@pengutronix.de>, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6013782329505610887=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6013782329505610887==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-q9+H19jK4iCuSUzIgRNL"


--=-q9+H19jK4iCuSUzIgRNL
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2020-06-11 at 11:23 +0200, Maxime Ripard wrote:
> Now that we have a driver for the DVP, let's add its DT node.
>=20
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---

I can take this patch, but I guess the rest should go trough the clock tree=
.
Is it OK with you?

Regards,
Nicolas



--=-q9+H19jK4iCuSUzIgRNL
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl7noSsACgkQlfZmHno8
x/60KQf8DcikWxE71NrTvwrqPcZ8tTbET2o1LmElA8UjZC1GyON6J5rb7G9wZ3b7
ZacWpXr+y8DfgVVGKdCnUGjS2MNwA1GRvweSOldqrDnftVIjLoGkr7dDIVyPfIc2
EaqkX8o5xzWDNYrvzRjOllOr7hTKl9SiDvE6XTTpZakBUAweqQSLWyJI0Ns5dJJD
x3MBxn2NJvP7FJI6pKatBcLFnx68QLy5SXr3WbcXSM7Np2qW66vkM5oWu7PLHull
CBJEBiStVhGxWM9Ej/WGAl8SsWqEnZN/g8CBqMDWdMvMSFgcyAcxaz7PnaT8OrK7
DLuSwuP/IZe/pTsekRuENoXtSEcESg==
=0XwD
-----END PGP SIGNATURE-----

--=-q9+H19jK4iCuSUzIgRNL--



--===============6013782329505610887==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6013782329505610887==--


