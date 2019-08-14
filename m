Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4CEF8D20F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 13:25:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wWKXgjyOZCj0iUvRWskmbLLJJvZfbC6VyPBkr5hRjYc=; b=pyHO8y0Opxqg0z
	inpZqKP2N6GooPeEuDDwbqSGWHFn9+LGWHm34+f0SB1K0eWkTCQHsIncd5EaRW/dhJuVGM2VD3YOi
	A6ABbYGnu8jovYK4TAzvDeSy6lXQsEbJW/yauwAZnr8/ldOGyIzzWECcA4Svn58449UmSYtTizmHV
	o5XAw+3B9xQ8j+tAQ0Gk+B7UeWOo8OfWyVCXpZTp0G7Yk8g0CLca8HmDDrVA8cwDV44DSglUdOjYy
	YEph8B8254UWjL+yPcCqDQxQkkJwA6cSgYmaW1/1YeE6VqP8mWFt+LtuHLUXZFq+su3lnEIzYrl5d
	Z8pZU+4C7uuKSa94UA2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxrOs-00066j-MZ; Wed, 14 Aug 2019 11:25:06 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxrOS-00066G-C5
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 11:24:42 +0000
Received: by mail-lj1-x244.google.com with SMTP id r9so104440744ljg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 04:24:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HUGbXBrBjsmS+Ai2+iPeBZiJZJaEtCScpBr1KbEOROc=;
 b=PkjU82I1Mi3dtcdhxyT5h+6hb39AQ7Nnc5myOYqUYUr53jt48ZbCascD3VQOPe2Smj
 I/9PI6CJfvkk2WhoN0gcrFQoW/LQM79KlXTQH+E+F1QCeDUggRHsl7nX2i9l3S/4MB2k
 OOw7gEQJZVJbWzTrNTaXGt31ef7zKCW5v9CUgEGFask9fTpgdMR0zEbCNF1BIFifTA7U
 xsaHsj8IHNtg+3SfpY/6bYIBAlgFWC1ovm+4vKdPYZ5NQp0OeK5kuO/cIzgqB7W3rFA9
 bFALrkGAmT8rc70l4IPUENm/VIr9YHIIldmT8r4ZTST4D8oF/DzX0+fU6TLOY6Cm3wZ5
 9yFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HUGbXBrBjsmS+Ai2+iPeBZiJZJaEtCScpBr1KbEOROc=;
 b=L3bDnJL5l7OsZDYwPBxx5yvfnswcCSHL6Q7XcgrQWpaonbXLVYrOaS9UK06vS3R8WA
 f8uDY7UCIJmA9gTKO9uHNGOzJ2xm50+cwyBSBjOaEJPTIAVYK+c60IqCqubsm6HZBaO8
 W8EWSFjrJoQDbwrwb9mCN3JdRhASbml2zDmIF4X4OlKf0VtWf87ln8JTzXkB7tVLIcRf
 d9RymIHXSkQzWg4OXzxCk/C7bRVfQ9sjLCXlDkZvVbsFxbNvxu551IqWGNVASIFCCm9B
 GtbGhfoclmXGRfn66VQgLy6nR/oAFoAyeV8osp+uc77ouPejRqbfrehym9Hr/I0sgDsl
 Sf3w==
X-Gm-Message-State: APjAAAUX7apWcR3yVUMFbX3fXrZ6yZqTUf2fRA6vkRr70PLXyqYKxtK4
 bMUa0V/tG/lV7gXgDukvMyn8s2WPL96tc+hgSEQ=
X-Google-Smtp-Source: APXvYqxgpEOi0jWRp6ACiKPS+q5uwzg9P1kAtJ9h5fBMJgydx1ovY5LAQpvUapPlQtRQlyypTZYcDEFB68Ahw1aBhyo=
X-Received: by 2002:a2e:720c:: with SMTP id n12mr997564ljc.53.1565781877676;
 Wed, 14 Aug 2019 04:24:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190814060854.26345-1-codekipper@gmail.com>
 <20190814060854.26345-2-codekipper@gmail.com>
 <20190814064339.lgfngdkiaalygolk@flea>
In-Reply-To: <20190814064339.lgfngdkiaalygolk@flea>
From: Code Kipper <codekipper@gmail.com>
Date: Wed, 14 Aug 2019 13:24:26 +0200
Message-ID: <CAEKpxBkDGFUQTZXKUda71P02n2f4eDHJS0D4DdgbQN_JJE10cQ@mail.gmail.com>
Subject: Re: [PATCH v5 01/15] ASoC: sun4i-i2s: Add regmap field to sign extend
 sample
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_042440_435349_3C92FE1B 
X-CRM114-Status: GOOD (  22.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (codekipper[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 "Andrea Venturi \(pers\)" <be17068@iperbole.bo.it>,
 Chen-Yu Tsai <wens@csie.org>, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 14 Aug 2019 at 13:08, Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> Hi,
>
> On Wed, Aug 14, 2019 at 08:08:40AM +0200, codekipper@gmail.com wrote:
> > From: Marcus Cooper <codekipper@gmail.com>
> >
> > On the newer SoCs such as the H3 and A64 this is set by default
> > to transfer a 0 after each sample in each slot. However the A10
> > and A20 SoCs that this driver was developed on had a default
> > setting where it padded the audio gain with zeros.
> >
> > This isn't a problem whilst we have only support for 16bit audio
> > but with larger sample resolution rates in the pipeline then SEXT
> > bits should be cleared so that they also pad at the LSB. Without
> > this the audio gets distorted.
> >
> > Signed-off-by: Marcus Cooper <codekipper@gmail.com>
> > ---
> >  sound/soc/sunxi/sun4i-i2s.c | 16 ++++++++++++++++
> >  1 file changed, 16 insertions(+)
> >
> > diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
> > index 793457394efe..8201334a059b 100644
> > --- a/sound/soc/sunxi/sun4i-i2s.c
> > +++ b/sound/soc/sunxi/sun4i-i2s.c
> > @@ -135,6 +135,7 @@ struct sun4i_i2s;
> >   * @field_fmt_bclk: regmap field to set clk polarity.
> >   * @field_fmt_lrclk: regmap field to set frame polarity.
> >   * @field_fmt_mode: regmap field to set the operational mode.
> > + * @field_fmt_sext: regmap field to set the sign extension.
> >   * @field_txchanmap: location of the tx channel mapping register.
> >   * @field_rxchanmap: location of the rx channel mapping register.
> >   * @field_txchansel: location of the tx channel select bit fields.
> > @@ -159,6 +160,7 @@ struct sun4i_i2s_quirks {
> >       struct reg_field                field_fmt_bclk;
> >       struct reg_field                field_fmt_lrclk;
> >       struct reg_field                field_fmt_mode;
> > +     struct reg_field                field_fmt_sext;
> >       struct reg_field                field_txchanmap;
> >       struct reg_field                field_rxchanmap;
> >       struct reg_field                field_txchansel;
> > @@ -186,6 +188,7 @@ struct sun4i_i2s {
> >       struct regmap_field     *field_fmt_bclk;
> >       struct regmap_field     *field_fmt_lrclk;
> >       struct regmap_field     *field_fmt_mode;
> > +     struct regmap_field     *field_fmt_sext;
> >       struct regmap_field     *field_txchanmap;
> >       struct regmap_field     *field_rxchanmap;
> >       struct regmap_field     *field_txchansel;
> > @@ -345,6 +348,9 @@ static int sun4i_i2s_set_clk_rate(struct snd_soc_dai *dai,
> >                                  SUN8I_I2S_FMT0_LRCK_PERIOD_MASK,
> >                                  SUN8I_I2S_FMT0_LRCK_PERIOD(32));
> >
> > +     /* Set sign extension to pad out LSB with 0 */
> > +     regmap_field_write(i2s->field_fmt_sext, 0);
> > +
> >       return 0;
> >  }
> >
> > @@ -917,6 +923,7 @@ static const struct sun4i_i2s_quirks sun4i_a10_i2s_quirks = {
> >       .field_fmt_lrclk        = REG_FIELD(SUN4I_I2S_FMT0_REG, 7, 7),
> >       .has_slave_select_bit   = true,
> >       .field_fmt_mode         = REG_FIELD(SUN4I_I2S_FMT0_REG, 0, 1),
> > +     .field_fmt_sext         = REG_FIELD(SUN4I_I2S_FMT1_REG, 8, 8),
> >       .field_txchanmap        = REG_FIELD(SUN4I_I2S_TX_CHAN_MAP_REG, 0, 31),
> >       .field_rxchanmap        = REG_FIELD(SUN4I_I2S_RX_CHAN_MAP_REG, 0, 31),
> >       .field_txchansel        = REG_FIELD(SUN4I_I2S_TX_CHAN_SEL_REG, 0, 2),
> > @@ -936,6 +943,7 @@ static const struct sun4i_i2s_quirks sun6i_a31_i2s_quirks = {
> >       .field_fmt_lrclk        = REG_FIELD(SUN4I_I2S_FMT0_REG, 7, 7),
> >       .has_slave_select_bit   = true,
> >       .field_fmt_mode         = REG_FIELD(SUN4I_I2S_FMT0_REG, 0, 1),
> > +     .field_fmt_sext         = REG_FIELD(SUN4I_I2S_FMT1_REG, 8, 8),
> >       .field_txchanmap        = REG_FIELD(SUN4I_I2S_TX_CHAN_MAP_REG, 0, 31),
> >       .field_rxchanmap        = REG_FIELD(SUN4I_I2S_RX_CHAN_MAP_REG, 0, 31),
> >       .field_txchansel        = REG_FIELD(SUN4I_I2S_TX_CHAN_SEL_REG, 0, 2),
> > @@ -979,6 +987,7 @@ static const struct sun4i_i2s_quirks sun8i_h3_i2s_quirks = {
> >       .field_fmt_bclk         = REG_FIELD(SUN4I_I2S_FMT0_REG, 7, 7),
> >       .field_fmt_lrclk        = REG_FIELD(SUN4I_I2S_FMT0_REG, 19, 19),
> >       .field_fmt_mode         = REG_FIELD(SUN4I_I2S_CTRL_REG, 4, 5),
> > +     .field_fmt_sext         = REG_FIELD(SUN4I_I2S_FMT1_REG, 4, 5),
> >       .field_txchanmap        = REG_FIELD(SUN8I_I2S_TX_CHAN_MAP_REG, 0, 31),
> >       .field_rxchanmap        = REG_FIELD(SUN8I_I2S_RX_CHAN_MAP_REG, 0, 31),
> >       .field_txchansel        = REG_FIELD(SUN8I_I2S_TX_CHAN_SEL_REG, 0, 2),
> > @@ -998,6 +1007,7 @@ static const struct sun4i_i2s_quirks sun50i_a64_codec_i2s_quirks = {
> >       .field_fmt_bclk         = REG_FIELD(SUN4I_I2S_FMT0_REG, 6, 6),
> >       .field_fmt_lrclk        = REG_FIELD(SUN4I_I2S_FMT0_REG, 7, 7),
> >       .field_fmt_mode         = REG_FIELD(SUN4I_I2S_FMT0_REG, 0, 1),
> > +     .field_fmt_sext         = REG_FIELD(SUN4I_I2S_FMT1_REG, 8, 8),
> >       .field_txchanmap        = REG_FIELD(SUN4I_I2S_TX_CHAN_MAP_REG, 0, 31),
> >       .field_rxchanmap        = REG_FIELD(SUN4I_I2S_RX_CHAN_MAP_REG, 0, 31),
> >       .field_txchansel        = REG_FIELD(SUN4I_I2S_TX_CHAN_SEL_REG, 0, 2),
>
> You're missing the A83t here

ARRGGGHHHHH...ACK...thanks,
CK
>
> Maxime
>
> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
