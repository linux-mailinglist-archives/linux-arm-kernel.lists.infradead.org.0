Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 180882B5BA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 14:49:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4WhKI/sPmMjvPm7qkP47T/w40jsSAgvjTNKHMHWBKxM=; b=gHANg7dK3ZXLpsstDvvj7AStl
	ylHpyQJXKtjO49P8FZ04ENnmIBvUPGESHT/Pk5bXuUx44BqfwX5chSlgZI7o9s5vHle18iTxq0peq
	RfgHJnTD+a4PVgL4UiFQcE3tktTzuWa4M6mkRf+l24gVPuqvvW4OREWq2Q6uoV0RbonWEK0MmsU9k
	ongkT+OoVDsWncnuoXG4HHjASGcaMjrG6dHVrVLYqSw+Rz98uMme9toio5YZ45lwN7P5rsGyPLJHy
	pxhDmJDDLaP1jpxBS15IJArKnOENe4F2/WtUsxiOKVGRGF54NribF0Feaf3TOZ4qwyocxFOes9sWy
	2DRF5sSHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVF4F-0004eg-UD; Mon, 27 May 2019 12:49:31 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVF47-0004eB-Hy
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 12:49:25 +0000
X-Originating-IP: 90.88.147.134
Received: from localhost (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr
 [90.88.147.134]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id D56D040009;
 Mon, 27 May 2019 12:49:19 +0000 (UTC)
Date: Mon, 27 May 2019 14:49:19 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v2 5/7] dmaengine: sun6i: Add support for H6 DMA
Message-ID: <20190527124919.wmdlqrhv4xw6iabi@flea>
References: <20190525163819.21055-1-peron.clem@gmail.com>
 <20190525163819.21055-6-peron.clem@gmail.com>
 <20190526183425.nbhrk5pa264p7tdy@flea>
 <CAJiuCcfe7LHehZTzGvW+0LzqvDRs4dSjmGhRxkDHgbHrD2+MKA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJiuCcfe7LHehZTzGvW+0LzqvDRs4dSjmGhRxkDHgbHrD2+MKA@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_054923_900179_6F99D74E 
X-CRM114-Status: GOOD (  27.69  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============3711195224249465761=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3711195224249465761==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hy74rh6pps3axx7f"
Content-Disposition: inline


--hy74rh6pps3axx7f
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, May 26, 2019 at 09:12:36PM +0200, Cl=E9ment P=E9ron wrote:
> Hi Maxime,
>
> On Sun, 26 May 2019 at 20:34, Maxime Ripard <maxime.ripard@bootlin.com> w=
rote:
> >
> > On Sat, May 25, 2019 at 06:38:17PM +0200, Cl=E9ment P=E9ron wrote:
> > > From: Jernej Skrabec <jernej.skrabec@siol.net>
> > >
> > > H6 DMA has more than 32 supported DRQs, which means that configuration
> > > register is slightly rearranged. It also needs additional clock to be
> > > enabled.
> > >
> > > Add support for it.
> > >
> > > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > > Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> > > ---
> > >  drivers/dma/sun6i-dma.c | 44 +++++++++++++++++++++++++++++++++++++++=
--
> > >  1 file changed, 42 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/dma/sun6i-dma.c b/drivers/dma/sun6i-dma.c
> > > index f5cb5e89bf7b..8d44ddae926a 100644
> > > --- a/drivers/dma/sun6i-dma.c
> > > +++ b/drivers/dma/sun6i-dma.c
> > > @@ -69,14 +69,19 @@
> > >
> > >  #define DMA_CHAN_CUR_CFG     0x0c
> > >  #define DMA_CHAN_MAX_DRQ_A31         0x1f
> > > +#define DMA_CHAN_MAX_DRQ_H6          0x3f
> > >  #define DMA_CHAN_CFG_SRC_DRQ_A31(x)  ((x) & DMA_CHAN_MAX_DRQ_A31)
> > > +#define DMA_CHAN_CFG_SRC_DRQ_H6(x)   ((x) & DMA_CHAN_MAX_DRQ_H6)
> > >  #define DMA_CHAN_CFG_SRC_MODE_A31(x) (((x) & 0x1) << 5)
> > > +#define DMA_CHAN_CFG_SRC_MODE_H6(x)  (((x) & 0x1) << 8)
> > >  #define DMA_CHAN_CFG_SRC_BURST_A31(x)        (((x) & 0x3) << 7)
> > >  #define DMA_CHAN_CFG_SRC_BURST_H3(x) (((x) & 0x3) << 6)
> > >  #define DMA_CHAN_CFG_SRC_WIDTH(x)    (((x) & 0x3) << 9)
> > >
> > >  #define DMA_CHAN_CFG_DST_DRQ_A31(x)  (DMA_CHAN_CFG_SRC_DRQ_A31(x) <<=
 16)
> > > +#define DMA_CHAN_CFG_DST_DRQ_H6(x)   (DMA_CHAN_CFG_SRC_DRQ_H6(x) << =
16)
> > >  #define DMA_CHAN_CFG_DST_MODE_A31(x) (DMA_CHAN_CFG_SRC_MODE_A31(x) <=
< 16)
> > > +#define DMA_CHAN_CFG_DST_MODE_H6(x)  (DMA_CHAN_CFG_SRC_MODE_H6(x) <<=
 16)
> > >  #define DMA_CHAN_CFG_DST_BURST_A31(x)        (DMA_CHAN_CFG_SRC_BURST=
_A31(x) << 16)
> > >  #define DMA_CHAN_CFG_DST_BURST_H3(x) (DMA_CHAN_CFG_SRC_BURST_H3(x) <=
< 16)
> > >  #define DMA_CHAN_CFG_DST_WIDTH(x)    (DMA_CHAN_CFG_SRC_WIDTH(x) << 1=
6)
> > > @@ -319,12 +324,24 @@ static void sun6i_set_drq_a31(u32 *p_cfg, s8 sr=
c_drq, s8 dst_drq)
> > >                 DMA_CHAN_CFG_DST_DRQ_A31(dst_drq);
> > >  }
> > >
> > > +static void sun6i_set_drq_h6(u32 *p_cfg, s8 src_drq, s8 dst_drq)
> > > +{
> > > +     *p_cfg |=3D DMA_CHAN_CFG_SRC_DRQ_H6(src_drq) |
> > > +               DMA_CHAN_CFG_DST_DRQ_H6(dst_drq);
> > > +}
> > > +
> > >  static void sun6i_set_mode_a31(u32 *p_cfg, s8 src_mode, s8 dst_mode)
> > >  {
> > >       *p_cfg |=3D DMA_CHAN_CFG_SRC_MODE_A31(src_mode) |
> > >                 DMA_CHAN_CFG_DST_MODE_A31(dst_mode);
> > >  }
> > >
> > > +static void sun6i_set_mode_h6(u32 *p_cfg, s8 src_mode, s8 dst_mode)
> > > +{
> > > +     *p_cfg |=3D DMA_CHAN_CFG_SRC_MODE_H6(src_mode) |
> > > +               DMA_CHAN_CFG_DST_MODE_H6(dst_mode);
> > > +}
> > > +
> > >  static size_t sun6i_get_chan_size(struct sun6i_pchan *pchan)
> > >  {
> > >       struct sun6i_desc *txd =3D pchan->desc;
> > > @@ -1160,6 +1177,28 @@ static struct sun6i_dma_config sun50i_a64_dma_=
cfg =3D {
> > >                            BIT(DMA_SLAVE_BUSWIDTH_8_BYTES),
> > >  };
> > >
> > > +/*
> > > + * The H6 binding uses the number of dma channels from the
> > > + * device tree node.
> > > + */
> > > +static struct sun6i_dma_config sun50i_h6_dma_cfg =3D {
> > > +     .clock_autogate_enable =3D sun6i_enable_clock_autogate_h3,
> > > +     .set_burst_length =3D sun6i_set_burst_length_h3,
> > > +     .set_drq          =3D sun6i_set_drq_h6,
> > > +     .set_mode         =3D sun6i_set_mode_h6,
> > > +     .src_burst_lengths =3D BIT(1) | BIT(4) | BIT(8) | BIT(16),
> > > +     .dst_burst_lengths =3D BIT(1) | BIT(4) | BIT(8) | BIT(16),
> > > +     .src_addr_widths   =3D BIT(DMA_SLAVE_BUSWIDTH_1_BYTE) |
> > > +                          BIT(DMA_SLAVE_BUSWIDTH_2_BYTES) |
> > > +                          BIT(DMA_SLAVE_BUSWIDTH_4_BYTES) |
> > > +                          BIT(DMA_SLAVE_BUSWIDTH_8_BYTES),
> > > +     .dst_addr_widths   =3D BIT(DMA_SLAVE_BUSWIDTH_1_BYTE) |
> > > +                          BIT(DMA_SLAVE_BUSWIDTH_2_BYTES) |
> > > +                          BIT(DMA_SLAVE_BUSWIDTH_4_BYTES) |
> > > +                          BIT(DMA_SLAVE_BUSWIDTH_8_BYTES),
> > > +     .has_mbus_clk =3D true,
> > > +};
> > > +
> > >  /*
> > >   * The V3s have only 8 physical channels, a maximum DRQ port id of 2=
3,
> > >   * and a total of 24 usable source and destination endpoints.
> > > @@ -1190,6 +1229,7 @@ static const struct of_device_id sun6i_dma_matc=
h[] =3D {
> > >       { .compatible =3D "allwinner,sun8i-h3-dma", .data =3D &sun8i_h3=
_dma_cfg },
> > >       { .compatible =3D "allwinner,sun8i-v3s-dma", .data =3D &sun8i_v=
3s_dma_cfg },
> > >       { .compatible =3D "allwinner,sun50i-a64-dma", .data =3D &sun50i=
_a64_dma_cfg },
> > > +     { .compatible =3D "allwinner,sun50i-h6-dma", .data =3D &sun50i_=
h6_dma_cfg },
> > >       { /* sentinel */ }
> > >  };
> > >  MODULE_DEVICE_TABLE(of, sun6i_dma_match);
> > > @@ -1288,8 +1328,8 @@ static int sun6i_dma_probe(struct platform_devi=
ce *pdev)
> > >       ret =3D of_property_read_u32(np, "dma-requests", &sdc->max_requ=
est);
> > >       if (ret && !sdc->max_request) {
> > >               dev_info(&pdev->dev, "Missing dma-requests, using %u.\n=
",
> > > -                      DMA_CHAN_MAX_DRQ_A31);
> > > -             sdc->max_request =3D DMA_CHAN_MAX_DRQ_A31;
> > > +                      DMA_CHAN_MAX_DRQ_H6);
> > > +             sdc->max_request =3D DMA_CHAN_MAX_DRQ_H6;
> >
> > This is changing the binding though, since we're changing the
> > default. This should be reflected in the binding, and we should keep
> > the same default in the device tree binding.
>
> Agree, H6 device-tree will have the "dma-request" property.
> As this modification is not mandatory, we can drop it to avoid
> bindings modification.
>
> What do you think?

That works for me

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--hy74rh6pps3axx7f
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOvczwAKCRDj7w1vZxhR
xahtAQCtZnlWKjbb9URWtiuTZsZQNRsYSFRrzor0cn/TILKvlAD/efbuQ9zg3fZl
GWbz279dIB+dZGtot06pTYthOZD4uAg=
=W9yW
-----END PGP SIGNATURE-----

--hy74rh6pps3axx7f--


--===============3711195224249465761==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3711195224249465761==--

