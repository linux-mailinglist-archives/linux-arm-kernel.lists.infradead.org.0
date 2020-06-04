Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEFAD1EEA06
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 20:02:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Tlp9E7tkCOx8+hweI2B0AGLKwwdUsXfZ6sYdFKXwjuQ=; b=b/rhlIL+Wz0k89ZHPTlDfkgst
	8zwOc/BPPSwEMZzTFgbfdgvKDZBHpbdUykTMQL5wcxMbTH89GSnVJag6Hk3SiC3/YXZNZE/TiAhog
	a/ZYW+nvbjwxd58iBTTzKor+RPqzUpEf2+1V8g2X+x6OKYz3wf/OVTBTFs2YU9wNYEU65mKCobyH4
	JzMQIJ/vLY+Kerjb7t2uQEEDdKl0rvOGlFKI6eSslx6bzpfbjblzGp7Q8Rzq4cceqHVOOePU5t8x5
	CdyI0kbD3o5TIfdav9O3p8XbnVCxfHaDbylU2nP/k2WFkLHmTFHM51N6TzuUIDI1DxYMTXZI4vcxL
	W1tRv0poA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jguCG-0008C8-Ak; Thu, 04 Jun 2020 18:02:32 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jguC9-0008BU-RI; Thu, 04 Jun 2020 18:02:27 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 8AD8BAC40;
 Thu,  4 Jun 2020 18:02:27 +0000 (UTC)
Message-ID: <e096d89ab881d69b2477b209838a308f9de114b1.camel@suse.de>
Subject: Re: [PATCH v3 12/25] clk: bcm: rpi: Use CCF boundaries instead of
 rolling our own
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Maxime Ripard <maxime@cerno.tech>
Date: Thu, 04 Jun 2020 20:02:22 +0200
In-Reply-To: <eb1b2838f1c3c006c24bcb9816f75e1351c63b05.1590594293.git-series.maxime@cerno.tech>
References: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
 <eb1b2838f1c3c006c24bcb9816f75e1351c63b05.1590594293.git-series.maxime@cerno.tech>
User-Agent: Evolution 3.36.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_110226_178717_0D94CEB1 
X-CRM114-Status: GOOD (  16.87  )
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
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8425592639974815494=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8425592639974815494==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-+uejN3Q43Y4PuptNv516"


--=-+uejN3Q43Y4PuptNv516
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2020-05-27 at 17:45 +0200, Maxime Ripard wrote:
> The raspberrypi firmware clock driver has a min_rate / max_rate clamping =
by
> storing the info it needs in a private structure.
>=20
> However, the CCF already provides such a facility, so we can switch to it
> to remove the boilerplate.
>=20
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  drivers/clk/bcm/clk-raspberrypi.c | 18 ++++++++----------
>  1 file changed, 8 insertions(+), 10 deletions(-)
>=20
> diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-
> raspberrypi.c
> index a20492fade6a..e135ad28d38d 100644
> --- a/drivers/clk/bcm/clk-raspberrypi.c
> +++ b/drivers/clk/bcm/clk-raspberrypi.c
> @@ -36,9 +36,6 @@ struct raspberrypi_clk {
>  	struct rpi_firmware *firmware;
>  	struct platform_device *cpufreq;
> =20
> -	unsigned long min_rate;
> -	unsigned long max_rate;
> -
>  	struct clk_hw pllb;
>  };
> =20
> @@ -142,13 +139,11 @@ static int raspberrypi_fw_pll_set_rate(struct clk_h=
w
> *hw, unsigned long rate,
>  static int raspberrypi_pll_determine_rate(struct clk_hw *hw,
>  					  struct clk_rate_request *req)
>  {
> -	struct raspberrypi_clk *rpi =3D container_of(hw, struct raspberrypi_clk=
,
> -						   pllb);
>  	u64 div, final_rate;
>  	u32 ndiv, fdiv;
> =20
>  	/* We can't use req->rate directly as it would overflow */
> -	final_rate =3D clamp(req->rate, rpi->min_rate, rpi->max_rate);
> +	final_rate =3D clamp(req->rate, req->min_rate, req->max_rate);
> =20
>  	div =3D (u64)final_rate << A2W_PLL_FRAC_BITS;
>  	do_div(div, req->best_parent_rate);
> @@ -215,12 +210,15 @@ static int raspberrypi_register_pllb(struct
> raspberrypi_clk *rpi)
>  	dev_info(rpi->dev, "CPU frequency range: min %u, max %u\n",
>  		 min_rate, max_rate);
> =20
> -	rpi->min_rate =3D min_rate * RPI_FIRMWARE_PLLB_ARM_DIV_RATE;
> -	rpi->max_rate =3D max_rate * RPI_FIRMWARE_PLLB_ARM_DIV_RATE;
> -
>  	rpi->pllb.init =3D &init;
> =20
> -	return devm_clk_hw_register(rpi->dev, &rpi->pllb);
> +	ret =3D devm_clk_hw_register(rpi->dev, &rpi->pllb);
> +	if (!ret)
> +		clk_hw_set_rate_range(&rpi->pllb,
> +				      min_rate * RPI_FIRMWARE_PLLB_ARM_DIV_RATE,
> +				      max_rate *
> RPI_FIRMWARE_PLLB_ARM_DIV_RATE);

Isn't there a potential race here? Albeit unlikely, cpufreq could show up a=
nd
call clk_round_rate() in between the registration and you setting the range=
s.

Regards,
Nicolas



--=-+uejN3Q43Y4PuptNv516
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl7ZNy4ACgkQlfZmHno8
x/6rLgf+MI7j31eml7V9G28ZgJulg/9yfgQn1humlrU63+IKDhYbogSdbp7/hVJz
YdQSu0b7LXKltV1XmIB7582ieZxBsAK4nKSmqVq+D2VoEOIm6KgBuFWW/WXIwDS3
DPavaLSEHlNX/o+9w80P+oQ96HNJszg4n1Nu+1ZpffG51Y/0E8H2s+UNgrZlrRO4
MYrpfeN0ywrH7euU3T9XSdsJ9H3HwAAj/Osp1Y8P8KcJxBE7vLN3GOqtpMjKReha
DjtcypqZ1L0chi+C/Nu692yPOMrVjFeYkpLex7GyhWmLe84KRXDFrG0kK5o9c8S5
j3HLs/hWF7eqO7D/oOKImGbf/nSM9A==
=57iT
-----END PGP SIGNATURE-----

--=-+uejN3Q43Y4PuptNv516--



--===============8425592639974815494==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8425592639974815494==--


