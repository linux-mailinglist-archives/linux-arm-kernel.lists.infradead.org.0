Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC0929DC57
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 06:13:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nXwHTjO9FcFZQ2StBInjbQN9Bqe9mxHU8o812n9o9U8=; b=QZFEf9S2jsdGq4
	EOgG+P2J8wU/JMiB3tdPaIemjO/UTG46U1yMSufGNqpdOFzS6aXiUNKFNBQZKlw/n0cb/t8j6lHf5
	ysYP/8Aa3YO45F7/eaoa/OUSDiwzrgR3OKVuMGe5cFWUPWwjqGnWdaeuUhBafVStiFAErnILdxa+l
	4CLniRuA5qfOXmshNBYeJKae2qVXJUai+XDsq7N1bKA1purbccxNtuXddnWI6lEFEOwyy1vtatYPx
	AhY7GPseqAR6C2cS3z9kdpKfHJk+k9NRHFF4zJI0ksiCPg4yOv4zmQg2ork6OmwBp5V8fq4Ns6JOo
	TGvVp3oT1Xmt7DwQuMWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2SrK-0006FG-5o; Tue, 27 Aug 2019 04:13:30 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Sr8-0006Da-JJ
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 04:13:20 +0000
Received: by mail-ed1-f66.google.com with SMTP id t50so29485981edd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 21:13:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=F5cHZyGdjYh3gEAKmcObYNldhgaeKgV4aSEBGnXJjJM=;
 b=E6mHYIZSuvuZcQqgfZOdp+vBjNENecvoeYn2RiGojtnUHFwJ+/JBUi5sdbhUdSCVGO
 6lql8iI8UVJKVl/hhklKna8wk9SlliHF/RNS4mK5Xa1oO0XPoKCYNr2nFBIYBUaXR6CZ
 k+yZa0WhLij2rh7arsvL5wkWSRBWy+B9HEqi448v0TFJqYotuB2IvPFKOeCbju7uHfhN
 yTpRqT+8utfTrxeLDWieym6IwAviPbMKb5NEmUu/0srLW08nqQVw4tOctYRFlbg17c+J
 GaHBvxvZZpSrO55yeeid551/whiU6b67lGYThdwDmBhvvau1PwoXJ0ebvj+5KcDgcKbt
 9l0w==
X-Gm-Message-State: APjAAAXSo5VY6/nkOJqFt/Nbo11mmZLkuHv3dcDNcdPUinYbxXHpMW8J
 BxeITKeN/3LAaYbMYZPl86MZ18GihP4=
X-Google-Smtp-Source: APXvYqz3RJpBJa37slmQX8Ok8HGaHlEGo4FC5eb0C+tglSN8mt0IsK3asggsaLhWRG9cohTfPetXbQ==
X-Received: by 2002:a50:bb42:: with SMTP id y60mr22403498ede.129.1566879196011; 
 Mon, 26 Aug 2019 21:13:16 -0700 (PDT)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com.
 [209.85.128.44])
 by smtp.gmail.com with ESMTPSA id h38sm1728551eda.58.2019.08.26.21.13.15
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 26 Aug 2019 21:13:15 -0700 (PDT)
Received: by mail-wm1-f44.google.com with SMTP id l2so1476724wmg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 21:13:15 -0700 (PDT)
X-Received: by 2002:a7b:c21a:: with SMTP id x26mr23286711wmi.61.1566879195343; 
 Mon, 26 Aug 2019 21:13:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190826180734.15801-1-codekipper@gmail.com>
 <20190826180734.15801-2-codekipper@gmail.com>
In-Reply-To: <20190826180734.15801-2-codekipper@gmail.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 27 Aug 2019 12:13:04 +0800
X-Gmail-Original-Message-ID: <CAGb2v651jVp+J2eyWh7vw-yHmFTVy4eaMjHV0FvOF17C5_Hswg@mail.gmail.com>
Message-ID: <CAGb2v651jVp+J2eyWh7vw-yHmFTVy4eaMjHV0FvOF17C5_Hswg@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH v6 1/3] ASoC: sun4i-i2s: incorrect regmap
 for A83T
To: Code Kipper <codekipper@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_211318_638775_3E6ABCD6 
X-CRM114-Status: GOOD (  23.83  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
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
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 "Andrea Venturi \(pers\)" <be17068@iperbole.bo.it>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 27, 2019 at 2:07 AM <codekipper@gmail.com> wrote:
>
> From: Marcus Cooper <codekipper@gmail.com>
>
> The regmap configuration is set up for the legacy block on the
> A83T whereas it uses the new block with a larger register map.

Looking at the code Allwinner previously released [1], that doesn't seem to be
the case. Keep in mind that the register map shown in the user manual is for
the TDM interface, which we don't actually support right now.

The file shows the base address as 0x01c22800, and the last defined register
is SUNXI_RXCHMAP at 0x3c.

The I2S driver [2] also shows that it is the old register map size, but with
TX_FIFO and INT_STA swapped around. This might mean that it would need a
separate regmap_config, as the read/write callbacks need to be changed to
fit the swapped registers.

Finally, the TDM driver [3], which matches the TDM section in the manual, shows
a larger register map.

A83T is SUN8IW6, while SUN8IW7 refers to the H3.

ChenYu

[1] https://github.com/allwinner-zh/linux-3.4-sunxi/blob/master/sound/soc/sunxi/hdmiaudio/sunxi-hdmipcm.h
[2] https://github.com/allwinner-zh/linux-3.4-sunxi/blob/master/sound/soc/sunxi/i2s0/sunxi-i2s0.h
[3] https://github.com/allwinner-zh/linux-3.4-sunxi/blob/master/sound/soc/sunxi/daudio0/sunxi-daudio0.h

> Fixes: 21faaea1343f ("ASoC: sun4i-i2s: Add support for A83T")
> Signed-off-by: Marcus Cooper <codekipper@gmail.com>
> ---
>  sound/soc/sunxi/sun4i-i2s.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
> index 57bf2a33753e..34575a8aa9f6 100644
> --- a/sound/soc/sunxi/sun4i-i2s.c
> +++ b/sound/soc/sunxi/sun4i-i2s.c
> @@ -1100,7 +1100,7 @@ static const struct sun4i_i2s_quirks sun6i_a31_i2s_quirks = {
>  static const struct sun4i_i2s_quirks sun8i_a83t_i2s_quirks = {
>         .has_reset              = true,
>         .reg_offset_txdata      = SUN8I_I2S_FIFO_TX_REG,
> -       .sun4i_i2s_regmap       = &sun4i_i2s_regmap_config,
> +       .sun4i_i2s_regmap       = &sun8i_i2s_regmap_config,
>         .field_clkdiv_mclk_en   = REG_FIELD(SUN4I_I2S_CLK_DIV_REG, 8, 8),
>         .field_fmt_wss          = REG_FIELD(SUN4I_I2S_FMT0_REG, 0, 2),
>         .field_fmt_sr           = REG_FIELD(SUN4I_I2S_FMT0_REG, 4, 6),
> --
> 2.23.0
>
> --
> You received this message because you are subscribed to the Google Groups "linux-sunxi" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to linux-sunxi+unsubscribe@googlegroups.com.
> To view this discussion on the web, visit https://groups.google.com/d/msgid/linux-sunxi/20190826180734.15801-2-codekipper%40gmail.com.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
