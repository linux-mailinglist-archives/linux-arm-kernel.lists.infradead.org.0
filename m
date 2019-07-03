Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C46A5DFE8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 10:35:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j2pKS5wML3kVd0mE9TaxL1b9jCrYRn/dYA3I8NEq7WY=; b=S4aBQPhNeiGKty
	Z5FblwMDBgHaQRjx++XA2eSQRZ4CsGbI0WPo64mCtFpRQHYEFMvtNl++N1aUGf7wdiHGs0a+25erJ
	vdTkKdpPdbEBQtWAB/66lv/VEYhFkd2YP/XLSZqRfNC4S4RbHUBvkEPV/8Gyh/Adm/DIABsZSLnwk
	MsxsPmSU3kw3mWkKPwNiFGzeowyedA4zR3oFHpQ087QeR46P+fJBt0mDJqFkF7DrPFVEIyz6KWCJX
	8dRYMSAXO8PpfpyFTo38htF1zNDWrgFG/q7GowfSfH8VfxkNHxjoHscCcxE/ZR+z5zSzPO1qI4Ej2
	F0JHkFDYzME9s/6qXhmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiajF-0003SK-Qh; Wed, 03 Jul 2019 08:35:01 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiaiy-0003Qb-Tj
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 08:34:46 +0000
Received: by mail-ed1-f68.google.com with SMTP id r12so1222887edo.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 01:34:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=J82z1LlQmnxvq8BGCR47A7grHNbwxVExo4k//gkAz/g=;
 b=Ai7fAYR+7QTAbzjSAmniW7O/TChEfG+j8j3LW/KOPTHYIrCW8mEBQ3kXyWhW0r3D0Y
 2bnpAdTIYpi2/KW4Efxsz13wDE/RYjBxrNcMx1kmFmt4edUexcxS/5zHUAm1va7bPJ9M
 ob3f2KZeBXlDtHUIXW0/jZ1NclkAnS+BmSH2JSgOQUdsuLLuwjFTutJpEk404IsJCbSS
 HppiLBEOwpLVVYjSy04M0cEjC35OAwBg43+3dFucDE1Vdq6Hl4odYGkqghIgRw1rfwg7
 z79aWIMmeJt3gU2pDlkKTthsONxBeii0PJlSmzieMzhzA+BvPFktyhxVd9/i/RBV+sMn
 qeag==
X-Gm-Message-State: APjAAAVLtwz0Bi5jHsa897iTfrge8pm2Q3A9iK5G69W5gNCJfsLp2tG5
 oKpH2HIsoewBPBkMU+nVhwZRkje65/8=
X-Google-Smtp-Source: APXvYqzrbq6m9ezjaeldU8t1MLWRJs24YYFNuwnr7CYBv+15BDE9p6WQe9uR0o8yd5bOxv26pm2UgA==
X-Received: by 2002:a17:906:b35a:: with SMTP id
 cd26mr32145987ejb.86.1562142882430; 
 Wed, 03 Jul 2019 01:34:42 -0700 (PDT)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com.
 [209.85.221.49])
 by smtp.gmail.com with ESMTPSA id b19sm311210eje.80.2019.07.03.01.34.40
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Jul 2019 01:34:41 -0700 (PDT)
Received: by mail-wr1-f49.google.com with SMTP id v14so1741758wrr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 01:34:40 -0700 (PDT)
X-Received: by 2002:a5d:5009:: with SMTP id e9mr23708360wrt.279.1562142880511; 
 Wed, 03 Jul 2019 01:34:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190702191613.11084-1-luca@z3ntu.xyz>
In-Reply-To: <20190702191613.11084-1-luca@z3ntu.xyz>
From: Chen-Yu Tsai <wens@csie.org>
Date: Wed, 3 Jul 2019 16:34:29 +0800
X-Gmail-Original-Message-ID: <CAGb2v66gX83sR-aWgFKBX+BH7Mud_PaAMvw4eNctQZFMkBYo=g@mail.gmail.com>
Message-ID: <CAGb2v66gX83sR-aWgFKBX+BH7Mud_PaAMvw4eNctQZFMkBYo=g@mail.gmail.com>
Subject: Re: [PATCH] ASoC: sunxi: sun50i-codec-analog: Add earpiece
To: Luca Weiss <luca@z3ntu.xyz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_013445_029849_5B1623AC 
X-CRM114-Status: GOOD (  17.34  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 Maxime Ripard <maxime.ripard@bootlin.com>,
 ~martijnbraam/pmos-upstream@lists.sr.ht, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 3, 2019 at 3:17 AM Luca Weiss <luca@z3ntu.xyz> wrote:
>
> This adds the necessary registers and audio routes to play audio using
> the Earpiece, that's supported on the A64.
>
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> ---
> So, first of all: This is my first audio patch and I hope I didn't make
> too many mistakes :) , especially with the routes at the bottom of
> the patch.
>
> What I'm really unsure about, is how the enable & mute registers should
> be handled. Should I put both registers into a SOC_DOUBLE("Earpiece
> Playback Switch",...)?

What we normally have with sunxi is the "Enable" switches typically
control whether a given function is active or not. With the earpiece
output, it controls the amplifier for the output. This should be modeled
as a separate DAPM widget, without a control, and let the framework
deal with it.

The mute controls the signal, so you can just keep as a control.

>  sound/soc/sunxi/sun50i-codec-analog.c | 51 +++++++++++++++++++++++++++
>  1 file changed, 51 insertions(+)
>
> diff --git a/sound/soc/sunxi/sun50i-codec-analog.c b/sound/soc/sunxi/sun50i-codec-analog.c
> index d105c90c3706..6c19fea992c5 100644
> --- a/sound/soc/sunxi/sun50i-codec-analog.c
> +++ b/sound/soc/sunxi/sun50i-codec-analog.c
> @@ -49,6 +49,15 @@
>  #define SUN50I_ADDA_OR_MIX_CTRL_DACR           1
>  #define SUN50I_ADDA_OR_MIX_CTRL_DACL           0
>
> +#define SUN50I_ADDA_EARPIECE_CTRL0     0x03
> +#define SUN50I_ADDA_EARPIECE_CTRL0_EAR_RAMP_TIME       4
> +#define SUN50I_ADDA_EARPIECE_CTRL0_ESPSR               0
> +
> +#define SUN50I_ADDA_EARPIECE_CTRL1     0x04
> +#define SUN50I_ADDA_EARPIECE_CTRL1_ESPPA_EN    7
> +#define SUN50I_ADDA_EARPIECE_CTRL1_ESPPA_MUTE  6
> +#define SUN50I_ADDA_EARPIECE_CTRL1_ESP_VOL     0
> +
>  #define SUN50I_ADDA_LINEOUT_CTRL0      0x05
>  #define SUN50I_ADDA_LINEOUT_CTRL0_LEN          7
>  #define SUN50I_ADDA_LINEOUT_CTRL0_REN          6
> @@ -172,6 +181,10 @@ static const DECLARE_TLV_DB_RANGE(sun50i_codec_lineout_vol_scale,
>         2, 31, TLV_DB_SCALE_ITEM(-4350, 150, 0),
>  );
>
> +static const DECLARE_TLV_DB_RANGE(sun50i_codec_earpiece_vol_scale,
> +       0, 1, TLV_DB_SCALE_ITEM(TLV_DB_GAIN_MUTE, 0, 1),
> +       2, 31, TLV_DB_SCALE_ITEM(-4350, 150, 0),
> +);
>
>  /* volume / mute controls */
>  static const struct snd_kcontrol_new sun50i_a64_codec_controls[] = {
> @@ -225,6 +238,19 @@ static const struct snd_kcontrol_new sun50i_a64_codec_controls[] = {
>                    SUN50I_ADDA_LINEOUT_CTRL0_LEN,
>                    SUN50I_ADDA_LINEOUT_CTRL0_REN, 1, 0),
>
> +       SOC_SINGLE_TLV("Earpiece Playback Volume",
> +                      SUN50I_ADDA_EARPIECE_CTRL1,
> +                      SUN50I_ADDA_EARPIECE_CTRL1_ESP_VOL, 0x1f, 0,
> +                      sun50i_codec_earpiece_vol_scale),
> +
> +       SOC_SINGLE("Earpiece Playback Switch (enable)",
> +                  SUN50I_ADDA_EARPIECE_CTRL1,
> +                  SUN50I_ADDA_EARPIECE_CTRL1_ESPPA_EN, 1, 0),

As mentioned above, this should be a DAPM widget instead.

> +
> +       SOC_SINGLE("Earpiece Playback Switch",
> +                  SUN50I_ADDA_EARPIECE_CTRL1,
> +                  SUN50I_ADDA_EARPIECE_CTRL1_ESPPA_MUTE, 1, 0),
> +
>  };
>
>  static const char * const sun50i_codec_hp_src_enum_text[] = {
> @@ -257,6 +283,20 @@ static const struct snd_kcontrol_new sun50i_codec_lineout_src[] = {
>                       sun50i_codec_lineout_src_enum),
>  };
>
> +static const char * const sun50i_codec_earpiece_src_enum_text[] = {
> +       "DACR", "DACL", "Right Analog Mixer", "Left Analog Mixer",

I suggest dropping "Analog" to match what other controls, such as the
Headphone Source" control, uses.

ChenYu

> +};
> +
> +static SOC_ENUM_SINGLE_DECL(sun50i_codec_earpiece_src_enum,
> +                           SUN50I_ADDA_EARPIECE_CTRL0,
> +                           SUN50I_ADDA_EARPIECE_CTRL0_ESPSR,
> +                           sun50i_codec_earpiece_src_enum_text);
> +
> +static const struct snd_kcontrol_new sun50i_codec_earpiece_src[] = {
> +       SOC_DAPM_ENUM("Earpiece Source Playback Route",
> +                     sun50i_codec_earpiece_src_enum),
> +};
> +
>  static const struct snd_soc_dapm_widget sun50i_a64_codec_widgets[] = {
>         /* DAC */
>         SND_SOC_DAPM_DAC("Left DAC", NULL, SUN50I_ADDA_MIX_DAC_CTRL,
> @@ -285,6 +325,10 @@ static const struct snd_soc_dapm_widget sun50i_a64_codec_widgets[] = {
>                          SND_SOC_NOPM, 0, 0, sun50i_codec_lineout_src),
>         SND_SOC_DAPM_OUTPUT("LINEOUT"),
>
> +       SND_SOC_DAPM_MUX("Earpiece Source Playback Route",
> +                        SND_SOC_NOPM, 0, 0, sun50i_codec_earpiece_src),
> +       SND_SOC_DAPM_OUTPUT("EARPIECE"),
> +
>         /* Microphone inputs */
>         SND_SOC_DAPM_INPUT("MIC1"),
>
> @@ -388,6 +432,13 @@ static const struct snd_soc_dapm_route sun50i_a64_codec_routes[] = {
>         { "Line Out Source Playback Route", "Mono Differential",
>                 "Right Mixer" },
>         { "LINEOUT", NULL, "Line Out Source Playback Route" },
> +
> +       /* Earpiece Routes */
> +       { "Earpiece Source Playback Route", "DACL", "Left DAC" },
> +       { "Earpiece Source Playback Route", "DACR", "Right DAC" },
> +       { "Earpiece Source Playback Route", "Left Analog Mixer", "Left Mixer" },
> +       { "Earpiece Source Playback Route", "Right Analog Mixer", "Right Mixer" },
> +       { "EARPIECE", NULL, "Earpiece Source Playback Route" },
>  };
>
>  static const struct snd_soc_component_driver sun50i_codec_analog_cmpnt_drv = {
> --
> 2.22.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
