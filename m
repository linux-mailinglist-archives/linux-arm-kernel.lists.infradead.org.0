Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BDDA8D209
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 13:23:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x8eINC/BOOfMJ9+XlgE/jEOD26CUVS2yLLv/vgW1O6w=; b=O0Ujwty4f+ORFK
	tGFe9R1soNI8V8dJ2WhZNmiFj3l8zp8ughcnj1PlWPCmc8zQZq/Icoxhqg0Zs12Ia3v/4isphUPSt
	UJdLAojYEGxNoh3tK9zR3X5RXFmUpz1FtOuI3weT8oH5QbAHVmAJ/ACOQnSYy775kgn62nwi2419T
	jc6/XntDAkT3rvj3iHWR4wWEif9gsSCqnhrOZQheY8sejU8zrvCSlxC9a9nTvEse71UymPbxvhqtV
	EincuefAwjba8rBpEK7F6v9/M2Tnn4gZCllXqfCyShEuhVg/s7ouRwzSfuzM0lCV1HjpQoGz9d+N3
	FsMjyC0kqKzYrNHGVTDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxrNT-0005Yi-6k; Wed, 14 Aug 2019 11:23:39 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxrNG-0005YJ-NH
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 11:23:28 +0000
Received: by mail-lj1-x243.google.com with SMTP id e24so7742943ljg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 04:23:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7Hun0W4JYfFAPrSkp45isBz4yx0/DZ2zAS0iOxzO7EM=;
 b=suWxv8GWDTBmU5Xk5e3LWyUJlLUtY80UHPldQGlpSTJeoHqDpsxBzoy2wUAjqbVlfz
 bRfEeM95aPUA3oBquR/dZuy26/NkTEDJQTagJ466LJ6rOf83CDxzAQq+dkVQOcpFYU20
 ZoRpDVWSPVJJ7eAd8+H8HkxtkNNowgrxcgLGvaBJqqOG+NPM18n1M04Jh0eMpvjY0BSp
 1yWFD0wzgFHKo67q9f4piuJ7XuYiVIFwmsyjykWYl2Hw6MRs5w4FKUTsGxhEcgD++I93
 VJLW0RQ+EPYvLzkuvIstq4DAbA6a0a85TjlcPDrOWO88Qs3QKC2Z4gJUXTpX2ZchRemF
 xb+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7Hun0W4JYfFAPrSkp45isBz4yx0/DZ2zAS0iOxzO7EM=;
 b=PfNA9WzMeaMQhQiPMiZMGnXzGcpLbQfJszGZ0isILKpx8dKo7KdJT4bwsarN1YtsH7
 8APYgbi2TaT7bSU/g4tRbGBPmonnyJ/r6E6r76NlOPE6GJYUtUBqURNrJT1FSmCi2/XK
 22RIZPpT50FcXptX2ArPOpcCQ3e/cJolu3XImE+LyFHExpblbVuznVgsMKFDLf/SksLt
 yVogWHeUVeamNTaYjViPEnxnpW347TSiHhoidUgNwRlLURe2vm59wdi6hl84Kc8XPflq
 jBDYWndrUTynTA4o9yzYsI0o9a0URpuyuGLeaLfP2eskgIVQnn/KwYL9R4r47aa4chYa
 hj2w==
X-Gm-Message-State: APjAAAUfdiXiwnNzMtcqJSEhOgVZl+2n8gFNKroGwTXeweIQfIM6Uw5C
 IXuzCAUxA4NEq+XHhtu7yzCvQAVUKQZBdP2FgfSo7w==
X-Google-Smtp-Source: APXvYqwdBrVqk5ITzZY8yEzMrPYd5+3xZUnvw0GyTGzRQ239iMMf/1PQgEcsGNselnMTD5/6zdoYOK/LEP3uR3XKjxE=
X-Received: by 2002:a2e:8510:: with SMTP id j16mr8164931lji.174.1565781805273; 
 Wed, 14 Aug 2019 04:23:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190814060854.26345-1-codekipper@gmail.com>
 <20190814060854.26345-5-codekipper@gmail.com>
 <20190814071645.33qe7bvwpbakjg2e@flea>
In-Reply-To: <20190814071645.33qe7bvwpbakjg2e@flea>
From: Code Kipper <codekipper@gmail.com>
Date: Wed, 14 Aug 2019 13:23:14 +0200
Message-ID: <CAEKpxBn8sN_4HFYTsG5JTtGuFP-jb733wKLaSHU_0UPvmF3GKA@mail.gmail.com>
Subject: Re: [PATCH v5 04/15] ASoC: sun4i-i2s: Support more formats on newer
 SoCs
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_042326_938077_90051833 
X-CRM114-Status: GOOD (  28.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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
> On Wed, Aug 14, 2019 at 08:08:43AM +0200, codekipper@gmail.com wrote:
> > From: Marcus Cooper <codekipper@gmail.com>
> >
> > There is a need to support more formats on the newer SoCs(H3 and later).
> > Extend the formats supported to include DSP_A and DSP_B modes.
> >
> > Signed-off-by: Marcus Cooper <codekipper@gmail.com>
> > ---
> >  sound/soc/sunxi/sun4i-i2s.c | 87 +++++++++++++++++++++++++++----------
> >  1 file changed, 63 insertions(+), 24 deletions(-)
> >
> > diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
> > index 34f31439ae7b..3553c17318b0 100644
> > --- a/sound/soc/sunxi/sun4i-i2s.c
> > +++ b/sound/soc/sunxi/sun4i-i2s.c
> > @@ -27,6 +27,8 @@
> >  #define SUN4I_I2S_CTRL_MODE_MASK             BIT(5)
> >  #define SUN4I_I2S_CTRL_MODE_SLAVE                    (1 << 5)
> >  #define SUN4I_I2S_CTRL_MODE_MASTER                   (0 << 5)
> > +#define SUN4I_I2S_CTRL_PCM                   BIT(4)
> > +#define SUN4I_I2S_CTRL_LOOP                  BIT(3)
> >  #define SUN4I_I2S_CTRL_TX_EN                 BIT(2)
> >  #define SUN4I_I2S_CTRL_RX_EN                 BIT(1)
> >  #define SUN4I_I2S_CTRL_GL_EN                 BIT(0)
> > @@ -91,6 +93,9 @@
> >  /* Defines required for sun8i-h3 support */
> >  #define SUN8I_I2S_CTRL_BCLK_OUT                      BIT(18)
> >  #define SUN8I_I2S_CTRL_LRCK_OUT                      BIT(17)
> > +#define SUN8I_I2S_CTRL_MODE_RIGHT_J                  (2 << 0)
> > +#define SUN8I_I2S_CTRL_MODE_I2S_LEFT_J                       (1 << 0)
> > +#define SUN8I_I2S_CTRL_MODE_PCM                              (0 << 0)
> >
> >  #define SUN8I_I2S_FMT0_LRCK_PERIOD_MASK              GENMASK(17, 8)
> >  #define SUN8I_I2S_FMT0_LRCK_PERIOD(period)   ((period - 1) << 8)
> > @@ -164,6 +169,7 @@ struct sun4i_i2s_quirks {
> >
> >       s8      (*get_sr)(const struct sun4i_i2s *, int);
> >       s8      (*get_wss)(const struct sun4i_i2s *, int);
> > +     int     (*set_format)(struct sun4i_i2s *, unsigned int);
> >  };
> >
> >  struct sun4i_i2s {
> > @@ -194,6 +200,7 @@ struct sun4i_i2s {
> >
> >       unsigned int    tdm_slots;
> >       unsigned int    slot_width;
> > +     unsigned int    offset;
> >  };
> >
> >  struct sun4i_i2s_clk_div {
> > @@ -484,19 +491,14 @@ static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
> >                                     i2s->slot_width : params_width(params));
> >  }
> >
> > -static int sun4i_i2s_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
> > +static int sun4i_i2s_set_format(struct sun4i_i2s *i2s, unsigned int fmt)
> >  {
> > -     struct sun4i_i2s *i2s = snd_soc_dai_get_drvdata(dai);
> >       u32 val;
> > -     u32 offset = 0;
> > -     u32 bclk_polarity = SUN4I_I2S_FMT0_POLARITY_NORMAL;
> > -     u32 lrclk_polarity = SUN4I_I2S_FMT0_POLARITY_NORMAL;
> >
> >       /* DAI Mode */
> >       switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
> >       case SND_SOC_DAIFMT_I2S:
> >               val = SUN4I_I2S_FMT0_FMT_I2S;
> > -             offset = 1;
> >               break;
> >       case SND_SOC_DAIFMT_LEFT_J:
> >               val = SUN4I_I2S_FMT0_FMT_LEFT_J;
> > @@ -505,32 +507,64 @@ static int sun4i_i2s_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
> >               val = SUN4I_I2S_FMT0_FMT_RIGHT_J;
> >               break;
> >       default:
> > -             dev_err(dai->dev, "Unsupported format: %d\n",
> > -                     fmt & SND_SOC_DAIFMT_FORMAT_MASK);
> >               return -EINVAL;
> >       }
> >
> > -     if (i2s->variant->has_chsel_offset) {
> > -             /*
> > -              * offset being set indicates that we're connected to an i2s
> > -              * device, however offset is only used on the sun8i block and
> > -              * i2s shares the same setting with the LJ format. Increment
> > -              * val so that the bit to value to write is correct.
> > -              */
> > -             if (offset > 0)
> > -                     val++;
> > -             /* blck offset determines whether i2s or LJ */
> > -             regmap_update_bits(i2s->regmap, SUN8I_I2S_TX_CHAN_SEL_REG,
> > -                                SUN8I_I2S_TX_CHAN_OFFSET_MASK,
> > -                                SUN8I_I2S_TX_CHAN_OFFSET(offset));
> > +     regmap_field_write(i2s->field_fmt_mode, val);
> > +
> > +     return 0;
> > +}
> > +
> > +static int sun8i_i2s_set_format(struct sun4i_i2s *i2s, unsigned int fmt)
> > +{
> > +     u32 val;
> >
> > -             regmap_update_bits(i2s->regmap, SUN8I_I2S_RX_CHAN_SEL_REG,
> > -                                SUN8I_I2S_TX_CHAN_OFFSET_MASK,
> > -                                SUN8I_I2S_TX_CHAN_OFFSET(offset));
> > +     /* DAI Mode */
> > +     switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
> > +     case SND_SOC_DAIFMT_I2S:
> > +             i2s->offset = 1;
> > +     case SND_SOC_DAIFMT_LEFT_J:
> > +             val = SUN8I_I2S_CTRL_MODE_I2S_LEFT_J;
> > +             break;
> > +     case SND_SOC_DAIFMT_RIGHT_J:
> > +             val = SUN8I_I2S_CTRL_MODE_RIGHT_J;
> > +             break;
> > +     case SND_SOC_DAIFMT_DSP_A:
> > +             i2s->offset = 1;
> > +     case SND_SOC_DAIFMT_DSP_B:
> > +             val = SUN8I_I2S_CTRL_MODE_PCM;
> > +             break;
> > +
> > +     default:
> > +             return -EINVAL;
> >       }
> >
> > +     /*
> > +      * bclk offset determines whether i2s or LJ if in i2s mode and
> > +      * DSP_A or DSP_B if in PCM mode.
> > +      */
> > +     i2s->variant->set_txchanoffset(i2s, 0);
> > +     i2s->variant->set_rxchanoffset(i2s);
> > +
> >       regmap_field_write(i2s->field_fmt_mode, val);
>
> It's a bit more complicated in the sun8i case. The LRCK period also
> needs to be changed when in PCM / DSP_* mode since it changes from a
> number of periods for one channel to a number of periods for all the
> channels.
Yeah I was thinking that but I don't have any hardware to test this with (been
helping out someone trying to connect to a modem).
>
> I have patches that still need a bit of rework and take care of all of
> that, I'll try to post them by the end of the week

This patch could be dropped for now or at least we just keep the
offset parts in.
BR,
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
