Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD15A12439F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 10:48:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=adaAPaUAaoL/WctiW2+k/ILQOsuuwC+ww8yh67CwVqY=; b=jzxt3BtEWs/7IHuD/I3x3OzuA
	2tLizwS+ThzpwjC5+RS2zOi9bYQ8usANxGuOLgXBJxKXdlpDYWk9rfGMeJU2WR+6RV1Vou+Wrivj1
	NynUHozGwqoA0E3RA3lVcw5yMFMOy/mbO6I55hs2taA0cG18UEikJtoq9uHpsmJCupYwhDL3krg22
	Yd9aCxx7dT1txOovFP6/0X4CgW0Il37+RMwQm1qMB1DtF0Wrvf2wM48ULwum+I/ACg3uvjYVg3NFq
	3e9WDiOB7vLByrFpNdeazAFjwuLdyIlJ+ef5E8SinfuX6XL+4WuHwOKC6TvnBx6uex/upqURPrLM/
	MaLB++8eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihVwG-0000mc-7J; Wed, 18 Dec 2019 09:48:16 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihVw4-0000ki-Rc; Wed, 18 Dec 2019 09:48:06 +0000
Received: from localhost (p54B33260.dip0.t-ipconnect.de [84.179.50.96])
 by pokefinder.org (Postfix) with ESMTPSA id 192732C06A9;
 Wed, 18 Dec 2019 10:48:01 +0100 (CET)
Date: Wed, 18 Dec 2019 10:47:57 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [PATCH 02/13] mmc: tmio: convert to devm_platform_ioremap_resource
Message-ID: <20191218094757.GA1054@ninjato>
References: <20191215175120.3290-1-tiny.windzz@gmail.com>
 <20191215175120.3290-2-tiny.windzz@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20191215175120.3290-2-tiny.windzz@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_014805_041706_C633BF6F 
X-CRM114-Status: UNSURE (   5.89  )
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
Cc: kstewart@linuxfoundation.org, ulf.hansson@linaro.org,
 geert+renesas@glider.be, linus.walleij@linaro.org, bjorn.andersson@linaro.org,
 yamada.masahiro@socionext.com, khilman@baylibre.com, jh80.chung@samsung.com,
 wens@csie.org, agross@kernel.org, chaotian.jing@mediatek.com,
 linux-arm-msm@vger.kernel.org, wsa+renesas@sang-engineering.com,
 mripard@kernel.org, linux-mediatek@lists.infradead.org, ben-linux@fluff.org,
 matthias.bgg@gmail.com, linux-amlogic@lists.infradead.org, tglx@linutronix.de,
 allison@lohutok.net, linux-arm-kernel@lists.infradead.org, nico@fluxnic.net,
 gregkh@linuxfoundation.org, yoshihiro.shimoda.uh@renesas.com,
 linux-mmc@vger.kernel.org, adrian.hunter@intel.com,
 linux-kernel@vger.kernel.org, vireshk@kernel.org, manuel.lauss@gmail.com
Content-Type: multipart/mixed; boundary="===============3122205241100081827=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3122205241100081827==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="1yeeQ81UyVL57Vl7"
Content-Disposition: inline


--1yeeQ81UyVL57Vl7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Dec 15, 2019 at 05:51:09PM +0000, Yangtao Li wrote:
> Use devm_platform_ioremap_resource() to simplify code.
>=20
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>

I am not a big fan of this new function, but oh well...

Tested on a Lager board (R-Car H2), SDHI gets recognized and SD cards
are detected.

Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>


--1yeeQ81UyVL57Vl7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl359cgACgkQFA3kzBSg
KbaFBw/+Np52ahaH5+TRKI/drXlFCXUL5HuWieFoxsd85DJHgxSXOTku4oSCDjSy
tQ305gyE97P963NpUtrU9V2uovdl27ko/jA8kC9z0fxx7+DoDdTqw13JjTTBLOW9
s3dELTr7BVx5j+UEWfFBGP0VbiM57oOm+qAiNMhjoY64Fkmkn/3oroDk9M7LY+kz
GjvwgLpiDXeOylLKpHQzk4+pO1X0aGqtTncveQ8Oa/CKytN9UCDfUH7gI1HgXLeM
FDqu3HGucRHbL52bLxnz71PrJWQ3Z6Cxm46Z8mKbWDFvnLJoCIegymSGdzawqzf0
wWmBUh+LocMl6reuTeD4s5I0HDyt+LAU1Kx1R0LQMflXe9KIVukga9W20B1eh6dH
r1PDsfj9Y0GQwyY9X7PEhV90B3t/rGHhmw/XMZAMqf2xkgkrD2rlLr1aO+xLv84D
asn6q8ZYfgKF9tmN6lUnJTpP8hXKG017MOk1jS5R+2iaXi5Fp3rSmX0DpQTHye+x
/wWU9IpJ1HBKTdGWZFnJwd1SCOVzYR4mlLwvOpjiw66ZbX00y5obr773NkgjG/iA
p1mbF7OO/5MFOAZgpyM0zzCTSaWjh/GfbGEOfEVhcXErCZhS4WmQjJ3k+rg8JBn8
Pwu2Sgz+1rwyeqOiHZJtY3QkffH3x1IsskLYbK2kSHs06L2t7O4=
=XhTS
-----END PGP SIGNATURE-----

--1yeeQ81UyVL57Vl7--


--===============3122205241100081827==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3122205241100081827==--

