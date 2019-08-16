Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FBE48FAED
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 08:27:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z4sva3OLW7YS1SqvWBUfb8Gj+UwnuSC6rcHbqTuSRmY=; b=pMT9ytFQfsFN56
	wAbHEb6zqGjibLn4G2dYANZoC3hUySIAvAgIrWncdZoLQec+Biqkzvp/xNk7nQDI67c+nqKSE97Cg
	915rKv3aUU1L5vx9eXXrWvnJZZjdI66QgmlNR00x/ujYlu2zYiLSzktnBcl8/NZAoiezYSFlupVps
	4xisRRyvYTdlqNF2dMakib1meyDRBu07002s9wARQn2VXJSzydOYUp/pQa9aTVyaopz11OtcDlX17
	VkfPtvb+tfEnKQ+iifWsbIVZeyETFlYzmH176/pPVgAnS49NR6o8vZCrh20wqrgxciy0sIp2RxoNR
	0MvhZaUhna/jZgs6RoXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyVi1-0005lp-Ek; Fri, 16 Aug 2019 06:27:33 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyVhm-0005lH-0Z
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 06:27:19 +0000
Received: by mail-lf1-x143.google.com with SMTP id x3so3341586lfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 23:27:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+lm26ypr1HFcyJ7hZ74u9revSRfSoVfoTCtYpt3Woco=;
 b=GDQS3E3wgsOcpEmUdh/7FrM+PIwG363gn6bd/2WcIDTYecvOS6uKIzzZah8q/y++LL
 JAPEsMUEGYHVt/cJCJ5RH4/KRZVEZ5zHs1HjqBD4Lh8P+yeCfaGzm/qZNWcwRr5klPFP
 gXkGm26epRrNG7drbO05XPe6GKCVNb2zU9wlzDMI/y2bi0BCxZvj4P4PKKQO/e4Yq1cj
 PL/z1F1uN+BlT8QbNG3TZ35AKbl35qDVdizIf6yQ8DE5/3XDtXBHeQ/NulYnxZt288Su
 +3D9HTDceHmk6mPD/4ZZXrjPfd/p2H5DtdIGAfhXjLoiv0yPkL3TGoclyQgG0hDjF5l7
 6lbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+lm26ypr1HFcyJ7hZ74u9revSRfSoVfoTCtYpt3Woco=;
 b=PRmmGuE3SQOa8Sq+RqdrVOPvRtW+dojfP4OSYrsmqrD8+F6FRuF5VqyZBxf0Qev+A1
 YGMarTo5kG+WEX37Ll3BJ5InXp2qTIsRwsGP1P7IdESD+e8Uz43GwUrYUXxcumEMuQ+o
 +z8sG47GMeTJQYIrY9bnwx2q27uUuJppnc9Z0axuLRXD4ZVB15guGsnd+WKdzzyQSe2f
 oeYjeFTEj89A9ClsEXlvTG1UpeY1T2C42d2R4U+v95X82AC7fPW51fc3qCWGcqkMze4F
 06vX02DVmXXGBNWjw4aDiedwXVgTOWrEHqhlMHW28j7NA28/omekTQcUSKLtmFVKoVjt
 9dlA==
X-Gm-Message-State: APjAAAWahKDS0djqSSGMQmak04UuQqpin+tBQVcP780vfCMrJgG3dnzU
 dQjrzTDEC1kmAKZTHuFLEUv/+js8t2eEuCXWFbE=
X-Google-Smtp-Source: APXvYqw/pzogfFsM3txv21J7mmVAMuAg5bLpt1moRRMwMAytRKI/2ywz6QY1qaZduB8tnnRHj850nAkh/ETZxUwIOXg=
X-Received: by 2002:ac2:465e:: with SMTP id s30mr4431231lfo.19.1565936836466; 
 Thu, 15 Aug 2019 23:27:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190814060854.26345-1-codekipper@gmail.com>
 <20190814060854.26345-3-codekipper@gmail.com>
 <20190814070923.wwkw7hybjvy3p4br@flea>
In-Reply-To: <20190814070923.wwkw7hybjvy3p4br@flea>
From: Code Kipper <codekipper@gmail.com>
Date: Fri, 16 Aug 2019 08:27:05 +0200
Message-ID: <CAEKpxBkOu0+zek9f=4grNEhyPS=Ly3nweCUCgaz6y8M61xvpaQ@mail.gmail.com>
Subject: Re: [PATCH v5 02/15] ASoC: sun4i-i2s: Add set_tdm_slot functionality
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_232718_052489_D7A81783 
X-CRM114-Status: GOOD (  23.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (codekipper[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
> On Wed, Aug 14, 2019 at 08:08:41AM +0200, codekipper@gmail.com wrote:
> > From: Marcus Cooper <codekipper@gmail.com>
> >
> > Codecs without a control connection such as i2s based HDMI audio and
> > the Pine64 DAC require a different amount of bit clocks per frame than
> > what is calculated by the sample width. Use the tdm slot bindings to
> > provide this mechanism.
> >
> > Signed-off-by: Marcus Cooper <codekipper@gmail.com>
> > ---
> >  sound/soc/sunxi/sun4i-i2s.c | 23 +++++++++++++++++++++--
> >  1 file changed, 21 insertions(+), 2 deletions(-)
> >
> > diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
> > index 8201334a059b..7c37b6291df0 100644
> > --- a/sound/soc/sunxi/sun4i-i2s.c
> > +++ b/sound/soc/sunxi/sun4i-i2s.c
> > @@ -195,6 +195,9 @@ struct sun4i_i2s {
> >       struct regmap_field     *field_rxchansel;
> >
> >       const struct sun4i_i2s_quirks   *variant;
> > +
> > +     unsigned int    tdm_slots;
> > +     unsigned int    slot_width;
> >  };
> >
> >  struct sun4i_i2s_clk_div {
> > @@ -346,7 +349,7 @@ static int sun4i_i2s_set_clk_rate(struct snd_soc_dai *dai,
> >       if (i2s->variant->has_fmt_set_lrck_period)
> >               regmap_update_bits(i2s->regmap, SUN4I_I2S_FMT0_REG,
> >                                  SUN8I_I2S_FMT0_LRCK_PERIOD_MASK,
> > -                                SUN8I_I2S_FMT0_LRCK_PERIOD(32));
> > +                                SUN8I_I2S_FMT0_LRCK_PERIOD(word_size));
> >
> >
> >       /* Set sign extension to pad out LSB with 0 */
> >       regmap_field_write(i2s->field_fmt_sext, 0);
> > @@ -450,7 +453,8 @@ static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
> >       regmap_field_write(i2s->field_fmt_sr, sr);
> >
> >       return sun4i_i2s_set_clk_rate(dai, params_rate(params),
> > -                                   params_width(params));
> > +                                   i2s->tdm_slots ?
> > +                                   i2s->slot_width : params_width(params));
>
> This is slightly more complicated than that.

At this point we're only supporting 2 channels with fixed slot
settings. I've added a comment to state
that we're using the tdm_slot at the moment as an indicator to
override the slot width. Do you think
that is enough for now?.

Thanks,
CK
>
> On the H3 (and all related ones), the CHAN_CFG_TX_SLOT_NUM and
> _RX_SLOT_NUM fields in the CHAN_CFG register need to be set to the
> number of slots as well.
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
