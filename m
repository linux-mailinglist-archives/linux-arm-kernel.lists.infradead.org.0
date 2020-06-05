Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF181EF839
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 14:46:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iz0hJyU0El8YXsKzHy+sxIc23LSzTD2SJN9MZg+0t7E=; b=FvL/ifR0xjMqFjwI6Mo/CmHCs
	T4efsptONOPRFKiZD5XzK9iNPANRiJz8wafhxzTSmwI9xtgSDZKVIK1g9YQoOV91B70RQuAVcMMKD
	LI16QOk9SxeaYdcdVXGGYcNQUo1nUPcmmgkVb2CtFo1hS3HFKhs5sqeVgq2qGzXfk74oXqThrAyrF
	4XSZsf0qEBI0eqKqtB9eYYYPSJoQSOnH6N87RguOLU8KDqlfEO8eRpy6fQoAyTiTVPLz52p84f9mR
	kaZ+hj0loLS55yKVoNlhVUPfDxfvlgvrtntjJviqKVMieS31/a7cmtRjfDMC55End9vgPHH8WxJFR
	FBWtF3HUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhBjY-0004H8-Sn; Fri, 05 Jun 2020 12:46:04 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhBjP-0004GV-B6; Fri, 05 Jun 2020 12:45:57 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id CC71FAAC3;
 Fri,  5 Jun 2020 12:45:56 +0000 (UTC)
Message-ID: <a8741e98ce8ef4522def822e830de7d8b4a4604a.camel@suse.de>
Subject: Re: [PATCH v3 21/25] clk: bcm: rpi: Discover the firmware clocks
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Maxime Ripard <maxime@cerno.tech>
Date: Fri, 05 Jun 2020 14:45:50 +0200
In-Reply-To: <d3791b14fceec639085ff427e934852f275e348c.1590594293.git-series.maxime@cerno.tech>
References: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
 <d3791b14fceec639085ff427e934852f275e348c.1590594293.git-series.maxime@cerno.tech>
User-Agent: Evolution 3.36.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_054555_680009_58B2FE47 
X-CRM114-Status: GOOD (  29.57  )
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
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1694165782082457735=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1694165782082457735==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-5IzPRWEO3GJqGzz4Q08d"


--=-5IzPRWEO3GJqGzz4Q08d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Maxime,

On Wed, 2020-05-27 at 17:45 +0200, Maxime Ripard wrote:
> The RaspberryPi4 firmware actually exposes more clocks than are currently
> handled by the driver and we will need to change some of them directly
> based on the pixel rate for the display related clocks, or the load for t=
he
> GPU.
>=20
> Since the firmware implements DVFS, this rate change can have a number of
> side-effects, including adjusting the various PLL voltages or the PLL
> parents. The firmware also implements thermal throttling, so even some
> thermal pressure can change those parameters behind Linux back.
>=20
> DVFS is currently implemented on the arm, core, h264, v3d, isp and hevc
> clocks, so updating any of them using the MMIO driver (and thus behind th=
e
> firmware's back) can lead to troubles, the arm clock obviously being the
> most problematic.
>=20
> In order to make Linux play as nice as possible with those constraints, i=
t
> makes sense to rely on the firmware clocks as much as possible. However,
> the firmware doesn't seem to provide some equivalents to their MMIO
> counterparts, so we can't really replace that driver entirely.
>=20
> Fortunately, the firmware has an interface to discover the clocks it
> exposes.
>=20
> Let's use it to discover, register the clocks in the clocks framework and
> then expose them through the device tree for consumers to use them.
>=20
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: linux-clk@vger.kernel.org
> Reviewed-by: Stephen Boyd <sboyd@kernel.org>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  drivers/clk/bcm/clk-raspberrypi.c          | 151 ++++++++++++++++++++--
>  include/soc/bcm2835/raspberrypi-firmware.h |   5 +-
>  2 files changed, 144 insertions(+), 12 deletions(-)
>=20
> diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-
> raspberrypi.c
> index eebd16040f8a..8d3acf3ee053 100644
> --- a/drivers/clk/bcm/clk-raspberrypi.c
> +++ b/drivers/clk/bcm/clk-raspberrypi.c
> @@ -296,6 +296,142 @@ static struct clk_hw
> *raspberrypi_register_pllb_arm(struct raspberrypi_clk *rpi)
>  	return &raspberrypi_clk_pllb_arm.hw;
>  }
> =20
> +static int raspberrypi_fw_dumb_determine_rate(struct clk_hw *hw,
> +					      struct clk_rate_request *req)
> +{
> +	/*
> +	 * The firmware will do the rounding but that isn't part of
> +	 * the interface with the firmware, so we just do our best
> +	 * here.
> +	 */
> +	req->rate =3D clamp(req->rate, req->min_rate, req->max_rate);
> +	return 0;
> +}
> +
> +static const struct clk_ops raspberrypi_firmware_clk_ops =3D {
> +	.is_prepared	=3D raspberrypi_fw_is_prepared,
> +	.recalc_rate	=3D raspberrypi_fw_get_rate,
> +	.determine_rate	=3D raspberrypi_fw_dumb_determine_rate,
> +	.set_rate	=3D raspberrypi_fw_set_rate,
> +};
> +
> +static struct clk_hw *raspberrypi_clk_register(struct raspberrypi_clk *r=
pi,
> +					       unsigned int parent,
> +					       unsigned int id)
> +{
> +	struct raspberrypi_clk_data *data;
> +	struct clk_init_data init =3D {};
> +	u32 min_rate, max_rate;
> +	int ret;
> +
> +	if (id =3D=3D RPI_FIRMWARE_ARM_CLK_ID) {
> +		struct clk_hw *hw;
> +
> +		hw =3D raspberrypi_register_pllb(rpi);
> +		if (IS_ERR(hw)) {
> +			dev_err(rpi->dev, "Failed to initialize pllb, %ld\n",
> +				PTR_ERR(hw));
> +			return hw;
> +		}
> +
> +		return raspberrypi_register_pllb_arm(rpi);
> +	}
> +
> +	data =3D devm_kzalloc(rpi->dev, sizeof(*data), GFP_KERNEL);
> +	if (!data)
> +		return ERR_PTR(-ENOMEM);
> +	data->rpi =3D rpi;
> +	data->id =3D id;
> +
> +	init.name =3D devm_kasprintf(rpi->dev, GFP_KERNEL, "fw-clk-%u", id);
> +	init.ops =3D &raspberrypi_firmware_clk_ops;
> +	init.flags =3D CLK_GET_RATE_NOCACHE;
> +
> +	data->hw.init =3D &init;
> +
> +	ret =3D raspberrypi_clock_property(rpi->firmware, data,
> +					 RPI_FIRMWARE_GET_MIN_CLOCK_RATE,
> +					 &min_rate);
> +	if (ret) {
> +		dev_err(rpi->dev, "Failed to get clock %d min freq: %d",
> +			id, ret);
> +		return ERR_PTR(ret);
> +	}
> +
> +	ret =3D raspberrypi_clock_property(rpi->firmware, data,
> +					 RPI_FIRMWARE_GET_MAX_CLOCK_RATE,
> +					 &max_rate);
> +	if (ret) {
> +		dev_err(rpi->dev, "Failed to get clock %d max freq: %d\n",
> +			id, ret);
> +		return ERR_PTR(ret);
> +	}
> +
> +	dev_info(rpi->dev, "Clock %d frequency range: min %u, max %u\n",
> +		 id, min_rate, max_rate);

This outputs:

[    9.071965] raspberrypi-clk soc:firmware:clocks: Clock arm frequency ran=
ge: min 600000000, max 1500000000
[    9.086115] raspberrypi-clk soc:firmware:clocks: Clock core frequency ra=
nge: min 200000000, max 500000000
[    9.102418] raspberrypi-clk soc:firmware:clocks: Clock v3d frequency ran=
ge: min 250000000, max 500000000
[    9.120260] raspberrypi-clk soc:firmware:clocks: Clock m2mc frequency ra=
nge: min 0, max 600000000

I think, arm aside, it's pretty useless. I'd either print it only for arm o=
r
drop it altogether.

> +
> +	ret =3D devm_clk_hw_register(rpi->dev, &data->hw);
> +	if (ret)
> +		return ERR_PTR(ret);
> +
> +	clk_hw_set_rate_range(&data->hw, min_rate, max_rate);
> +
> +	if (id =3D=3D RPI_FIRMWARE_ARM_CLK_ID) {
> +		ret =3D devm_clk_hw_register_clkdev(rpi->dev, &data->hw,
> +						  NULL, "cpu0");
> +		if (ret) {
> +			dev_err(rpi->dev, "Failed to initialize clkdev\n");
> +			return ERR_PTR(ret);
> +		}
> +	}
> +
> +	return &data->hw;
> +}
> +
> +static int raspberrypi_discover_clocks(struct raspberrypi_clk *rpi,
> +				       struct clk_hw_onecell_data *data)
> +{
> +	struct rpi_firmware_get_clocks_response *clks;
> +	int ret;
> +
> +	clks =3D devm_kcalloc(rpi->dev,
> +			    sizeof(*clks), RPI_FIRMWARE_NUM_CLK_ID,
> +			    GFP_KERNEL);
> +	if (!clks)
> +		return -ENOMEM;
> +
> +	ret =3D rpi_firmware_property(rpi->firmware, RPI_FIRMWARE_GET_CLOCKS,
> +				    clks,
> +				    sizeof(*clks) * RPI_FIRMWARE_NUM_CLK_ID);
> +	if (ret)
> +		return ret;
> +
> +	while (clks->id) {
> +		struct clk_hw *hw;
> +
> +		switch (clks->id) {
> +		case RPI_FIRMWARE_ARM_CLK_ID:
> +		case RPI_FIRMWARE_CORE_CLK_ID:
> +		case RPI_FIRMWARE_M2MC_CLK_ID:
> +		case RPI_FIRMWARE_V3D_CLK_ID:
> +			hw =3D raspberrypi_clk_register(rpi, clks->parent,
> +						      clks->id);
> +			if (IS_ERR(hw))
> +				return PTR_ERR(hw);
> +
> +			data->hws[clks->id] =3D hw;
> +			data->num =3D clks->id + 1;
> +			fallthrough;
> +
> +		default:
> +			clks++;
> +			break;
> +		}
> +	}
> +
> +	return 0;
> +}
> +
>  static int raspberrypi_clk_probe(struct platform_device *pdev)
>  {
>  	struct clk_hw_onecell_data *clk_data;
> @@ -303,7 +439,6 @@ static int raspberrypi_clk_probe(struct platform_devi=
ce
> *pdev)
>  	struct device *dev =3D &pdev->dev;
>  	struct rpi_firmware *firmware;
>  	struct raspberrypi_clk *rpi;
> -	struct clk_hw *hw;
>  	int ret;
> =20
>  	/*
> @@ -340,17 +475,9 @@ static int raspberrypi_clk_probe(struct platform_dev=
ice
> *pdev)
>  	if (!clk_data)
>  		return -ENOMEM;
> =20
> -	hw =3D raspberrypi_register_pllb(rpi);
> -	if (IS_ERR(hw)) {
> -		dev_err(dev, "Failed to initialize pllb, %ld\n", PTR_ERR(hw));
> -		return PTR_ERR(hw);
> -	}
> -
> -	hw =3D raspberrypi_register_pllb_arm(rpi);
> -	if (IS_ERR(hw))
> -		return PTR_ERR(hw);
> -	clk_data->hws[RPI_FIRMWARE_ARM_CLK_ID] =3D hw;
> -	clk_data->num =3D RPI_FIRMWARE_ARM_CLK_ID + 1;
> +	ret =3D raspberrypi_discover_clocks(rpi, clk_data);
> +	if (ret)
> +		return ret;
> =20
>  	ret =3D devm_of_clk_add_hw_provider(dev, of_clk_hw_onecell_get,
>  					  clk_data);
> diff --git a/include/soc/bcm2835/raspberrypi-firmware.h
> b/include/soc/bcm2835/raspberrypi-firmware.h
> index 3025aca3c358..1c48f8269eab 100644
> --- a/include/soc/bcm2835/raspberrypi-firmware.h
> +++ b/include/soc/bcm2835/raspberrypi-firmware.h
> @@ -136,6 +136,11 @@ enum rpi_firmware_property_tag {
>  	RPI_FIRMWARE_GET_DMA_CHANNELS =3D                       0x00060001,
>  };
> =20
> +struct rpi_firmware_get_clocks_response {
> +	__le32 parent;
> +	__le32 id;
> +};
> +

As per other firmware consumer drivers, this should be moved into
clk-raspberrypi.c. Also I'd switch to using u32. It's pretty clear this wil=
l be
used only on this platform, so no need to worry about endianness (also comm=
on
practice among rpi firmware consumer drivers).

>  #if IS_ENABLED(CONFIG_RASPBERRYPI_FIRMWARE)
>  int rpi_firmware_property(struct rpi_firmware *fw,
>  			  u32 tag, void *data, size_t len);

Here's the clk_summary output:

                                 enable  prepare  protect                  =
              duty
   clock                          count    count    count        rate   acc=
uracy phase  cycle
---------------------------------------------------------------------------=
------------------
 fw-clk-m2mc                          0        0        0   149984992      =
    0     0  50000
 fw-clk-v3d                           0        0        0   250000000      =
    0     0  50000
 fw-clk-core                          0        0        0   200000000      =
    0     0  50000
 fw-clk-arm                           0        0        0  1500000000      =
    0     0  50000
 otg                                  0        0        0   480000000      =
    0     0  50000
 osc                                  2        2        2    54000000      =
    0     0  50000
    tsens                             0        0        0     3375000      =
    0     0  50000
    otp                               0        0        0    13500000      =
    0     0  50000
    timer                             0        0        0     1000000      =
    0     0  50000
    plld                              1        1        1  2999999988      =
    0     0  50000
       plld_dsi1                      0        0        0    11718750      =
    0     0  50000
       plld_dsi0                      0        0        0    11718750      =
    0     0  50000
       plld_per                       5        5        4   749999997      =
    0     0  50000
          pwm                         1        1        1     9999999      =
    0     0  50000
          emmc2                       1        1        1    99999999      =
    0     0  50000
          emmc                        1        1        1   249999999      =
    0     0  50000
          uart                        1        1        1    47999999      =
    0     0  50000
       plld_core                      0        0        0   599999998      =
    0     0  50000
    pllc                              1        1        1  3000000091      =
    0     0  50000
       pllc_per                       0        0        0   600000019      =
    0     0  50000
       pllc_core2                     0        0        0    11718751      =
    0     0  50000
       pllc_core1                     0        0        0    11718751      =
    0     0  50000
       pllc_core0                     1        1        1  1000000031      =
    0     0  50000
          vpu                         5        5        2   200000006      =
    0     0  50000
             fe804000.i2c_div         1        1        1       99901      =
    0     0  50000
             fe205000.i2c_div         1        1        1       99901      =
    0     0  50000
             aux_spi2                 0        0        0   200000006      =
    0     0  50000
             aux_spi1                 0        0        0   200000006      =
    0     0  50000
             aux_uart                 1        1        0   200000006      =
    0     0  50000
             peri_image               0        0        0   200000006      =
    0     0  50000
    pllb                              0        0        0  2999999988      =
    0     0  50000
       pllb_arm                       0        0        0   599999998      =
    0     0  50000
    plla                              0        0        0  2999999988      =
    0     0  50000
       plla_ccp2                      0        0        0    11718750      =
    0     0  50000
       plla_dsi0                      0        0        0    11718750      =
    0     0  50000
       plla_per                       0        0        0    11718750      =
    0     0  50000
       plla_core                      0        0        0   499999998      =
    0     0  50000
          h264                        0        0        0   249999999      =
    0     0  50000
          isp                         0        0        0   249999999      =
    0     0  50000
          v3d                         0        0        0   249999999      =
    0     0  50000
[...]

arm clocks don't match. CCF is caching the mmio version of the clocks, I th=
ink
we need to add CLK_GET_RATE_NOCACHE to every clock that's being handled by
firmware.

Otherwise I verified that cpufreq registers/behaves as expected.

Regards,
Nicolas


--=-5IzPRWEO3GJqGzz4Q08d
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl7aPn4ACgkQlfZmHno8
x/50Ugf/dMn9kXMTiH9HmlPWJiQ0BVr0ax4b6Zu+DA/Imtf030FK5Z0kBemOjS+b
ZL9Ke/A/GOxJI6LrqClt2UOykYMkzzVB7G1Fcqjg/MR8Qaqk++RaoPOjF7jsbDBQ
xiSOY5v0GiUV71jYyjaG/Gdk1Eg4iYuCYm0VOG48hjn085EbrVW5xdal8O+5/EsW
3auS+uMH9bOMHG8aG6q5WgmNx7udEXH864xI22MBGY4DqavooXNJaEWy/PVIMIZ4
uv4YTOyCE80zNlpALFRUyFCoGvqdSej2PRHAwK93RpPzDGa2ILXN2h9274bO7mVF
ESuO10krZg4z6oZ73yrjh9D2i01TMQ==
=BvX2
-----END PGP SIGNATURE-----

--=-5IzPRWEO3GJqGzz4Q08d--



--===============1694165782082457735==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1694165782082457735==--


