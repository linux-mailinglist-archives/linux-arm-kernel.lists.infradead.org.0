Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C6D1F6677
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 13:19:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cQcmdwRd36oJUL90+xbM6YK/on7mtfJ2C7p61gVrUmI=; b=Be4wU/2L+RVZ4GjlB8v1ooGSJ
	8Esw2pL/wIZcIc4YVXWYncXhKBEtD80fExHe25QKLN8k4un/oOdWPb452PUvOFnJ9QkEEoLDHujkc
	CCK8BEzrl7RShJWFE0ZtzHotQRrnaZybz2MjOpkFxzBojOXnqX38kr6dDP7Gwz7NQ2xAUKHWj+MJQ
	DDx/vuof87mOmuyDnOkyGaA1TYPV6rB+nx932b2KDMuQCp0GZOmP0iYXfDNaRuhVGlORFxeagU5qy
	blrcZdWMFAkzzox9cenu8lajveNYQ95jsBmtHWP97cT8fHkvVeRhwdq03gF4QF1ijHV26m4j8xJl0
	27tao3pPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjLEb-0005cg-C1; Thu, 11 Jun 2020 11:19:01 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjLET-0005c9-8m; Thu, 11 Jun 2020 11:18:54 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 62155AD12;
 Thu, 11 Jun 2020 11:18:55 +0000 (UTC)
Message-ID: <333956e7b6b186f751baf7f1b69be3c2cf4d077f.camel@suse.de>
Subject: Re: [PATCH v4 27/27] clk: bcm: rpi: Remove the quirks for the CPU
 clock
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Maxime Ripard <maxime@cerno.tech>
Date: Thu, 11 Jun 2020 13:18:50 +0200
In-Reply-To: <a636a413f26014901ff1acb8df046049a79c4c6d.1591860665.git-series.maxime@cerno.tech>
References: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
 <a636a413f26014901ff1acb8df046049a79c4c6d.1591860665.git-series.maxime@cerno.tech>
User-Agent: Evolution 3.36.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_041853_462528_5B79D94D 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
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
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7361321053258958502=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7361321053258958502==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-U285mDlmyFSu1bffEK5R"


--=-U285mDlmyFSu1bffEK5R
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2020-06-11 at 09:32 +0200, Maxime Ripard wrote:
> The CPU clock has had so far a bunch of quirks to expose the clock tree
> properly, but since we reverted to exposing them through the MMIO driver,
> we can remove that code from the firmware driver.
>=20
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---

Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Regards,
Nicolas


--=-U285mDlmyFSu1bffEK5R
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl7iExoACgkQlfZmHno8
x/7NEwgAmtZn8c3AHDT++MR4B7LhujoGQ8LYybQXxK3GT42QsGrQC1gJTHb37q1h
GFFMOJA+WL4dEvVOWujZe88cnZkIgoneF3a/y+6x9ZBDYRb15rljvJXxWDDEpDNq
I4pzHw2RldYDTbe+bM8qy4c5LN+uPrtvujT9ZWXKBDjE2ixTwrVqWNBMMtiNacYu
xEGJrr4Bwi11Gng1qmRD+MwNrwhIfQDMAqvhV865eqfWnri3+xws2Xa1wfcNYUaf
oyX8gzx/LV8LbpdXLQpddhiPxKzDXWqXTHcnpZXyPPXAgRDUDLGy0I/Irxqnw5tk
zOPDY89bcrKowlAUqAM5uDFIBI9btQ==
=Cn2+
-----END PGP SIGNATURE-----

--=-U285mDlmyFSu1bffEK5R--



--===============7361321053258958502==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7361321053258958502==--


