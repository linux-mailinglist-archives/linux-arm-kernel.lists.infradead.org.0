Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85255184943
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 15:26:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rP6rgCJSDqq07492yPygyIFd92ERYZr0qlZpRZQm2y4=; b=atSJHWyL3Wh1ixQmgVb8rKyHI
	hWqMW/oHrddsQaHyc/+hfas8aqhdszPugcMPqXN9/gXdVYqy8TWNVA+o1g7OeFkR7HYXO+lYB4Wm+
	AE73cZZ6MTF6rduj8S3QeFitrR1flKwHg/m0MwF18scHtzziJIbnqryzHSXu95RCFJyllPKCithZi
	FyhY/oj5XDTVs948Gsr+I540+rfkkgYSED7c0509LLbwdfaXQ7QU3OJ9hQ3k0Xzj4NNKi/7JEMKqN
	OSuuvVi+bApsUess/7nBougNY47roPUQWyPX2IXLXo9X4xwEKNsfEH0xKiv1LYHEE1kzpad9PJIWF
	dERGLdPCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jClGn-0007CH-1C; Fri, 13 Mar 2020 14:26:37 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jClGe-0007Br-Db
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 14:26:29 +0000
Received: from localhost (p54B3314F.dip0.t-ipconnect.de [84.179.49.79])
 by pokefinder.org (Postfix) with ESMTPSA id 9A2C72C1ED4;
 Fri, 13 Mar 2020 15:26:27 +0100 (CET)
Date: Fri, 13 Mar 2020 15:26:27 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH -next 010/491] ARM/SAMSUNG EXYNOS ARM ARCHITECTURES: Use
 fallthrough;
Message-ID: <20200313142627.GF1852@ninjato>
References: <cover.1583896344.git.joe@perches.com>
 <1d569e023b6cb7b8d0da8d1bcccd92e97fe436c8.1583896348.git.joe@perches.com>
MIME-Version: 1.0
In-Reply-To: <1d569e023b6cb7b8d0da8d1bcccd92e97fe436c8.1583896348.git.joe@perches.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_072628_607157_BE1DFE6D 
X-CRM114-Status: UNSURE (   7.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-samsung-soc@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Tomasz Figa <tomasz.figa@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 linux-kernel@vger.kernel.org, Chanwoo Choi <cw00.choi@samsung.com>,
 Kukjin Kim <kgene@kernel.org>, linux-i2c@vger.kernel.org,
 Sylwester Nawrocki <s.nawrocki@samsung.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5272810457883141195=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5272810457883141195==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="NQTVMVnDVuULnIzU"
Content-Disposition: inline


--NQTVMVnDVuULnIzU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 10, 2020 at 09:51:24PM -0700, Joe Perches wrote:
> Convert the various uses of fallthrough comments to fallthrough;
>=20
> Done via script
> Link: https://lore.kernel.org/lkml/b56602fcf79f849e733e7b521bb0e17895d390=
fa.1582230379.git.joe.com/
>=20
> Signed-off-by: Joe Perches <joe@perches.com>

Acked-by: Wolfram Sang <wsa@the-dreams.de> # for the I2C part


--NQTVMVnDVuULnIzU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl5rmBMACgkQFA3kzBSg
Kba47w/+Lo0vuKn419fTKoi1bZI+iu4cVPczancfBFTyBaGwu2WxMvlfsZPZaWSQ
ZA0DwyJV/q7C5PiEXjkNhIAK9txlsUpVTcXrmki5X4Z3hG0k5D4HjP0i+6GtqsvX
yNpn8ebcK94e7HGKwN4Qg16jrh1hy22dd+Bcs7P2wb0zOpv2+VrL8n4ORXZVdSr9
RjSySKHXxDTTfBpQ+Fe9IHH3ObWFNH4ydniXhiDy5hAZUwYmkm4Lrv0ul5OCglwF
08LgjIkidixle3PEylgSVE2896WnDF3EgmDrO72uPXunarBbgFz+KaYeEnTTndvO
s2+fDykbBZye6kNZy89svJ+ljjbqLr5lIgGc/MiAIviJJ7qlq9MS7kWVCvjSROSL
G/9S5vjw4bxJhobzBmlZbW339Ki3UJDnMYJmGC5zv2eROAKHa3Hw/JXocUvsbE+v
LbXKVUm4cAMcL6ld0MXYBlDQasGcErb5HSk4huMr0Ye9/pyqycDrg788A2cW29/A
GovnQqR9rjJ6ebqHAOrFqPf2PnWvfqHqz01/zMyjOW1hYVEdfkH9EjFnuPjI0Ue7
PLlXv2NS+iSe01qRJaDCR+afknfWHEnCcEJCdua5/cvTFy6Q4MP/jGrod4ZCe7fV
yd/yi39OamvOtixkid1R84VFKuSrufZ30TYpeoaUTL6IcAdKl0g=
=3+s9
-----END PGP SIGNATURE-----

--NQTVMVnDVuULnIzU--


--===============5272810457883141195==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5272810457883141195==--

