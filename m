Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 803C9337A3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 20:15:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uO6Td1vPDqj6ULV5TFK3JA+7hJg1h1LnSplFrvddHwI=; b=rNoodJZczicPtL
	MwMk12po4XDmT0sf4SSmGGOS7bjj8ETVYbkA3eGoCo5qQ4J6YJRUPtq/+I1xt8ws4T3YrvZZbVd5V
	7wMsJP8vAmz/7xccKlg+HnbQrRA1L6qxNU2ma+jYstsfYyDrnyMIkvtw0+JZE3gGYFGP167A9DvUo
	oLKEeDxiD5SeRCJ/OkkDNKc5/KwFNKcPOIEQlbl4ICtLmiRDHoq+esZPTNE8fWIK1o1bpmehlfr8J
	ERmHCE1LbGuYsRAgVp+z4chGuWIuN1lEymsvKtx4SJtTZTweiXvUyv/BFzlEQyAjuoVmAgDKNOi7+
	lRGjBE2YMq1pvOOMrtVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXrU4-0003AF-3S; Mon, 03 Jun 2019 18:15:00 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXrTv-00038o-JO; Mon, 03 Jun 2019 18:14:54 +0000
Received: by mail-pl1-x641.google.com with SMTP id s24so7145556plr.8;
 Mon, 03 Jun 2019 11:14:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=uYFWaQzFQ5snwyuhA5Wo9knUJ+dwDmCG5TOZVT/0Ues=;
 b=GtvNLQI0UcMuSMxlxW8HfJaW8ruwYroak68XQJT5ZmOGW7u1P8sBpm8wL8BBUoEt6W
 7FzOBN3oDW6EzvG7h67WBTfUpnha5F011tZ3d00OqSeIYs0YgrNkx7c67FRWOBcq3/6A
 lKRiJWj36QFBVeRiTQXC8xZdbpOyoMGFZLGGqH1340gBbX4d2yVey7ipvEP1rIluQbMb
 1KGZDvH1+lOCDqrwAZr7TRYDtMDthdyxPILd+9yDC1bPuV+RgJSqadGY0WyZ0GizQExh
 9ImCR1RzxozCbp1wSbSqmdgK/VG6f5ZryL60fPKOSAII/h5hSvDJRKYtBzO+xwNSlFl3
 c3kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=uYFWaQzFQ5snwyuhA5Wo9knUJ+dwDmCG5TOZVT/0Ues=;
 b=HQqtmipsVnsQe83BOhfGHfI4wpMGB6vsqsnhOKixM6SXPyRvW8+MVMKrOkZKQnshN+
 D64lpCkateh2XdZUGkkVAA0GdguzQYr8sWc31VSrh+g9KusOdXoAZLO0sbIrAoiuBMoZ
 GXgGtKgL1oGHXxQi5hTdyDSgZ/JI3MomaK7gZiAm00mhPuosRj0DhxvC54QOCGCpExeR
 YykxilJ2JGcCOksYb5BP0fNPtulLPSYQihwmtAPMXrXWWuljXDgksjtrhxIujxBf/emS
 FlYi7lu2EgoWfevtXxIunt9ewN1XNZHsjgV8coBuoRe60WvfQk1Wy1HB7GmnCsstvRnx
 kUXQ==
X-Gm-Message-State: APjAAAW5Czq0sC8mLIAMMqRcxoS6Qw8exP3pomTALU+UfaPZAqsogZ20
 YlHpK61j46nN1/cCUMsKjIg=
X-Google-Smtp-Source: APXvYqxAq6k0HrANm+sE7CE/NmEXg9rSayXZbcrOQYq8ulhcVLYfja5V3QO7wBNbj8G9SGH4dlUopw==
X-Received: by 2002:a17:902:2869:: with SMTP id
 e96mr30606965plb.203.1559585690027; 
 Mon, 03 Jun 2019 11:14:50 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id a5sm12544714pjo.29.2019.06.03.11.14.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 11:14:48 -0700 (PDT)
Date: Mon, 3 Jun 2019 11:14:47 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Jitao Shi <jitao.shi@mediatek.com>
Subject: Re: [v3 6/7] drm/mediatek: change the dsi phytiming calculate method
Message-ID: <20190603181447.GA6947@roeck-us.net>
References: <20190519092537.69053-1-jitao.shi@mediatek.com>
 <20190519092537.69053-7-jitao.shi@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190519092537.69053-7-jitao.shi@mediatek.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_111451_667711_7F5A2C8D 
X-CRM114-Status: GOOD (  23.25  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 David Airlie <airlied@linux.ie>, stonea168@163.com,
 dri-devel@lists.freedesktop.org, Ajay Kumar <ajaykumar.rs@samsung.com>,
 Vincent Palatin <vpalatin@chromium.org>, cawa.cheng@mediatek.com,
 bibby.hsieh@mediatek.com, ck.hu@mediatek.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 Thierry Reding <treding@nvidia.com>, Sean Paul <seanpaul@chromium.org>,
 linux-pwm@vger.kernel.org, Sascha Hauer <kernel@pengutronix.de>,
 Pawel Moll <pawel.moll@arm.com>, Ian Campbell <ijc+devicetree@hellion.org.uk>,
 Inki Dae <inki.dae@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, yingjoe.chen@mediatek.com,
 Matthias Brugger <matthias.bgg@gmail.com>, eddie.huang@mediatek.com,
 linux-arm-kernel@lists.infradead.org, Rahul Sharma <rahul.sharma@samsung.com>,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Kumar Gala <galak@codeaurora.org>,
 Andy Yan <andy.yan@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, May 19, 2019 at 05:25:36PM +0800, Jitao Shi wrote:
> Change the method of frame rate calc which can get more accurate
> frame rate.
> 
> data rate = pixel_clock * bit_per_pixel / lanes
> Adjust hfp_wc to adapt the additional phy_data
> 
> if MIPI_DSI_MODE_VIDEO_BURST
> 	hfp_wc = hfp * bpp - data_phy_cycles * lanes - 12 - 6;
> else
> 	hfp_wc = hfp * bpp - data_phy_cycles * lanes - 12;
> 
> Note:
> //(2: 1 for sync, 1 for phy idle)
> data_phy_cycles = T_hs_exit + T_lpx + T_hs_prepare + T_hs_zero + 2;
> 
> bpp: bit per pixel
> 
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> Tested-by: Ryan Case <ryandcase@chromium.org>
> ---
>  drivers/gpu/drm/mediatek/mtk_dsi.c | 119 +++++++++++++++++++++--------
>  1 file changed, 86 insertions(+), 33 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
> index 1165ff944889..3f51b2000c68 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
> @@ -158,6 +158,25 @@
>  	(type == MIPI_DSI_GENERIC_READ_REQUEST_2_PARAM) || \
>  	(type == MIPI_DSI_DCS_READ))
>  
> +struct mtk_phy_timing {
> +	u32 lpx;
> +	u32 da_hs_prepare;
> +	u32 da_hs_zero;
> +	u32 da_hs_trail;
> +
> +	u32 ta_go;
> +	u32 ta_sure;
> +	u32 ta_get;
> +	u32 da_hs_exit;
> +
> +	u32 clk_hs_zero;
> +	u32 clk_hs_trail;
> +
> +	u32 clk_hs_prepare;
> +	u32 clk_hs_post;
> +	u32 clk_hs_exit;
> +};
> +
>  struct phy;
>  
>  struct mtk_dsi_driver_data {
> @@ -182,12 +201,13 @@ struct mtk_dsi {
>  	struct clk *digital_clk;
>  	struct clk *hs_clk;
>  
> -	u32 data_rate;
> +	u64 data_rate;

This results in 64-bit divide operations and thus build failures
with 32-bit builds. More on that below.

>  
>  	unsigned long mode_flags;
>  	enum mipi_dsi_pixel_format format;
>  	unsigned int lanes;
>  	struct videomode vm;
> +	struct mtk_phy_timing phy_timing;
>  	int refcount;
>  	bool enabled;
>  	u32 irq_data;
> @@ -221,17 +241,39 @@ static void mtk_dsi_phy_timconfig(struct mtk_dsi *dsi)
>  {
>  	u32 timcon0, timcon1, timcon2, timcon3;
>  	u32 ui, cycle_time;
> +	struct mtk_phy_timing *timing = &dsi->phy_timing;
> +
> +	ui = 1000000000 / dsi->data_rate;
> +	cycle_time = 8000000000 / dsi->data_rate;

This results in 64-bit divide operations. On top of that, 8000000000
is larger than 0xffffffff, resulting in an integer overflow on 32-bit
systems; it should be provided as 8000000000ULL. 

> +
> +	timing->lpx = NS_TO_CYCLE(60, cycle_time);
> +	timing->da_hs_prepare = NS_TO_CYCLE((40 + 5 * ui), cycle_time);
> +	timing->da_hs_zero = NS_TO_CYCLE((110 + 6 * ui), cycle_time);
> +	timing->da_hs_trail = NS_TO_CYCLE(((0x4 * ui) + 80), cycle_time);
> +
> +	if (timing->da_hs_zero > timing->da_hs_prepare)
> +		timing->da_hs_zero -= timing->da_hs_prepare;
> +
> +	timing->ta_go = 4 * timing->lpx;
> +	timing->ta_sure = 3 * timing->lpx / 2;
> +	timing->ta_get = 5 * timing->lpx;
> +	timing->da_hs_exit = 2 * timing->lpx;
> +
> +	timing->clk_hs_zero = NS_TO_CYCLE(0x150, cycle_time);
> +	timing->clk_hs_trail = NS_TO_CYCLE(0x64, cycle_time) + 0xa;
>  
> -	ui = 1000 / dsi->data_rate + 0x01;
> -	cycle_time = 8000 / dsi->data_rate + 0x01;
> +	timing->clk_hs_prepare = NS_TO_CYCLE(0x40, cycle_time);
> +	timing->clk_hs_post = NS_TO_CYCLE(80 + 52 * ui, cycle_time);
> +	timing->clk_hs_exit = 2 * timing->lpx;
>  
> -	timcon0 = T_LPX | T_HS_PREP << 8 | T_HS_ZERO << 16 | T_HS_TRAIL << 24;
> -	timcon1 = 4 * T_LPX | (3 * T_LPX / 2) << 8 | 5 * T_LPX << 16 |
> -		  T_HS_EXIT << 24;
> -	timcon2 = ((NS_TO_CYCLE(0x64, cycle_time) + 0xa) << 24) |
> -		  (NS_TO_CYCLE(0x150, cycle_time) << 16);
> -	timcon3 = NS_TO_CYCLE(0x40, cycle_time) | (2 * T_LPX) << 16 |
> -		  NS_TO_CYCLE(80 + 52 * ui, cycle_time) << 8;
> +	timcon0 = timing->lpx | timing->da_hs_prepare << 8 |
> +		  timing->da_hs_zero << 16 | timing->da_hs_trail << 24;
> +	timcon1 = timing->ta_go | timing->ta_sure << 8 |
> +		  timing->ta_get << 16 | timing->da_hs_exit << 24;
> +	timcon2 = 1 << 8 | timing->clk_hs_zero << 16 |
> +		  timing->clk_hs_trail << 24;
> +	timcon3 = timing->clk_hs_prepare | timing->clk_hs_post << 8 |
> +		  timing->clk_hs_exit << 16;
>  
>  	writel(timcon0, dsi->regs + DSI_PHY_TIMECON0);
>  	writel(timcon1, dsi->regs + DSI_PHY_TIMECON1);
> @@ -418,7 +460,8 @@ static void mtk_dsi_config_vdo_timing(struct mtk_dsi *dsi)
>  	u32 horizontal_sync_active_byte;
>  	u32 horizontal_backporch_byte;
>  	u32 horizontal_frontporch_byte;
> -	u32 dsi_tmp_buf_bpp;
> +	u32 dsi_tmp_buf_bpp, data_phy_cycles;
> +	struct mtk_phy_timing *timing = &dsi->phy_timing;
>  
>  	struct videomode *vm = &dsi->vm;
>  
> @@ -433,7 +476,8 @@ static void mtk_dsi_config_vdo_timing(struct mtk_dsi *dsi)
>  	writel(vm->vactive, dsi->regs + DSI_VACT_NL);
>  
>  	if (dsi->driver_data->has_size_ctl)
> -		writel(vm->vactive << 16 | vm->hactive, dsi->regs + DSI_SIZE_CON);
> +		writel(vm->vactive << 16 | vm->hactive,
> +		       dsi->regs + DSI_SIZE_CON);
>  
>  	horizontal_sync_active_byte = (vm->hsync_len * dsi_tmp_buf_bpp - 10);
>  
> @@ -444,7 +488,34 @@ static void mtk_dsi_config_vdo_timing(struct mtk_dsi *dsi)
>  		horizontal_backporch_byte = ((vm->hback_porch + vm->hsync_len) *
>  			dsi_tmp_buf_bpp - 10);
>  
> -	horizontal_frontporch_byte = (vm->hfront_porch * dsi_tmp_buf_bpp - 12);
> +	data_phy_cycles = timing->lpx + timing->da_hs_prepare +
> +				  timing->da_hs_zero + timing->da_hs_exit + 2;
> +
> +	if (dsi->mode_flags & MIPI_DSI_MODE_VIDEO_BURST) {
> +		if (vm->hfront_porch * dsi_tmp_buf_bpp >
> +		    data_phy_cycles * dsi->lanes + 18) {
> +			horizontal_frontporch_byte = vm->hfront_porch *
> +						     dsi_tmp_buf_bpp -
> +						     data_phy_cycles *
> +						     dsi->lanes - 18;
> +		} else {
> +			DRM_WARN("HFP less than d-phy, FPS will under 60Hz\n");
> +			horizontal_frontporch_byte = vm->hfront_porch *
> +						     dsi_tmp_buf_bpp;
> +		}
> +	} else {
> +		if (vm->hfront_porch * dsi_tmp_buf_bpp >
> +		    data_phy_cycles * dsi->lanes + 12) {
> +			horizontal_frontporch_byte = vm->hfront_porch *
> +						     dsi_tmp_buf_bpp -
> +						     data_phy_cycles *
> +						     dsi->lanes - 12;
> +		} else {
> +			DRM_WARN("HFP less than d-phy, FPS will under 60Hz\n");
> +			horizontal_frontporch_byte = vm->hfront_porch *
> +						     dsi_tmp_buf_bpp;
> +		}
> +	}
>  
>  	writel(horizontal_sync_active_byte, dsi->regs + DSI_HSA_WC);
>  	writel(horizontal_backporch_byte, dsi->regs + DSI_HBP_WC);
> @@ -544,8 +615,7 @@ static int mtk_dsi_poweron(struct mtk_dsi *dsi)
>  {
>  	struct device *dev = dsi->dev;
>  	int ret;
> -	u64 pixel_clock, total_bits;
> -	u32 htotal, htotal_bits, bit_per_pixel, overhead_cycles, overhead_bits;
> +	u32 bit_per_pixel;
>  
>  	if (++dsi->refcount != 1)
>  		return 0;
> @@ -564,24 +634,7 @@ static int mtk_dsi_poweron(struct mtk_dsi *dsi)
>  		break;
>  	}
>  
> -	/**
> -	 * htotal_time = htotal * byte_per_pixel / num_lanes
> -	 * overhead_time = lpx + hs_prepare + hs_zero + hs_trail + hs_exit
> -	 * mipi_ratio = (htotal_time + overhead_time) / htotal_time
> -	 * data_rate = pixel_clock * bit_per_pixel * mipi_ratio / num_lanes;
> -	 */
> -	pixel_clock = dsi->vm.pixelclock;
> -	htotal = dsi->vm.hactive + dsi->vm.hback_porch + dsi->vm.hfront_porch +
> -			dsi->vm.hsync_len;
> -	htotal_bits = htotal * bit_per_pixel;
> -
> -	overhead_cycles = T_LPX + T_HS_PREP + T_HS_ZERO + T_HS_TRAIL +
> -			T_HS_EXIT;
> -	overhead_bits = overhead_cycles * dsi->lanes * 8;
> -	total_bits = htotal_bits + overhead_bits;
> -
> -	dsi->data_rate = DIV_ROUND_UP_ULL(pixel_clock * total_bits,
> -					  htotal * dsi->lanes);
> +	dsi->data_rate = dsi->vm.pixelclock * bit_per_pixel / dsi->lanes;

pixelclock and bit_per_pixel are not u64, and neither is dsi->lanes.
The above will thus be a 32-bit operation on 32-bit systems, and never
really assign a true 64-bit value to data_rate. On top of that,
clk_set_rate() expects an unsigned long argument. Declaring data_rate
as anything but unsigned long has therefore no value.

Note that the old code took possible overflow conditions due to interim
results larger than u32 / unsigned long into account. This is no longer
the case. I don't know if this is a concern, but it might be worth watching
out for. If it is not a concern because the code is not anymore expected
to run on 32-bit systems, it should be restricted to 64-bit builds.

Guenter

>  
>  	ret = clk_set_rate(dsi->hs_clk, dsi->data_rate);
>  	if (ret < 0) {

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
