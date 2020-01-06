Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D763131A7B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 22:33:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3NlPXi9rV6Z53OWjVPTrtRkQlpMp0imHUmYaNWuhAPQ=; b=MQyYEr7CpqbnV5
	TlMgmQn3LbIwtrtnzRwu1zDCdjrpYerf/tO9VUfeQYZbQXVew7mh+WgPf8uDmyesPKNN2YRtKpMlT
	w5CK2psIFz75Ajgok/RYL/7swVRBnoPIO0NAlcuUc9Fr8nhgj47qjWA8Iaisr9C4TtWflppHiWarY
	9oTImMubwyOh4p6ajEiamBv2joYewFKKvH9SpFxpJlxRfDTRd33zMLptX8eM0kl6PmNLPMZktBMrH
	q0uH4aQUxuTzR4jMvhWruMq4puUWsa8jLOi5l2JWQAKQdO637QzZlKHn5HUY2K6O1NkhTongrnrhd
	p4A9fOPDt8AXTEGy6ttw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioa0P-0005ya-FB; Mon, 06 Jan 2020 21:33:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioa0H-0005xX-31; Mon, 06 Jan 2020 21:33:38 +0000
Received: from ip5f5a5f74.dynamic.kabel-deutschland.de ([95.90.95.116]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1ioa0A-00079U-GH; Mon, 06 Jan 2020 22:33:30 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH 15/15] phy/rockchip: inno-hdmi: Support more pre-pll
 configuration
Date: Mon, 06 Jan 2020 22:33:29 +0100
Message-ID: <2769685.GCkjRackp1@diego>
In-Reply-To: <HE1PR06MB4011666845128FD3C89F9DACAC3C0@HE1PR06MB4011.eurprd06.prod.outlook.com>
References: <HE1PR06MB4011254424EDB4485617513CAC3C0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <20200106204951.6060-1-jonas@kwiboo.se>
 <HE1PR06MB4011666845128FD3C89F9DACAC3C0@HE1PR06MB4011.eurprd06.prod.outlook.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_133337_283067_EBCA411C 
X-CRM114-Status: GOOD (  18.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Algea Cao <algea.cao@rock-chips.com>,
 David Airlie <airlied@linux.ie>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Sandy Huang <hjc@rock-chips.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Zheng Yang <zhengyang@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Montag, 6. Januar 2020, 21:50:02 CET schrieb Jonas Karlman:
> From: Algea Cao <algea.cao@rock-chips.com>
> 
> Adding the following freq cfg in 8-bit and 10-bit color depth:
> 
> {
>   40000000,  65000000,  71000000,  83500000, 85750000,
>   88750000, 108000000, 119000000, 162000000
> }
> 
> New freq has been validated by quantumdata 980.
> 
> For some freq which can't be got by only using integer freq div,
> frac freq div is needed, Such as 88.75Mhz 10-bit. But The actual
> freq is different from the target freq, We must try to narrow
> the gap between them. RK322X only support integer freq div.
> 
> The VCO of pre-PLL must be more than 2Ghz, otherwise PLL may be
> unlocked.
> 
> Signed-off-by: Algea Cao <algea.cao@rock-chips.com>
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>

Acked-by: Heiko Stuebner <heiko@sntech.de>


> ---
>  drivers/phy/rockchip/phy-rockchip-inno-hdmi.c | 74 ++++++++++++-------
>  1 file changed, 49 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
> index 3719309ad0d0..bb8bdf5e3301 100644
> --- a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
> +++ b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
> @@ -291,32 +291,56 @@ struct inno_hdmi_phy_drv_data {
>  	const struct phy_config		*phy_cfg_table;
>  };
>  
> +/*
> + * If only using integer freq div can't get frequency we want, frac
> + * freq div is needed. For example, pclk 88.75 Mhz and tmdsclk
> + * 110.9375 Mhz must use frac div 0xF00000. The actual frequency is different
> + * from the target frequency. Such as the tmds clock 110.9375 Mhz,
> + * the actual tmds clock we get is 110.93719 Mhz. It is important
> + * to note that RK322X platforms do not support frac div.
> + */
>  static const struct pre_pll_config pre_pll_cfg_table[] = {
> -	{ 27000000,  27000000, 1,  90, 3, 2, 2, 10, 3, 3, 4, 0, 0},
> -	{ 27000000,  33750000, 1,  90, 1, 3, 3, 10, 3, 3, 4, 0, 0},
> -	{ 40000000,  40000000, 1,  80, 2, 2, 2, 12, 2, 2, 2, 0, 0},
> -	{ 59341000,  59341000, 1,  98, 3, 1, 2,  1, 3, 3, 4, 0, 0xE6AE6B},
> -	{ 59400000,  59400000, 1,  99, 3, 1, 1,  1, 3, 3, 4, 0, 0},
> -	{ 59341000,  74176250, 1,  98, 0, 3, 3,  1, 3, 3, 4, 0, 0xE6AE6B},
> -	{ 59400000,  74250000, 1,  99, 1, 2, 2,  1, 3, 3, 4, 0, 0},
> -	{ 74176000,  74176000, 1,  98, 1, 2, 2,  1, 2, 3, 4, 0, 0xE6AE6B},
> -	{ 74250000,  74250000, 1,  99, 1, 2, 2,  1, 2, 3, 4, 0, 0},
> -	{ 74176000,  92720000, 4, 494, 1, 2, 2,  1, 3, 3, 4, 0, 0x816817},
> -	{ 74250000,  92812500, 4, 495, 1, 2, 2,  1, 3, 3, 4, 0, 0},
> -	{148352000, 148352000, 1,  98, 1, 1, 1,  1, 2, 2, 2, 0, 0xE6AE6B},
> -	{148500000, 148500000, 1,  99, 1, 1, 1,  1, 2, 2, 2, 0, 0},
> -	{148352000, 185440000, 4, 494, 0, 2, 2,  1, 3, 2, 2, 0, 0x816817},
> -	{148500000, 185625000, 4, 495, 0, 2, 2,  1, 3, 2, 2, 0, 0},
> -	{296703000, 296703000, 1,  98, 0, 1, 1,  1, 0, 2, 2, 0, 0xE6AE6B},
> -	{297000000, 297000000, 1,  99, 0, 1, 1,  1, 0, 2, 2, 0, 0},
> -	{296703000, 370878750, 4, 494, 1, 2, 0,  1, 3, 1, 1, 0, 0x816817},
> -	{297000000, 371250000, 4, 495, 1, 2, 0,  1, 3, 1, 1, 0, 0},
> -	{593407000, 296703500, 1,  98, 0, 1, 1,  1, 0, 2, 1, 0, 0xE6AE6B},
> -	{594000000, 297000000, 1,  99, 0, 1, 1,  1, 0, 2, 1, 0, 0},
> -	{593407000, 370879375, 4, 494, 1, 2, 0,  1, 3, 1, 1, 1, 0x816817},
> -	{594000000, 371250000, 4, 495, 1, 2, 0,  1, 3, 1, 1, 1, 0},
> -	{593407000, 593407000, 1,  98, 0, 2, 0,  1, 0, 1, 1, 0, 0xE6AE6B},
> -	{594000000, 594000000, 1,  99, 0, 2, 0,  1, 0, 1, 1, 0, 0},
> +	{ 27000000,  27000000, 1,  90, 3, 2, 2, 10, 3, 3,  4, 0, 0},
> +	{ 27000000,  33750000, 1,  90, 1, 3, 3, 10, 3, 3,  4, 0, 0},
> +	{ 40000000,  40000000, 1,  80, 2, 2, 2, 12, 2, 2,  2, 0, 0},
> +	{ 40000000,  50000000, 1, 100, 2, 2, 2,  1, 0, 0, 15, 0, 0},
> +	{ 59341000,  59341000, 1,  98, 3, 1, 2,  1, 3, 3,  4, 0, 0xE6AE6B},
> +	{ 59400000,  59400000, 1,  99, 3, 1, 1,  1, 3, 3,  4, 0, 0},
> +	{ 59341000,  74176250, 1,  98, 0, 3, 3,  1, 3, 3,  4, 0, 0xE6AE6B},
> +	{ 59400000,  74250000, 1,  99, 1, 2, 2,  1, 3, 3,  4, 0, 0},
> +	{ 65000000,  65000000, 1, 130, 2, 2, 2,  1, 0, 0, 12, 0, 0},
> +	{ 65000000,  81250000, 3, 325, 0, 3, 3,  1, 0, 0, 10, 0, 0},
> +	{ 71000000,  71000000, 3, 284, 0, 3, 3,  1, 0, 0,  8, 0, 0},
> +	{ 71000000,  88750000, 3, 355, 0, 3, 3,  1, 0, 0, 10, 0, 0},
> +	{ 74176000,  74176000, 1,  98, 1, 2, 2,  1, 2, 3,  4, 0, 0xE6AE6B},
> +	{ 74250000,  74250000, 1,  99, 1, 2, 2,  1, 2, 3,  4, 0, 0},
> +	{ 74176000,  92720000, 4, 494, 1, 2, 2,  1, 3, 3,  4, 0, 0x816817},
> +	{ 74250000,  92812500, 4, 495, 1, 2, 2,  1, 3, 3,  4, 0, 0},
> +	{ 83500000,  83500000, 2, 167, 2, 1, 1,  1, 0, 0,  6, 0, 0},
> +	{ 83500000, 104375000, 1, 104, 2, 1, 1,  1, 1, 0,  5, 0, 0x600000},
> +	{ 85750000,  85750000, 3, 343, 0, 3, 3,  1, 0, 0,  8, 0, 0},
> +	{ 88750000,  88750000, 3, 355, 0, 3, 3,  1, 0, 0,  8, 0, 0},
> +	{ 88750000, 110937500, 1, 110, 2, 1, 1,  1, 1, 0,  5, 0, 0xF00000},
> +	{108000000, 108000000, 1,  90, 3, 0, 0,  1, 0, 0,  5, 0, 0},
> +	{108000000, 135000000, 1,  90, 0, 2, 2,  1, 0, 0,  5, 0, 0},
> +	{119000000, 119000000, 1, 119, 2, 1, 1,  1, 0, 0,  6, 0, 0},
> +	{119000000, 148750000, 1,  99, 0, 2, 2,  1, 0, 0,  5, 0, 0x2AAAAA},
> +	{148352000, 148352000, 1,  98, 1, 1, 1,  1, 2, 2,  2, 0, 0xE6AE6B},
> +	{148500000, 148500000, 1,  99, 1, 1, 1,  1, 2, 2,  2, 0, 0},
> +	{148352000, 185440000, 4, 494, 0, 2, 2,  1, 3, 2,  2, 0, 0x816817},
> +	{148500000, 185625000, 4, 495, 0, 2, 2,  1, 3, 2,  2, 0, 0},
> +	{162000000, 162000000, 1, 108, 0, 2, 2,  1, 0, 0,  4, 0, 0},
> +	{162000000, 202500000, 1, 135, 0, 2, 2,  1, 0, 0,  5, 0, 0},
> +	{296703000, 296703000, 1,  98, 0, 1, 1,  1, 0, 2,  2, 0, 0xE6AE6B},
> +	{297000000, 297000000, 1,  99, 0, 1, 1,  1, 0, 2,  2, 0, 0},
> +	{296703000, 370878750, 4, 494, 1, 2, 0,  1, 3, 1,  1, 0, 0x816817},
> +	{297000000, 371250000, 4, 495, 1, 2, 0,  1, 3, 1,  1, 0, 0},
> +	{593407000, 296703500, 1,  98, 0, 1, 1,  1, 0, 2,  1, 0, 0xE6AE6B},
> +	{594000000, 297000000, 1,  99, 0, 1, 1,  1, 0, 2,  1, 0, 0},
> +	{593407000, 370879375, 4, 494, 1, 2, 0,  1, 3, 1,  1, 1, 0x816817},
> +	{594000000, 371250000, 4, 495, 1, 2, 0,  1, 3, 1,  1, 1, 0},
> +	{593407000, 593407000, 1,  98, 0, 2, 0,  1, 0, 1,  1, 0, 0xE6AE6B},
> +	{594000000, 594000000, 1,  99, 0, 2, 0,  1, 0, 1,  1, 0, 0},
>  	{ /* sentinel */ }
>  };
>  
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
