Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C3F9E4EC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 11:53:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rFecbNEHIPNs6bTlXNLW2xHUbl2qvfIdsNxxD78A/FM=; b=s/E+MQ7d0hXpFA
	4G0Q/CViD4i/xPwW6TR/Cc5idLo4oCbee2dl/tz704ZLkigZW3Nc7RKnaA6N0uHrke4p5u4BbhbVJ
	ZpQKEj/i89vdY/1UHhRpfokKetdZKGf+1Z98ZIN4ACXU8yZQNzaMyGXWe+TkgS9SWz8hYBkqQ1//0
	Yq9tXIkpkVRmw3g6G6vvWAlznqaBDg7l+c79bo1OiXNVnu76st2gn470AFMbx9aRSnctQdkyO9O7M
	gF1ZIGyk440YLRem8+mOwbfQoa0LIcK6rmEgwH7qmlRDj6VlEC4cFWAu/it580qRcmuW4fFijeHZS
	Sya7zt+VJIQ0lacWMFWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Y9u-00076I-0Q; Tue, 27 Aug 2019 09:53:02 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Y96-0006VV-Rk
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 09:52:14 +0000
Received: by mail-ed1-f65.google.com with SMTP id m44so30522269edd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 02:52:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rc+av+2pK1nD1xvCN1Qm/YJr4PtOyial+kNBUV8i24U=;
 b=JUj9/ZHDUcN23lsxMV6WMOrdXx0G4X7sYyAnf/DT/fx1s33ndsyMTxax9UMvrzu2zV
 wZxSCJkdVhYL9K4Be/zyzzugyQYnKU7I+qLXWuKb8nUtUM66ihSPavQlIjC9MRsfk87h
 tO5cR3TB0zaSc6yVeHEdm5U7sZz/CqbyzROyUdH/7H3k+r0mH5rYYiK/PVACcM9A+YlE
 nMqM+e9aU/bAjiBHruh2oym34TOOv/0qcz/xuloiuUEhgrVAyUDg7N6QTEMH5wPdCyBW
 LADkq9vUt1Z1djnjeIEiP7XNvS0iTBRvZ91Yw8oXotVcGLboHffjuU9Je9GXydngVX56
 GPvw==
X-Gm-Message-State: APjAAAVYgu0QJp4MxZfVOv1dOXfpv7E5ndxwcHmJJ+8IbWcAa5COkEA/
 T5FEenu51CZvQJqx2/9g74k6uxGuXXc=
X-Google-Smtp-Source: APXvYqxayT0eDwtrKX6+EWGYkQ3Ge0Q7Ce2ZpEwc/QYVc9O4isLyHVvvxes+oXJc3mgwECwJHrNatA==
X-Received: by 2002:a17:906:b203:: with SMTP id
 p3mr20428080ejz.223.1566899531029; 
 Tue, 27 Aug 2019 02:52:11 -0700 (PDT)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com.
 [209.85.128.41])
 by smtp.gmail.com with ESMTPSA id u26sm1866376eda.22.2019.08.27.02.52.10
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 27 Aug 2019 02:52:10 -0700 (PDT)
Received: by mail-wm1-f41.google.com with SMTP id g67so2331303wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 02:52:10 -0700 (PDT)
X-Received: by 2002:a1c:4c06:: with SMTP id z6mr26674457wmf.47.1566899530466; 
 Tue, 27 Aug 2019 02:52:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190827093206.17919-1-mripard@kernel.org>
 <20190827093206.17919-2-mripard@kernel.org>
In-Reply-To: <20190827093206.17919-2-mripard@kernel.org>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 27 Aug 2019 17:51:59 +0800
X-Gmail-Original-Message-ID: <CAGb2v64u+Q87woZpVbRLfwn=ocbx9QJeANYiALZ7x7rdDFXc=w@mail.gmail.com>
Message-ID: <CAGb2v64u+Q87woZpVbRLfwn=ocbx9QJeANYiALZ7x7rdDFXc=w@mail.gmail.com>
Subject: Re: [PATCH 2/2] ASoC: sun4i: Revert A83t description
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_025213_069985_B3DDCE5E 
X-CRM114-Status: GOOD (  19.52  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux-ALSA <alsa-devel@alsa-project.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Code Kipper <codekipper@gmail.com>, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 27, 2019 at 5:32 PM Maxime Ripard <mripard@kernel.org> wrote:
>
> From: Maxime Ripard <maxime.ripard@bootlin.com>
>
> The last set of reworks included some fixes to change the A83t behaviour
> and "fix" it.
>
> It turns out that the controller described in the datasheet and the one
> supported here are not the same, yet the A83t has the two of them, and the
> one supported in the driver wasn't the one described in the datasheet.
>
> Fix this by reintroducing the proper quirks.
>
> Fixes: 69e450e50ca6 ("ASoC: sun4i-i2s: Fix the LRCK period on A83t")
> Fixes: bf943d527987 ("ASoC: sun4i-i2s: Fix MCLK Enable bit offset on A83t")
> Fixes: 2e04fc4dbf50 ("ASoC: sun4i-i2s: Fix WSS and SR fields for the A83t")
> Fixes: 515fcfbc7736 ("ASoC: sun4i-i2s: Fix LRCK and BCLK polarity offsets on newer SoCs")
> Fixes: c1d3a921d72b ("ASoC: sun4i-i2s: Fix the MCLK and BCLK dividers on newer SoCs")
> Fixes: fb19739d7f68 ("ASoC: sun4i-i2s: Use module clock as BCLK parent on newer SoCs")
> Fixes: 71137bcd0a9a ("ASoC: sun4i-i2s: Move the format configuration to a callback")
> Fixes: d70be625f25a ("ASoC: sun4i-i2s: Move the channel configuration to a callback")
> Reported-by: Chen-Yu Tsai <wens@csie.org>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  sound/soc/sunxi/sun4i-i2s.c | 24 ++++++++++++------------
>  1 file changed, 12 insertions(+), 12 deletions(-)
>
> diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
> index a6a3f772fdf0..498ceebd9135 100644
> --- a/sound/soc/sunxi/sun4i-i2s.c
> +++ b/sound/soc/sunxi/sun4i-i2s.c
> @@ -1106,18 +1106,18 @@ static const struct sun4i_i2s_quirks sun8i_a83t_i2s_quirks = {
>         .has_reset              = true,
>         .reg_offset_txdata      = SUN8I_I2S_FIFO_TX_REG,
>         .sun4i_i2s_regmap       = &sun4i_i2s_regmap_config,
> -       .field_clkdiv_mclk_en   = REG_FIELD(SUN4I_I2S_CLK_DIV_REG, 8, 8),
> -       .field_fmt_wss          = REG_FIELD(SUN4I_I2S_FMT0_REG, 0, 2),
> -       .field_fmt_sr           = REG_FIELD(SUN4I_I2S_FMT0_REG, 4, 6),
> -       .bclk_dividers          = sun8i_i2s_clk_div,
> -       .num_bclk_dividers      = ARRAY_SIZE(sun8i_i2s_clk_div),
> -       .mclk_dividers          = sun8i_i2s_clk_div,
> -       .num_mclk_dividers      = ARRAY_SIZE(sun8i_i2s_clk_div),
> -       .get_bclk_parent_rate   = sun8i_i2s_get_bclk_parent_rate,
> -       .get_sr                 = sun8i_i2s_get_sr_wss,
> -       .get_wss                = sun8i_i2s_get_sr_wss,
> -       .set_chan_cfg           = sun8i_i2s_set_chan_cfg,
> -       .set_fmt                = sun8i_i2s_set_soc_fmt,
> +       .field_clkdiv_mclk_en   = REG_FIELD(SUN4I_I2S_CLK_DIV_REG, 7, 7),
> +       .field_fmt_wss          = REG_FIELD(SUN4I_I2S_FMT0_REG, 2, 3),
> +       .field_fmt_sr           = REG_FIELD(SUN4I_I2S_FMT0_REG, 4, 5),
> +       .bclk_dividers          = sun4i_i2s_bclk_div,
> +       .num_bclk_dividers      = ARRAY_SIZE(sun4i_i2s_bclk_div),
> +       .mclk_dividers          = sun4i_i2s_mclk_div,
> +       .num_mclk_dividers      = ARRAY_SIZE(sun4i_i2s_mclk_div),
> +       .get_bclk_parent_rate   = sun4i_i2s_get_bclk_parent_rate,
> +       .get_sr                 = sun4i_i2s_get_sr_wss,
> +       .get_wss                = sun4i_i2s_get_sr_wss,

You want sun4i_i2s_get_sr and sun4i_i2s_get_wss here.

Otherwise, with both patches applied, I2S on the A83T returns to normal.

Tested-by: Chen-Yu Tsai <wens@csie.org>

on the Bananapi-M3 with a PiFi DAC v2.0 (has PCM5122) connected.
16bit stereo 44.1kHz, 48kHz, and 96kHz samples tested.

> +       .set_chan_cfg           = sun4i_i2s_set_chan_cfg,
> +       .set_fmt                = sun4i_i2s_set_soc_fmt,
>  };
>
>  static const struct sun4i_i2s_quirks sun8i_h3_i2s_quirks = {
> --
> 2.21.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
