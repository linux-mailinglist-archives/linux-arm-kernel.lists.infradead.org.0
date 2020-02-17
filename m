Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E4E160F3E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 10:50:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+dFXHKCJqRU4IzUBMKiT2sRr/fPNqNk4yG+Tfc8ksxU=; b=nLBhZl1CHTK9IL
	Iv53rWjt5giMEbRxxUZWmWHiAc8bdDjaMKNY2ZxP3LfpIrktHLesduuuO3aRKNLifmJ592xSW2EkH
	bel/qpBtKf9amn9fB7YviodbM0N5TgUM0aJBL/NflKOiVoXXx8SWFsBIqVT3/iWjeVbsE74OnU1ie
	P6r0VBpfOasylKzSIQXSjUGCdeCBIvtEvlGCniYcx3JqEUm4+VuHRMeIVbZnciqqH7xkFrbSNQN6/
	b2CK9dvhZPcoMelcBpVBnUksNIIesnmq6wPx4KI2i8cnrI96I31oX9apPiBnnL0rqA4nz54GmiLgF
	/+o2EmSuTuD1m8HVXQ7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3d32-0006WI-1E; Mon, 17 Feb 2020 09:50:40 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3d2s-0006UX-0G
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 09:50:31 +0000
Received: by mail-ed1-f67.google.com with SMTP id e10so19912930edv.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 01:50:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XrEF/NtEu+Nj+IQK0nqsFK8onNp/rg/dsNwpBu7rDS8=;
 b=l4x+qy8zuOq5ATJW42YVFZeRAqmJvDocQm7KfWJyK4xcD6OWsxS5p9E1AhgZ2U85qx
 FDs4nlagFbTTykXqtQ8DuHPC8muANrJCFOftT5cWfZxlnXgSO/1y5dtbMUQI5F6fPwkz
 GD40/zy315BDfMOTivf8CjrV7gvJscL5CwY6g02vChzuGUBUHBtohdR1iVP9TLCsP7oc
 6YUwGqkQA4Z++I3pdgEyPh2sgqJxOr/6w9VaD6taqrcRG8Bzc2IRdaxuYT0Q9fupbhbH
 HQZZtxDUoHyckQRllgGmEFj8jCce3fEMxN0khydSA583l8d9Ar3WPQBm+IJ3V9Nm4Bic
 eTFA==
X-Gm-Message-State: APjAAAVmlwp6ddn+1sae03cQh4JZcrbztp2ISD5wAqsUd8LAn3gH0ZPn
 KLroc0aPZCJH2bdOSjqk5Y/pq2Taugg=
X-Google-Smtp-Source: APXvYqwfiYeqHvVRf1cmkGfAY02mZNM0i2d3CRxfILJLZsyKQ4hgkXPT2pSJlqdJJLhh+8CxVvV9JQ==
X-Received: by 2002:a17:906:858d:: with SMTP id
 v13mr14220903ejx.100.1581933027467; 
 Mon, 17 Feb 2020 01:50:27 -0800 (PST)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com.
 [209.85.128.46])
 by smtp.gmail.com with ESMTPSA id cb20sm491933edb.1.2020.02.17.01.50.26
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 17 Feb 2020 01:50:26 -0800 (PST)
Received: by mail-wm1-f46.google.com with SMTP id t23so16438010wmi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 01:50:26 -0800 (PST)
X-Received: by 2002:a05:600c:34d:: with SMTP id
 u13mr21962294wmd.77.1581933025751; 
 Mon, 17 Feb 2020 01:50:25 -0800 (PST)
MIME-Version: 1.0
References: <20200217064250.15516-1-samuel@sholland.org>
 <20200217064250.15516-3-samuel@sholland.org>
In-Reply-To: <20200217064250.15516-3-samuel@sholland.org>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 17 Feb 2020 17:50:15 +0800
X-Gmail-Original-Message-ID: <CAGb2v66b=JyB+7WYJ9Yv_C4TS3BSofjaahXc6VP3Kbzo91YffA@mail.gmail.com>
Message-ID: <CAGb2v66b=JyB+7WYJ9Yv_C4TS3BSofjaahXc6VP3Kbzo91YffA@mail.gmail.com>
Subject: Re: [RFC PATCH 02/34] ASoC: sun8i-codec: LRCK is not inverted on A64
To: Samuel Holland <samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_015030_040365_2A5CA893 
X-CRM114-Status: GOOD (  24.89  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Mark Brown <broonie@kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 =?UTF-8?Q?Myl=C3=A8ne_Josserand?= <mylene.josserand@free-electrons.com>,
 stable@kernel.org, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 2:42 PM Samuel Holland <samuel@sholland.org> wrote:
>
> On the A64 (tested with the Pinephone), the current code causes the
> left/right channels to be swapped during I2S playback from the CPU on
> AIF1, and breaks DSP_A communication with the modem on AIF2.
>
> Trusting that the comment in the code is correct, the existing behavior
> is kept for the A33.
>
> Cc: stable@kernel.org
> Fixes: ec4a95409d5c ("arm64: dts: allwinner: a64: add nodes necessary for analog sound support")
> Signed-off-by: Samuel Holland <samuel@sholland.org>
> ---
>  sound/soc/sunxi/sun8i-codec.c | 22 +++++++++++++++++-----
>  1 file changed, 17 insertions(+), 5 deletions(-)
>
> diff --git a/sound/soc/sunxi/sun8i-codec.c b/sound/soc/sunxi/sun8i-codec.c
> index 55798bc8eae2..14cf31f5c535 100644
> --- a/sound/soc/sunxi/sun8i-codec.c
> +++ b/sound/soc/sunxi/sun8i-codec.c
> @@ -13,6 +13,7 @@
>  #include <linux/delay.h>
>  #include <linux/clk.h>
>  #include <linux/io.h>
> +#include <linux/of_device.h>
>  #include <linux/pm_runtime.h>
>  #include <linux/regmap.h>
>  #include <linux/log2.h>
> @@ -89,6 +90,7 @@ struct sun8i_codec {
>         struct regmap   *regmap;
>         struct clk      *clk_module;
>         struct clk      *clk_bus;
> +       bool            inverted_lrck;
>  };
>
>  static int sun8i_codec_runtime_resume(struct device *dev)
> @@ -209,18 +211,19 @@ static int sun8i_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
>                            value << SUN8I_AIF1CLK_CTRL_AIF1_BCLK_INV);
>
>         /*
> -        * It appears that the DAI and the codec don't share the same
> -        * polarity for the LRCK signal when they mean 'normal' and
> -        * 'inverted' in the datasheet.
> +        * It appears that the DAI and the codec in the A33 SoC don't
> +        * share the same polarity for the LRCK signal when they mean
> +        * 'normal' and 'inverted' in the datasheet.
>          *
>          * Since the DAI here is our regular i2s driver that have been
>          * tested with way more codecs than just this one, it means
>          * that the codec probably gets it backward, and we have to
>          * invert the value here.
>          */
> +       value ^= scodec->inverted_lrck;
>         regmap_update_bits(scodec->regmap, SUN8I_AIF1CLK_CTRL,
>                            BIT(SUN8I_AIF1CLK_CTRL_AIF1_LRCK_INV),
> -                          !value << SUN8I_AIF1CLK_CTRL_AIF1_LRCK_INV);
> +                          value << SUN8I_AIF1CLK_CTRL_AIF1_LRCK_INV);
>
>         /* DAI format */
>         switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
> @@ -568,6 +571,8 @@ static int sun8i_codec_probe(struct platform_device *pdev)
>                 return PTR_ERR(scodec->regmap);
>         }
>
> +       scodec->inverted_lrck = (uintptr_t)of_device_get_match_data(&pdev->dev);
> +
>         platform_set_drvdata(pdev, scodec);
>
>         pm_runtime_enable(&pdev->dev);
> @@ -606,7 +611,14 @@ static int sun8i_codec_remove(struct platform_device *pdev)
>  }
>
>  static const struct of_device_id sun8i_codec_of_match[] = {
> -       { .compatible = "allwinner,sun8i-a33-codec" },
> +       {
> +               .compatible = "allwinner,sun8i-a33-codec",
> +               .data = (void *)1,

So depending on the answer to the previous patch, this might be enough,
though somewhat an eyesore. Otherwise I suggest using a proper quirks
structure.

ChenYu


> +       },
> +       {
> +               .compatible = "allwinner,sun50i-a64-codec",
> +               .data = (void *)0,
> +       },
>         {}
>  };
>  MODULE_DEVICE_TABLE(of, sun8i_codec_of_match);
> --
> 2.24.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
