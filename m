Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 662992ABA5
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 May 2019 20:34:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6sqJRdbIjrLJZnoa+zsUNhbK9evX86mefHHcYFdNKf0=; b=Wdg5an05TwxblQ0fgFrP6E/0D
	e/gJxWNeRtcpAIRbIMj9cuQcH4qMG0p5RYpKl5Slmi1QaYUORmajskzNgWDr46ZhUnVPHxqzTsP6+
	+33O577oNQkxkgEsO0OecOJdpJ6iHMgrFyAPq3rB2+ECnrO5/DOqEcd9EjLH1iBTw92vmdvD6O6hr
	j2Vdwap+0S1msSBgfWA4sphdRfeAdiQLVvSXLVPO049RXWo/tXs9lMo1/xY80L/ezh4zWo3caiRG4
	iI9UGEaGwXLPnkehZqecMRFD2AXj8jCljn1jb+n1tjeMbqCKG+1ecF+SW3bFOV+hn8jGhRp2th7Zd
	8FYRyoP0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUxyh-0007jo-1J; Sun, 26 May 2019 18:34:39 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUxyY-0007jI-Vl
 for linux-arm-kernel@lists.infradead.org; Sun, 26 May 2019 18:34:33 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 7E4EC200006;
 Sun, 26 May 2019 18:34:26 +0000 (UTC)
Date: Sun, 26 May 2019 20:34:25 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v2 5/7] dmaengine: sun6i: Add support for H6 DMA
Message-ID: <20190526183425.nbhrk5pa264p7tdy@flea>
References: <20190525163819.21055-1-peron.clem@gmail.com>
 <20190525163819.21055-6-peron.clem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190525163819.21055-6-peron.clem@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_113431_322611_23B9DBC3 
X-CRM114-Status: GOOD (  23.03  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7741819046232222341=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7741819046232222341==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="geomrocia5ckksq4"
Content-Disposition: inline


--geomrocia5ckksq4
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, May 25, 2019 at 06:38:17PM +0200, Cl=E9ment P=E9ron wrote:
> From: Jernej Skrabec <jernej.skrabec@siol.net>
>
> H6 DMA has more than 32 supported DRQs, which means that configuration
> register is slightly rearranged. It also needs additional clock to be
> enabled.
>
> Add support for it.
>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> ---
>  drivers/dma/sun6i-dma.c | 44 +++++++++++++++++++++++++++++++++++++++--
>  1 file changed, 42 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/dma/sun6i-dma.c b/drivers/dma/sun6i-dma.c
> index f5cb5e89bf7b..8d44ddae926a 100644
> --- a/drivers/dma/sun6i-dma.c
> +++ b/drivers/dma/sun6i-dma.c
> @@ -69,14 +69,19 @@
>
>  #define DMA_CHAN_CUR_CFG	0x0c
>  #define DMA_CHAN_MAX_DRQ_A31		0x1f
> +#define DMA_CHAN_MAX_DRQ_H6		0x3f
>  #define DMA_CHAN_CFG_SRC_DRQ_A31(x)	((x) & DMA_CHAN_MAX_DRQ_A31)
> +#define DMA_CHAN_CFG_SRC_DRQ_H6(x)	((x) & DMA_CHAN_MAX_DRQ_H6)
>  #define DMA_CHAN_CFG_SRC_MODE_A31(x)	(((x) & 0x1) << 5)
> +#define DMA_CHAN_CFG_SRC_MODE_H6(x)	(((x) & 0x1) << 8)
>  #define DMA_CHAN_CFG_SRC_BURST_A31(x)	(((x) & 0x3) << 7)
>  #define DMA_CHAN_CFG_SRC_BURST_H3(x)	(((x) & 0x3) << 6)
>  #define DMA_CHAN_CFG_SRC_WIDTH(x)	(((x) & 0x3) << 9)
>
>  #define DMA_CHAN_CFG_DST_DRQ_A31(x)	(DMA_CHAN_CFG_SRC_DRQ_A31(x) << 16)
> +#define DMA_CHAN_CFG_DST_DRQ_H6(x)	(DMA_CHAN_CFG_SRC_DRQ_H6(x) << 16)
>  #define DMA_CHAN_CFG_DST_MODE_A31(x)	(DMA_CHAN_CFG_SRC_MODE_A31(x) << 16)
> +#define DMA_CHAN_CFG_DST_MODE_H6(x)	(DMA_CHAN_CFG_SRC_MODE_H6(x) << 16)
>  #define DMA_CHAN_CFG_DST_BURST_A31(x)	(DMA_CHAN_CFG_SRC_BURST_A31(x) << =
16)
>  #define DMA_CHAN_CFG_DST_BURST_H3(x)	(DMA_CHAN_CFG_SRC_BURST_H3(x) << 16)
>  #define DMA_CHAN_CFG_DST_WIDTH(x)	(DMA_CHAN_CFG_SRC_WIDTH(x) << 16)
> @@ -319,12 +324,24 @@ static void sun6i_set_drq_a31(u32 *p_cfg, s8 src_dr=
q, s8 dst_drq)
>  		  DMA_CHAN_CFG_DST_DRQ_A31(dst_drq);
>  }
>
> +static void sun6i_set_drq_h6(u32 *p_cfg, s8 src_drq, s8 dst_drq)
> +{
> +	*p_cfg |=3D DMA_CHAN_CFG_SRC_DRQ_H6(src_drq) |
> +		  DMA_CHAN_CFG_DST_DRQ_H6(dst_drq);
> +}
> +
>  static void sun6i_set_mode_a31(u32 *p_cfg, s8 src_mode, s8 dst_mode)
>  {
>  	*p_cfg |=3D DMA_CHAN_CFG_SRC_MODE_A31(src_mode) |
>  		  DMA_CHAN_CFG_DST_MODE_A31(dst_mode);
>  }
>
> +static void sun6i_set_mode_h6(u32 *p_cfg, s8 src_mode, s8 dst_mode)
> +{
> +	*p_cfg |=3D DMA_CHAN_CFG_SRC_MODE_H6(src_mode) |
> +		  DMA_CHAN_CFG_DST_MODE_H6(dst_mode);
> +}
> +
>  static size_t sun6i_get_chan_size(struct sun6i_pchan *pchan)
>  {
>  	struct sun6i_desc *txd =3D pchan->desc;
> @@ -1160,6 +1177,28 @@ static struct sun6i_dma_config sun50i_a64_dma_cfg =
=3D {
>  			     BIT(DMA_SLAVE_BUSWIDTH_8_BYTES),
>  };
>
> +/*
> + * The H6 binding uses the number of dma channels from the
> + * device tree node.
> + */
> +static struct sun6i_dma_config sun50i_h6_dma_cfg =3D {
> +	.clock_autogate_enable =3D sun6i_enable_clock_autogate_h3,
> +	.set_burst_length =3D sun6i_set_burst_length_h3,
> +	.set_drq          =3D sun6i_set_drq_h6,
> +	.set_mode         =3D sun6i_set_mode_h6,
> +	.src_burst_lengths =3D BIT(1) | BIT(4) | BIT(8) | BIT(16),
> +	.dst_burst_lengths =3D BIT(1) | BIT(4) | BIT(8) | BIT(16),
> +	.src_addr_widths   =3D BIT(DMA_SLAVE_BUSWIDTH_1_BYTE) |
> +			     BIT(DMA_SLAVE_BUSWIDTH_2_BYTES) |
> +			     BIT(DMA_SLAVE_BUSWIDTH_4_BYTES) |
> +			     BIT(DMA_SLAVE_BUSWIDTH_8_BYTES),
> +	.dst_addr_widths   =3D BIT(DMA_SLAVE_BUSWIDTH_1_BYTE) |
> +			     BIT(DMA_SLAVE_BUSWIDTH_2_BYTES) |
> +			     BIT(DMA_SLAVE_BUSWIDTH_4_BYTES) |
> +			     BIT(DMA_SLAVE_BUSWIDTH_8_BYTES),
> +	.has_mbus_clk =3D true,
> +};
> +
>  /*
>   * The V3s have only 8 physical channels, a maximum DRQ port id of 23,
>   * and a total of 24 usable source and destination endpoints.
> @@ -1190,6 +1229,7 @@ static const struct of_device_id sun6i_dma_match[] =
=3D {
>  	{ .compatible =3D "allwinner,sun8i-h3-dma", .data =3D &sun8i_h3_dma_cfg=
 },
>  	{ .compatible =3D "allwinner,sun8i-v3s-dma", .data =3D &sun8i_v3s_dma_c=
fg },
>  	{ .compatible =3D "allwinner,sun50i-a64-dma", .data =3D &sun50i_a64_dma=
_cfg },
> +	{ .compatible =3D "allwinner,sun50i-h6-dma", .data =3D &sun50i_h6_dma_c=
fg },
>  	{ /* sentinel */ }
>  };
>  MODULE_DEVICE_TABLE(of, sun6i_dma_match);
> @@ -1288,8 +1328,8 @@ static int sun6i_dma_probe(struct platform_device *=
pdev)
>  	ret =3D of_property_read_u32(np, "dma-requests", &sdc->max_request);
>  	if (ret && !sdc->max_request) {
>  		dev_info(&pdev->dev, "Missing dma-requests, using %u.\n",
> -			 DMA_CHAN_MAX_DRQ_A31);
> -		sdc->max_request =3D DMA_CHAN_MAX_DRQ_A31;
> +			 DMA_CHAN_MAX_DRQ_H6);
> +		sdc->max_request =3D DMA_CHAN_MAX_DRQ_H6;

This is changing the binding though, since we're changing the
default. This should be reflected in the binding, and we should keep
the same default in the device tree binding.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--geomrocia5ckksq4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOrcMQAKCRDj7w1vZxhR
xTmGAQDZGYjzPAjokaPobd60xQy1t549hb1zwKRPlrxEnYyWgwEA8bqUI9dAqgRj
Fyp08DKygJ7yRMfzdfmURUm9kIVtRQ8=
=gZ3v
-----END PGP SIGNATURE-----

--geomrocia5ckksq4--


--===============7741819046232222341==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7741819046232222341==--

