Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 464141243AB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 10:49:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ztfLhjjI4+hs8rXYuiovGZZbXnlUDXH2dATJuVz+R6U=; b=uLPC7/S+4aTP/zjaAklowJ7mn
	rosWnKTjI9XgpxZUsPHQR1hrA20qIzA2c3+SQGbRBBHSFu+4Ki3/6v9x1koTZACBEqgqCstXJ76Lf
	glYGyr5iPjbq+oIFYyl2Syb/MoGNI4pxZQDrWyJnGdeLNNEBSzUruTKzcosYFyBIYwuGJHB27yOIm
	mb+cLVgejgbiomZMups/uUJ9aeDAtIDRZx14iQqGREv7C6E+g3Xcj2/Akz5mJ3jLDcRmtNXzmoDaR
	rza/dyspOKPUEmqegyCp1LTFJkketzYTzOslq+ugol9rz30a0vNVfvHUbrD/QvPt8hTkkE/g1opGT
	VSf1+OKIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihVxK-0001Bi-D8; Wed, 18 Dec 2019 09:49:22 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihVx8-0001AE-J0; Wed, 18 Dec 2019 09:49:11 +0000
Received: from localhost (p54B33260.dip0.t-ipconnect.de [84.179.50.96])
 by pokefinder.org (Postfix) with ESMTPSA id BFD992C2D9A;
 Wed, 18 Dec 2019 10:49:09 +0100 (CET)
Date: Wed, 18 Dec 2019 10:49:09 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [PATCH 06/13] mmc: sh_mmcif: convert to
 devm_platform_ioremap_resource
Message-ID: <20191218094909.GB1054@ninjato>
References: <20191215175120.3290-1-tiny.windzz@gmail.com>
 <20191215175120.3290-6-tiny.windzz@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20191215175120.3290-6-tiny.windzz@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_014910_776804_267E5111 
X-CRM114-Status: UNSURE (   5.51  )
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
Content-Type: multipart/mixed; boundary="===============0912325163462156414=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0912325163462156414==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rS8CxjVDS/+yyDmU"
Content-Disposition: inline


--rS8CxjVDS/+yyDmU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Dec 15, 2019 at 05:51:13PM +0000, Yangtao Li wrote:
> Use devm_platform_ioremap_resource() to simplify code.
>=20
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>

Tested on a Lager board (R-Car H2), MMCIF gets recognized and the eMMC
is detected.

Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>


--rS8CxjVDS/+yyDmU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl359hQACgkQFA3kzBSg
KbaiBQ/+JDGkJA7UaNpOTGoVuiePH3IUpTMrJxM1MmEK8YzOLg2VtaawBlH85BhM
Ak/0IRYbspIV/cTS9KHqGuVTGzy7CBUZk0YzF+gVRKtzNc5YZarfxzJgcwdFprzw
MARgKLO3726eNMwbR4F9qguUj9bJkwC3ANzmp6/qxlQr1R+LhXOGfFMo8I3nZVIR
aVT4n9eYo/eNZhEZJIMJ+7BAW3v0rIXbBxHaJ2iCimRdFiOt5UnHHI+4NdRk2vQo
HKqrKedwVBZ6xj+Ufmu1jaRaUoD9hdFUIshiiNZ5dKqEf5OTUyWsXKqUynXCZ0wi
Dgjf6WRASYSG0CjGhMvyMS8LfWmWOy5u3jcTLvKDQeMhmGePZMchbQ4JlauUy+Vg
t7uETcZRJzwhHZvGsv4oThYe2ucZsPWSt+rGrvabPY93cfxm+PZhcSAy6bYf08U3
UjO3rGBaw2Ne563bPvPAduYx3gZ1hyF+mLk+SXeN7mnOdn0N/HK4BHmTeiS3RsuT
4Y5QmLH1ytXo/o3yy8BRUzb+gBoOqoYoaspnz44rYeo03iQyzpssJ3+DInP/Rb3o
Jz87kXD5TunphiWkHSSGeAcE5DMy/PJvz9m2VbrnDVwJkta7IZR57ypXXEhXWrnk
gqke2OekVI1rCUiL8w6bo3jHVGbKM4hCczuiOFKwbbRNKtbADtc=
=Qzgh
-----END PGP SIGNATURE-----

--rS8CxjVDS/+yyDmU--


--===============0912325163462156414==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0912325163462156414==--

