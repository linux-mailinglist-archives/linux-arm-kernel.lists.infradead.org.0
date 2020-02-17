Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EBED160937
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 04:48:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hFR28HXRJlF1Up3xdWn7SUMl62Cdix8y3U961zl+Flk=; b=W1kPkjNlQwGeer
	dDHn4yMMP8Ojo2Ce4Gx3CZvaw7rfk3qZ01Iwta+i2/nUOG6rHYoAaa6tU8re+ec0CEaV4PhXr/B0Z
	MhMF3n4/gKWwtrW3GxtZrzkCISWmvNdXlnDUWaZcRY1iv6p+oJSav2plgEADgIEIDnJlSsqKL1WBn
	i0v6rBfEHuBLGAp1h58WEhn55kLtC81YJLoQHPJG2ATeas6Em4uWFyyzNnzARRLe+4yvoshkP8HXw
	0eTM6XP7uoB3gQm2cSubg4Rb+LfQXGR3O+YZ52gWR1uUeh8yt+R85rmjL1hf/EO1RumYhhu0SIgOs
	4AUOYvKHCuxG+Ko8K9Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3XOc-00034I-Da; Mon, 17 Feb 2020 03:48:34 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3XOS-00033x-Sv
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 03:48:26 +0000
Received: by mail-ed1-f67.google.com with SMTP id m13so19011689edb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 19:48:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1P9UDUTmYMSZh58iCz9VgX9ylC6V1SoZoKFa2vjdalQ=;
 b=WYB/H7CO8S638xeLJyVe7XSnh/9LZhveL6HRevynb2TWuzobTePnUG3G57j8Ai4HYF
 o6XC09dEjMFyAgvoW+8ESTKk2m4yRV+ybyBNQHfe0S62C3shjlOASwaxmvQuLXbF0L0P
 0ga0mI2FpkwJ+4MrNpjsvXVu5AbAbLcHn2w/6oFwOZEFUk5CxWH6PRMijXRI8J4Y2LMj
 zIoEeOJMZ9J1LQrHySyEoJo7TaW9sMrLMMeUyyyubwvs7baNHDuTluQdifUUHN4ii6jO
 l47CHFy7DJ9G5t3fvRY9CVJouq0mYz1za3MH2bzt5sw7c9nsJJlyUKB2ScY0Pq94/oso
 +AVg==
X-Gm-Message-State: APjAAAXT50b8rlgGO+pENaGaM1EUIOnK66ttnZ1v7iqhAk/mMyguc3kx
 /o156OYdeFQvBz0j6ZYMXlQqZd2YAxo=
X-Google-Smtp-Source: APXvYqzswOvzKwWonKPHK/ImhkBFMBPoxlIlT3eJzznl8B4E3yqZqnm+zr29pc59LRVpTn2WzYmk8g==
X-Received: by 2002:aa7:d956:: with SMTP id l22mr12748867eds.66.1581911303422; 
 Sun, 16 Feb 2020 19:48:23 -0800 (PST)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com.
 [209.85.221.46])
 by smtp.gmail.com with ESMTPSA id d1sm826081ejy.3.2020.02.16.19.48.22
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 16 Feb 2020 19:48:23 -0800 (PST)
Received: by mail-wr1-f46.google.com with SMTP id k11so17865308wrd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 19:48:22 -0800 (PST)
X-Received: by 2002:a5d:6805:: with SMTP id w5mr19709664wru.64.1581911302119; 
 Sun, 16 Feb 2020 19:48:22 -0800 (PST)
MIME-Version: 1.0
References: <20200217021813.53266-1-samuel@sholland.org>
 <20200217021813.53266-5-samuel@sholland.org>
In-Reply-To: <20200217021813.53266-5-samuel@sholland.org>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 17 Feb 2020 11:48:11 +0800
X-Gmail-Original-Message-ID: <CAGb2v677p8u8_0jhcbN07QsyVc21dKJmeK6=rxLCbde+AOqreQ@mail.gmail.com>
Message-ID: <CAGb2v677p8u8_0jhcbN07QsyVc21dKJmeK6=rxLCbde+AOqreQ@mail.gmail.com>
Subject: Re: [PATCH 4/8] ASoC: sun50i-codec-analog: Make headphone routes
 stereo
To: Samuel Holland <samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_194824_932985_A487CDF3 
X-CRM114-Status: GOOD (  16.29  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
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
Cc: Luca Weiss <luca@z3ntu.xyz>, Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Takashi Iwai <tiwai@suse.com>,
 Maxime Ripard <mripard@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Mon, Feb 17, 2020 at 10:18 AM Samuel Holland <samuel@sholland.org> wrote:
>
> This matches the hardware more accurately, and is necessary for
> including the (stereo) headphone mute switch in the DAPM graph.
>
> Signed-off-by: Samuel Holland <samuel@sholland.org>
> ---
>  sound/soc/sunxi/sun50i-codec-analog.c | 28 +++++++++++++++++++--------
>  1 file changed, 20 insertions(+), 8 deletions(-)
>
> diff --git a/sound/soc/sunxi/sun50i-codec-analog.c b/sound/soc/sunxi/sun50i-codec-analog.c
> index 17165f1ddb63..f98851067f97 100644
> --- a/sound/soc/sunxi/sun50i-codec-analog.c
> +++ b/sound/soc/sunxi/sun50i-codec-analog.c
> @@ -311,9 +311,15 @@ static const struct snd_soc_dapm_widget sun50i_a64_codec_widgets[] = {
>          */
>
>         SND_SOC_DAPM_REGULATOR_SUPPLY("cpvdd", 0, 0),
> -       SND_SOC_DAPM_MUX("Headphone Source Playback Route",
> +       SND_SOC_DAPM_MUX("Left Headphone Source",
>                          SND_SOC_NOPM, 0, 0, sun50i_codec_hp_src),
> -       SND_SOC_DAPM_OUT_DRV("Headphone Amp", SUN50I_ADDA_HP_CTRL,
> +       SND_SOC_DAPM_MUX("Right Headphone Source",

Please don't remove the widget suffix. The suffix was chosen to work with
alsa-lib's control parsing code. The term "Playback Route" is appropriate
because it is playback only, and it is a routing switch, not a source or
sink.

Also, what's wrong with just having a single "stereo" widget instead of
two "mono" widgets? I added stereo (2-channel) support to DAPM quite
some time ago. You just have to have two routes in and out.

ChenYu

> +                        SND_SOC_NOPM, 0, 0, sun50i_codec_hp_src),
> +       SND_SOC_DAPM_OUT_DRV("Left Headphone Amp",
> +                            SND_SOC_NOPM, 0, 0, NULL, 0),
> +       SND_SOC_DAPM_OUT_DRV("Right Headphone Amp",
> +                            SND_SOC_NOPM, 0, 0, NULL, 0),
> +       SND_SOC_DAPM_SUPPLY("Headphone Amp", SUN50I_ADDA_HP_CTRL,
>                              SUN50I_ADDA_HP_CTRL_HPPA_EN, 0, NULL, 0),
>         SND_SOC_DAPM_OUTPUT("HP"),
>
> @@ -405,13 +411,19 @@ static const struct snd_soc_dapm_route sun50i_a64_codec_routes[] = {
>         { "Right ADC", NULL, "Right ADC Mixer" },
>
>         /* Headphone Routes */
> -       { "Headphone Source Playback Route", "DAC", "Left DAC" },
> -       { "Headphone Source Playback Route", "DAC", "Right DAC" },
> -       { "Headphone Source Playback Route", "Mixer", "Left Mixer" },
> -       { "Headphone Source Playback Route", "Mixer", "Right Mixer" },
> -       { "Headphone Amp", NULL, "Headphone Source Playback Route" },
> +       { "Left Headphone Source", "DAC", "Left DAC" },
> +       { "Left Headphone Source", "Mixer", "Left Mixer" },
> +       { "Left Headphone Amp", NULL, "Left Headphone Source" },
> +       { "Left Headphone Amp", NULL, "Headphone Amp" },
> +       { "HP", NULL, "Left Headphone Amp" },
> +
> +       { "Right Headphone Source", "DAC", "Right DAC" },
> +       { "Right Headphone Source", "Mixer", "Right Mixer" },
> +       { "Right Headphone Amp", NULL, "Right Headphone Source" },
> +       { "Right Headphone Amp", NULL, "Headphone Amp" },
> +       { "HP", NULL, "Right Headphone Amp" },
> +
>         { "Headphone Amp", NULL, "cpvdd" },
> -       { "HP", NULL, "Headphone Amp" },
>
>         /* Microphone Routes */
>         { "Mic1 Amplifier", NULL, "MIC1"},
> --
> 2.24.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
