Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D26F7168EE4
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 13:35:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dAqEYizxri3Etg5TibO7x3MuCg/G6JcEzbXRt6Kqb00=; b=egM/UxKzEqtx0BnF7wBoKdhqc
	O4EhaAZOmjKs8yfFQHi4xZsONnfhFhm10HEYE3DbAoMlX8BfqxCHfpEE7Jhec525vArG83ntSzdjf
	dgOdGG+dAjHs62cmfJWttQ8lQrF3BYaVkEkETIeiK+YSFirFREX9MT7psHZDAFZtzMLltj2LxwBDT
	mAXchAsR/juwLItMkKaP1M8MiNlQorRMJvIpNS7GtpB/2OEZ4oXNPZbqNmlGjS8u0recKaCRv4nUD
	QI8MzrQybjKJ4po4kLBvB52kAog42ovCsrZoK46sOfivvhGunfu1m8CAW2m3ofXsd0vtoixZnncfQ
	67/rcpqpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5U05-0000UV-EO; Sat, 22 Feb 2020 12:35:17 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5Tzm-0000Ty-LZ
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 12:35:00 +0000
Received: from localhost (p5486C6B7.dip0.t-ipconnect.de [84.134.198.183])
 by pokefinder.org (Postfix) with ESMTPSA id F30102C07F9;
 Sat, 22 Feb 2020 13:34:57 +0100 (CET)
Date: Sat, 22 Feb 2020 13:34:57 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Alain Volmat <alain.volmat@st.com>
Subject: Re: [PATCH 1/5] i2c: i2c-stm32f7: disable/restore Fast Mode Plus
 bits in low power modes
Message-ID: <20200222123457.GG1716@kunai>
References: <1579795970-22319-1-git-send-email-alain.volmat@st.com>
 <1579795970-22319-2-git-send-email-alain.volmat@st.com>
MIME-Version: 1.0
In-Reply-To: <1579795970-22319-2-git-send-email-alain.volmat@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_043458_855540_D2937DC1 
X-CRM114-Status: GOOD (  12.28  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, pierre-yves.mordret@st.com, robh+dt@kernel.org,
 linux-i2c@vger.kernel.org, mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0904559760570012924=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0904559760570012924==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="IuhbYIxU28t+Kd57"
Content-Disposition: inline


--IuhbYIxU28t+Kd57
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alain,

thanks for the patch. A few comments:

> @@ -303,6 +303,8 @@ struct stm32f7_i2c_msg {
>   * @dma: dma data
>   * @use_dma: boolean to know if dma is used in the current transfer
>   * @regmap: holds SYSCFG phandle for Fast Mode Plus bits
> + * @regmap_reg: register address for setting Fast Mode Plus bits
> + * @regmap_mask: mask for Fast Mode Plus bits in set register
>   * @wakeup_src: boolean to know if the device is a wakeup source
>   */
>  struct stm32f7_i2c_dev {
> @@ -326,6 +328,8 @@ struct stm32f7_i2c_dev {
>  	struct stm32_i2c_dma *dma;
>  	bool use_dma;
>  	struct regmap *regmap;
> +	u32 regmap_reg;
> +	u32 regmap_mask;

Is this really a descriptive naming? From looking at the code,
'syscfg_reg' or 'fmp_reg' sound more suitable to me?

> +{
> +	if (i2c_dev->speed !=3D STM32_I2C_SPEED_FAST_PLUS ||
> +	    IS_ERR_OR_NULL(i2c_dev->regmap)) {
> +		/* Optional */
> +		return 0;
> +	}

No brackets needed here.


> -	ret =3D of_property_read_u32_index(np, "st,syscfg-fmp", 2, &mask);
> +	ret =3D of_property_read_u32_index(np, "st,syscfg-fmp", 2,
> +					 &i2c_dev->regmap_mask);
>  	if (ret)
>  		return ret;
> =20
> -	return regmap_update_bits(i2c_dev->regmap, reg, mask, mask);
> +	return 0;

Can be shortened now to
	return of_property_read_u32_index(...);

> +		ret =3D stm32f7_i2c_write_fm_plus_bits(i2c_dev, 1);

The type of the last parameter is bool, so using 'true/false' instead of
'1/0' is a tad more readable, I think.

Regards,

   Wolfram


--IuhbYIxU28t+Kd57
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl5RH/EACgkQFA3kzBSg
KbavNg/9GAfGIB4N92n2trj9XDA9COdUjFm1R4Ll9GV1q55OEyFvjsYjVYJ7HNaV
oRJWmf+gP9YqJ3UAkTLLSSxtL5fzy6qZA7AK8is3x4ujhLJSUgUladxMDj2iYdeu
jkcCBpz7qVEJuHmfUb+E+7jtTLDhYPiaWMuYcZxu56lOCRfyS9eQNXUXneYkRxZf
S3WC9j9/6ePMl/GzT5bR9xDdEsyfH34NgPuDKS4Q/ctEJIvprOKZ3rx8ydOiK5Xt
kTTvH27KzoAmUpB7uvMCiedvHDqe2n3iApM1J5A4b9InH+2bLq0TbzDNFHYxDGZL
BH6HGMKyMBSRejbY52ZKD8ppwgE5QSl1/S12801F1HDNV37gjkh+1j163+x8Km0w
yb/erg1hXCvgE8z6KT7ulFDp6PCvhbaMG7c1mQFfut5Uc+ZRNSVqkEMgoxhCV39/
U8IfeO9dd6Sa3oPgCH7MH5SXw4887sSgj+6n4Ft1UX2rIC1UPyx2l0mPo0Y458ZT
0zEAGlOoStKH9JlcHzZFRppTBQXgg64DG7DzdBNFR/+ZVlp6jKHosOn3cpCvtIVG
VwlK16wVO0I7Iy4Jffm+VTlycexDet7pNK+GeD3VCQEk65/gJSh5Tq5tnEfTY8/g
DFM/GdKlFVSM/CN9PZKD/tTpTlNh2k5MSmmrjLY8A+vnpERPKpU=
=KSsS
-----END PGP SIGNATURE-----

--IuhbYIxU28t+Kd57--


--===============0904559760570012924==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0904559760570012924==--

