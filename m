Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A808A160BA2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 08:33:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GaYzGGyWVt5/7xq+miKJYUl6kSQhjxQZW5CCSIwk/K4=; b=MAw7sm7JzvcGXM
	arIukI7WwPfJC/aZj6rqJGEvtGAsk3DwNMqSiuDgvCFbQCIfsTQegjlENwOAaQCnxdWhUuJYheGoL
	3rSUREX9xPT/rnIMbo8SsSSGX0xmnU+2CWOYcvI/7BOTGOB3ZYK31yhP4W8v3TngVXIbogPZ5f/Zb
	GgiiWMnjbXDf/qqRprKkrkmMZ35nMyUkArYRnjfXhd5ty82/wcnrCH5u25p8CyCzV/+p9kQfuDYpW
	RUc4OvwLSSkI2fjlYUVREQ9ahTZOAAgm05lhpu8sVAoInqNnjCLyvEZF8x5A3hWor6JbqRZuOxViA
	xnoWztHfA1ZU4uwMowyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3auW-0007Qt-4d; Mon, 17 Feb 2020 07:33:44 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3auO-0007QL-6t
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 07:33:37 +0000
Received: by mail-ed1-f67.google.com with SMTP id r18so19551983edl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 23:33:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gSSCawygB3nvTAtWswavRnt6s9D1sDcPs8tiWUcv5Cc=;
 b=m7u51LI1xFQH++gbRCPyu9U+wifPNOhSxxITCYShXNJkpJiiW5p+uGSYGC2O8jOOtq
 TFCqu/XVXXSVDhLiJQLTJKJHL45OD4+5Rl1m8qzzo7IcM7L7IW1Df3NCW736LxR/iC7g
 bvmFX+iQSE7qC6AdAmpg8hPrkFcbyAhyT3hDmjRizzsEi2BvBaM+eq1M3cVHXp58e9Oo
 b4So3fpQ8dKgtWWh4vxhaopwg4vIGUywD3DkJPlaao0+Xb8sGUtSp3eeS/1xqsVw7X1k
 PhOAXwpMLyP8cBECRCLx1qIWq7wqWor6Rj7s376ZZzSGcRSEmog97TydwG8zYBeRTEXU
 CGng==
X-Gm-Message-State: APjAAAUaweHOeUCcOTawrjbWF4QUGfzjR7UIwH4KwF51XLJ/NpMVoA01
 HkqRVqBHnfyBTytXNbjZMrRe9Xy2LVM=
X-Google-Smtp-Source: APXvYqy/Z8pyeFQ+qZs3wxD6YzGoZmJX/0/3CLJ/E9QOQcrs2nilbFZCgJujv4PudI4cHad6LA19oQ==
X-Received: by 2002:a17:906:53d4:: with SMTP id
 p20mr13796706ejo.365.1581924814207; 
 Sun, 16 Feb 2020 23:33:34 -0800 (PST)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com.
 [209.85.128.46])
 by smtp.gmail.com with ESMTPSA id lu4sm827508ejb.76.2020.02.16.23.33.33
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 16 Feb 2020 23:33:34 -0800 (PST)
Received: by mail-wm1-f46.google.com with SMTP id t23so16022231wmi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 23:33:33 -0800 (PST)
X-Received: by 2002:a1c:dc85:: with SMTP id t127mr22012620wmg.16.1581924813434; 
 Sun, 16 Feb 2020 23:33:33 -0800 (PST)
MIME-Version: 1.0
References: <20200217021813.53266-1-samuel@sholland.org>
 <20200217021813.53266-9-samuel@sholland.org>
In-Reply-To: <20200217021813.53266-9-samuel@sholland.org>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 17 Feb 2020 15:33:22 +0800
X-Gmail-Original-Message-ID: <CAGb2v67wvWEYM4ttKVmgM6Pou+00tuvwb8nMvjR+Y+F-p2cA=g@mail.gmail.com>
Message-ID: <CAGb2v67wvWEYM4ttKVmgM6Pou+00tuvwb8nMvjR+Y+F-p2cA=g@mail.gmail.com>
Subject: Re: [PATCH 8/8] ASoC: sun50i-codec-analog: Enable DAPM for earpiece
 switch
To: Samuel Holland <samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_233336_250750_A5A25160 
X-CRM114-Status: GOOD (  17.20  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
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
> By including the earpiece mute switch in the DAPM graph, both the
> earpiece amplifier and the Mixer/DAC inputs can be powered off when
> the earpiece is muted.
>
> The mute switch is between the source selection and the amplifier,
> as per the diagram in the SoC manual.
>
> Signed-off-by: Samuel Holland <samuel@sholland.org>
> ---
>  sound/soc/sunxi/sun50i-codec-analog.c | 15 +++++++++------
>  1 file changed, 9 insertions(+), 6 deletions(-)
>
> diff --git a/sound/soc/sunxi/sun50i-codec-analog.c b/sound/soc/sunxi/sun50i-codec-analog.c
> index 84bb76cad74f..6c89b0716bbd 100644
> --- a/sound/soc/sunxi/sun50i-codec-analog.c
> +++ b/sound/soc/sunxi/sun50i-codec-analog.c
> @@ -232,11 +232,6 @@ static const struct snd_kcontrol_new sun50i_a64_codec_controls[] = {
>                        SUN50I_ADDA_EARPIECE_CTRL1,
>                        SUN50I_ADDA_EARPIECE_CTRL1_ESP_VOL, 0x1f, 0,
>                        sun50i_codec_earpiece_vol_scale),
> -
> -       SOC_SINGLE("Earpiece Playback Switch",
> -                  SUN50I_ADDA_EARPIECE_CTRL1,
> -                  SUN50I_ADDA_EARPIECE_CTRL1_ESPPA_MUTE, 1, 0),
> -
>  };
>
>  static const char * const sun50i_codec_hp_src_enum_text[] = {
> @@ -295,6 +290,11 @@ static const struct snd_kcontrol_new sun50i_codec_earpiece_src[] = {
>                       sun50i_codec_earpiece_src_enum),
>  };
>
> +static const struct snd_kcontrol_new sun50i_codec_earpiece_switch =
> +       SOC_DAPM_SINGLE("Playback Switch",
> +                       SUN50I_ADDA_EARPIECE_CTRL1,
> +                       SUN50I_ADDA_EARPIECE_CTRL1_ESPPA_MUTE, 1, 0);
> +
>  static const struct snd_soc_dapm_widget sun50i_a64_codec_widgets[] = {
>         /* DAC */
>         SND_SOC_DAPM_DAC("Left DAC", NULL, SUN50I_ADDA_MIX_DAC_CTRL,
> @@ -341,6 +341,8 @@ static const struct snd_soc_dapm_widget sun50i_a64_codec_widgets[] = {
>
>         SND_SOC_DAPM_MUX("Earpiece Source Playback Route",
>                          SND_SOC_NOPM, 0, 0, sun50i_codec_earpiece_src),
> +       SND_SOC_DAPM_SWITCH("Earpiece",
> +                           SND_SOC_NOPM, 0, 0, &sun50i_codec_earpiece_switch),

I would suggest naming this something a bit more specific, in case someone
uses "Earpiece" as a widget name at the board level. Also, having the
"Earpiece" come before the "Earpiece Amp" in the route doesn't make much
sense. However, this creates an issue with the name of the created kcontrol...
Any other ideas?

ChenYu


>         SND_SOC_DAPM_OUT_DRV("Earpiece Amp", SUN50I_ADDA_EARPIECE_CTRL1,
>                              SUN50I_ADDA_EARPIECE_CTRL1_ESPPA_EN, 0, NULL, 0),
>         SND_SOC_DAPM_OUTPUT("EARPIECE"),
> @@ -462,7 +464,8 @@ static const struct snd_soc_dapm_route sun50i_a64_codec_routes[] = {
>         { "Earpiece Source Playback Route", "DACR", "Right DAC" },
>         { "Earpiece Source Playback Route", "Left Mixer", "Left Mixer" },
>         { "Earpiece Source Playback Route", "Right Mixer", "Right Mixer" },
> -       { "Earpiece Amp", NULL, "Earpiece Source Playback Route" },
> +       { "Earpiece", "Playback Switch", "Earpiece Source Playback Route" },
> +       { "Earpiece Amp", NULL, "Earpiece" },
>         { "EARPIECE", NULL, "Earpiece Amp" },
>  };
>
> --
> 2.24.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
