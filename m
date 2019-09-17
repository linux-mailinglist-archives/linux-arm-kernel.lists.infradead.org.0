Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4618B47BD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 08:54:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0D6CDHD7dMjg3k1VoCkodzVDojzmsOmlAARVkw+X/Wo=; b=GwUYwL8nSqVNCh
	dAfsZuDYDceNPQQkE3kCaLHunWBR5V16tr+T0jLM52zn3A1YiIsvDMZ3xUdbRBz5OlLqvIOckshJd
	E5Cw1Fozjv7DrUHfy5oyAuq8KuoTmDRgLTLof6Z0GtsdV4ZkL/JpQQcdM9Ro2B7PMreM1X5RLFZuM
	hNBWoYgwK1lUzxpE7KwU1bj3mGNcnbV7P3q4uciV4tI3uRLJbEf0NVvMTunRNmAzf7qpvDUjImEpO
	d5G7gv0e6fLmgM00PdD+NRxu/+2GZwLYDSTjHoecVdqDDGulL0kuaMj936a0DeK8BCe7bSQydIjoD
	Yy/RMDJRnfm2Hbcy6mQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA7Nt-0002Mb-UZ; Tue, 17 Sep 2019 06:54:46 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA7Nb-0002Lg-QO
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 06:54:29 +0000
Received: by mail-ed1-f67.google.com with SMTP id g12so2246986eds.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 23:54:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QcIjvbufynPeD91Mg15EYJOqVZcGPs0ArRORK/sU2Is=;
 b=Xaym8Ve3BKqWd3FFpyD7jK8lXfdHPEztC3rBcrCSjrX6/WBR/BvFELFVtZ9+nQuIen
 R+NQldfJxeDqLv16ygGm9XlIfONHbzsRej3YkhN7ph60gv/dFIzfsO6o77Muouncxpm8
 mthXfPWXRaKHCGYKqF2WostaJvRcphLPoMx+0bQUdFJH9G7If+T+3ZkxWBvTZwfSTR2X
 FIqFwaW4z0+vzpJijby2onZ+dciZFmOVAxn7ehyHZX//4wwscxB+2IPnxmRy9W/2F+SA
 DsBarqahJuhIqsLKsf15cNi32lbC0FcJYYCYJbhYYe/SgdeeZM1CJbeIUN00/Xn7/Fwa
 UyeA==
X-Gm-Message-State: APjAAAXx5dbE88+hR6qspbsdRvbBl73ngp1Yci9kCgRhSm4iDF+RQNhp
 /2wMeiZdRxcg2bbBGk3PlS/TklpKL68=
X-Google-Smtp-Source: APXvYqxh5ozvF24w5xtibh2T3hMThbX1vHWBwwK6wPxaYIz8et/V5ne+NWk8Rxkrr+XtpUF5YZ25OQ==
X-Received: by 2002:a50:fc18:: with SMTP id i24mr3043210edr.69.1568703261723; 
 Mon, 16 Sep 2019 23:54:21 -0700 (PDT)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com.
 [209.85.128.41])
 by smtp.gmail.com with ESMTPSA id c26sm261599edb.2.2019.09.16.23.54.21
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 Sep 2019 23:54:21 -0700 (PDT)
Received: by mail-wm1-f41.google.com with SMTP id t3so1703248wmj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 23:54:21 -0700 (PDT)
X-Received: by 2002:a1c:a54a:: with SMTP id o71mr2230059wme.51.1568703260882; 
 Mon, 16 Sep 2019 23:54:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190914135100.327412-1-jernej.skrabec@siol.net>
In-Reply-To: <20190914135100.327412-1-jernej.skrabec@siol.net>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 17 Sep 2019 14:54:08 +0800
X-Gmail-Original-Message-ID: <CAGb2v640R7edA3EJvC=aJQZXGcfqot50O3-PFyrYj767pUEYrQ@mail.gmail.com>
Message-ID: <CAGb2v640R7edA3EJvC=aJQZXGcfqot50O3-PFyrYj767pUEYrQ@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH] clk: sunxi-ng: h6: Use sigma-delta
 modulation for audio PLL
To: Jernej Skrabec <jernej.skrabec@siol.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_235427_868409_DE991668 
X-CRM114-Status: GOOD (  27.12  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Stephen Boyd <sboyd@kernel.org>, Mike Turquette <mturquette@baylibre.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-clk <linux-clk@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Sep 14, 2019 at 9:51 PM Jernej Skrabec <jernej.skrabec@siol.net> wrote:
>
> Audio devices needs exact clock rates in order to correctly reproduce
> the sound. Until now, only integer factors were used to configure H6
> audio PLL which resulted in inexact rates. Fix that by adding support
> for fractional factors using sigma-delta modulation look-up table. It
> contains values for two most commonly used audio base frequencies.
>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  drivers/clk/sunxi-ng/ccu-sun50i-h6.c | 21 +++++++++++++++------
>  1 file changed, 15 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/clk/sunxi-ng/ccu-sun50i-h6.c b/drivers/clk/sunxi-ng/ccu-sun50i-h6.c
> index d89353a3cdec..ed6338d74474 100644
> --- a/drivers/clk/sunxi-ng/ccu-sun50i-h6.c
> +++ b/drivers/clk/sunxi-ng/ccu-sun50i-h6.c
> @@ -203,12 +203,21 @@ static struct ccu_nkmp pll_hsic_clk = {
>   * hardcode it to match with the clock names.
>   */
>  #define SUN50I_H6_PLL_AUDIO_REG                0x078
> +
> +static struct ccu_sdm_setting pll_audio_sdm_table[] = {
> +       { .rate = 541900800, .pattern = 0xc001288d, .m = 1, .n = 22 },
> +       { .rate = 589824000, .pattern = 0xc00126e9, .m = 1, .n = 24 },
> +};
> +
>  static struct ccu_nm pll_audio_base_clk = {
>         .enable         = BIT(31),
>         .lock           = BIT(28),
>         .n              = _SUNXI_CCU_MULT_MIN(8, 8, 12),
>         .m              = _SUNXI_CCU_DIV(1, 1), /* input divider */
> +       .sdm            = _SUNXI_CCU_SDM(pll_audio_sdm_table,
> +                                        BIT(24), 0x178, BIT(31)),
>         .common         = {
> +               .features       = CCU_FEATURE_SIGMA_DELTA_MOD,
>                 .reg            = 0x078,
>                 .hw.init        = CLK_HW_INIT("pll-audio-base", "osc24M",
>                                               &ccu_nm_ops,
> @@ -753,12 +762,12 @@ static const struct clk_hw *clk_parent_pll_audio[] = {
>  };
>
>  /*
> - * The divider of pll-audio is fixed to 8 now, as pll-audio-4x has a
> - * fixed post-divider 2.
> + * The divider of pll-audio is fixed to 24 for now, so 24576000 and 22579200
> + * rates can be set exactly in conjunction with sigma-delta modulation.
>   */
>  static CLK_FIXED_FACTOR_HWS(pll_audio_clk, "pll-audio",
>                             clk_parent_pll_audio,
> -                           8, 1, CLK_SET_RATE_PARENT);
> +                           24, 1, CLK_SET_RATE_PARENT);
>  static CLK_FIXED_FACTOR_HWS(pll_audio_2x_clk, "pll-audio-2x",
>                             clk_parent_pll_audio,
>                             4, 1, CLK_SET_RATE_PARENT);

You need to fix the factors for the other two outputs as well, since all
three are derived from pll-audio-base.

ChenYu

> @@ -1215,12 +1224,12 @@ static int sun50i_h6_ccu_probe(struct platform_device *pdev)
>         }
>
>         /*
> -        * Force the post-divider of pll-audio to 8 and the output divider
> -        * of it to 1, to make the clock name represents the real frequency.
> +        * Force the post-divider of pll-audio to 12 and the output divider
> +        * of it to 2, so 24576000 and 22579200 rates can be set exactly.
>          */
>         val = readl(reg + SUN50I_H6_PLL_AUDIO_REG);
>         val &= ~(GENMASK(21, 16) | BIT(0));
> -       writel(val | (7 << 16), reg + SUN50I_H6_PLL_AUDIO_REG);
> +       writel(val | (11 << 16) | BIT(0), reg + SUN50I_H6_PLL_AUDIO_REG);
>
>         /*
>          * First clock parent (osc32K) is unusable for CEC. But since there
> --
> 2.23.0
>
> --
> You received this message because you are subscribed to the Google Groups "linux-sunxi" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to linux-sunxi+unsubscribe@googlegroups.com.
> To view this discussion on the web, visit https://groups.google.com/d/msgid/linux-sunxi/20190914135100.327412-1-jernej.skrabec%40siol.net.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
