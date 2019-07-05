Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C8660837
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:46:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MbPhQd8oYuEuM7YCovUWu3fTZ1PzziXi7J9sD741V2E=; b=lYJMFJzsWx5duE
	ul9OOdZWpDPuUORBgF/lDbZzKnE1eSRu8Xq0Rgc6CZvprmMKxVN3hiJlY1o6jQg9i+mmhpU2PoQHQ
	N+/sgk8w65LpwRwoxypBmpNu7O42xcyvcp6Z5v1JEs76lEYT5D7iLdRjzl0npBPV2WLgpBn63lTfX
	GT01hDF/sHKLAqMmnCgjJ94iJ1yvV5L0NTfgRJigXN66GEC0shbmg16BjnDezcrJPQWJh3EQW9gQQ
	A2c9dBbkN5YAtnLgu7CXrQSrg8t9NJrMgeK9XCavC8XndQPegtAAdUIn4Lqf27+KDEoYXkzVfH/lt
	iYc5Vr3CL29VLWJWC/CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPTX-00017x-Ao; Fri, 05 Jul 2019 14:46:11 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPRH-0005vu-KC
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 14:43:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:Cc:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gxBN84xswbhhWfhJZ4vJ56rbkxQJ6uMES8Lq5hzLdBY=; b=liRWOw+GqrRqmd4OQdNcPjuYF
 0U8vO2LLwlENTpQEhJ3kVggmax2RKLxoVVvEP4D3lZPOLGppq+ss3aSmlb1SJkMeA6ZbnXsWPUvfc
 llRxxtm779HoYWteUcunW89kAOrrI+EhykjXAix4mLBXMJEw/sbqA7BoidLWrURGdGlaNaJ+aKhFi
 7fF+7epqLr4mjYXy8l3z339Q5bFIhiU7vNpNWt6AkMcrDUx48R++tSaJ7C7rV1ZrwrC2/94udNyZd
 AjdD8W1n5TGkBZ94npmrGrd9HqMq9VHw3IhL3hNK75sWyAv9B387TR9k+IZmgryHnhvS8/CALX2G+
 Jya3VAOdg==;
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjIO6-0008RL-R5
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 07:12:07 +0000
Received: by mail-oi1-x243.google.com with SMTP id 65so6437205oid.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jul 2019 00:12:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gxBN84xswbhhWfhJZ4vJ56rbkxQJ6uMES8Lq5hzLdBY=;
 b=mc33cekhckA7wJjQPFB96WQWGU23cxC27TC5cLWhp1tkIGBdYA3u5o1I17M1ckqlQd
 zFZm1wF32d0kzplRgk9f+FK97QneoXTF+BUYf5NuDMGFDmxhI7P7x6djrqp7Aih7DRb+
 L0PWOaB0R1SQfDkhqQMvbEzlmLlm62KLmQ6n9n9ryzaaDAQOcPdh71DVU/KfEHOpIU+S
 maqwuTUWDwen5vjdE19DurUUEl/sqsqu+jbp90i6znc6XdV9POHpZR0mzfmXlA5DIei5
 4VA1xvTQfzYrzVl8AyFB+X3uvWz0jJfdnYQdjTX0krPFmiuU+ihk42PbP7UvgPeYDJDj
 cFeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gxBN84xswbhhWfhJZ4vJ56rbkxQJ6uMES8Lq5hzLdBY=;
 b=sgHlkjoHe+RaFlHvrOEHF6LAV+rVwZI7MTHSspBGP7hUG/iHRVVfWtLoqlAWKQR/hB
 sf6psmxNiZ1cGZJ+JdvtAC2oA9wUeEX68t9hvhrCQSKoXqQVg6IgYOg5jaDewgNwXPKE
 f2bnhkqIb8jphQ+z9iJJCn/RQ+HdxySeEEY6ID0K5kBgZQmErZklzyu6+WudN7P2FJp2
 /8SOthNm1GfjAtaqVeVi3MOl2VYPbaDuNEI5LnmTUne62uz+52tUquPLTLlCbzp+fXcY
 3cYBnp9px+o0pR5olBGAn+xVVv8KjaWg8vN9U2J58h0EJILJlsUbjBWgbO7wGBUXazGJ
 SBhg==
X-Gm-Message-State: APjAAAUFomMTkXPXaVlSKSH1WmZDjmgOhFlituaoX44+4WUQQ/UWTDCT
 yHh009f4SqECRCEnXqsE8ca3KDnwb1MKGNcbo4rsJQ==
X-Google-Smtp-Source: APXvYqylRoOrXW9piygIdp/MUCNdlQwgFS7OKeAodWKUYf14PwDLt6pn2w/rrprynkga74yQySStlO0D+Em9QWuAc3Q=
X-Received: by 2002:aca:ecc1:: with SMTP id k184mr1195557oih.82.1562310603045; 
 Fri, 05 Jul 2019 00:10:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190705042623.129541-1-cychiang@chromium.org>
 <20190705042623.129541-4-cychiang@chromium.org>
In-Reply-To: <20190705042623.129541-4-cychiang@chromium.org>
From: Tzung-Bi Shih <tzungbi@google.com>
Date: Fri, 5 Jul 2019 15:09:52 +0800
Message-ID: <CA+Px+wXVghbk8k0WE5TEsGRQXx26K0-=h3O7cje-F1phwBGrbQ@mail.gmail.com>
Subject: Re: [PATCH 3/4] ASoC: rockchip_max98090: Add dai_link for HDMI
To: Cheng-Yi Chiang <cychiang@chromium.org>
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: ALSA development <alsa-devel@alsa-project.org>, dianders@chromium.org,
 Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Takashi Iwai <tiwai@suse.com>, tzungbi@chromium.org,
 linux-kernel@vger.kernel.org, Hans Verkuil <hverkuil@xs4all.nl>,
 Andrzej Hajda <a.hajda@samsung.com>, Russell King <rmk+kernel@armlinux.org.uk>,
 Mark Brown <broonie@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-rockchip@lists.infradead.org,
 dgreid@chromium.org, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 5, 2019 at 12:26 PM Cheng-Yi Chiang <cychiang@chromium.org> wrote:
> diff --git a/sound/soc/rockchip/rockchip_max98090.c b/sound/soc/rockchip/rockchip_max98090.c
> index c5fc24675a33..195309d1225a 100644
> --- a/sound/soc/rockchip/rockchip_max98090.c
> +++ b/sound/soc/rockchip/rockchip_max98090.c
>  static int rk_aif1_hw_params(struct snd_pcm_substream *substream,
> @@ -92,38 +95,59 @@ static int rk_aif1_hw_params(struct snd_pcm_substream *substream,
>
>         ret = snd_soc_dai_set_sysclk(cpu_dai, 0, mclk,
>                                      SND_SOC_CLOCK_OUT);
> -       if (ret < 0) {
> -               dev_err(codec_dai->dev, "Can't set codec clock %d\n", ret);
> +       if (ret && ret != -ENOTSUPP) {
> +               dev_err(cpu_dai->dev, "Can't set cpu dai clock %d\n", ret);
>                 return ret;
>         }
>
>         ret = snd_soc_dai_set_sysclk(codec_dai, 0, mclk,
>                                      SND_SOC_CLOCK_IN);
> -       if (ret < 0) {
> -               dev_err(codec_dai->dev, "Can't set codec clock %d\n", ret);
> +       if (ret && ret != -ENOTSUPP) {
> +               dev_err(codec_dai->dev, "Can't set codec dai clock %d\n", ret);
>                 return ret;
>         }
Does it imply: it is acceptable even if they are "not supported"?


>
> -       return ret;
> +       return 0;
>  }
>
>  static const struct snd_soc_ops rk_aif1_ops = {
>         .hw_params = rk_aif1_hw_params,
>  };
>
> -SND_SOC_DAILINK_DEFS(hifi,
> +SND_SOC_DAILINK_DEFS(analog,
>         DAILINK_COMP_ARRAY(COMP_EMPTY()),
>         DAILINK_COMP_ARRAY(COMP_CODEC(NULL, "HiFi")),
>         DAILINK_COMP_ARRAY(COMP_EMPTY()));
>
> -static struct snd_soc_dai_link rk_dailink = {
> -       .name = "max98090",
> -       .stream_name = "Audio",
> -       .ops = &rk_aif1_ops,
> -       /* set max98090 as slave */
> -       .dai_fmt = SND_SOC_DAIFMT_I2S | SND_SOC_DAIFMT_NB_NF |
> -               SND_SOC_DAIFMT_CBS_CFS,
> -       SND_SOC_DAILINK_REG(hifi),
> +SND_SOC_DAILINK_DEFS(hdmi,
> +       DAILINK_COMP_ARRAY(COMP_EMPTY()),
> +       DAILINK_COMP_ARRAY(COMP_CODEC("hdmi-audio-codec.3.auto", "i2s-hifi")),
> +       DAILINK_COMP_ARRAY(COMP_EMPTY()));
> +
> +enum {
> +       DAILINK_MAX98090,
> +       DAILINK_HDMI,
> +};
> +
> +/* max98090 and HDMI codec dai_link */
> +static struct snd_soc_dai_link rk_dailinks[] = {
> +       [DAILINK_MAX98090] = {
> +               .name = "max98090",
> +               .stream_name = "Analog",
> +               .ops = &rk_aif1_ops,
> +               /* set max98090 as slave */
> +               .dai_fmt = SND_SOC_DAIFMT_I2S | SND_SOC_DAIFMT_NB_NF |
> +                       SND_SOC_DAIFMT_CBS_CFS,
> +               SND_SOC_DAILINK_REG(analog),
> +       },
> +       [DAILINK_HDMI] = {
> +               .name = "HDMI",
> +               .stream_name = "HDMI",
> +               .ops = &rk_aif1_ops,
> +               .dai_fmt = SND_SOC_DAIFMT_I2S | SND_SOC_DAIFMT_NB_NF |
> +                       SND_SOC_DAIFMT_CBS_CFS,
> +               SND_SOC_DAILINK_REG(hdmi),
> +       }
>  };
>
>  static int rk_98090_headset_init(struct snd_soc_component *component);
> @@ -136,8 +160,8 @@ static struct snd_soc_aux_dev rk_98090_headset_dev = {
>  static struct snd_soc_card snd_soc_card_rk = {
>         .name = "ROCKCHIP-I2S",
>         .owner = THIS_MODULE,
> -       .dai_link = &rk_dailink,
> -       .num_links = 1,
> +       .dai_link = rk_dailinks,
> +       .num_links = ARRAY_SIZE(rk_dailinks),
>         .aux_dev = &rk_98090_headset_dev,
>         .num_aux_devs = 1,
>         .dapm_widgets = rk_dapm_widgets,
> @@ -173,27 +197,48 @@ static int snd_rk_mc_probe(struct platform_device *pdev)
>         int ret = 0;
>         struct snd_soc_card *card = &snd_soc_card_rk;
>         struct device_node *np = pdev->dev.of_node;
> +       struct device_node *np_analog;
> +       struct device_node *np_cpu;
> +       struct of_phandle_args args;
>
>         /* register the soc card */
>         card->dev = &pdev->dev;
>
> -       rk_dailink.codecs->of_node = of_parse_phandle(np,
> -                       "rockchip,audio-codec", 0);
> -       if (!rk_dailink.codecs->of_node) {
> +       np_analog = of_parse_phandle(np, "rockchip,audio-codec", 0);
> +       if (!np_analog) {
>                 dev_err(&pdev->dev,
>                         "Property 'rockchip,audio-codec' missing or invalid\n");
>                 return -EINVAL;
>         }
> +       rk_dailinks[DAILINK_MAX98090].codecs->of_node = np_analog;
> +
> +       ret = of_parse_phandle_with_fixed_args(np, "rockchip,audio-codec",
> +                                              0, 0, &args);
> +       if (ret) {
> +               dev_err(&pdev->dev,
> +                       "Unable to parse property 'rockchip,audio-codec'\n");
> +               return ret;
> +       }
> +
> +       ret = snd_soc_get_dai_name(
> +                       &args, &rk_dailinks[DAILINK_MAX98090].codecs->dai_name);
> +       if (ret) {
> +               dev_err(&pdev->dev, "Unable to get codec dai_name\n");
> +               return ret;
> +       }
> +
> +       np_cpu = of_parse_phandle(np, "rockchip,i2s-controller", 0);
>
> -       rk_dailink.cpus->of_node = of_parse_phandle(np,
> -                       "rockchip,i2s-controller", 0);
> -       if (!rk_dailink.cpus->of_node) {
> +       if (!np_cpu) {
>                 dev_err(&pdev->dev,
>                         "Property 'rockchip,i2s-controller' missing or invalid\n");
>                 return -EINVAL;
>         }
>
> -       rk_dailink.platforms->of_node = rk_dailink.cpus->of_node;
> +       rk_dailinks[DAILINK_MAX98090].cpus->of_node = np_cpu;
> +       rk_dailinks[DAILINK_MAX98090].platforms->of_node = np_cpu;
> +       rk_dailinks[DAILINK_HDMI].cpus->of_node = np_cpu;
> +       rk_dailinks[DAILINK_HDMI].platforms->of_node = np_cpu;
>
>         rk_98090_headset_dev.codec_of_node = of_parse_phandle(np,
>                         "rockchip,headset-codec", 0);
> --
> 2.22.0.410.gd8fdbe21b5-goog
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
