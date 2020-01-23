Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EDB8146640
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 12:00:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DBD66E8b/hC8O+T2hwCjYuXgxAz7S3/WWmLDI8YQZzA=; b=nAV2CONSWGqiByiif5AUX5AKq
	h2xsT2q6v6/2OTj/4xKlv+ZjeLz7TBVZJPf1hULejVWxDOK+fLTQwEhRtlwmcxX+pFLSse/xfUaB3
	JL+wk8rz113ibYVuW/3V4z0oxricCu2jjA9p8av81gkTmFwEN5MMp7s0Iv1CG3BuubCmzR19ybihc
	DafML5qipxJyDoYqXroAUSe4TVmPB232HUuFO38b/G83izprG2Cua0uTZ2LJEadZUU6t7JHPkUe4x
	JqmDu5G24A1RnHmsdPbChxHIHK0+o22rWdmZG2ah6HvY2THZ1KPy5XYlNDxz/7Ug+/pTfDO2PrE/j
	l3H4lO3/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuaDb-0007YA-Ud; Thu, 23 Jan 2020 11:00:11 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuaCf-0007Bi-Gj
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 10:59:15 +0000
Received: from localhost (p54B335E9.dip0.t-ipconnect.de [84.179.53.233])
 by pokefinder.org (Postfix) with ESMTPSA id C070C2C084A;
 Thu, 23 Jan 2020 11:59:12 +0100 (CET)
Date: Thu, 23 Jan 2020 11:59:12 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2 2/2] i2c: exynos: Update Kconfig documentation
Message-ID: <20200123105912.GF1105@ninjato>
References: <1578384779-15487-1-git-send-email-krzk@kernel.org>
 <1578384779-15487-2-git-send-email-krzk@kernel.org>
MIME-Version: 1.0
In-Reply-To: <1578384779-15487-2-git-send-email-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_025913_730662_3EDE06C4 
X-CRM114-Status: UNSURE (   7.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>, Greg KH <greg@kroah.com>,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Jarkko Nikula <jarkko.nikula@linux.intel.com>, linux-i2c@vger.kernel.org,
 Geert Uytterhoeven <geert@linux-m68k.org>, Jean Delvare <jdelvare@suse.de>
Content-Type: multipart/mixed; boundary="===============3772572947092222184=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3772572947092222184==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="27ZtN5FSuKKSZcBU"
Content-Disposition: inline


--27ZtN5FSuKKSZcBU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 07, 2020 at 09:12:59AM +0100, Krzysztof Kozlowski wrote:
> Update the help text to reflect current support devices:
> 1. The Exynos high speed I2C driver supports Exynos5 (ARMv7), Exynos5433
>    and Exynos7 (both ARMv8) SoCs,
> 2. The S3C I2C driver supports S3C, S5Pv210 and Exynos{3,4,5} SoCs.
>=20
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
>=20

Applied to for-next, thanks!


--27ZtN5FSuKKSZcBU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl4pfIAACgkQFA3kzBSg
KbbrcA//Tms/+ltBFvXpVJ3+fW0prOmA4azr0VsupDhuUL+TRYlw9eOQrGOwdJrN
mXGiFIesmGw1uWs/c0OPEaYIFL96C75XvPd8DY5VBr2+HIESpAN+4VgGsG2Z1hh1
n84Dzmul4cQsh4qTzYPjjIaYYOW17ZiQXmr7Si3oygqOFHGnr41lUwKTsKbJFLKV
h7wY1+7bP8KyaThxFTUMYeKBPsGV+hrhiBhUk1RyrcuNQZCdDNN+cGh2PYpY9N36
KoBJ19u0l6h8+FL4iSLS4Oby3h9TL/1EqweiPlsHctVnMcvdeyHjtB9NNUX48SqY
spkG0lMJl4O8YsK1maNlDpEEHu/mWApdh3vQSbWiDzwlBb58Saqr1SBVklwj922Z
QgpYvZl0yQE2XWaP/ikuV6N8ey/JiKPdU5jrMKuCpZpiCKCNqMyCfC5WWIlUr8FM
dxZyQ8bMrzgCCZY9/LwkIOnKLYrQY4yb/wgto2Os8aTQvg2V0dZuOUYoiJp2c/Dq
W+pke8DJiOJqfAY4fPuFSl+jjPC9JlyLFuKacKDKqpKm/mJ/i0J6sNbC57jwESys
gAUrmpGmZEYgyT1Ep8xInZA/2LDZuE6JTfSuLO8vawRrKhb21JXaT9Ehkwk2R8BP
bQnvmVUDg3nlmoMpY21DFeAzppz7p9UFA0RvPqBSOd6c3u6sZaY=
=PVpe
-----END PGP SIGNATURE-----

--27ZtN5FSuKKSZcBU--


--===============3772572947092222184==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3772572947092222184==--

