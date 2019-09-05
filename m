Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB1A3A9E16
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 11:18:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1dsWvMY4seoQqW8Xqc76IHUniMeDxC99/sya40B3y5o=; b=hN89esZb6xZPaY3+UWHauup4u
	Wc0ExHtILy2xuSq2OsGQekRggDSjd+mS4pyFhtPYfFIbQV2CgbnW1z5kYXk8cyeIOFKHYIyvnsx8U
	X3dxxmxba8ESskPNl/OUIH0X77Fa6lKiTCYgp2cm714YHHzNuaPy0aYJtzZz08MVK+lAly5p150Sf
	BPAXeQ9GuICmK2TdVtFPH+snvz5hiVJBntTJamyLiPJgqKCVDPmLhViCYk121bn7ojmOgRUJt4JJP
	XufLhxdz8BvzbMZ8Q2KEduM2BVCbCg2263P1ZSOrj1FsYfNxkNNfUglzUcDgoysr+0N4kMq6PB8xg
	cEEuprxWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5nuB-00023y-09; Thu, 05 Sep 2019 09:18:15 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5ntx-00023c-Jw
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 09:18:03 +0000
Received: from localhost (p54B335F6.dip0.t-ipconnect.de [84.179.53.246])
 by pokefinder.org (Postfix) with ESMTPSA id E0B302C0509;
 Thu,  5 Sep 2019 11:18:00 +0200 (CEST)
Date: Thu, 5 Sep 2019 11:18:00 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH 2/2] i2c: qcom-geni: Provide an option to disable DMA
 processing
Message-ID: <20190905091800.GD1157@kunai>
References: <20190905075213.13260-1-lee.jones@linaro.org>
 <20190905075213.13260-2-lee.jones@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20190905075213.13260-2-lee.jones@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_021801_998767_565DC7C3 
X-CRM114-Status: GOOD (  14.04  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, agross@kernel.org,
 robh+dt@kernel.org, bjorn.andersson@linaro.org, vkoul@kernel.org,
 alokc@codeaurora.org, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4292042958299802539=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4292042958299802539==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xB0nW4MQa6jZONgY"
Content-Disposition: inline


--xB0nW4MQa6jZONgY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> Fixes: 8bc529b25354 ("soc: qcom: geni: Add support for ACPI")

Are you sure? From visual inspection, I don't see a correlation between
this commit and the fix here.

> Signed-off-by: Lee Jones <lee.jones@linaro.org>
> Reviewed-by: Vinod Koul <vkoul@kernel.org>
> ---
>  drivers/i2c/busses/i2c-qcom-geni.c | 14 ++++++++++----
>  1 file changed, 10 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-=
qcom-geni.c
> index a89bfce5388e..8822dea82980 100644
> --- a/drivers/i2c/busses/i2c-qcom-geni.c
> +++ b/drivers/i2c/busses/i2c-qcom-geni.c
> @@ -353,13 +353,16 @@ static void geni_i2c_tx_fsm_rst(struct geni_i2c_dev=
 *gi2c)
>  static int geni_i2c_rx_one_msg(struct geni_i2c_dev *gi2c, struct i2c_msg=
 *msg,
>  				u32 m_param)
>  {
> +	struct device_node *np =3D gi2c->se.dev->of_node;
>  	dma_addr_t rx_dma;
>  	unsigned long time_left;
> -	void *dma_buf;
> +	void *dma_buf =3D NULL;
>  	struct geni_se *se =3D &gi2c->se;
>  	size_t len =3D msg->len;
> =20
> -	dma_buf =3D i2c_get_dma_safe_msg_buf(msg, 32);
> +	if (!of_property_read_bool(np, "qcom,geni-se-no-dma"))
> +		dma_buf =3D i2c_get_dma_safe_msg_buf(msg, 32);
> +
>  	if (dma_buf)
>  		geni_se_select_mode(se, GENI_SE_DMA);
>  	else
> @@ -392,13 +395,16 @@ static int geni_i2c_rx_one_msg(struct geni_i2c_dev =
*gi2c, struct i2c_msg *msg,
>  static int geni_i2c_tx_one_msg(struct geni_i2c_dev *gi2c, struct i2c_msg=
 *msg,
>  				u32 m_param)
>  {
> +	struct device_node *np =3D gi2c->se.dev->of_node;
>  	dma_addr_t tx_dma;
>  	unsigned long time_left;
> -	void *dma_buf;
> +	void *dma_buf =3D NULL;
>  	struct geni_se *se =3D &gi2c->se;
>  	size_t len =3D msg->len;
> =20
> -	dma_buf =3D i2c_get_dma_safe_msg_buf(msg, 32);
> +	if (!of_property_read_bool(np, "qcom,geni-se-no-dma"))
> +		dma_buf =3D i2c_get_dma_safe_msg_buf(msg, 32);
> +
>  	if (dma_buf)
>  		geni_se_select_mode(se, GENI_SE_DMA);
>  	else
> --=20
> 2.17.1
>=20

--xB0nW4MQa6jZONgY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl1w0sgACgkQFA3kzBSg
KbZAkhAAqLidEFMA6FK2iigoU4Bb521+nLwBTqlnG9ahMrhVVQmIKDARK++TEvwm
6DKw2OxJDCx/hXpnWy5U1TAj8x9Q09BWol8xTjT7paGKdek65kB/EbfvwCqCFfdO
5J34MIIYgu6o6BjvfN3OCcwLFg2ubYm76kIS/wjPpocPVEoUBCtyrK+fXIsp21eB
kmcvGyYY+3O69bjNoGdpdV3SLQyh0LRCmxPKi0ogIU8+hY+S5DpA3HaEkzb75KgV
zla+6XVWtROIA8OnNsPt8lZruy4tbP5JHq+zrxel1/GEDX45jPxLINqz2ei1tZJ2
szJMBeMO6Brq1i1qgbK6/c610FdJV+G/9OhkeY6B0iKp6FaoeuiEGuQLxZvJoEpM
Y+bSw/8i2h+RCZh187XcpOM3M8Ulqzje3Ruk1xsqJXb6bWuy/Tm5BiCAWUCO62gk
R9/wLxQgKg3HpyQYqatk0POPGhj5Wl+vH4A2XO5V36wqV6YMVQn+RFuRREfndDmP
tFAk6i4Rn54l9f3CtKP8cB16zSplO0d9vO8LKEhG3HtFUsvOBxeq+IMW1YA9tTGP
DRjTu3Dbme8P2BrUsB2gWglzNC2xRY489FM9Oik2qL3YrXqLcE2LeGh3bOvuet1R
cESLKwr6DFkLrbvbKv1V/1+e+cUdtt3PGQPLh/08KbKqpdvB16s=
=vkLL
-----END PGP SIGNATURE-----

--xB0nW4MQa6jZONgY--


--===============4292042958299802539==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4292042958299802539==--

