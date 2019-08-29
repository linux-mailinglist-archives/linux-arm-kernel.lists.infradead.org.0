Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 379DFA2985
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 00:17:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ll5BE/H9WdNqWF0KLUGSMDGJE33xCOdhNZcQyVTRo98=; b=nQ2w3jl7jJK16+
	cKSY3JzKraZAZwI3SHLAxcuWtp1ZMucUGd7R8Oqsjjxy82jGRH7wUrdVWpzeO5hkOxOQss03gaBZW
	togabRAnMR8TwvAZwY4HL2LQ+1bGsaiQgxv3vVRXPihB1u8NyZ4l3C42XmUBDHveRQp008BICBUPc
	1zD11K/BiFWtgD7w1p6dRuvzhdHfa//XyujlDHdb6IBEF4VHzodQXo31z7gmS3C8Nq7VFZDF14gAs
	V79mEvNF50VaA9qtVtnm9aanQHQjRq1IS8BXhF8VKKAfexSo6LtdkC0XhnCn4O/T/uw6gPhcwetp4
	T90XDDHyDRx7mNnTZ1Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Sj3-0004xV-W9; Thu, 29 Aug 2019 22:17:06 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Siq-0004vs-Ak
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 22:16:53 +0000
Received: by mail-io1-xd44.google.com with SMTP id z3so10216057iog.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 15:16:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eiH72N61VDWmVxItzkF6zksnlwjwA2NHJACDtY2Xycg=;
 b=Way9cSCIYfArenznA8oYHlnHTJabAbfOvU8IBuvW3W6wFHlllPVoSIv2T/WNlJ0q6e
 SoUznNz9PMqM6gzVg33TP/25HbF7F99Rzcq7p8kxHA9bjWkVaWA3Kmw0x8gROWIYNNGo
 szQWao+/UlAj8ndbqomemYcpAzbSPosUn43N0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eiH72N61VDWmVxItzkF6zksnlwjwA2NHJACDtY2Xycg=;
 b=H6uyT/ux3K6lph5h+q3dnxgriOW2bGOOSE/D+nJHK6OB/mYroN9hEhpC/BzKPrqk3/
 LG2Bb037BmGVwYuii8KiwoIQJcE+FCIW4c1Q6MdiJ70ryRp/z6TsgHIZXEMvs8Lv/ynt
 trWV+WMvzI/P8Gy36ZtI7uuh0Q/V4Nt2AXaighbmz7S+MtFcgB68MM7qXiShsPS/yPpJ
 t4RbAGgjNA22grs8/dmH6p4NgZ+UIQs+opCTBPWGLai70Jp5FJjFZugURGDff6G0P8qL
 4Z6riaSNEF4CRa3Erow2/Ep9IeJFL1CfBkSOgYbLIMqOJ2zVC2CqYCfqXkeKqFZmD0We
 ACeA==
X-Gm-Message-State: APjAAAW9DpyAWj802EWGz0986zGDyubQE8zkZIsJtAim/tPDuR+ovzo8
 obgOM4jvX1yvJislYm9xSfSmV+B/4gA=
X-Google-Smtp-Source: APXvYqzx6PpVBFmRtq+CGpTc486jTqQD6/ned4sht5EL8b9plfYDe8Tl1RQIwqfcbrjqReB49wEGIA==
X-Received: by 2002:a5d:8996:: with SMTP id m22mr2702719iol.39.1567117010756; 
 Thu, 29 Aug 2019 15:16:50 -0700 (PDT)
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com.
 [209.85.166.54])
 by smtp.gmail.com with ESMTPSA id o2sm3247920iob.64.2019.08.29.15.16.48
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 29 Aug 2019 15:16:49 -0700 (PDT)
Received: by mail-io1-f54.google.com with SMTP id q12so10153384iog.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 15:16:48 -0700 (PDT)
X-Received: by 2002:a6b:d006:: with SMTP id x6mr13702031ioa.218.1567117008526; 
 Thu, 29 Aug 2019 15:16:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190829042957.150929-1-cychiang@chromium.org>
In-Reply-To: <20190829042957.150929-1-cychiang@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 29 Aug 2019 15:16:36 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Xb_SkUTkVRpOX7B+B0AdT3cOB+JamNyXzq_UQK3mvz1A@mail.gmail.com>
Message-ID: <CAD=FV=Xb_SkUTkVRpOX7B+B0AdT3cOB+JamNyXzq_UQK3mvz1A@mail.gmail.com>
Subject: Re: [PATCH] drm: dw-hdmi-i2s: enable audio clock in audio_startup
To: Cheng-Yi Chiang <cychiang@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_151652_368067_CA08EE4E 
X-CRM114-Status: GOOD (  20.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: ALSA Development Mailing List <alsa-devel@alsa-project.org>,
 tzungbi@chromium.org, =?UTF-8?B?6YOR5YW0?= <zhengxing@rock-chips.com>,
 kuninori.morimoto.gx@renesas.com, Andrzej Hajda <a.hajda@samsung.com>,
 David Airlie <airlied@linux.ie>,
 =?UTF-8?B?6ZmI5riQ6aOe?= <jeffy.chen@rock-chips.com>,
 LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 =?UTF-8?B?6JSh6Im65Lyf?= <cain.cai@rock-chips.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Eddie Cai <eddie.cai@rock-chips.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Dylan Reid <dgreid@chromium.org>, Sam Ravnborg <sam@ravnborg.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Wed, Aug 28, 2019 at 9:30 PM Cheng-Yi Chiang <cychiang@chromium.org> wrote:
>
> In the designware databook, the sequence of enabling audio clock and
> setting format is not clearly specified.
> Currently, audio clock is enabled in the end of hw_param ops after
> setting format.
>
> On some monitors, there is a possibility that audio does not come out.
> Fix this by enabling audio clock in audio_startup ops
> before hw_param ops setting format.
>
> Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
> ---
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
>
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> index 5cbb71a866d5..08b4adbb1ddc 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> @@ -69,6 +69,14 @@ static int dw_hdmi_i2s_hw_params(struct device *dev, void *data,
>         hdmi_write(audio, conf0, HDMI_AUD_CONF0);
>         hdmi_write(audio, conf1, HDMI_AUD_CONF1);
>
> +       return 0;
> +}
> +
> +static int dw_hdmi_i2s_audio_startup(struct device *dev, void *data)
> +{
> +       struct dw_hdmi_i2s_audio_data *audio = data;
> +       struct dw_hdmi *hdmi = audio->hdmi;
> +
>         dw_hdmi_audio_enable(hdmi);
>
>         return 0;
> @@ -105,6 +113,7 @@ static int dw_hdmi_i2s_get_dai_id(struct snd_soc_component *component,
>  }
>
>  static struct hdmi_codec_ops dw_hdmi_i2s_ops = {
> +       .audio_startup = dw_hdmi_i2s_audio_startup,
>         .hw_params      = dw_hdmi_i2s_hw_params,
>         .audio_shutdown = dw_hdmi_i2s_audio_shutdown,
>         .get_dai_id     = dw_hdmi_i2s_get_dai_id,
> --

I am no expert on audio stuff, but this seems sane to me.  If you
happened to spin it for another reason, it might seem slightly nicer
to put the setting of ".audio_startup" adjacent to the setting of
".audio_shutdown" in the struct.

I have tested your patch on Chrome OS 4.19 and it definitely fixes the
problems I saw.  Chrome OS 4.19 is a little different than upstream
and I'm not setup to test HDMI audio directly on upstream, but I did
at least confirm that my problem _wasn't_ magically fixed by any of
these patches that I found upstream (I picked them into my tree and
still saw the problem):

fc1ca6e01d0a drm/bridge: dw-hdmi-i2s: add .get_eld support
43e88f670a5e drm/bridge: dw-hdmi-i2s: enable only the required i2s lanes
46cecde310bb drm/bridge: dw-hdmi-i2s: reset audio fifo before applying
new params
0c6098859176 drm/bridge: dw-hdmi-i2s: set the channel allocation
17a1e555b608 drm/bridge: dw-hdmi-i2s: enable lpcm multi channels
da5f5bc92f49 drm/bridge: dw-hdmi: set channel count in the infoframes
2a2a3d2ff799 drm/bridge: dw-hdmi: move audio channel setup out of ahb
8067f62bccaf drm/bridge: dw-hdmi-i2s: support more i2s format

Thus:

Reviewed-by: Douglas Anderson <dianders@chromium.org>
Tested-by: Douglas Anderson <dianders@chromium.org>

-Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
