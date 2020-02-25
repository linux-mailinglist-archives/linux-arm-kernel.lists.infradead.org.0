Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A94E16EB21
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 17:17:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YCqhiC/xcozPxveQMctoI6aT7khZvtLVMEuaX9nFG0g=; b=sOCyx3ORtsnWq2St/8bqJyr6i
	oP5C6uMKBbzhjkuByvyPuYeGYJpzzZOH4i49zKgrA/knvffM4EfT0khHQY+qw5mb/plG9txW7kMMx
	rJu65S0VuN/xgB+kYheZhhb73gQJdU4hnLlVthbHk8GNA/Tizue8J3P/rcRj5u+w25f2hGXDWQEjH
	nyWmLRYL4ePO9JRg1POoZxu2yiDhUfeENGaLBYBoQbyynWJmaROpjPjNyDkbrC/E6ufJZBZhVj74Z
	D8b1q22bB9wLyNiiZrU6+0yrNsm2/M3ALBuOqwYfyMftFlyQfabTfqqHrZboJX/6QJGIG2SIJr21f
	GQz+4G+QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6ctU-0000hl-AI; Tue, 25 Feb 2020 16:17:12 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6ctN-0000hJ-2O; Tue, 25 Feb 2020 16:17:06 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id B978EABD7;
 Tue, 25 Feb 2020 16:17:03 +0000 (UTC)
Message-ID: <a39d4fbf02b21700df8f3a2e9451a917dfee4906.camel@suse.de>
Subject: Re: [PATCH 12/89] clk: bcm: rpi: Remove pllb_arm_lookup global pointer
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Maxime Ripard <maxime@cerno.tech>, Eric Anholt <eric@anholt.net>
Date: Tue, 25 Feb 2020 17:16:59 +0100
In-Reply-To: <703e21467f23f63acdac0e078b58040c39b852bf.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
 <703e21467f23f63acdac0e078b58040c39b852bf.1582533919.git-series.maxime@cerno.tech>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_081705_255233_1ACC17CB 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-clk@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8500434257341966517=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8500434257341966517==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-mQsztJO/CyD/HRPi/ysV"


--=-mQsztJO/CyD/HRPi/ysV
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2020-02-24 at 10:06 +0100, Maxime Ripard wrote:
> The pllb_arm_lookup pointer in the struct raspberrypi_clk is not used for
> anything but to store the returned pointer to clkdev_hw_create, and is no=
t
> used anywhere else in the driver.
>=20
> Let's remove that global pointer from the structure.
>=20
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: linux-clk@vger.kernel.org
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Thanks!
Nicolas


--=-mQsztJO/CyD/HRPi/ysV
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5VSHsACgkQlfZmHno8
x/6IRwf9Fqq8ki5864Qf/tulpjfn0fB7ZlgZ0G6L6r3pcZ8sKECJEgcEnzemvJlD
gh24JKpJWl83h0w1UCFdDRE1zRoj14kKRyRh86c9etsVknCVQGLhW9n6rO9Zctwy
xbCmnvEqN+JcJxldJ+ZEbEnCJZVtTJQz0wJX6UrjRcIoBCQXTUIcg3WP2c2xBZc+
sVAH/gq+rleiF2BeiuTafx6U4Ey5n6AJDrhNVy+O03TX/AQnPzEEWnsp6VUZquDg
qyqEzBIFkChRFat3B5rgfutAK6FOmOJvhS7/c5fJpn9Ug8CgkXeCBSKZAIG5udug
k1Wk2dOK1zG+9iwhAaJ7mvp8ih9tEA==
=NyHR
-----END PGP SIGNATURE-----

--=-mQsztJO/CyD/HRPi/ysV--



--===============8500434257341966517==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8500434257341966517==--


