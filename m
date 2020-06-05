Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D703E1EF850
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 14:49:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bCufki0Yn2ZrX0oln1wKqNr3Elbzv21HxsqTSZB0IUU=; b=Jj+huLf3Xf4yBJZq26kw5CUDs
	bhPjyzD2GUvlg480Rl6owuGhsvsAdcr2VEGxFqE9Y174H07CN0z7++Eall3KGEb9dpUiAt06+TJ/r
	vfNYFGbFcc/S/wQRNFxGbG7IW8WuEUeAJ1+u7ZHM7Wd3XBBcPSxYFICnGHzosS9VZvq6u/tAKlc3G
	s0WOw+QFg3WPJbJhuSxpqfcRYGpuq/X352X7V1BG4FDw85lZtOk1Ip1Mn++LUHASNEjrgdWcC0D+0
	2t9lb9XPSnPhTLEQRqgtfLX+n160HYuqUigme/Ycji3vCNtSo2XSChJS7tXAaG9HwU0wzRCmm0a3N
	ki5B9yA0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhBmz-0005Fz-8n; Fri, 05 Jun 2020 12:49:37 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhBmq-0005FE-K1; Fri, 05 Jun 2020 12:49:30 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 7335AAD85;
 Fri,  5 Jun 2020 12:49:30 +0000 (UTC)
Message-ID: <400023013d9b53b0f4647909387d844f1a959d09.camel@suse.de>
Subject: Re: [PATCH v3 22/25] clk: bcm: rpi: Give firmware clocks a name
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Maxime Ripard <maxime@cerno.tech>
Date: Fri, 05 Jun 2020 14:49:25 +0200
In-Reply-To: <135a5d32e42d9a117e264f1f52ac9fb6b9dc20e6.1590594293.git-series.maxime@cerno.tech>
References: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
 <135a5d32e42d9a117e264f1f52ac9fb6b9dc20e6.1590594293.git-series.maxime@cerno.tech>
User-Agent: Evolution 3.36.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_054928_951224_A2926816 
X-CRM114-Status: GOOD (  14.55  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1267347053787380820=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1267347053787380820==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-6BoIZ1J7R/yVno28uORR"


--=-6BoIZ1J7R/yVno28uORR
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2020-05-27 at 17:45 +0200, Maxime Ripard wrote:
> We've registered the firmware clocks using their ID as name, but it's muc=
h
> more convenient to register them using their proper name. Since the
> firmware doesn't provide it, we have to duplicate it.
>=20
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  drivers/clk/bcm/clk-raspberrypi.c | 25 ++++++++++++++++++++++---
>  1 file changed, 22 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-
> raspberrypi.c
> index 8d3acf3ee053..cee634cb5323 100644
> --- a/drivers/clk/bcm/clk-raspberrypi.c
> +++ b/drivers/clk/bcm/clk-raspberrypi.c
> @@ -36,6 +36,23 @@ enum rpi_firmware_clk_id {
>  	RPI_FIRMWARE_NUM_CLK_ID,
>  };
> =20
> +static char *rpi_firmware_clk_names[] =3D {
> +	[RPI_FIRMWARE_EMMC_CLK_ID]	=3D "emmc",
> +	[RPI_FIRMWARE_UART_CLK_ID]	=3D "uart",
> +	[RPI_FIRMWARE_ARM_CLK_ID]	=3D "arm",
> +	[RPI_FIRMWARE_CORE_CLK_ID]	=3D "core",
> +	[RPI_FIRMWARE_V3D_CLK_ID]	=3D "v3d",
> +	[RPI_FIRMWARE_H264_CLK_ID]	=3D "h264",
> +	[RPI_FIRMWARE_ISP_CLK_ID]	=3D "isp",
> +	[RPI_FIRMWARE_SDRAM_CLK_ID]	=3D "sdram",
> +	[RPI_FIRMWARE_PIXEL_CLK_ID]	=3D "pixel",
> +	[RPI_FIRMWARE_PWM_CLK_ID]	=3D "pwm",
> +	[RPI_FIRMWARE_HEVC_CLK_ID]	=3D "hevc",
> +	[RPI_FIRMWARE_EMMC2_CLK_ID]	=3D "emmc2",
> +	[RPI_FIRMWARE_M2MC_CLK_ID]	=3D "m2mc",
> +	[RPI_FIRMWARE_PIXEL_BVB_CLK_ID]	=3D "pixel-bvb",
> +};
> +
>  #define RPI_FIRMWARE_STATE_ENABLE_BIT	BIT(0)
>  #define RPI_FIRMWARE_STATE_WAIT_BIT	BIT(1)
> =20
> @@ -343,7 +360,9 @@ static struct clk_hw *raspberrypi_clk_register(struct
> raspberrypi_clk *rpi,
>  	data->rpi =3D rpi;
>  	data->id =3D id;
> =20
> -	init.name =3D devm_kasprintf(rpi->dev, GFP_KERNEL, "fw-clk-%u", id);
> +	init.name =3D devm_kasprintf(rpi->dev, GFP_KERNEL,
> +				   "fw-clk-%s",
> +				   rpi_firmware_clk_names[id]);
>  	init.ops =3D &raspberrypi_firmware_clk_ops;
>  	init.flags =3D CLK_GET_RATE_NOCACHE;
> =20
> @@ -367,8 +386,8 @@ static struct clk_hw *raspberrypi_clk_register(struct
> raspberrypi_clk *rpi,
>  		return ERR_PTR(ret);
>  	}
> =20
> -	dev_info(rpi->dev, "Clock %d frequency range: min %u, max %u\n",
> -		 id, min_rate, max_rate);
> +	dev_info(rpi->dev, "Clock %s frequency range: min %u, max %u\n",
> +		 rpi_firmware_clk_names[id], min_rate, max_rate);

I belive this might change. Otherwise:

Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Regards,
Nicolas


--=-6BoIZ1J7R/yVno28uORR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl7aP1UACgkQlfZmHno8
x/4I8wf+NnWnFjJw0qH9nDGFXtvQQsS46VYH+/3Yq9GiuXvy1QwmQT9m2+ccW6CJ
tMMkIsE2hJLoi4gO9EZSN5JV1lH0Og/xPxdNmyCn9sGFTIkFIDdM8QMHktC0V79k
wsyq5qNw3WgywB8l9k8EyFls41sLxhi53tI9Qt/DXW7cNr2sx164JVgPCwc4wlO5
WS+5CKWxhQPhLmWWpl0YzB3SnRMQROvu536EDJnjcrf7Y+j8du492UUqLylmIaNz
QkEoR5YInC/jxgdx9o09Jp46D13Exf6frU6vS18ic792fDX4AWhqVMocjdjNcW+K
xE8gA09s5OQ9+K+olo6lL0HBuQtD0Q==
=UER2
-----END PGP SIGNATURE-----

--=-6BoIZ1J7R/yVno28uORR--



--===============1267347053787380820==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1267347053787380820==--


