Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D16FD340C4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 09:54:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NsJsmPSQib5nmPxUhynYyexeVKKaWYwtQqDAA6AzNto=; b=unYua+ZO/c6OEq
	Hak6C02k0HZ6co4nIewlTKWwwOBUiq4LHC4ANTxkj/xY0Ay81OAw+eWoymALWxTqQv4ooHSYNBK7S
	EI4HNvcgVd+AwDqFvVOKp9+GfnXtliLZ1sNF9aBgLlBsD1DI4ahvWIZOP5+gRAXwXccCi512J91Jw
	YeLfVhJ+nz64Ou9uQIn2OmR+ycOxDnK9CwvBom5tMdYGLuwIhTxFJRfJ95icnRqqRh6X4qNp9JSSU
	ev7u0DZW+P55LmuMxGSCmfHh1q0ggyhJCuQ02XEDQ7LTBMnjdKmwPjNCPpPzWzZTDl1NAXa/Lm5gQ
	sV/NO3VZG1UfaAflQDSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY4Gl-0005sz-C1; Tue, 04 Jun 2019 07:54:07 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY4Gd-0005sS-0H
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 07:54:00 +0000
Received: by mail-ed1-f66.google.com with SMTP id r18so29651508edo.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 00:53:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aB9PHKPiyzkndYybRF10NmFg3rVLDNHgbfKcERc7zQk=;
 b=rWN2YQ3nCbejHXKkLs2nxCATOoNxEzBi/ckC6B9eIuuKbyQ6ipTVZ0umaKrgPVje8M
 EBrD84xvgmwX97meoszentqrNsUBMRInj2ug0l5td5zJEV/Ux7yZJZWGuvLSjIOuejMq
 +2YtNeGGwEOInZxr/MmqqLweZ2mphnCA2vwcQzrJ+Ba9F1NGQ2EHh1oxyQ38bf819MGz
 cRH3Ggcm4b/tUrDVup4mmFpt8Hy0CaivEdd0GD/7gSfEcddl36D7lHHY98mHPAvvymKK
 WOpQ6xF93xIK7Twn1ZaA9QsFvfwmqC5zyFIxYrYOrisQEx243GoaNSVGEw8urnQakdki
 fbJQ==
X-Gm-Message-State: APjAAAXKxSQamkWzODxS/VQcSaL1RoswhECxgQvcUzdHC10HOMRoZ3nX
 XMK4bPeTkNrk5ms7gA77rhTGtzbZC18=
X-Google-Smtp-Source: APXvYqxvFQ8A04VMhL0WJ5eYE9gO/RP/zImNQoEGRgApzh+vvEkk/HKlH8PpLWGKx7k7TmeLVs5GnQ==
X-Received: by 2002:a50:e611:: with SMTP id y17mr33809435edm.222.1559634837183; 
 Tue, 04 Jun 2019 00:53:57 -0700 (PDT)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com.
 [209.85.128.48])
 by smtp.gmail.com with ESMTPSA id m12sm3014077ejr.19.2019.06.04.00.53.56
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Jun 2019 00:53:56 -0700 (PDT)
Received: by mail-wm1-f48.google.com with SMTP id f204so9743137wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 00:53:56 -0700 (PDT)
X-Received: by 2002:a1c:3942:: with SMTP id g63mr15671103wma.61.1559634836417; 
 Tue, 04 Jun 2019 00:53:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190603174735.21002-1-codekipper@gmail.com>
 <20190603174735.21002-4-codekipper@gmail.com>
In-Reply-To: <20190603174735.21002-4-codekipper@gmail.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 4 Jun 2019 15:53:46 +0800
X-Gmail-Original-Message-ID: <CAGb2v65vfQEiXYN6rvdfP6rAvXRVTAnCzxEgpjsJAkDJ16Y+rg@mail.gmail.com>
Message-ID: <CAGb2v65vfQEiXYN6rvdfP6rAvXRVTAnCzxEgpjsJAkDJ16Y+rg@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH v4 3/9] ASoC: sun4i-i2s: Add regmap field to
 sign extend sample
To: Code Kipper <codekipper@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_005359_156986_E8A2BD77 
X-CRM114-Status: GOOD (  26.65  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
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
Cc: Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 "Andrea Venturi \(pers\)" <be17068@iperbole.bo.it>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Mark Brown <broonie@kernel.org>,
 Maxime Ripard <maxime.ripard@free-electrons.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 4, 2019 at 1:47 AM <codekipper@gmail.com> wrote:
>
> From: Marcus Cooper <codekipper@gmail.com>
>
> On the newer SoCs this is set by default to transfer a 0 after
> each sample in each slot. However the platform that this driver
> was developed on had the default setting where it padded the
> audio gain with zeros. This isn't a problem whilst we have only
> support for 16bit audio but with larger sample resolution rates
> in the pipeline then it should be fixed to also pad. Without this
> the audio gets distorted.

Curious, both the A10 and A20 manuals say the default value for this
field is 0, which means 0 padding.

sun4i_i2s_reg_defaults[] also has that field set to 0.

You're saying you are seeing the field set to 1?

ChenYu

> Signed-off-by: Marcus Cooper <codekipper@gmail.com>
> ---
>  sound/soc/sunxi/sun4i-i2s.c | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
>
> diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
> index fd7c37596f21..e2961d8f6e8c 100644
> --- a/sound/soc/sunxi/sun4i-i2s.c
> +++ b/sound/soc/sunxi/sun4i-i2s.c
> @@ -134,6 +134,7 @@
>   * @field_fmt_bclk: regmap field to set clk polarity.
>   * @field_fmt_lrclk: regmap field to set frame polarity.
>   * @field_fmt_mode: regmap field to set the operational mode.
> + * @field_fmt_sext: regmap field to set the sign extension.
>   * @field_txchanmap: location of the tx channel mapping register.
>   * @field_rxchanmap: location of the rx channel mapping register.
>   * @field_txchansel: location of the tx channel select bit fields.
> @@ -159,6 +160,7 @@ struct sun4i_i2s_quirks {
>         struct reg_field                field_fmt_bclk;
>         struct reg_field                field_fmt_lrclk;
>         struct reg_field                field_fmt_mode;
> +       struct reg_field                field_fmt_sext;
>         struct reg_field                field_txchanmap;
>         struct reg_field                field_rxchanmap;
>         struct reg_field                field_txchansel;
> @@ -183,6 +185,7 @@ struct sun4i_i2s {
>         struct regmap_field     *field_fmt_bclk;
>         struct regmap_field     *field_fmt_lrclk;
>         struct regmap_field     *field_fmt_mode;
> +       struct regmap_field     *field_fmt_sext;
>         struct regmap_field     *field_txchanmap;
>         struct regmap_field     *field_rxchanmap;
>         struct regmap_field     *field_txchansel;
> @@ -342,6 +345,9 @@ static int sun4i_i2s_set_clk_rate(struct snd_soc_dai *dai,
>                                    SUN8I_I2S_FMT0_LRCK_PERIOD_MASK,
>                                    SUN8I_I2S_FMT0_LRCK_PERIOD(32));
>
> +       /* Set sign extension to pad out LSB with 0 */
> +       regmap_field_write(i2s->field_fmt_sext, 0);
> +
>         return 0;
>  }
>
> @@ -887,6 +893,7 @@ static const struct sun4i_i2s_quirks sun4i_a10_i2s_quirks = {
>         .field_fmt_lrclk        = REG_FIELD(SUN4I_I2S_FMT0_REG, 7, 7),
>         .has_slave_select_bit   = true,
>         .field_fmt_mode         = REG_FIELD(SUN4I_I2S_FMT0_REG, 0, 1),
> +       .field_fmt_sext         = REG_FIELD(SUN4I_I2S_FMT1_REG, 8, 8),
>         .field_txchanmap        = REG_FIELD(SUN4I_I2S_TX_CHAN_MAP_REG, 0, 31),
>         .field_rxchanmap        = REG_FIELD(SUN4I_I2S_RX_CHAN_MAP_REG, 0, 31),
>         .field_txchansel        = REG_FIELD(SUN4I_I2S_TX_CHAN_SEL_REG, 0, 2),
> @@ -904,6 +911,7 @@ static const struct sun4i_i2s_quirks sun6i_a31_i2s_quirks = {
>         .field_fmt_lrclk        = REG_FIELD(SUN4I_I2S_FMT0_REG, 7, 7),
>         .has_slave_select_bit   = true,
>         .field_fmt_mode         = REG_FIELD(SUN4I_I2S_FMT0_REG, 0, 1),
> +       .field_fmt_sext         = REG_FIELD(SUN4I_I2S_FMT1_REG, 8, 8),
>         .field_txchanmap        = REG_FIELD(SUN4I_I2S_TX_CHAN_MAP_REG, 0, 31),
>         .field_rxchanmap        = REG_FIELD(SUN4I_I2S_RX_CHAN_MAP_REG, 0, 31),
>         .field_txchansel        = REG_FIELD(SUN4I_I2S_TX_CHAN_SEL_REG, 0, 2),
> @@ -944,6 +952,7 @@ static const struct sun4i_i2s_quirks sun8i_h3_i2s_quirks = {
>         .field_fmt_bclk         = REG_FIELD(SUN4I_I2S_FMT0_REG, 7, 7),
>         .field_fmt_lrclk        = REG_FIELD(SUN4I_I2S_FMT0_REG, 19, 19),
>         .field_fmt_mode         = REG_FIELD(SUN4I_I2S_CTRL_REG, 4, 5),
> +       .field_fmt_sext         = REG_FIELD(SUN4I_I2S_FMT1_REG, 4, 5),
>         .field_txchanmap        = REG_FIELD(SUN8I_I2S_TX_CHAN_MAP_REG, 0, 31),
>         .field_rxchanmap        = REG_FIELD(SUN8I_I2S_RX_CHAN_MAP_REG, 0, 31),
>         .field_txchansel        = REG_FIELD(SUN8I_I2S_TX_CHAN_SEL_REG, 0, 2),
> @@ -1006,6 +1015,12 @@ static int sun4i_i2s_init_regmap_fields(struct device *dev,
>         if (IS_ERR(i2s->field_fmt_mode))
>                 return PTR_ERR(i2s->field_fmt_mode);
>
> +       i2s->field_fmt_sext =
> +                       devm_regmap_field_alloc(dev, i2s->regmap,
> +                                               i2s->variant->field_fmt_sext);
> +       if (IS_ERR(i2s->field_fmt_sext))
> +               return PTR_ERR(i2s->field_fmt_sext);
> +
>         i2s->field_txchanmap =
>                         devm_regmap_field_alloc(dev, i2s->regmap,
>                                                 i2s->variant->field_txchanmap);
> --
> 2.21.0
>
> --
> You received this message because you are subscribed to the Google Groups "linux-sunxi" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to linux-sunxi+unsubscribe@googlegroups.com.
> To view this discussion on the web, visit https://groups.google.com/d/msgid/linux-sunxi/20190603174735.21002-4-codekipper%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
