Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA78296F5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 13:19:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kejc7vUWfgnckT9T4oroLrUNIp4P78+xPURTRglqcJs=; b=I9LAcd08FJFdZL
	eHe50p0ARa0UJMETcu/WZWxiaCHDqraYpUEyq2r6WCYL+9fQpviKH1SUuT/nHV1FvFmo598meKuNE
	o4Pu6DtHZd/9d8PRXCfzCU7gpmsPVyZsTjjL3DhSPHBHKYBB17RzJwU8iB9q0ZgoJlgGuSqiGIrWH
	lv36mcD+JNHufTcefJTlk975z20rixRi/FjY0GHACJkH/ZV6QJDyPzLdPdORF0HyZv0xfFpWFL0Ps
	kAoGj42E/OBft9ovVmCUrFFdsYgAWr7cBrnyt+9g+iKfQUKcDiFgMgRtW36qJtUJjezbO3bo4vDpj
	deCsr/nSL06keWVReuTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU8Es-0007tn-3h; Fri, 24 May 2019 11:19:54 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU8Ek-0007sr-Jq
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 11:19:48 +0000
X-Originating-IP: 90.88.147.134
Received: from localhost (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr
 [90.88.147.134]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 71F01C0006;
 Fri, 24 May 2019 11:19:29 +0000 (UTC)
Date: Fri, 24 May 2019 13:19:28 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v2 3/6] drm/sun4i: dsi: Add bridge support
Message-ID: <20190524111928.ourdmraxw7vrhaar@flea>
References: <20190524104317.20287-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190524104317.20287-1-jagan@amarulasolutions.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_041946_805247_0949BB2E 
X-CRM114-Status: GOOD (  16.39  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
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
 David Airlie <airlied@linux.ie>, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Andrzej Hajda <a.hajda@samsung.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Fri, May 24, 2019 at 04:13:14PM +0530, Jagan Teki wrote:
> Some display panels would come up with a non-DSI output which
> can have an option to connect DSI interface by means of bridge
> converter.
>
> This DSI to non-DSI bridge converter would require a bridge
> driver that would communicate the DSI controller for bridge
> functionalities.
>
> So, add support for bridge functionalities in Allwinner DSI
> controller.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 60 +++++++++++++++++++-------
>  drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h |  1 +
>  2 files changed, 45 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> index ae2fe31b05b1..2b4b1355a88f 100644
> --- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> +++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> @@ -775,6 +775,9 @@ static void sun6i_dsi_encoder_enable(struct drm_encoder *encoder)
>  	if (!IS_ERR(dsi->panel))
>  		drm_panel_prepare(dsi->panel);
>
> +	if (!IS_ERR(dsi->bridge))
> +		drm_bridge_pre_enable(dsi->bridge);
> +

drm_panel_bridge provides what's needed to deal with both a panel and
a bridge, I guess it would make sense to use this instead of
duplicating everything.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
