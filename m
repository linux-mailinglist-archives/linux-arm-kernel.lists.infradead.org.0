Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65ECCEDA5A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 09:08:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=e13/6xOLe6Y5KB3xIQRkRal2/lhqs3z8Eo7NZAMaE/E=; b=VTKgFk53QIjPuDYHI5rIgXNt0z
	w3wKhkMFUI1BvtdWaBuRTdgUJXJUpWTdu+5e89+H2iO/n0JyxoRMvEZnQxxBaPkYkyugHOQnWT36T
	+HeeaNSBc/gP1cpqyQi1AHVlWA/nW1Uw5W8iEFWfM6Vo6+66o5Q4vjSBL11baYwjEe5vIo/CRJPkn
	8Ln3hVmqKkeOdThY+N/I1LesUS8KTYRHQ9aO+2dbI44mmm8CNIqItL+D0hytUa/fszFMLFUKyfWJN
	KvfiCyiVonCAYfxFPQULVyHsehltuPT8oOv6xmkDIhErkIzVeLrMtrs3UwZlQKH7gcmpG08Q3lFze
	9NVdy75Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRXPU-0001BK-RI; Mon, 04 Nov 2019 08:08:24 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRXPN-0001AX-Oh
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 08:08:19 +0000
Received: by mail-wm1-x343.google.com with SMTP id m17so6229757wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 00:08:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=MCuKFJgt4493oVJusvtutFHlaoTvavsZO8OJ49Du7VQ=;
 b=kewSJ4AFdAdRg/ZA6mLKuKRCk4bKbhlSTcqaSp7a2ryiUk2AlUFfTYKXidGLLGFfHk
 TxgM6dvj+/h7nA2J857CUctnbap52/xArAt7DGAtBzT8GkAGsfvbFAlpEvP80USUKUMN
 4DhnSx0sx1T9AJraMBE71iz1o9d7Wq1lf6rrjkGXRt0LGrgWDGoSndUdxXcorFdI9yRl
 udZnNZuP0hbTGXHdBQRkdWoasWX7vtkG1beb4HPz2bEBbLaR52Lt/UMndlo/m+iuFnrR
 n5pCuFobN/w0Gx6VTFfepZY99s1w7xH2eVqhYGBReLAKcwRoFiacjAiLDSX+yxVOSsD0
 x5Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=MCuKFJgt4493oVJusvtutFHlaoTvavsZO8OJ49Du7VQ=;
 b=Ma89GFTzv8FX34pxmiwF8Flq9MYmGVYfKenos/ZsPzgWqdWW7TnH9GPQF0viZjSv7U
 y1LYbOQaljd5ox5mg9M4hQ2ZzZiZWzJjIYU/55vWzQgoa8tLEMUzfDtdxmu7Vh0SR8t4
 evbdUlbUgzGc8VpjMUS6tTVWio2XzPC5YBFquSMIH/IX7+Nj579jnA8j0uKuo294t2VL
 zEGdau2dMEnd7NPsHr+Mzw68HyRuUG0NFRfdCwFZ7hMNLg3VJw8N1bYRPizcg2/Nm7kW
 8+91NYM7nYvuZFKxrLL+hVIZX9r0XzELZBt7jPyhujBBcTiAoM5O5FAGlIcKexcX+9w6
 IHXg==
X-Gm-Message-State: APjAAAWTMEdi9Ch+13qxtcNvtsyiCX5SZ2QPGFdZO3fgVMqWXKKMUfrT
 iZByHzUlbOvAvWClE79p5eKxVw==
X-Google-Smtp-Source: APXvYqy1R3nOCfQIXOAHxdlReFUWyMsMXJ1hvWq6zkqkU2Wqn4kMxDTTJDjub+A3plJqlpINWy3O3Q==
X-Received: by 2002:a1c:7905:: with SMTP id l5mr17673710wme.76.1572854896300; 
 Mon, 04 Nov 2019 00:08:16 -0800 (PST)
Received: from localhost (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id t12sm14949737wrx.93.2019.11.04.00.08.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Nov 2019 00:08:15 -0800 (PST)
References: <20191027161805.1176321-1-martin.blumenstingl@googlemail.com>
 <20191027161805.1176321-4-martin.blumenstingl@googlemail.com>
User-agent: mu4e 1.3.3; emacs 26.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 narmstrong@baylibre.com, linux-amlogic@lists.infradead.org,
 khilman@baylibre.com
Subject: Re: [PATCH v2 3/5] clk: meson: meson8b: change references to the XTAL
 clock to use the name
In-reply-to: <20191027161805.1176321-4-martin.blumenstingl@googlemail.com>
Date: Mon, 04 Nov 2019 09:08:14 +0100
Message-ID: <1jd0e83vyp.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_000817_803707_02571AFC 
X-CRM114-Status: GOOD (  19.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Sun 27 Oct 2019 at 17:18, Martin Blumenstingl <martin.blumenstingl@googlemail.com> wrote:

> The XTAL clock is an actual crystal which is mounted on the PCB. Thus
> the meson8b clock controller driver should not provide the XTAL clock.
>
> The meson8b clock controller driver must not use references to
> the meson8b_xtal clock anymore before we can provide the XTAL clock
> via OF. Replace the references to the meson8b_xtal.hw by using
> clk_parent_data.name = "xtal" (along with index = -1) because this works
> regardless how the XTAL clock is registered (either as fixed-clock in
> the .dtb or - if missing - when registered in the meson8b clock
> controller driver).
>
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
>  drivers/clk/meson/meson8b.c | 73 ++++++++++++++++++++-----------------
>  1 file changed, 39 insertions(+), 34 deletions(-)
>
> diff --git a/drivers/clk/meson/meson8b.c b/drivers/clk/meson/meson8b.c
> index d376f80e806d..b785b67baf2b 100644
> --- a/drivers/clk/meson/meson8b.c
> +++ b/drivers/clk/meson/meson8b.c
> @@ -97,8 +97,9 @@ static struct clk_regmap meson8b_fixed_pll_dco = {
>  	.hw.init = &(struct clk_init_data){
>  		.name = "fixed_pll_dco",
>  		.ops = &meson_clk_pll_ro_ops,
> -		.parent_hws = (const struct clk_hw *[]) {
> -			&meson8b_xtal.hw
> +		.parent_data = &(const struct clk_parent_data) {
> +			.name = "xtal",
> +			.index = -1,

if I got correctly, when transitioning to DT, you can specify both
"fw_name" and "name". CCF should try to get the clock through DT and
fallback to global name matching if not available

>  		},
>  		.num_parents = 1,
>  	},
> @@ -162,8 +163,9 @@ static struct clk_regmap meson8b_hdmi_pll_dco = {
>  		/* sometimes also called "HPLL" or "HPLL PLL" */
>  		.name = "hdmi_pll_dco",
>  		.ops = &meson_clk_pll_ro_ops,
> -		.parent_hws = (const struct clk_hw *[]) {
> -			&meson8b_xtal.hw
> +		.parent_data = &(const struct clk_parent_data) {
> +			.name = "xtal",
> +			.index = -1,
>  		},
>  		.num_parents = 1,
>  	},
> @@ -237,8 +239,9 @@ static struct clk_regmap meson8b_sys_pll_dco = {
>  	.hw.init = &(struct clk_init_data){
>  		.name = "sys_pll_dco",
>  		.ops = &meson_clk_pll_ops,
> -		.parent_hws = (const struct clk_hw *[]) {
> -			&meson8b_xtal.hw
> +		.parent_data = &(const struct clk_parent_data) {
> +			.name = "xtal",
> +			.index = -1,
>  		},
>  		.num_parents = 1,
>  	},
> @@ -631,9 +634,9 @@ static struct clk_regmap meson8b_cpu_in_sel = {
>  	.hw.init = &(struct clk_init_data){
>  		.name = "cpu_in_sel",
>  		.ops = &clk_regmap_mux_ops,
> -		.parent_hws = (const struct clk_hw *[]) {
> -			&meson8b_xtal.hw,
> -			&meson8b_sys_pll.hw,
> +		.parent_data = (const struct clk_parent_data[]) {
> +			{ .name = "xtal", .index = -1, },
> +			{ .hw = &meson8b_sys_pll.hw, },
>  		},
>  		.num_parents = 2,
>  		.flags = (CLK_SET_RATE_PARENT |
> @@ -736,9 +739,9 @@ static struct clk_regmap meson8b_cpu_clk = {
>  	.hw.init = &(struct clk_init_data){
>  		.name = "cpu_clk",
>  		.ops = &clk_regmap_mux_ops,
> -		.parent_hws = (const struct clk_hw *[]) {
> -			&meson8b_xtal.hw,
> -			&meson8b_cpu_scale_out_sel.hw,
> +		.parent_data = (const struct clk_parent_data[]) {
> +			{ .name = "xtal", .index = -1, },
> +			{ .hw = &meson8b_cpu_scale_out_sel.hw, },
>  		},
>  		.num_parents = 2,
>  		.flags = (CLK_SET_RATE_PARENT |
> @@ -758,12 +761,12 @@ static struct clk_regmap meson8b_nand_clk_sel = {
>  		.name = "nand_clk_sel",
>  		.ops = &clk_regmap_mux_ops,
>  		/* FIXME all other parents are unknown: */
> -		.parent_hws = (const struct clk_hw *[]) {
> -			&meson8b_fclk_div4.hw,
> -			&meson8b_fclk_div3.hw,
> -			&meson8b_fclk_div5.hw,
> -			&meson8b_fclk_div7.hw,
> -			&meson8b_xtal.hw,
> +		.parent_data = (const struct clk_parent_data[]) {
> +			{ .hw = &meson8b_fclk_div4.hw, },
> +			{ .hw = &meson8b_fclk_div3.hw, },
> +			{ .hw = &meson8b_fclk_div5.hw, },
> +			{ .hw = &meson8b_fclk_div7.hw, },
> +			{ .name = "xtal", .index = -1, },
>  		},
>  		.num_parents = 5,
>  		.flags = CLK_SET_RATE_PARENT,
> @@ -1721,8 +1724,9 @@ static struct clk_regmap meson8b_hdmi_sys_sel = {
>  		.name = "hdmi_sys_sel",
>  		.ops = &clk_regmap_mux_ro_ops,
>  		/* FIXME: all other parents are unknown */
> -		.parent_hws = (const struct clk_hw *[]) {
> -			&meson8b_xtal.hw
> +		.parent_data = &(const struct clk_parent_data) {
> +			.name = "xtal",
> +			.index = -1,
>  		},
>  		.num_parents = 1,
>  		.flags = CLK_SET_RATE_NO_REPARENT,
> @@ -1767,14 +1771,14 @@ static struct clk_regmap meson8b_hdmi_sys = {
>   * muxed by a glitch-free switch on Meson8b and Meson8m2. Meson8 only
>   * has mali_0 and no glitch-free mux.
>   */
> -static const struct clk_hw *meson8b_mali_0_1_parent_hws[] = {
> -	&meson8b_xtal.hw,
> -	&meson8b_mpll2.hw,
> -	&meson8b_mpll1.hw,
> -	&meson8b_fclk_div7.hw,
> -	&meson8b_fclk_div4.hw,
> -	&meson8b_fclk_div3.hw,
> -	&meson8b_fclk_div5.hw,
> +static const struct clk_parent_data meson8b_mali_0_1_parent_data[] = {
> +	{ .name = "xtal", .index = -1, },
> +	{ .hw = &meson8b_mpll2.hw, },
> +	{ .hw = &meson8b_mpll1.hw, },
> +	{ .hw = &meson8b_fclk_div7.hw, },
> +	{ .hw = &meson8b_fclk_div4.hw, },
> +	{ .hw = &meson8b_fclk_div3.hw, },
> +	{ .hw = &meson8b_fclk_div5.hw, },
>  };
>  
>  static u32 meson8b_mali_0_1_mux_table[] = { 0, 2, 3, 4, 5, 6, 7 };
> @@ -1789,8 +1793,8 @@ static struct clk_regmap meson8b_mali_0_sel = {
>  	.hw.init = &(struct clk_init_data){
>  		.name = "mali_0_sel",
>  		.ops = &clk_regmap_mux_ops,
> -		.parent_hws = meson8b_mali_0_1_parent_hws,
> -		.num_parents = ARRAY_SIZE(meson8b_mali_0_1_parent_hws),
> +		.parent_data = meson8b_mali_0_1_parent_data,
> +		.num_parents = ARRAY_SIZE(meson8b_mali_0_1_parent_data),
>  		/*
>  		 * Don't propagate rate changes up because the only changeable
>  		 * parents are mpll1 and mpll2 but we need those for audio and
> @@ -1844,8 +1848,8 @@ static struct clk_regmap meson8b_mali_1_sel = {
>  	.hw.init = &(struct clk_init_data){
>  		.name = "mali_1_sel",
>  		.ops = &clk_regmap_mux_ops,
> -		.parent_hws = meson8b_mali_0_1_parent_hws,
> -		.num_parents = ARRAY_SIZE(meson8b_mali_0_1_parent_hws),
> +		.parent_data = meson8b_mali_0_1_parent_data,
> +		.num_parents = ARRAY_SIZE(meson8b_mali_0_1_parent_data),
>  		/*
>  		 * Don't propagate rate changes up because the only changeable
>  		 * parents are mpll1 and mpll2 but we need those for audio and
> @@ -1944,8 +1948,9 @@ static struct clk_regmap meson8m2_gp_pll_dco = {
>  	.hw.init = &(struct clk_init_data){
>  		.name = "gp_pll_dco",
>  		.ops = &meson_clk_pll_ops,
> -		.parent_hws = (const struct clk_hw *[]) {
> -			&meson8b_xtal.hw
> +		.parent_data = &(const struct clk_parent_data) {
> +			.name = "xtal",
> +			.index = -1,
>  		},
>  		.num_parents = 1,
>  	},


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
