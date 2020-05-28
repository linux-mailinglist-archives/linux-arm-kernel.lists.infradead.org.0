Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0BC1E6BC8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 21:57:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0V87jU2+zZ7YGCKFsWyCJL0yOH4T68bfnEI/bEbuaic=; b=VLOzTLRMPJoTKO
	gJXaonXdfHfAfLRk/sB8cmesPlQD3k0coHaOAnM+GRLj/HW/c+z3uxtZCNJYpWUn7BbR8pm5etp5p
	hznz6DjphHmPuAhrpTIqh1amLb7oFPKzitz3BPbaUvrcG7hRhR5xxU0RYLpvXT4ccv6LM+F7gFXuV
	kWHz7eFQI/IO9h6BrPq9AiLtNPASwFi5wOtNd+zzQYd1S2UY9MVokR4s6uoK93vzEYpDac+KucNvM
	5XzPeoYtwb0Iu2T2Jt3zMyfmTY4OQef2sr5EfTSEUPyB8YBEiYW6j6MkyjjvC7AI2Lx6+k5kEfXmV
	0bWC6w+GrwySs/LV7evQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeOem-0003vX-Rf; Thu, 28 May 2020 19:57:36 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeOeY-0003um-HR
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 19:57:23 +0000
Received: by mail-io1-f68.google.com with SMTP id q8so30098097iow.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 12:57:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=C1yxG+5EPv3E4hC3r9qMne3qQ1WLqR3rVkfPRz5Lf7A=;
 b=l1xBETaNToj+5fDpl135iwmJVUFdKrwDX1fb8Ik35/N2z2KsCAhqzvvNNhpLI6Ibq9
 jt+pg6c9HPK1lki0nS64Ha3kvBAfxIjsTjZYyFh2x16acOCgxD6wiafetfrKxi+Jy0bH
 F4AUfudrtbncPSe9x8idZr/SKqGW4FuHEWXB/VDo52PF/HIdmGMzF44bgRA2JhbGkgHg
 mL/tfGlVoXwpppMQUWk2S5S1RUE0Etrbd/NT3uoL2TFKxYw9C+3Z8pQ1SLZzZ14tEFZg
 0VXM8/0S4LMMEqd1XOy/MGiQ6sERLfRDF8vNnzG8zp0k+qEFiMnWZ0EwwsR2Ls4TrriD
 fkKw==
X-Gm-Message-State: AOAM532kpGy58RMlzVRDlCsWZxPyz+5UGKIyqvocAR1vh5WC+oYS+yjt
 ARjdyTJFF5F7BRZ/fBXQyA==
X-Google-Smtp-Source: ABdhPJwSH+qxIcWv8h/fKAo6SOTAQdcOfw2m0OYWjSIpa6W5m47BsalTXqPIM9X9CbE4u2CeC3MeOw==
X-Received: by 2002:a02:95a6:: with SMTP id b35mr4047016jai.40.1590695839998; 
 Thu, 28 May 2020 12:57:19 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id b18sm3627485ilh.77.2020.05.28.12.57.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 12:57:19 -0700 (PDT)
Received: (nullmailer pid 580805 invoked by uid 1000);
 Thu, 28 May 2020 19:57:17 -0000
Date: Thu, 28 May 2020 13:57:17 -0600
From: Rob Herring <robh@kernel.org>
To: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
Subject: Re: [RFC PATCH 4/6] drm/bridge/nwl-dsi: Drop mux handling
Message-ID: <20200528195717.GA568887@bogus>
References: <cover.1589548223.git.agx@sigxcpu.org>
 <951688795f969ebcbf9fb3c38065ccce6f488235.1589548223.git.agx@sigxcpu.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <951688795f969ebcbf9fb3c38065ccce6f488235.1589548223.git.agx@sigxcpu.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_125722_577675_25741BF7 
X-CRM114-Status: GOOD (  17.56  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sam Ravnborg <sam@ravnborg.org>, Anson Huang <Anson.Huang@nxp.com>,
 David Airlie <airlied@linux.ie>, Shawn Guo <shawnguo@kernel.org>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Lucas Stach <l.stach@pengutronix.de>,
 Robert Chiras <robert.chiras@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 03:12:13PM +0200, Guido G=FCnther wrote:
> This will be handled via the mux-input-bridge.

You can't do this. What happens booting a kernel with this change and an =

un-modified dtb? You just broke it.

> =

> Signed-off-by: Guido G=FCnther <agx@sigxcpu.org>
> ---
>  drivers/gpu/drm/bridge/Kconfig   |  1 -
>  drivers/gpu/drm/bridge/nwl-dsi.c | 61 --------------------------------
>  2 files changed, 62 deletions(-)
> =

> diff --git a/drivers/gpu/drm/bridge/Kconfig b/drivers/gpu/drm/bridge/Kcon=
fig
> index 3886c0f41bdd..11444f841e35 100644
> --- a/drivers/gpu/drm/bridge/Kconfig
> +++ b/drivers/gpu/drm/bridge/Kconfig
> @@ -78,7 +78,6 @@ config DRM_NWL_MIPI_DSI
>  	select DRM_PANEL_BRIDGE
>  	select GENERIC_PHY_MIPI_DPHY
>  	select MFD_SYSCON
> -	select MULTIPLEXER
>  	select REGMAP_MMIO
>  	help
>  	  This enables the Northwest Logic MIPI DSI Host controller as
> diff --git a/drivers/gpu/drm/bridge/nwl-dsi.c b/drivers/gpu/drm/bridge/nw=
l-dsi.c
> index b14d725bf609..8839f333f39c 100644
> --- a/drivers/gpu/drm/bridge/nwl-dsi.c
> +++ b/drivers/gpu/drm/bridge/nwl-dsi.c
> @@ -12,7 +12,6 @@
>  #include <linux/math64.h>
>  #include <linux/mfd/syscon.h>
>  #include <linux/module.h>
> -#include <linux/mux/consumer.h>
>  #include <linux/of.h>
>  #include <linux/of_platform.h>
>  #include <linux/phy/phy.h>
> @@ -44,9 +43,6 @@ enum transfer_direction {
>  	DSI_PACKET_RECEIVE,
>  };
>  =

> -#define NWL_DSI_ENDPOINT_LCDIF 0
> -#define NWL_DSI_ENDPOINT_DCSS 1
> -
>  struct nwl_dsi_plat_clk_config {
>  	const char *id;
>  	struct clk *clk;
> @@ -94,7 +90,6 @@ struct nwl_dsi {
>  	struct reset_control *rst_esc;
>  	struct reset_control *rst_dpi;
>  	struct reset_control *rst_pclk;
> -	struct mux_control *mux;
>  =

>  	/* DSI clocks */
>  	struct clk *phy_ref_clk;
> @@ -1018,14 +1013,6 @@ static int nwl_dsi_parse_dt(struct nwl_dsi *dsi)
>  	}
>  	dsi->tx_esc_clk =3D clk;
>  =

> -	dsi->mux =3D devm_mux_control_get(dsi->dev, NULL);
> -	if (IS_ERR(dsi->mux)) {
> -		ret =3D PTR_ERR(dsi->mux);
> -		if (ret !=3D -EPROBE_DEFER)
> -			DRM_DEV_ERROR(dsi->dev, "Failed to get mux: %d\n", ret);
> -		return ret;
> -	}
> -
>  	base =3D devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(base))
>  		return PTR_ERR(base);
> @@ -1073,47 +1060,6 @@ static int nwl_dsi_parse_dt(struct nwl_dsi *dsi)
>  	return 0;
>  }
>  =

> -static int nwl_dsi_select_input(struct nwl_dsi *dsi)
> -{
> -	struct device_node *remote;
> -	u32 use_dcss =3D 1;
> -	int ret;
> -
> -	remote =3D of_graph_get_remote_node(dsi->dev->of_node, 0,
> -					  NWL_DSI_ENDPOINT_LCDIF);
> -	if (remote) {
> -		use_dcss =3D 0;
> -	} else {
> -		remote =3D of_graph_get_remote_node(dsi->dev->of_node, 0,
> -						  NWL_DSI_ENDPOINT_DCSS);
> -		if (!remote) {
> -			DRM_DEV_ERROR(dsi->dev,
> -				      "No valid input endpoint found\n");
> -			return -EINVAL;
> -		}
> -	}
> -
> -	DRM_DEV_INFO(dsi->dev, "Using %s as input source\n",
> -		     (use_dcss) ? "DCSS" : "LCDIF");
> -	ret =3D mux_control_try_select(dsi->mux, use_dcss);
> -	if (ret < 0)
> -		DRM_DEV_ERROR(dsi->dev, "Failed to select input: %d\n", ret);
> -
> -	of_node_put(remote);
> -	return ret;
> -}

You could however make these functions generic for any bridge to use. =

Define a function that checks for mux-control property and if found sets =

up the mux (IIRC, there's already a concept of a default state). That =

should be callable from somewhere generic too.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
