Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5EA196925
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 21:24:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cerJ0LqdVrKgg69OMqKgMDMp/BZmWdXSELNol79G3jY=; b=NivFYNK+wsaCfz
	TVi2NdtnDP3m5GHey8VG1DGdnX20WgBANyBGuzDBiknYn8dCwJ8/VebNw00QOdWqk0decuLYSLgS/
	nmBCxh1Jsrgv/gEcjowq/KZ7rz1Wu0XOvx7CtvgCUU5ZJ6UohynErSqK7Ftt4KZVWKKjTAjhcOO0e
	v5fTb99vtqTJwiX21EchAoCpR4YrulRZkLeLlDHcJhvYR73y/eJ5b3SKSEKZDwlNEZUi4oQMpAImi
	ZXh6ZBV/vc1cyJX3ie/5hE5TDC3XQkw+wDEEa5fTXeQJiBSOI6sxq2BEpm5NpVeRDwXCx37bKr/Zx
	RoQng+GUCSWZVCFnjf1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIHzR-0007G7-Nx; Sat, 28 Mar 2020 20:23:33 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIHzI-0007Es-06
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 20:23:27 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id 4E5682001E;
 Sat, 28 Mar 2020 21:23:17 +0100 (CET)
Date: Sat, 28 Mar 2020 21:23:16 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Pascal Roeleven <dev@pascalroeleven.nl>
Subject: Re: [PATCH v2 2/5] drm: panel: Add Starry KR070PE2T
Message-ID: <20200328202316.GB32230@ravnborg.org>
References: <20200320112205.7100-1-dev@pascalroeleven.nl>
 <20200320112205.7100-3-dev@pascalroeleven.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200320112205.7100-3-dev@pascalroeleven.nl>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=eMA9ckh1 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10
 a=xAGLBWnee8H38iZZnlQA:9 a=CjuIK1q_8ugA:10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_132324_236513_341AC6D4 
X-CRM114-Status: GOOD (  18.45  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.14 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RCVD_IN_RP_RNBL        RBL: Relay in RNBL,
 https://senderscore.org/blacklistlookup/
 [109.247.116.14 listed in bl.score.senderscore.com]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, Mark Brown <broonie@kernel.org>,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 20, 2020 at 12:21:33PM +0100, Pascal Roeleven wrote:
> The KR070PE2T is a 7" panel with a resolution of 800x480.
> 
> KR070PE2T is the marking present on the ribbon cable. As this panel is
> probably available under different brands, this marking will catch
> most devices.
> 
> As I can't find a datasheet for this panel, the bus_flags are instead
> from trial-and-error. The flags seem to be common for these kind of
> panels as well.
> 
> Signed-off-by: Pascal Roeleven <dev@pascalroeleven.nl>

Applied to drm-misc-next.

	Sam

> ---
>  drivers/gpu/drm/panel/panel-simple.c | 29 ++++++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
> index e14c14ac6..b3d257257 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -2842,6 +2842,32 @@ static const struct panel_desc shelly_sca07010_bfn_lnn = {
>  	.bus_format = MEDIA_BUS_FMT_RGB666_1X18,
>  };
>  
> +static const struct drm_display_mode starry_kr070pe2t_mode = {
> +	.clock = 33000,
> +	.hdisplay = 800,
> +	.hsync_start = 800 + 209,
> +	.hsync_end = 800 + 209 + 1,
> +	.htotal = 800 + 209 + 1 + 45,
> +	.vdisplay = 480,
> +	.vsync_start = 480 + 22,
> +	.vsync_end = 480 + 22 + 1,
> +	.vtotal = 480 + 22 + 1 + 22,
> +	.vrefresh = 60,
> +};
> +
> +static const struct panel_desc starry_kr070pe2t = {
> +	.modes = &starry_kr070pe2t_mode,
> +	.num_modes = 1,
> +	.bpc = 8,
> +	.size = {
> +		.width = 152,
> +		.height = 86,
> +	},
> +	.bus_format = MEDIA_BUS_FMT_RGB888_1X24,
> +	.bus_flags = DRM_BUS_FLAG_DE_HIGH | DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE,
> +	.connector_type = DRM_MODE_CONNECTOR_LVDS,
> +};
> +
>  static const struct drm_display_mode starry_kr122ea0sra_mode = {
>  	.clock = 147000,
>  	.hdisplay = 1920,
> @@ -3474,6 +3500,9 @@ static const struct of_device_id platform_of_match[] = {
>  	}, {
>  		.compatible = "shelly,sca07010-bfn-lnn",
>  		.data = &shelly_sca07010_bfn_lnn,
> +	}, {
> +		.compatible = "starry,kr070pe2t",
> +		.data = &starry_kr070pe2t,
>  	}, {
>  		.compatible = "starry,kr122ea0sra",
>  		.data = &starry_kr122ea0sra,
> -- 
> 2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
