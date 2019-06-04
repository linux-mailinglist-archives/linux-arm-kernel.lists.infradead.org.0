Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D5A3436A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 11:39:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=APz2iy2SsT+yXELuOEVel6P5kyPf9L8qB5K4G4gRbfw=; b=YMm0e1teqluejp
	jc9Q3TofNZv4E8M6lfYnDatz55vAgxQoqpmadIwxiZeLZJSDdYyTh8ucOVqQouHTgUHO5mWsU0FUf
	1YlUv8VGdQ4UTzzFIzKSUYWH52V/G8z1AHsm3Ogo8Lbj5ypLaTostPNGyczNNYpB3GXMF9rEGwbAg
	aFljOsYV+RslyU+hmOgLa6sLTxTSYh5K7A1hsBDS8CGXgn2RRugLPZsvzwabXfjnFvpwGURuLXRvw
	kERwOSq6x/8HicxQaQNF4/R+mzTndIeBY/osOTRdCcRGKA9vuoGNrHYcBcU+c9F+NYqgeuAGNpYOG
	kAC9QhrtqRlCvgkkYI4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY5uM-0001Jp-UC; Tue, 04 Jun 2019 09:39:06 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY5uD-0001Iy-Sf
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 09:39:01 +0000
Received: by mail-lj1-x244.google.com with SMTP id 16so5419845ljv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 02:38:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0p+QUllSWbb6IfUF0ciw23eu7sV22MgW/puri+CeCb8=;
 b=hb7rXrstdGiY0ZZmC64PPrQM9dGTY90IFqakAW521v6oSsVaMiEpNOt0P7/j+7n3UX
 O+nDNuDF0FYbZGt99SJEUsSmdIoJ2Kk2NrLkTioEmtnpJEOh4Po1rvl01QWxxrSrRxdR
 XFFYxf0/ZMZn3n6HFDTMfZo4MvruNCPuvTHveQ7j/XHxJHJKtpdQSD04RDwB00gPez+3
 s5wY1nShIzKhSm8UM3RDNcSH3hRzxCfYu6QLMFOYF9dNzosrIJhpto3Ja3/hjf3s8N2u
 ZZnBsuzUvjBdDBI/9pU8zPJZMwexgGG5bQZUll9aCD8xW9vvtNz3zRqkxhuwXAEzZMe4
 NhRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0p+QUllSWbb6IfUF0ciw23eu7sV22MgW/puri+CeCb8=;
 b=iab3OwZ6LGS/eKRP9YRmk/mDjjxw2GVaG4znMHr5la6O5Cz/BFSyq/JG7h63wTjczW
 AbkHPG9dq5k+YZx0QcEEMSpyc6hY26v1hZNjTUs1Z3hWdE0/SZt8Yav5xxx/67C1bRNJ
 ahJYfqt+qX72GDKvhHpEcshdCgoxg/lFlaoxw1PLEUoDEdXVNqYXMS9JdLN5CGOb6ERD
 NDSSuYHiDTUsaW+c25dkm1fIv6q+ORtlAwP/R6CSSv0bSkJ4QplHKq0+ZoVS16vRbQCG
 VJRkFVQ+efAzZf1vxXd3HYPIXu5lpfr3XvVybInU7IzhQv5BUHtzgzfO+CgjYoeYIwg5
 qBWQ==
X-Gm-Message-State: APjAAAVEZ0HyZyOc/+OMC9jx9MLecbSnRtFZcqD8f0ZncCXaVXXwRBMh
 n8PkZJuQl9t+YJGi2n6OC2vq+ifuRw5spqLpWrI=
X-Google-Smtp-Source: APXvYqz8Fs0Utf9F/Lt7HEIPoitdiihSHsfsz4RU7NzGx/GZSyGjwih6it3Mw6Vl6Uxgf1A2UiY2hXFXe+AbfJ0cl9A=
X-Received: by 2002:a2e:28d:: with SMTP id y13mr16086475lje.177.1559641136069; 
 Tue, 04 Jun 2019 02:38:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190603174735.21002-1-codekipper@gmail.com>
 <20190603174735.21002-7-codekipper@gmail.com>
 <20190604075840.kquy3zcuckuzmvzr@flea>
 <CAEKpxB=RdYF9eEvAJ+R7sT6OtdtBWjhMM1am+EhaN=9ZO9Gd2A@mail.gmail.com>
 <CAP03XepJVPge5sz4WcmK8pp2jHAPJdGb6v6A3R0DzSf5O6qj-g@mail.gmail.com>
In-Reply-To: <CAP03XepJVPge5sz4WcmK8pp2jHAPJdGb6v6A3R0DzSf5O6qj-g@mail.gmail.com>
From: Code Kipper <codekipper@gmail.com>
Date: Tue, 4 Jun 2019 11:38:44 +0200
Message-ID: <CAEKpxBmxAQKgDhvjpczAWwNtNhYRs07wjMSnr8nqHk1XxMT=nw@mail.gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH v4 6/9] ASoC: sun4i-i2s: Add multi-lane
 functionality
To: Christopher Obbard <chris@64studio.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_023859_674322_10992918 
X-CRM114-Status: GOOD (  42.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 Liam Girdwood <lgirdwood@gmail.com>,
 "Andrea Venturi \(pers\)" <be17068@iperbole.bo.it>,
 Chen-Yu Tsai <wens@csie.org>, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 4 Jun 2019 at 11:02, Christopher Obbard <chris@64studio.com> wrote:
>
> On Tue, 4 Jun 2019 at 09:43, Code Kipper <codekipper@gmail.com> wrote:
> >
> > On Tue, 4 Jun 2019 at 09:58, Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > >
> > > On Mon, Jun 03, 2019 at 07:47:32PM +0200, codekipper@gmail.com wrote:
> > > > From: Marcus Cooper <codekipper@gmail.com>
> > > >
> > > > The i2s block supports multi-lane i2s output however this functionality
> > > > is only possible in earlier SoCs where the pins are exposed and for
> > > > the i2s block used for HDMI audio on the later SoCs.
> > > >
> > > > To enable this functionality, an optional property has been added to
> > > > the bindings.
> > > >
> > > > Signed-off-by: Marcus Cooper <codekipper@gmail.com>
> > >
> > > I'd like to have Mark's input on this, but I'm really worried about
> > > the interaction with the proper TDM support.
> > >
> > > Our fundamental issue is that the controller can have up to 8
> > > channels, but either on 4 lines (instead of 1), or 8 channels on 1
> > > (like proper TDM) (or any combination between the two, but that should
> > > be pretty rare).
> >
> > I understand...maybe the TDM needs to be extended to support this to consider
> > channel mapping and multiple transfer lines. I was thinking about the later when
> > someone was requesting support on IIRC a while ago, I thought masking might
> > of been a solution. These can wait as the only consumer at the moment is
> > LibreELEC and we can patch it there.
>
> Hi Marcus,
>
> FWIW, the TI McASP driver has support for TDM & (i think?) multiple
> transfer lines which are called serializers.
> Maybe this can help with inspiration?
> see https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/sound/soc/ti/davinci-mcasp.c
> sample DTS:
>
> &mcasp0 {
>     #sound-dai-cells = <0>;
>     status = "okay";
>     pinctrl-names = "default";
>     pinctrl-0 = <&mcasp0_pins>;
>
>     op-mode = <0>;
>     tdm-slots = <8>;
>     serial-dir = <
>         2 0 1 0
>         0 0 0 0
>         0 0 0 0
>         0 0 0 0
>     >;
>     tx-num-evt = <1>;
>     rx-num-evt = <1>;
> };
>
>
> Cheers!

Thanks, this looks good.
CK
>
> > Do you have any ideas Master?
> > CK
> > >
> > > You're trying to do the first one, and I'm trying to do the second one.
> > >
> > > There's a number of assumptions later on that will break the TDM case,
> > > see below for examples
> > >
> > > > ---
> > > >  sound/soc/sunxi/sun4i-i2s.c | 44 ++++++++++++++++++++++++++++++++-----
> > > >  1 file changed, 39 insertions(+), 5 deletions(-)
> > > >
> > > > diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
> > > > index bca73b3c0d74..75217fb52bfa 100644
> > > > --- a/sound/soc/sunxi/sun4i-i2s.c
> > > > +++ b/sound/soc/sunxi/sun4i-i2s.c
> > > > @@ -23,7 +23,7 @@
> > > >
> > > >  #define SUN4I_I2S_CTRL_REG           0x00
> > > >  #define SUN4I_I2S_CTRL_SDO_EN_MASK           GENMASK(11, 8)
> > > > -#define SUN4I_I2S_CTRL_SDO_EN(sdo)                   BIT(8 + (sdo))
> > > > +#define SUN4I_I2S_CTRL_SDO_EN(lines)         (((1 << lines) - 1) << 8)
> > > >  #define SUN4I_I2S_CTRL_MODE_MASK             BIT(5)
> > > >  #define SUN4I_I2S_CTRL_MODE_SLAVE                    (1 << 5)
> > > >  #define SUN4I_I2S_CTRL_MODE_MASTER                   (0 << 5)
> > > > @@ -355,14 +355,23 @@ static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
> > > >       struct sun4i_i2s *i2s = snd_soc_dai_get_drvdata(dai);
> > > >       int sr, wss, channels;
> > > >       u32 width;
> > > > +     int lines;
> > > >
> > > >       channels = params_channels(params);
> > > > -     if (channels != 2) {
> > > > +     if ((channels > dai->driver->playback.channels_max) ||
> > > > +             (channels < dai->driver->playback.channels_min)) {
> > > >               dev_err(dai->dev, "Unsupported number of channels: %d\n",
> > > >                       channels);
> > > >               return -EINVAL;
> > > >       }
> > > >
> > > > +     lines = (channels + 1) / 2;
> > > > +
> > > > +     /* Enable the required output lines */
> > > > +     regmap_update_bits(i2s->regmap, SUN4I_I2S_CTRL_REG,
> > > > +                        SUN4I_I2S_CTRL_SDO_EN_MASK,
> > > > +                        SUN4I_I2S_CTRL_SDO_EN(lines));
> > > > +
> > >
> > > This has the assumption that each line will have 2 channels, which is wrong.
> > >
> > > >       if (i2s->variant->is_h3_i2s_based) {
> > > >               regmap_update_bits(i2s->regmap, SUN8I_I2S_CHAN_CFG_REG,
> > > >                                  SUN8I_I2S_CHAN_CFG_TX_SLOT_NUM_MASK,
> > > > @@ -373,8 +382,19 @@ static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
> > > >       }
> > > >
> > > >       /* Map the channels for playback and capture */
> > > > -     regmap_field_write(i2s->field_txchanmap, 0x76543210);
> > > >       regmap_field_write(i2s->field_rxchanmap, 0x00003210);
> > > > +     regmap_field_write(i2s->field_txchanmap, 0x10);
> > > > +     if (i2s->variant->is_h3_i2s_based) {
> > > > +             if (channels > 2)
> > > > +                     regmap_write(i2s->regmap,
> > > > +                                  SUN8I_I2S_TX_CHAN_MAP_REG+4, 0x32);
> > > > +             if (channels > 4)
> > > > +                     regmap_write(i2s->regmap,
> > > > +                                  SUN8I_I2S_TX_CHAN_MAP_REG+8, 0x54);
> > > > +             if (channels > 6)
> > > > +                     regmap_write(i2s->regmap,
> > > > +                                  SUN8I_I2S_TX_CHAN_MAP_REG+12, 0x76);
> > > > +     }
> > >
> > > And this creates a mapping matching that.
> > >
> > > >       /* Configure the channels */
> > > >       regmap_field_write(i2s->field_txchansel,
> > > > @@ -1057,9 +1077,10 @@ static int sun4i_i2s_init_regmap_fields(struct device *dev,
> > > >  static int sun4i_i2s_probe(struct platform_device *pdev)
> > > >  {
> > > >       struct sun4i_i2s *i2s;
> > > > +     struct snd_soc_dai_driver *soc_dai;
> > > >       struct resource *res;
> > > >       void __iomem *regs;
> > > > -     int irq, ret;
> > > > +     int irq, ret, val;
> > > >
> > > >       i2s = devm_kzalloc(&pdev->dev, sizeof(*i2s), GFP_KERNEL);
> > > >       if (!i2s)
> > > > @@ -1126,6 +1147,19 @@ static int sun4i_i2s_probe(struct platform_device *pdev)
> > > >       i2s->capture_dma_data.addr = res->start + SUN4I_I2S_FIFO_RX_REG;
> > > >       i2s->capture_dma_data.maxburst = 8;
> > > >
> > > > +     soc_dai = devm_kmemdup(&pdev->dev, &sun4i_i2s_dai,
> > > > +                            sizeof(*soc_dai), GFP_KERNEL);
> > > > +     if (!soc_dai) {
> > > > +             ret = -ENOMEM;
> > > > +             goto err_pm_disable;
> > > > +     }
> > > > +
> > > > +     if (!of_property_read_u32(pdev->dev.of_node,
> > > > +                               "allwinner,playback-channels", &val)) {
> > > > +             if (val >= 2 && val <= 8)
> > > > +                     soc_dai->playback.channels_max = val;
> > > > +     }
> > > > +
> > >
> > > I'm not quite sure how this works.
> > >
> > > of_property_read_u32 will return 0, so you will enter in the
> > > condition. But what happens if the property is missing?
> > >
> > > Maxime
> > >
> > > --
> > > Maxime Ripard, Bootlin
> > > Embedded Linux and Kernel engineering
> > > https://bootlin.com
> >
> > --
> > You received this message because you are subscribed to the Google Groups "linux-sunxi" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to linux-sunxi+unsubscribe@googlegroups.com.
> > To view this discussion on the web, visit https://groups.google.com/d/msgid/linux-sunxi/CAEKpxB%3DRdYF9eEvAJ%2BR7sT6OtdtBWjhMM1am%2BEhaN%3D9ZO9Gd2A%40mail.gmail.com.
> > For more options, visit https://groups.google.com/d/optout.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
