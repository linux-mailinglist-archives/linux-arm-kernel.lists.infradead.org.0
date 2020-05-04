Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B0E61C38DC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 14:06:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=s83+bF9bDBgKkQEuyWqXbGl9QjoBNDO6MHAwK3E3HdE=; b=E0H93Z6FCk96LY4f49T9RoDj+
	Wn0f/HPZQrO1KklU3x9ABCxw6SNnLLJUa0RBEvWKAoq1X6pB/LPmWU+jtGIPkPAHukRl4v1SwlCRM
	xzP00+sQ1bJZM+yP9NlaI1KgsvqH/ePuCHRYtH4hhflL2g6L+MtXfcKqdp+20h/fixhTibJ2CnB2s
	KPxc70GUS2o1DzXWx6wVUsHj39irwABQdLx10CunZSBVBvjOncDheupucoUkd30Pf3QFFawtixHFA
	UXIZjQyaZC5xt1aZpikUQjKAbYKYa1LyyGGkkj9cjnEj4yJBx8sOJFTufP5uJX57SnGZWH9ul4qqj
	SnKSu2Z7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVZrE-0002qc-8t; Mon, 04 May 2020 12:06:00 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVZr5-0002pl-Tl; Mon, 04 May 2020 12:05:53 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 83554ADD3;
 Mon,  4 May 2020 12:05:51 +0000 (UTC)
Message-ID: <c9a7e50f88022179ef913fc6dfd066ec44b27988.camel@suse.de>
Subject: Re: [PATCH v2 20/91] clk: bcm: rpi: Discover the firmware clocks
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Maxime Ripard <maxime@cerno.tech>, Eric Anholt <eric@anholt.net>
Date: Mon, 04 May 2020 14:05:47 +0200
In-Reply-To: <1a25b4f079dcdc669d4b29d3658ef0b72be2651e.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
 <1a25b4f079dcdc669d4b29d3658ef0b72be2651e.1587742492.git-series.maxime@cerno.tech>
User-Agent: Evolution 3.36.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_050552_253990_D0125E4A 
X-CRM114-Status: GOOD (  23.41  )
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
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Phil Elwell <phil@raspberrypi.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3226291678224728218=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3226291678224728218==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-ieEAbJrdTr7tzv3p9LmQ"


--=-ieEAbJrdTr7tzv3p9LmQ
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Maxime, as always, thanks for the series!
Some extra context, and comments below.

On Fri, 2020-04-24 at 17:34 +0200, Maxime Ripard wrote:
> The RaspberryPi4 firmware actually exposes more clocks than are currently
> handled by the driver and we will need to change some of them directly
> based on the pixel rate for the display related clocks, or the load for t=
he
> GPU.
>=20
> This rate change can have a number of side-effects, including adjusting t=
he
> various PLL voltages or the PLL parents. The firmware will also update
> those clocks by itself for example if the SoC runs too hot.

To complete this:

RPi4's firmware implements DVFS. Clock frequency and SoC voltage are
correlated, if you can determine all clocks are running below a maximum the=
n it
should be safe to lower the voltage. Currently, firmware actively monitors =
arm,
core, h264, v3d, isp and hevc to determine what voltage can be reduced to, =
and
if arm increases any of those clocks behind the firmware's back, when it ha=
s a
lowered voltage, a crash is highly likely.

As pointed out to me by RPi foundation engineers hsm/pixel aren't currently
being monitored, as driving a high resolution display also requires a high =
core
clock, which already sets an acceptable min voltage threshold. But that mig=
ht
change if needed.

Ultimately, from the DVFS, the safe way to change clocks from arm would be =
to
always use the firmware interface, which we're far from doing right now. On=
 the
other hand, AFAIK not all clocks have a firmware counterpart.

Note that we could also have a word with the RPi foundation and see if
disabling DVFS is possible (AFAIK it's not an option right now). Although I
personally prefer to support this upstream, aside from the obvious benefits=
 to
battery powered use cases, not consuming power unnecessarily is always big
plus.

> In order to make Linux play as nice as possible with those constraints, i=
t
> makes sense to rely on the firmware clocks as much as possible.

As I comment above, not as simple as it seems. I suggest, for now, we only
register the clocks we're going to use and that are likely to be affected b=
y
DVFS. hsm being a contender here.

As we'd be settling on a hybrid solution here, which isn't ideal to say the
least, I'd like to gather some opinions on whether pushing towards a fully
firmware based solution is something you'd like to see.

> Fortunately,t he firmware has an interface to discover the clocks it
> exposes.

nit: wrongly placed space

> Let's use it to discover, register the clocks in the clocks framework and
> then expose them through the device tree for consumers to use them.
>
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: linux-clk@vger.kernel.org
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  drivers/clk/bcm/clk-raspberrypi.c          | 104 +++++++++++++++++++---

[...]

> +static struct clk_hw *raspberrypi_clk_register(struct raspberrypi_clk *r=
pi,
> +					       unsigned int parent,
> +					       unsigned int id)
> +{
> +	struct raspberrypi_clk_data *data;
> +	struct clk_init_data init =3D {};
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

We shouldn't create a special case for pllb. My suggestion here is that we
revert the commit that removed pllb from the mmio driver, in order to maint=
ain a
nice view of the clock tree, and register this as a regular fw-clk.

The only user to this is RPi's the cpufreq driver, which shouldn't mind the
change as long as you maintain the clk lookup creation.

On that topic, now that the clocks are available in DT we could even move
raspberrypi-cpufreq's registration there. But that's out of the scope of th=
is
series.

> +
> +	data =3D devm_kzalloc(rpi->dev, sizeof(*data), GFP_KERNEL);
> +	if (!data)
> +		return ERR_PTR(-ENOMEM);
> +	data->rpi =3D rpi;
> +	data->id =3D id;
> +
> +	init.name =3D devm_kasprintf(rpi->dev, GFP_KERNEL, "fw-clk-%u", id);

I'd really like more descriptive names here, sadly the firmware interface
doesn't provide them, but they are set in stone nonetheless. Something like
'fw-clk-arm' and 'fw-clk-hsm' comes to mind (SCMI does provide naming BTW).

See here for a list of all clocks:
https://github.com/raspberrypi/firmware/wiki/Mailbox-property-interface#clo=
cks

> +	init.ops =3D &raspberrypi_firmware_clk_ops;
> +	init.flags =3D CLK_GET_RATE_NOCACHE;
> +
> +	data->hw.init =3D &init;
> +
> +	ret =3D devm_clk_hw_register(rpi->dev, &data->hw);
> +	if (ret)
> +		return ERR_PTR(ret);
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
> +	clks =3D devm_kcalloc(rpi->dev, sizeof(*clks), NUM_FW_CLKS, GFP_KERNEL)=
;
> +	if (!clks)
> +		return -ENOMEM;
> +
> +	ret =3D rpi_firmware_property(rpi->firmware, RPI_FIRMWARE_GET_CLOCKS,
> +				    clks, sizeof(*clks) * NUM_FW_CLKS);
> +	if (ret)
> +		return ret;
> +
> +	while (clks->id) {
> +		struct clk_hw *hw;

Se my comment above WRT registering all clocks.

Regards,
Nicolas


--=-ieEAbJrdTr7tzv3p9LmQ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl6wBRsACgkQlfZmHno8
x/5lKAgAgSuCdpTozRnwf4eTgqPosSqclq9h93uvCBl/X/FWDZBuR2OYX9/VaboG
q1eVupIjj6gF8WUDTSnfnn2fhhBY2szQ48N5QV5mB/D4Ib82BFUr99ku/d6eD7+L
v4nqt2x/hVobt83ZRYcqpuRfstmQdWvAwV6Jbh/21ccLtFQHZwKRFRo1SMUOZ7S4
gja02Ew3CiFtgagsL1uJcKw7xkygIDmXTeGP4tGRxWWdVZq/2PaJlXpWpF0HPx9d
V5S/1nwtMSsUJvO7qE4e+x9JtpALlGv+KrDGOb/5PusNly5AfIoRErwji16DxIB6
Ax1abz8s7nfALwDZSdaxNVVJyF3Org==
=R00X
-----END PGP SIGNATURE-----

--=-ieEAbJrdTr7tzv3p9LmQ--



--===============3226291678224728218==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3226291678224728218==--


