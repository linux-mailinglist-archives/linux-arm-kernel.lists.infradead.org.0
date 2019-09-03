Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C681A7237
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 20:06:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WCGbS3TSM3mutfVgq0uCL4X4FPqcs7G1W2KCjZqzy1I=; b=U9MYKSfKdz/NuN3XotqzOO9Q0
	8wvFch4c6/Qzd8lpNAp56dI7Z06z59vwQgRpSWi+mLDLdOYxVSjEk++8YpjEeaOF7UzyPIeNrhD61
	0AQS1qyz6r50Me28cjbZnkbLkyorXRCIKB79pxw7jsrw52R44HZMuBCOAGeU0i0HqrTntcNSt4LdC
	4zxbNPCzRQ/bZ++jkha0AfY04jH2DlZyn1XkPN6bmP/rcYvpdVZes/4laPSKOrKiaBMOucRuMp2oC
	8Hdh5vtcjxsoRLTRgblOUodhO4jN3gjleaYb6RCIN2V7VxgZY3+m/hgERtM0hTiUuk4winG/hn6RE
	lP7FPP4hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5DBz-0006YC-CN; Tue, 03 Sep 2019 18:06:11 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5DBl-0006XT-BG
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 18:05:59 +0000
Received: from localhost (p54B3348D.dip0.t-ipconnect.de [84.179.52.141])
 by pokefinder.org (Postfix) with ESMTPSA id 98A132C4F2F;
 Tue,  3 Sep 2019 20:05:52 +0200 (CEST)
Date: Tue, 3 Sep 2019 20:05:52 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH] i2c: stm32f7: Make structure stm32f7_i2c_algo constant
Message-ID: <20190903180552.GI2171@ninjato>
References: <20190815055857.1944-1-nishkadg.linux@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190815055857.1944-1-nishkadg.linux@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_110557_540821_0EE7E53C 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: alexandre.torgue@st.com, linux-kernel@vger.kernel.org,
 pierre-yves.mordret@st.com, linux-i2c@vger.kernel.org,
 mcoquelin.stm32@gmail.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7372527508035437312=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7372527508035437312==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jQIvE3yXcK9X9HBh"
Content-Disposition: inline


--jQIvE3yXcK9X9HBh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 15, 2019 at 11:28:57AM +0530, Nishka Dasgupta wrote:
> Static structure stm32f7_i2c_algo, of type i2c_algorithm, is used only
> when it is assigned to constant field algo of a variable having type
> i2c_adapter. As stm32f7_i2c_algo is therefore never modified, make it
> const as well to protect it from unintended modification.
> Issue found with Coccinelle.
>=20
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> ---

Are you guys okay with this patch?

>  drivers/i2c/busses/i2c-stm32f7.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/i2c/busses/i2c-stm32f7.c b/drivers/i2c/busses/i2c-st=
m32f7.c
> index 266d1c269b83..d36cf08461f7 100644
> --- a/drivers/i2c/busses/i2c-stm32f7.c
> +++ b/drivers/i2c/busses/i2c-stm32f7.c
> @@ -1809,7 +1809,7 @@ static u32 stm32f7_i2c_func(struct i2c_adapter *ada=
p)
>  		I2C_FUNC_SMBUS_I2C_BLOCK;
>  }
> =20
> -static struct i2c_algorithm stm32f7_i2c_algo =3D {
> +static const struct i2c_algorithm stm32f7_i2c_algo =3D {
>  	.master_xfer =3D stm32f7_i2c_xfer,
>  	.smbus_xfer =3D stm32f7_i2c_smbus_xfer,
>  	.functionality =3D stm32f7_i2c_func,
> --=20
> 2.19.1
>=20

--jQIvE3yXcK9X9HBh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl1uq4AACgkQFA3kzBSg
Kbb8bA/7Bzcu4H+4vy+pN5u7/6dvt9U1m+nVCt4vcisCCui7/eCm99H3yyDexyt0
XfsNaP3kRsliO6VzsxJYKLmKwuoFhmweI+nDH+fTBzVproQhzrlGjcr1N+ZF3uvp
vYMOCk84pZZ8h7eAeQIxtw8FJKLX+1EOJJcG2w7APhQ+0YoJibSkz5yVasT1arNZ
t9wOQQki7S2HLK09QRYP1urT7dIbRvkcaFM9HQMBZdcsOCSa3SdnL52YjLTbgA3K
HAIt1QpAmbHanMgBOEM+FTDWSSWuZyea4t1oGBK21mHksjLP/+cmR8dUiRVkpEcU
HuJRmRE2STSo0GE8c06fiYIhNPNHUPy7M2B5LmAvEbmj9uEjElbJuzCXmY6sh2ka
NkQypuukYn9S3EdP6+zPCVgvdB3UxnuxhxX4exQiagOa4TsrXoPv/M85wQjU6h+k
SebrMybbLsyr57zYG77zUQxQPUGopl3gAmQrXk4C0AGDgGrGZHn5rgOIi0CqkR8Y
n2bgrd5sG04fLP0XrhFUeQFjXKBVAfAStse3VzHzt0GdXZ3FIbhyqn39982sM2xk
MhLO4UCcFyc3ebtcqHIZIkM23QwO/FGhSiGmwVci8EPS174rlH7G9hMvXfuMWrgc
uFx3t0vfZmx62RXhspKEEjsxe+/pGbtGOsJsRsEi4o96NRElfDw=
=fdQf
-----END PGP SIGNATURE-----

--jQIvE3yXcK9X9HBh--


--===============7372527508035437312==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7372527508035437312==--

