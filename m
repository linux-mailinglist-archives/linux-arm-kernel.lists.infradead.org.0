Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 469D7345CE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 13:46:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+NAyB1GBijwT3GSTBjkGScZs5u54/UIqphEX8CmZI0U=; b=LJPFvLby8EaPZO
	iCqAKw7PNmJEfZ8mrXiMz/ULpmentuw7M7sl6bhIusdalZDoXmTZffLomeW8+BwK5hFvs4N0hSYyK
	gPNKB4z617MM8nlRspPTyd2miDZtoVkPbcrjUAWYM8toW0F22oSnEZynXhjCy+r7HqZo7pmqbDJLc
	GPp+COgld7xHFiNFVccnIHLVrCznje2kIC9nWxg4XYbVcdYFOeBCxwJ+vuqWlt7o1krefn1zIjONA
	C7ZqYw0hQZSFl2vk1jwOwl6gAHqrV0pIm9IKlppyEpfwDYmCwWLFASIfuWB9PyCtIkU4kbWTxr6TG
	4MHce3NxLKzwlo/Jk8gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY7to-0000bI-4X; Tue, 04 Jun 2019 11:46:40 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY7th-0000ae-6l
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 11:46:34 +0000
Received: by mail-lj1-x242.google.com with SMTP id o13so19352985lji.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 04:46:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tAJHzdtoUHBGcl/ayUBAfIA8bNQX6pMqdoZW2RgjLw8=;
 b=MxfJmMNaRkzihyUPNF6atM911sUNuCUizSvuv0oNDUFV9WWwPX5jZbwllidOdbgwqn
 hOHRyselYkHjWCb/JyFMvF7EqwgpFXr8lIgi7xJfZHfoe9YWACUt8sGeE0puDLvSMKlE
 WHFUVnSDjfz0ftC5hCi/mA61LuFFITvuBoe2Zc4BZx/w1zGQ4+bgjyVhdYTnHjYnEY6o
 Ef0w1M+5NW7rWY/ziXa2+JlNNUhOMnozExj0lTimQGQPkMV7qKREFbl1+P0LUO8JwiVl
 WuOWgEOGza80fOa0AATy0POyWYX/pbm9CPz1gBqjz6r9bKAZYMBUte/5EKE3SM3cResT
 riBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tAJHzdtoUHBGcl/ayUBAfIA8bNQX6pMqdoZW2RgjLw8=;
 b=GmcouLRuR9QIDGGM2B+wcYJyJTPOQdjhQHbJurQx0LKdnKxZHVRZqrekWga9fTmHEt
 Wzxw0i3mxd50i2FqvY2Gnvdmu9PcudY4s0HIld++6+uc8tVsC1rlOi6+fp2FH5xNvZl+
 on3rrjGGJy/xvqZWhFilyOnQG/JDTlj65wsRWh5BWUEqQiQ2yCJj1jZxf713+lBzUQZs
 n53yljWANxfWS9mHC1o38EfCg9+wmr/5STkaksFDJyX7VZvAXOfA1sEHB5MXyC5+VHJN
 +s+T3+Ul6fVIE6crd4pi7603RKPCIBxbXxIQNrAE/d1rrkytnX4Hc6jJ4qfumJ/aNxj5
 N32A==
X-Gm-Message-State: APjAAAVPxrksXn/+eAVTD4/AvrM7Lzm1Ks1zNF9CqzQdCxdXGcJIe3RA
 kY9oFeX/rCfXgA8BWxwwZsjwMzMGOECmwRg0304=
X-Google-Smtp-Source: APXvYqxETLRosCoZ7Yw7GzrbRjReXddCRP3sa4I467L9SGwoKgWaLtcI36oqbAY+jJUssD7dP9zolGJjPLweS4I39JM=
X-Received: by 2002:a2e:5b1b:: with SMTP id p27mr7121973ljb.97.1559648789873; 
 Tue, 04 Jun 2019 04:46:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190603174735.21002-1-codekipper@gmail.com>
 <20190603174735.21002-4-codekipper@gmail.com>
 <CAGb2v65vfQEiXYN6rvdfP6rAvXRVTAnCzxEgpjsJAkDJ16Y+rg@mail.gmail.com>
In-Reply-To: <CAGb2v65vfQEiXYN6rvdfP6rAvXRVTAnCzxEgpjsJAkDJ16Y+rg@mail.gmail.com>
From: Code Kipper <codekipper@gmail.com>
Date: Tue, 4 Jun 2019 13:46:17 +0200
Message-ID: <CAEKpxBme2KTNrtb3GpB+UPF5LHbj=iqngu5jrYpFecCZ9d8Whw@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH v4 3/9] ASoC: sun4i-i2s: Add regmap field to
 sign extend sample
To: Chen-Yu Tsai <wens@csie.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_044633_272001_6D733AE7 
X-CRM114-Status: GOOD (  28.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (codekipper[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Tue, 4 Jun 2019 at 09:53, Chen-Yu Tsai <wens@csie.org> wrote:
>
> On Tue, Jun 4, 2019 at 1:47 AM <codekipper@gmail.com> wrote:
> >
> > From: Marcus Cooper <codekipper@gmail.com>
> >
> > On the newer SoCs this is set by default to transfer a 0 after
> > each sample in each slot. However the platform that this driver
> > was developed on had the default setting where it padded the
> > audio gain with zeros. This isn't a problem whilst we have only
> > support for 16bit audio but with larger sample resolution rates
> > in the pipeline then it should be fixed to also pad. Without this
> > the audio gets distorted.
>
> Curious, both the A10 and A20 manuals say the default value for this
> field is 0, which means 0 padding.
>
> sun4i_i2s_reg_defaults[] also has that field set to 0.
>
> You're saying you are seeing the field set to 1?

On the newer SoCs (H3 onwards) this setting defaults to 3 which is
"Transfer 0 after each sample in each slot" which resulted in distortion.
Setting SEXT to 0 "Zeros or audio gain padding at LSB" alligns the
setup with that of the earlier block and fixed the issue we were hearing.
It's really noticeable with HDMI audio.
BR,
CK
>
> ChenYu
>
> > Signed-off-by: Marcus Cooper <codekipper@gmail.com>
> > ---
> >  sound/soc/sunxi/sun4i-i2s.c | 15 +++++++++++++++
> >  1 file changed, 15 insertions(+)
> >
> > diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
> > index fd7c37596f21..e2961d8f6e8c 100644
> > --- a/sound/soc/sunxi/sun4i-i2s.c
> > +++ b/sound/soc/sunxi/sun4i-i2s.c
> > @@ -134,6 +134,7 @@
> >   * @field_fmt_bclk: regmap field to set clk polarity.
> >   * @field_fmt_lrclk: regmap field to set frame polarity.
> >   * @field_fmt_mode: regmap field to set the operational mode.
> > + * @field_fmt_sext: regmap field to set the sign extension.
> >   * @field_txchanmap: location of the tx channel mapping register.
> >   * @field_rxchanmap: location of the rx channel mapping register.
> >   * @field_txchansel: location of the tx channel select bit fields.
> > @@ -159,6 +160,7 @@ struct sun4i_i2s_quirks {
> >         struct reg_field                field_fmt_bclk;
> >         struct reg_field                field_fmt_lrclk;
> >         struct reg_field                field_fmt_mode;
> > +       struct reg_field                field_fmt_sext;
> >         struct reg_field                field_txchanmap;
> >         struct reg_field                field_rxchanmap;
> >         struct reg_field                field_txchansel;
> > @@ -183,6 +185,7 @@ struct sun4i_i2s {
> >         struct regmap_field     *field_fmt_bclk;
> >         struct regmap_field     *field_fmt_lrclk;
> >         struct regmap_field     *field_fmt_mode;
> > +       struct regmap_field     *field_fmt_sext;
> >         struct regmap_field     *field_txchanmap;
> >         struct regmap_field     *field_rxchanmap;
> >         struct regmap_field     *field_txchansel;
> > @@ -342,6 +345,9 @@ static int sun4i_i2s_set_clk_rate(struct snd_soc_dai *dai,
> >                                    SUN8I_I2S_FMT0_LRCK_PERIOD_MASK,
> >                                    SUN8I_I2S_FMT0_LRCK_PERIOD(32));
> >
> > +       /* Set sign extension to pad out LSB with 0 */
> > +       regmap_field_write(i2s->field_fmt_sext, 0);
> > +
> >         return 0;
> >  }
> >
> > @@ -887,6 +893,7 @@ static const struct sun4i_i2s_quirks sun4i_a10_i2s_quirks = {
> >         .field_fmt_lrclk        = REG_FIELD(SUN4I_I2S_FMT0_REG, 7, 7),
> >         .has_slave_select_bit   = true,
> >         .field_fmt_mode         = REG_FIELD(SUN4I_I2S_FMT0_REG, 0, 1),
> > +       .field_fmt_sext         = REG_FIELD(SUN4I_I2S_FMT1_REG, 8, 8),
> >         .field_txchanmap        = REG_FIELD(SUN4I_I2S_TX_CHAN_MAP_REG, 0, 31),
> >         .field_rxchanmap        = REG_FIELD(SUN4I_I2S_RX_CHAN_MAP_REG, 0, 31),
> >         .field_txchansel        = REG_FIELD(SUN4I_I2S_TX_CHAN_SEL_REG, 0, 2),
> > @@ -904,6 +911,7 @@ static const struct sun4i_i2s_quirks sun6i_a31_i2s_quirks = {
> >         .field_fmt_lrclk        = REG_FIELD(SUN4I_I2S_FMT0_REG, 7, 7),
> >         .has_slave_select_bit   = true,
> >         .field_fmt_mode         = REG_FIELD(SUN4I_I2S_FMT0_REG, 0, 1),
> > +       .field_fmt_sext         = REG_FIELD(SUN4I_I2S_FMT1_REG, 8, 8),
> >         .field_txchanmap        = REG_FIELD(SUN4I_I2S_TX_CHAN_MAP_REG, 0, 31),
> >         .field_rxchanmap        = REG_FIELD(SUN4I_I2S_RX_CHAN_MAP_REG, 0, 31),
> >         .field_txchansel        = REG_FIELD(SUN4I_I2S_TX_CHAN_SEL_REG, 0, 2),
> > @@ -944,6 +952,7 @@ static const struct sun4i_i2s_quirks sun8i_h3_i2s_quirks = {
> >         .field_fmt_bclk         = REG_FIELD(SUN4I_I2S_FMT0_REG, 7, 7),
> >         .field_fmt_lrclk        = REG_FIELD(SUN4I_I2S_FMT0_REG, 19, 19),
> >         .field_fmt_mode         = REG_FIELD(SUN4I_I2S_CTRL_REG, 4, 5),
> > +       .field_fmt_sext         = REG_FIELD(SUN4I_I2S_FMT1_REG, 4, 5),
> >         .field_txchanmap        = REG_FIELD(SUN8I_I2S_TX_CHAN_MAP_REG, 0, 31),
> >         .field_rxchanmap        = REG_FIELD(SUN8I_I2S_RX_CHAN_MAP_REG, 0, 31),
> >         .field_txchansel        = REG_FIELD(SUN8I_I2S_TX_CHAN_SEL_REG, 0, 2),
> > @@ -1006,6 +1015,12 @@ static int sun4i_i2s_init_regmap_fields(struct device *dev,
> >         if (IS_ERR(i2s->field_fmt_mode))
> >                 return PTR_ERR(i2s->field_fmt_mode);
> >
> > +       i2s->field_fmt_sext =
> > +                       devm_regmap_field_alloc(dev, i2s->regmap,
> > +                                               i2s->variant->field_fmt_sext);
> > +       if (IS_ERR(i2s->field_fmt_sext))
> > +               return PTR_ERR(i2s->field_fmt_sext);
> > +
> >         i2s->field_txchanmap =
> >                         devm_regmap_field_alloc(dev, i2s->regmap,
> >                                                 i2s->variant->field_txchanmap);
> > --
> > 2.21.0
> >
> > --
> > You received this message because you are subscribed to the Google Groups "linux-sunxi" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to linux-sunxi+unsubscribe@googlegroups.com.
> > To view this discussion on the web, visit https://groups.google.com/d/msgid/linux-sunxi/20190603174735.21002-4-codekipper%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
