Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C127AAAC6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 20:21:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MtFlJZayRjbBnPO4+ppoRh2tyHj8w4medmCSxVtyBoY=; b=lz0+Lm0nnJcCzB6EkjPkM0WuN
	GxYQjimaWvCpcqRQR2Hx35NkC37c+C5M6LqLq4kj/xQVPRoeEkn+cXsn1gm0jg6IjN3++7jS/0WJ5
	9cVVQgSpej41YmjOS+nVLGZWlJ2X+c+y1Dz5YYOLmAL+e4KKNeug5aTUMruU3oJygjcjL62SgBJLY
	BlSFHwSHWqyv2RM0iHPtchP5bg2bJvR9DpjUizoMSvJ23oiEWrjevf8Ri+bzveoN3MrxGWxDGeZEd
	uNrRXATPwOTt6iC4ZJSPemuE559v96P/BhXFIDJrfZhExDLKjXWE6ISUg+qtlX2t7VToJWBbZVHEP
	rryprLLUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5wNb-0000zp-Ck; Thu, 05 Sep 2019 18:21:11 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5wNT-0000yc-He
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 18:21:05 +0000
Received: from localhost (p54B335F6.dip0.t-ipconnect.de [84.179.53.246])
 by pokefinder.org (Postfix) with ESMTPSA id 73A6F2C00C0;
 Thu,  5 Sep 2019 20:20:59 +0200 (CEST)
Date: Thu, 5 Sep 2019 20:20:59 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [RESEND v3 1/1] i2c: qcom-geni: Provide an option to disable DMA
 processing
Message-ID: <20190905182058.GA5281@kunai>
References: <20190905144122.5689-1-lee.jones@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20190905144122.5689-1-lee.jones@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_112103_883269_A63DB2E1 
X-CRM114-Status: GOOD (  15.07  )
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
 linux-kernel@vger.kernel.org, agross@kernel.org, robh+dt@kernel.org,
 bjorn.andersson@linaro.org, vkoul@kernel.org, alokc@codeaurora.org,
 linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6792147039483872891=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6792147039483872891==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zhXaljGHf11kAtnf"
Content-Disposition: inline


--zhXaljGHf11kAtnf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 05, 2019 at 03:41:22PM +0100, Lee Jones wrote:
> We have a production-level laptop (Lenovo Yoga C630) which is exhibiting
> a rather horrific bug.  When I2C HID devices are being scanned for at
> boot-time the QCom Geni based I2C (Serial Engine) attempts to use DMA.
> When it does, the laptop reboots and the user never sees the OS.

$subject is still wrong. And a paragraph that you are/were debugging the
root cause but to no avail so DMA gets disabled for now would be good for a
hotfix this late in the cycle.

>=20
> Signed-off-by: Lee Jones <lee.jones@linaro.org>
> ---
>  drivers/i2c/busses/i2c-qcom-geni.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-=
qcom-geni.c
> index a89bfce5388e..17abf60c94ae 100644
> --- a/drivers/i2c/busses/i2c-qcom-geni.c
> +++ b/drivers/i2c/busses/i2c-qcom-geni.c
> @@ -355,11 +355,13 @@ static int geni_i2c_rx_one_msg(struct geni_i2c_dev =
*gi2c, struct i2c_msg *msg,
>  {
>  	dma_addr_t rx_dma;
>  	unsigned long time_left;
> -	void *dma_buf;
> +	void *dma_buf =3D NULL;
>  	struct geni_se *se =3D &gi2c->se;
>  	size_t len =3D msg->len;
> =20
> -	dma_buf =3D i2c_get_dma_safe_msg_buf(msg, 32);
> +	if (!of_machine_is_compatible("lenovo,yoga-c630"))
> +		dma_buf =3D i2c_get_dma_safe_msg_buf(msg, 32);
> +
>  	if (dma_buf)
>  		geni_se_select_mode(se, GENI_SE_DMA);
>  	else
> @@ -394,11 +396,13 @@ static int geni_i2c_tx_one_msg(struct geni_i2c_dev =
*gi2c, struct i2c_msg *msg,
>  {
>  	dma_addr_t tx_dma;
>  	unsigned long time_left;
> -	void *dma_buf;
> +	void *dma_buf =3D NULL;
>  	struct geni_se *se =3D &gi2c->se;
>  	size_t len =3D msg->len;
> =20
> -	dma_buf =3D i2c_get_dma_safe_msg_buf(msg, 32);
> +	if (!of_machine_is_compatible("lenovo,yoga-c630"))
> +		dma_buf =3D i2c_get_dma_safe_msg_buf(msg, 32);
> +
>  	if (dma_buf)
>  		geni_se_select_mode(se, GENI_SE_DMA);
>  	else
> --=20
> 2.17.1
>=20

--zhXaljGHf11kAtnf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl1xUgcACgkQFA3kzBSg
KbYXzA/+LjS2mPdsksvarWH8VQNQdqsoNEIn5YCxhi5qXxi0KAdEp5Z3N04ZEOk3
goSeO/4g2HCWM9myuZ9wunwRgK8ucOiSfkatKYPEKHg8buN9f3QfSlLfENIhtwKc
yeNOJyakRyJnfzXpFVRmrrTWjJoLTS0ZhNgHFMPbR8cXu1sAW2tnvzYfUVLUBGP4
w+3ldwl6wzRUvg49x4K4yGmsTJ5NQFPKJnTUUYUJ0IgetTRyGD/3HoEY6k3W12oo
QenoRNh3MEd/HjG+sQYH1w01/86Oz5L0N5OFQoQtFwCR5fITMP4sjy30dB1/cvyr
UzXWWfzzRV5Gbz1EodWPOS2dzPj4e8f5TRzKJa86GkPYcm6Fys4ifFWTCD6yxuTe
A3o2ruGJwaIZ6ALxUAzLfSjbyb3ZKsCJ+JLUeMP7hnTrOI7umYHQKxiAXkC4gL1E
CzAg3CA0BefETQ0vutbyGemZfq8ThJpFktldowciXZrxo55JoPIW2PNMn9YuLE+h
7yxkc0NQB2Y1Pzzqyk8dcQrwDOS+4sEiGD2QEgAe7FdMqv181MA7XIH8C05Y/uqV
gwBYxFuKCc7/dUfKBzHDi5EpWlwGIY7wGTvNzzOwn25+wmUOEidSa3SPuM6ozEnR
Kc9uu4xw4ZB/1cne5zTkL0BDa14aJt4/lkcWV4TWrs7E6voy05k=
=Z3pm
-----END PGP SIGNATURE-----

--zhXaljGHf11kAtnf--


--===============6792147039483872891==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6792147039483872891==--

