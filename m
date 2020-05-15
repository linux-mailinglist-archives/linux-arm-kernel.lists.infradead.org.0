Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C871D4800
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 10:20:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NH0A0Nf0zCXVPE3Zx6ei5ZnSQnJZPSUSmGuHHN6l8n8=; b=O+FilmSxU6wpj7swP9qzL632I
	omHa0NoAVLjAwgCks/En82mpGgR7bQQcJ2EPQNfS6AE4inNKLoqsKvGi8JRZX7uzkiWFgmIuN2dPO
	OUnsSJfwWidHyatnpKDznM84AGSCLWYv8h+8rzN15FU4Z4c+6nrFUZHj0Nv2ijOHsOx8AEBrfOAzi
	W7qrqIHm0eJFsYLJHkNWrDdtqNZj7NuazapFKslQUN67T/XIhd3G7ySShqoVmqlrqls1pZcm8aCja
	njZUfRxX862uYHMud7umDhj7Lu5LLpWTNm1L8mGZ9etLQw7UXeBJs+S8V48mJVg6jcyms5u60ZEaZ
	beLTSXezg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZVZV-0006un-KZ; Fri, 15 May 2020 08:19:57 +0000
Received: from wnew1-smtp.messagingengine.com ([64.147.123.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZVYw-0006dS-Rn; Fri, 15 May 2020 08:19:28 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 27A99721;
 Fri, 15 May 2020 04:19:19 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Fri, 15 May 2020 04:19:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=djCJW+pef41wbgJqyHTwsU/Rmtd
 91KY7CCIGjo6BjIc=; b=GE1JM5qQuwzd9LQciLs02d8zYqgVG3GcgFwGkVvl/wd
 kwq6PmqKFUN9oU3dZnDuS0g6ThupbiTJLX1Bqbz1KtQLPa3IZUchJaSK6OU5fJp0
 bMhd9Yo8tztyMA9su5QT23cuJCRdk2ebNExERuMAq70bJgkAbxC7J6Bg33rkh7/Q
 9kanDkWZmpXp+8D4pGyX1/R4pSzJj/aWv51cvChfGQbRLW6vBg6+B7OrR1DOn5bz
 jcPLwe9rx+OjYuDzloCSh3nC6lqI9KDQ2asT7EL/N1N1kEZNrjIAdjXd8FnycsDO
 +LCLDu1oj1R6wNnVRS+e/heyWeAgSAogXPU4UzH5D7A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=djCJW+
 pef41wbgJqyHTwsU/Rmtd91KY7CCIGjo6BjIc=; b=B5lgUugURolhl8/0mxXG49
 GK0eO9WoYjuXIAIX+63DeBSVpn1o0eym0dGdGmsDupatqfMfX2XMo9qOSeFhgpGi
 W+52GT2wdS2zexmMErOIDJpxHzyqwkHMEg8Q675jrvf28RBN+EMfsmMqSsRM9wS4
 8xyosmY2J140dPEFpE2MlLMcBmUkTBSbUQTUnfle8qHgtfRx+0L4B9DtGbAcNw+i
 /SuXCLBtLlpAYUbYs2fIA/8tRNa1a8IG+Ko8BubYWA0c83M3q1dFxPe8ccsmezrF
 64JsZIrXh8ZuVsO7HRiHbDNA+On1zmPidMVVLIM57jAwj3jujcLwFVWWC2/nyaEg
 ==
X-ME-Sender: <xms:hFC-XnZibOWXyoUl5Kbq9DdqF6ZhRAL85HO86n0V30nAeOIVyeMqSQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrleekgddtudcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
 gvrhhnpeevgeduteektefhtefggfdtkeekgfehhffffeegudelheegheeiueevfeegvdei
 geenucffohhmrghinhepghhithhhuhgsrdgtohhmnecukfhppeeltddrkeelrdeikedrje
 einecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgr
 gihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:hFC-XmYMWnDjoEqSqBIlTI2bQqGhnSAbMKjWWmjATWrcNijIhJVVKA>
 <xmx:hFC-Xp9D45bSdFMZdN2rNSNFuzwp4RV4h3FvzbxC-kMiW-fLEyxTpg>
 <xmx:hFC-XtoQ_OqR6zegtcYzQhEYqyrIbvLuuR9GMxc1z3CnLx5-vabkpw>
 <xmx:hlC-Xh0c_yGEKNaGOfzdXC9ejEBQxyMUJWSC-G3pwV5wh3WW062Fml9DBho>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 8EF163280065;
 Fri, 15 May 2020 04:19:16 -0400 (EDT)
Date: Fri, 15 May 2020 10:19:14 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v2 20/91] clk: bcm: rpi: Discover the firmware clocks
Message-ID: <20200515081914.lejcqqwezn3zwpft@gilmour.lan>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
 <1a25b4f079dcdc669d4b29d3658ef0b72be2651e.1587742492.git-series.maxime@cerno.tech>
 <c9a7e50f88022179ef913fc6dfd066ec44b27988.camel@suse.de>
MIME-Version: 1.0
In-Reply-To: <c9a7e50f88022179ef913fc6dfd066ec44b27988.camel@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_011923_198142_7B5D8927 
X-CRM114-Status: GOOD (  31.47  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.26 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Phil Elwell <phil@raspberrypi.com>, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6404264601053167752=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6404264601053167752==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="m2rbr7aero7m5yan"
Content-Disposition: inline


--m2rbr7aero7m5yan
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Nicolas,

On Mon, May 04, 2020 at 02:05:47PM +0200, Nicolas Saenz Julienne wrote:
> Hi Maxime, as always, thanks for the series!
> Some extra context, and comments below.
>=20
> On Fri, 2020-04-24 at 17:34 +0200, Maxime Ripard wrote:
> > The RaspberryPi4 firmware actually exposes more clocks than are current=
ly
> > handled by the driver and we will need to change some of them directly
> > based on the pixel rate for the display related clocks, or the load for=
 the
> > GPU.
> >=20
> > This rate change can have a number of side-effects, including adjusting=
 the
> > various PLL voltages or the PLL parents. The firmware will also update
> > those clocks by itself for example if the SoC runs too hot.
>=20
> To complete this:
>=20
> RPi4's firmware implements DVFS. Clock frequency and SoC voltage are
> correlated, if you can determine all clocks are running below a maximum t=
hen it
> should be safe to lower the voltage. Currently, firmware actively monitor=
s arm,
> core, h264, v3d, isp and hevc to determine what voltage can be reduced to=
, and
> if arm increases any of those clocks behind the firmware's back, when it =
has a
> lowered voltage, a crash is highly likely.
>=20
> As pointed out to me by RPi foundation engineers hsm/pixel aren't current=
ly
> being monitored, as driving a high resolution display also requires a hig=
h core
> clock, which already sets an acceptable min voltage threshold. But that m=
ight
> change if needed.
>=20
> Ultimately, from the DVFS, the safe way to change clocks from arm would b=
e to
> always use the firmware interface, which we're far from doing right now. =
On the
> other hand, AFAIK not all clocks have a firmware counterpart.
>=20
> Note that we could also have a word with the RPi foundation and see if
> disabling DVFS is possible (AFAIK it's not an option right now). Although=
 I
> personally prefer to support this upstream, aside from the obvious benefi=
ts to
> battery powered use cases, not consuming power unnecessarily is always big
> plus.
>=20
> > In order to make Linux play as nice as possible with those constraints,=
 it
> > makes sense to rely on the firmware clocks as much as possible.
>=20
> As I comment above, not as simple as it seems. I suggest, for now, we only
> register the clocks we're going to use and that are likely to be affected=
 by
> DVFS. hsm being a contender here.
>=20
> As we'd be settling on a hybrid solution here, which isn't ideal to say t=
he
> least, I'd like to gather some opinions on whether pushing towards a fully
> firmware based solution is something you'd like to see.

Thanks for the summary above, I'll try to adjust that commit log to reflect
this. As for my opinion, I don't really think that an hybrid approach is
practical, since that would leave us with weird interactions between the
firmware (and possibly multiple versinos of it) and the linux driver, and t=
his
would be pretty hard to maintain in the long run.

That leaves us either the MMIO-based driver or the firmware-based one, and =
here
with what you said above, at the moment, the firmware based one is a clear
winner.

> > Fortunately,t he firmware has an interface to discover the clocks it
> > exposes.
>=20
> nit: wrongly placed space
>=20
> > Let's use it to discover, register the clocks in the clocks framework a=
nd
> > then expose them through the device tree for consumers to use them.
> >
> > Cc: Michael Turquette <mturquette@baylibre.com>
> > Cc: Stephen Boyd <sboyd@kernel.org>
> > Cc: linux-clk@vger.kernel.org
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > ---
> >  drivers/clk/bcm/clk-raspberrypi.c          | 104 +++++++++++++++++++---
>=20
> [...]
>=20
> > +static struct clk_hw *raspberrypi_clk_register(struct raspberrypi_clk =
*rpi,
> > +					       unsigned int parent,
> > +					       unsigned int id)
> > +{
> > +	struct raspberrypi_clk_data *data;
> > +	struct clk_init_data init =3D {};
> > +	int ret;
> > +
> > +	if (id =3D=3D RPI_FIRMWARE_ARM_CLK_ID) {
> > +		struct clk_hw *hw;
> > +
> > +		hw =3D raspberrypi_register_pllb(rpi);
> > +		if (IS_ERR(hw)) {
> > +			dev_err(rpi->dev, "Failed to initialize pllb, %ld\n",
> > +				PTR_ERR(hw));
> > +			return hw;
> > +		}
> > +
> > +		return raspberrypi_register_pllb_arm(rpi);
> > +	}
>=20
> We shouldn't create a special case for pllb. My suggestion here is that we
> revert the commit that removed pllb from the mmio driver, in order to mai=
ntain
> a nice view of the clock tree, and register this as a regular fw-clk.
>=20
> The only user to this is RPi's the cpufreq driver, which shouldn't mind t=
he
> change as long as you maintain the clk lookup creation.

Ok, I'll change that.

> On that topic, now that the clocks are available in DT we could even move
> raspberrypi-cpufreq's registration there. But that's out of the scope of =
this
> series.
>=20
> > +
> > +	data =3D devm_kzalloc(rpi->dev, sizeof(*data), GFP_KERNEL);
> > +	if (!data)
> > +		return ERR_PTR(-ENOMEM);
> > +	data->rpi =3D rpi;
> > +	data->id =3D id;
> > +
> > +	init.name =3D devm_kasprintf(rpi->dev, GFP_KERNEL, "fw-clk-%u", id);
>=20
> I'd really like more descriptive names here, sadly the firmware interface
> doesn't provide them, but they are set in stone nonetheless. Something li=
ke
> 'fw-clk-arm' and 'fw-clk-hsm' comes to mind (SCMI does provide naming BTW=
).
>=20
> See here for a list of all clocks:
> https://github.com/raspberrypi/firmware/wiki/Mailbox-property-interface#c=
locks

That's a good idea, I'll add that too.

Thanks!
Maxime

--m2rbr7aero7m5yan
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXr5QggAKCRDj7w1vZxhR
xT8LAP9pbcW7g3FHYczItDO6C6nd+Zdy+BRd6Tu8sNXBS4ykbwEA5UyzGXR2yeUy
+/AuByhHVQhGRrgDpir1aJvVMN4YtAI=
=xbLM
-----END PGP SIGNATURE-----

--m2rbr7aero7m5yan--


--===============6404264601053167752==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6404264601053167752==--

