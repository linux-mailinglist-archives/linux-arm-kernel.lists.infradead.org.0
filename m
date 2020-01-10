Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E961373B1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 17:31:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J9aPelV5Snz9LJwUvLWIdpO4xFvJu53nguA7NUimx8o=; b=BV/64D5xk79nTS
	2HlQfhAOz9qVm8OIml+zorDsSf0bi1DpoFP8ystXn+sav48MnWVvBClufXbZgf2J4F979w1f5NjVO
	x0is+vOhd85IDI/zGAtIvSMcTte6qtsLFz47mxgUyfS262Mi2+ORSA5PhdCDtQna3gcF/CJ3cefHp
	l5eUEhYARO/3kAPE9XRtfJjSMQtyFqkjMz9SS8AgYHDV3MlFg/kUEIOr3D3F5QxKylmmmgeR+FoKh
	E8l+QX4P3+UDP0X0ZfXvG0Dnh8dLFNMtDINMkjSGkkZy6UGdumpDJPBhX58YoZyk3NNQVEhlBebR7
	YRWN6FwiCOQIR5uMq4yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipxBw-0002Sp-5m; Fri, 10 Jan 2020 16:31:20 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipxBm-0002RF-EP
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 16:31:12 +0000
Received: by mail-ed1-f67.google.com with SMTP id dc19so2077883edb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Jan 2020 08:31:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BcakXweHEcQflg8HJoYvX703zzGZOe1NoqnogCk40Mc=;
 b=h429rkg3R9LfMAjgOHAEN7Zkf0Ae9vTvxwuhCpMDm2GzE099iisVIkhOUp2XXstsj2
 a8Q4FRWdXLF+TU9k/E3nkfCr9qg5ZwYMcQSzjeWeOeXPYQ7VDw+VdWcgrhl/dt9LxJEv
 EULmftHMyyEkL6vErzLltUsap6hqWKp4lVmNTBDxtzwf9MzI8omHEjqa6OJE3gvgriI1
 TcP/XFJyVOKsZnGITacfIZgfDQ/8mHYfZIcmpDiuzOx0tB/eV2ptadudLJIQhDXQ8DQZ
 sE8fKeZsopo5BtuLB/jcaxPixaJbL0j1IvejBGmFMDpeD2nXpOje4+vdgy6ufqg+TNc1
 dr5Q==
X-Gm-Message-State: APjAAAWGJblWrTVDcVaascTV85+0hX8GMa53CIVum5yEmurW9teBT9GB
 +OMtd3WZ+i/qCcNgTIJPTdxm9RYlxR8=
X-Google-Smtp-Source: APXvYqzKkel2aWOViBKZvuvZ/OvI89n8FC3tr4DFHzSYI7bG4f4G9ZoH6yzxwyz+PTehOVSYZRvASw==
X-Received: by 2002:a50:ed11:: with SMTP id j17mr4564012eds.38.1578673867679; 
 Fri, 10 Jan 2020 08:31:07 -0800 (PST)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com.
 [209.85.221.41])
 by smtp.gmail.com with ESMTPSA id t19sm54365eju.10.2020.01.10.08.31.07
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 10 Jan 2020 08:31:07 -0800 (PST)
Received: by mail-wr1-f41.google.com with SMTP id c9so2385977wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Jan 2020 08:31:07 -0800 (PST)
X-Received: by 2002:adf:ef4e:: with SMTP id c14mr4522664wrp.142.1578673866678; 
 Fri, 10 Jan 2020 08:31:06 -0800 (PST)
MIME-Version: 1.0
References: <20200110141140.28527-1-stefan@olimex.com>
 <20200110141140.28527-3-stefan@olimex.com>
In-Reply-To: <20200110141140.28527-3-stefan@olimex.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Sat, 11 Jan 2020 00:30:53 +0800
X-Gmail-Original-Message-ID: <CAGb2v670FN7-dyjQuL+gyagupm5pr+z1ZWGG8E8YnYJA0aKPEA@mail.gmail.com>
Message-ID: <CAGb2v670FN7-dyjQuL+gyagupm5pr+z1ZWGG8E8YnYJA0aKPEA@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH 2/2] drm: sun4i: hdmi: Add support for sun4i
 HDMI encoder audio
To: Stefan Mavrodiev <stefan@olimex.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_083110_487759_F395B88A 
X-CRM114-Status: GOOD (  20.38  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: David Airlie <airlied@linux.ie>, linux-sunxi <linux-sunxi@googlegroups.com>,
 open list <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Vinod Koul <vkoul@kernel.org>,
 "open list:DRM DRIVERS FOR ALLWINNER A10" <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 "open list:DMA GENERIC OFFLOAD ENGINE SUBSYSTEM" <dmaengine@vger.kernel.org>,
 Dan Williams <dan.j.williams@intel.com>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 10:12 PM Stefan Mavrodiev <stefan@olimex.com> wrote:
>
> Add HDMI audio support for the sun4i-hdmi encoder, used on
> the older Allwinner chips - A10, A20, A31.
>
> Most of the code is based on the BSP implementation. In it
> dditional formats are supported (S20_3LE and S24_LE), however
> there where some problems with them and only S16_LE is left.
>
> Signed-off-by: Stefan Mavrodiev <stefan@olimex.com>
> ---
>  drivers/gpu/drm/sun4i/Kconfig            |   1 +
>  drivers/gpu/drm/sun4i/Makefile           |   1 +
>  drivers/gpu/drm/sun4i/sun4i_hdmi.h       |  30 ++
>  drivers/gpu/drm/sun4i/sun4i_hdmi_audio.c | 375 +++++++++++++++++++++++
>  drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c   |   4 +
>  5 files changed, 411 insertions(+)
>  create mode 100644 drivers/gpu/drm/sun4i/sun4i_hdmi_audio.c
>
> diff --git a/drivers/gpu/drm/sun4i/Kconfig b/drivers/gpu/drm/sun4i/Kconfig
> index 37e90e42943f..192b732b10cd 100644
> --- a/drivers/gpu/drm/sun4i/Kconfig
> +++ b/drivers/gpu/drm/sun4i/Kconfig
> @@ -19,6 +19,7 @@ if DRM_SUN4I
>  config DRM_SUN4I_HDMI
>         tristate "Allwinner A10 HDMI Controller Support"
>         default DRM_SUN4I
> +       select SND_PCM_ELD
>         help
>           Choose this option if you have an Allwinner SoC with an HDMI
>           controller.
> diff --git a/drivers/gpu/drm/sun4i/Makefile b/drivers/gpu/drm/sun4i/Makefile
> index 0d04f2447b01..e2d82b451c36 100644
> --- a/drivers/gpu/drm/sun4i/Makefile
> +++ b/drivers/gpu/drm/sun4i/Makefile
> @@ -5,6 +5,7 @@ sun4i-frontend-y                += sun4i_frontend.o
>  sun4i-drm-y                    += sun4i_drv.o
>  sun4i-drm-y                    += sun4i_framebuffer.o
>
> +sun4i-drm-hdmi-y               += sun4i_hdmi_audio.o
>  sun4i-drm-hdmi-y               += sun4i_hdmi_ddc_clk.o
>  sun4i-drm-hdmi-y               += sun4i_hdmi_enc.o
>  sun4i-drm-hdmi-y               += sun4i_hdmi_i2c.o
> diff --git a/drivers/gpu/drm/sun4i/sun4i_hdmi.h b/drivers/gpu/drm/sun4i/sun4i_hdmi.h
> index 7ad3f06c127e..456964e681b0 100644
> --- a/drivers/gpu/drm/sun4i/sun4i_hdmi.h
> +++ b/drivers/gpu/drm/sun4i/sun4i_hdmi.h
> @@ -42,7 +42,32 @@
>  #define SUN4I_HDMI_VID_TIMING_POL_VSYNC                BIT(1)
>  #define SUN4I_HDMI_VID_TIMING_POL_HSYNC                BIT(0)
>
> +#define SUN4I_HDMI_AUDIO_CTRL_REG      0x040
> +#define SUN4I_HDMI_AUDIO_CTRL_ENABLE           BIT(31)
> +#define SUN4I_HDMI_AUDIO_CTRL_RESET            BIT(30)
> +
> +#define SUN4I_HDMI_AUDIO_FMT_REG       0x048
> +#define SUN4I_HDMI_AUDIO_FMT_SRC               BIT(31)
> +#define SUN4I_HDMI_AUDIO_FMT_LAYOUT            BIT(3)
> +#define SUN4I_HDMI_AUDIO_FMT_CH_CFG(n)         (n - 1)
> +#define SUN4I_HDMI_AUDIO_FMT_CH_CFG_MASK       GENMASK(2, 0)
> +
> +#define SUN4I_HDMI_AUDIO_PCM_REG       0x4c
> +#define SUN4I_HDMI_AUDIO_PCM_CH_MAP(n, m)      ((m - 1) << (n * 4))
> +#define SUN4I_HDMI_AUDIO_PCM_CH_MAP_MASK(n)    (GENMASK(2, 0) << (n * 4))
> +
> +#define SUN4I_HDMI_AUDIO_CTS_REG       0x050
> +#define SUN4I_HDMI_AUDIO_CTS(n)                        (n & GENMASK(19, 0))
> +
> +#define SUN4I_HDMI_AUDIO_N_REG         0x054
> +#define SUN4I_HDMI_AUDIO_N(n)                  (n & GENMASK(19, 0))
> +
> +#define SUN4I_HDMI_AUDIO_STAT0_REG     0x58
> +#define SUN4I_HDMI_AUDIO_STAT0_FREQ(n)         (n << 24)
> +#define SUN4I_HDMI_AUDIO_STAT0_FREQ_MASK       GENMASK(27, 24)
> +
>  #define SUN4I_HDMI_AVI_INFOFRAME_REG(n)        (0x080 + (n))
> +#define SUN4I_HDMI_AUDIO_INFOFRAME_REG(n)      (0x0a0 + (n))
>
>  #define SUN4I_HDMI_PAD_CTRL0_REG       0x200
>  #define SUN4I_HDMI_PAD_CTRL0_BIASEN            BIT(31)
> @@ -283,9 +308,13 @@ struct sun4i_hdmi {
>         struct regmap_field     *field_ddc_sda_en;
>         struct regmap_field     *field_ddc_sck_en;
>
> +       u8                      hdmi_audio_channels;
> +
>         struct sun4i_drv        *drv;
>
>         bool                    hdmi_monitor;
> +       bool                    hdmi_audio;
> +
>         struct cec_adapter      *cec_adap;
>
>         const struct sun4i_hdmi_variant *variant;
> @@ -294,5 +323,6 @@ struct sun4i_hdmi {
>  int sun4i_ddc_create(struct sun4i_hdmi *hdmi, struct clk *clk);
>  int sun4i_tmds_create(struct sun4i_hdmi *hdmi);
>  int sun4i_hdmi_i2c_create(struct device *dev, struct sun4i_hdmi *hdmi);
> +int sun4i_hdmi_audio_create(struct sun4i_hdmi *hdmi);
>
>  #endif /* _SUN4I_HDMI_H_ */
> diff --git a/drivers/gpu/drm/sun4i/sun4i_hdmi_audio.c b/drivers/gpu/drm/sun4i/sun4i_hdmi_audio.c
> new file mode 100644
> index 000000000000..b6d4199d15ce
> --- /dev/null
> +++ b/drivers/gpu/drm/sun4i/sun4i_hdmi_audio.c
> @@ -0,0 +1,375 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright (C) 2020 Olimex Ltd.
> + *   Author: Stefan Mavrodiev <stefan@olimex.com>
> + */
> +#include <linux/dma-mapping.h>
> +#include <linux/dmaengine.h>
> +#include <linux/module.h>
> +#include <linux/of_dma.h>
> +#include <linux/regmap.h>
> +
> +#include <drm/drm_print.h>
> +
> +#include <sound/dmaengine_pcm.h>
> +#include <sound/pcm_drm_eld.h>
> +#include <sound/pcm_params.h>
> +#include <sound/soc.h>

I would drop the ASoC stuff and just do a standard ALSA driver.
You really don't gain anything from using ASoC, since this is
just a really standard PCM DMA interface plus some controls.
There aren't multiple components that need to be strung together.

ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
