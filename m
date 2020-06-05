Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 102181EF8AA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 15:09:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=x5gVXgK8pznI+xUjDt7Z3EBdW2WMu611YLzDg7gYbx4=; b=OMZTQy2DyyCg4Azu6xSamTMA1
	owWR7lBBbwxGBM5j9ebsqy62sFxEFx9KGUWdGoGfnMCZRD2kn+Lo9hpBfE8RIwxAdNPe/J3bBFvTI
	ULVyT6R28yPR0AULjWk/E/6wU9fiatA39ChpTNztfOjDJmD/U5OtdVqmrb1SfwJqsOC+R3qk2EJOl
	A+y1rPrZasMFDHF7EtAES/pg1wthCUj22qZBG8sLgIU0Ut3KejsSb4AFPywdpDALJTLVUMJb+wgqH
	HtVmKN8cMQufIrdlaZ9ahBW2Sv5N/x8A8H7DVaPtzfaQloDO7QZoqlXn/VIFGJgixKzcPXufockWR
	OVSOgF4Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhC6B-0003iD-Tp; Fri, 05 Jun 2020 13:09:27 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhC64-0003hP-PS; Fri, 05 Jun 2020 13:09:22 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 9086EACAE;
 Fri,  5 Jun 2020 13:09:21 +0000 (UTC)
Message-ID: <ef54a57d7a7475a3e052805d1d1d3cd81e36569d.camel@suse.de>
Subject: Re: [PATCH v3 20/25] clk: bcm: rpi: Add an enum for the firmware
 clocks
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Maxime Ripard <maxime@cerno.tech>
Date: Fri, 05 Jun 2020 15:09:15 +0200
In-Reply-To: <d8be3a45491224e0c91355131a9bcf605f38fb76.camel@suse.de>
References: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
 <c56fb0a912fe254416ed5a247e6fb6d79fb604bc.1590594293.git-series.maxime@cerno.tech>
 <d8be3a45491224e0c91355131a9bcf605f38fb76.camel@suse.de>
User-Agent: Evolution 3.36.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_060921_123237_FAE2D5EF 
X-CRM114-Status: GOOD (  16.46  )
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
Content-Type: multipart/mixed; boundary="===============4463655814904807483=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4463655814904807483==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-zBa+R9/+djnaoJfqzPmm"


--=-zBa+R9/+djnaoJfqzPmm
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Maxime,

On Fri, 2020-06-05 at 14:04 +0200, Nicolas Saenz Julienne wrote:
> On Wed, 2020-05-27 at 17:45 +0200, Maxime Ripard wrote:
> > While the firmware allows us to discover the available clocks, we need =
to
> > discriminate those clocks to only register the ones meaningful to Linux=
.
> > The firmware also doesn't provide a clock name, so having a list of the=
 ID
> > will help us to give clocks a proper name later on.
> >=20
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > ---
> >  drivers/clk/bcm/clk-raspberrypi.c | 23 +++++++++++++++++++----
> >  1 file changed, 19 insertions(+), 4 deletions(-)
> >=20
> > diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-
> > raspberrypi.c
> > index 5f4e2d49432f..eebd16040f8a 100644
> > --- a/drivers/clk/bcm/clk-raspberrypi.c
> > +++ b/drivers/clk/bcm/clk-raspberrypi.c
> > @@ -18,7 +18,23 @@
> > =20
> >  #include <soc/bcm2835/raspberrypi-firmware.h>
> > =20
> > -#define RPI_FIRMWARE_ARM_CLK_ID		0x00000003
> > +enum rpi_firmware_clk_id {
> > +	RPI_FIRMWARE_EMMC_CLK_ID =3D 1,
> > +	RPI_FIRMWARE_UART_CLK_ID,
> > +	RPI_FIRMWARE_ARM_CLK_ID,
> > +	RPI_FIRMWARE_CORE_CLK_ID,
> > +	RPI_FIRMWARE_V3D_CLK_ID,
> > +	RPI_FIRMWARE_H264_CLK_ID,
> > +	RPI_FIRMWARE_ISP_CLK_ID,
> > +	RPI_FIRMWARE_SDRAM_CLK_ID,
> > +	RPI_FIRMWARE_PIXEL_CLK_ID,
> > +	RPI_FIRMWARE_PWM_CLK_ID,
> > +	RPI_FIRMWARE_HEVC_CLK_ID,
> > +	RPI_FIRMWARE_EMMC2_CLK_ID,
> > +	RPI_FIRMWARE_M2MC_CLK_ID,
> > +	RPI_FIRMWARE_PIXEL_BVB_CLK_ID,
> > +	RPI_FIRMWARE_NUM_CLK_ID,
> > +};
> > =20
> >  #define RPI_FIRMWARE_STATE_ENABLE_BIT	BIT(0)
> >  #define RPI_FIRMWARE_STATE_WAIT_BIT	BIT(1)
> > @@ -31,8 +47,6 @@
> > =20
> >  #define A2W_PLL_FRAC_BITS		20
> > =20
> > -#define NUM_FW_CLKS			16
> > -
> >  struct raspberrypi_clk {
> >  	struct device *dev;
> >  	struct rpi_firmware *firmware;
> > @@ -320,7 +334,8 @@ static int raspberrypi_clk_probe(struct platform_de=
vice
> > *pdev)
> >  	rpi->firmware =3D firmware;
> >  	platform_set_drvdata(pdev, rpi);
> > =20
> > -	clk_data =3D devm_kzalloc(dev, struct_size(clk_data, hws, NUM_FW_CLKS=
),
> > +	clk_data =3D devm_kzalloc(dev, struct_size(clk_data, hws,
> > +						 RPI_FIRMWARE_NUM_CLK_ID),
>=20
> nit: you're allocating one structure too many right?

Nevermind this comment, as pointed out privately by Phil Elwell, I forgot t=
he
firmware clk description structure starts at 0. So we need to make space fo=
r
that.

It would maybe make sense to add RPI_FIRMWARE_RESERVED_CLK_ID above the EMM=
C
clk entry. Although it's just a suggestion.

> Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>=20
> Regards,
> Nicolas
>=20


--=-zBa+R9/+djnaoJfqzPmm
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl7aQ/sACgkQlfZmHno8
x/51JAf9E6hIeONQ04AS5nc+CNgytiK5+f+O/3DL9v+pjoI2tV+K+vFz6xZmgfML
ktmejzaCEWThKJfmvNTZutm1MHnBSyXO3osOufF3MIo88zjTj0gZgX3Ls2TinE6N
urPDhetiInbD3Ysl5Buz7KyvIiPWin6H4l5EkPED5hnbftQ8H3WMR8CEknV5BWvM
9NjTmnYfpFpLnCzbV6i2MLPgOXOQ1DHbj7+JIen0Bpt3nOyAs2JTTfIC8jyxG3HS
lEJ1dJiR1Hzw/z0yvysAeYrtUHqDJsgU2Sfj4Mp9ysOB/yzFfKoWBJiJQZaQaShL
Nx5mzSj0jK3TXqxDEwkeOuaYNoBn6w==
=FpmO
-----END PGP SIGNATURE-----

--=-zBa+R9/+djnaoJfqzPmm--



--===============4463655814904807483==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4463655814904807483==--


