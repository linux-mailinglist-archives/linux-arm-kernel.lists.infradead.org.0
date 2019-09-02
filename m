Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2CCA4D3F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 04:07:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QPfAcMYecvSi92o9LfqjfoViWxHmDrNh8Ju3n7Pyidc=; b=cTacJypNPjAOsV
	0r4TdCqv1AvKU5uWSYidpPULoyCqPay1fRRrIGGFUhyvmwjnk8zAW6A/gadxxHWGMfWBJ6vYAKRUF
	8yxTRjB6cDnDbkOkWq5QOdkeHuMgsTIyqNYiMaj/PN6bGD+iu49QLKxoBWrIrs94fx31ZWVRN/zNz
	AMymCYeKECeU7Nr9Ji1JgGfzPsu8Hom+EIGQF+weN3wvqQpniEGBziJlJ1Jd1ClLSHAaWOmxOVjfq
	WCC1G2HRsdHeckVIgSG3neLWvk2fUIqRaQfElWoU9ZLShc6+1iJ90X0bhAtVcuI/LTkjQlf2xn/Wr
	mV8zcT1IxyXoUdP+I1hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4bkx-0004j5-1a; Mon, 02 Sep 2019 02:07:47 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4bkf-0004hI-DD
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 02:07:31 +0000
Received: by mail-vs1-xe42.google.com with SMTP id q9so2173244vsl.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 01 Sep 2019 19:07:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SteZi7Jc1Qj/ZWEovebsg0xMt+f3c5vmQftu053JsS8=;
 b=lPR+RAf4lLbHFKrG7BKbpxKO2o5PIV6QPEk5yeLJsGuOupELQ4EX6PQ2n7tlyefFjX
 5TueBZwuZlQptLjVpdiWoRTQzixxBywwaHL2Q/9NxpVlWZua4yL5HvNYQaptM2F6I5gj
 urBmtznxWX5SXt9UN7RdKLsmNWsgswpCy+GTA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SteZi7Jc1Qj/ZWEovebsg0xMt+f3c5vmQftu053JsS8=;
 b=OgZ3CMJX/Ppo0B1N882LFQLrUVKgpZyMcjEE2X5r4AYB5bQvC7UY3YIbjcZPReK6Wk
 F4JBJE3rvbbybT4iiJDk9bfFxbD1JOUjaSlW9J0LuJWUxhPySPSpqUQ4Z7UU357F49sR
 SpeM7N+ILE/nYEQYQB8e0HgaobEcimPLjGxIaFr6gprWOSgxXnPSxJYJ5y+0BdLTnW4u
 S6UgNEqXkocfEP3AGLQxn7Ve4XrNplhDeF0XzoLYB7zbloxg/AX4BpuL6Da0WmaZiu5a
 17MA0FBqKUMbQdclNKNyG8GMFep8u7ISqRFoyTknHALR+wq+OEl8zjiqTEtf2XhRvdYD
 OwCg==
X-Gm-Message-State: APjAAAXQCSLIIGQwoeJ7cxYBW1oUFsSTy2bew3njLXaZl7KdopOnhL9s
 XVB6XPy8rpbAI6c2gKP5LPzENKXFzkJZNzQHBpnfLg==
X-Google-Smtp-Source: APXvYqygVljSvGbaEG8FKuJz0otOZOZdwZTpv0TbVOTes8YfHOyxR97RLOewIUCIM3Ih7DIGVB5YrjsGpPU2Agxjvyo=
X-Received: by 2002:a67:de08:: with SMTP id q8mr4571764vsk.119.1567390042918; 
 Sun, 01 Sep 2019 19:07:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190829042957.150929-1-cychiang@chromium.org>
 <HE1PR06MB4011FA45247F186BB83DFF04ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
In-Reply-To: <HE1PR06MB4011FA45247F186BB83DFF04ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
From: Cheng-yi Chiang <cychiang@chromium.org>
Date: Mon, 2 Sep 2019 10:06:55 +0800
Message-ID: <CAFv8NwLq-cJqj0MB=rzKuqr3g0n3Y-nHor4w8ntiFXytoHpdLw@mail.gmail.com>
Subject: Re: [PATCH] drm: dw-hdmi-i2s: enable audio clock in audio_startup
To: Jonas Karlman <jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_190729_451194_BCDF99F8 
X-CRM114-Status: GOOD (  19.83  )
X-Spam-Score: -7.4 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>,
 "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 "tzungbi@chromium.org" <tzungbi@chromium.org>,
 "kuninori.morimoto.gx@renesas.com" <kuninori.morimoto.gx@renesas.com>,
 "zhengxing@rock-chips.com" <zhengxing@rock-chips.com>,
 "cain.cai@rock-chips.com" <cain.cai@rock-chips.com>,
 "airlied@linux.ie" <airlied@linux.ie>,
 "jeffy.chen@rock-chips.com" <jeffy.chen@rock-chips.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "dianders@chromium.org" <dianders@chromium.org>,
 Neil Armstrong <narmstrong@baylibre.com>,
 "a.hajda@samsung.com" <a.hajda@samsung.com>,
 "eddie.cai@rock-chips.com" <eddie.cai@rock-chips.com>,
 "Laurent.pinchart@ideasonboard.com" <Laurent.pinchart@ideasonboard.com>,
 "daniel@ffwll.ch" <daniel@ffwll.ch>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "dgreid@chromium.org" <dgreid@chromium.org>,
 "sam@ravnborg.org" <sam@ravnborg.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Sep 1, 2019 at 6:04 PM Jonas Karlman <jonas@kwiboo.se> wrote:
>
> On 2019-08-29 06:29, Cheng-Yi Chiang wrote:
> > In the designware databook, the sequence of enabling audio clock and
> > setting format is not clearly specified.
> > Currently, audio clock is enabled in the end of hw_param ops after
> > setting format.
> >
> > On some monitors, there is a possibility that audio does not come out.
> > Fix this by enabling audio clock in audio_startup ops
> > before hw_param ops setting format.
> >
> > Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
> > ---
> >  drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c | 9 +++++++++
> >  1 file changed, 9 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> > index 5cbb71a866d5..08b4adbb1ddc 100644
> > --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> > +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> > @@ -69,6 +69,14 @@ static int dw_hdmi_i2s_hw_params(struct device *dev, void *data,
> >       hdmi_write(audio, conf0, HDMI_AUD_CONF0);
> >       hdmi_write(audio, conf1, HDMI_AUD_CONF1);
> >
> > +     return 0;
> > +}
> > +
> > +static int dw_hdmi_i2s_audio_startup(struct device *dev, void *data)
> > +{
> > +     struct dw_hdmi_i2s_audio_data *audio = data;
> > +     struct dw_hdmi *hdmi = audio->hdmi;
> > +
> >       dw_hdmi_audio_enable(hdmi);
> >
> >       return 0;
> > @@ -105,6 +113,7 @@ static int dw_hdmi_i2s_get_dai_id(struct snd_soc_component *component,
> >  }
> >
> >  static struct hdmi_codec_ops dw_hdmi_i2s_ops = {
> > +     .audio_startup = dw_hdmi_i2s_audio_startup,
>
> A small white space nit, there should be a tab and not space to align the equal sign above.

ACK. Will fix in v2.
>
> Also this patch do not cleanly apply to drm-misc-next or linux-next after
> fc1ca6e01d0a "drm/bridge: dw-hdmi-i2s: add .get_eld support" was merged.

ACK. Will rebase in v2.
>
>
>
>
> This patch does fix an issue I have observed on my Rockchip devices where audio would not always
> came out after switching between audio streams having different rate and channels parameters.
> I used to carry [1] to fix that issue, but this seems like a more sane fix.
>
> [1] https://github.com/Kwiboo/linux-rockchip/commit/4862e4044532b8b480fa3a0faddc197586623808
>
> With above fixed,
>
> Reviewed-by: Jonas Karlman <jonas@kwiboo.se>


Thanks a lot!

>
>
> Regards,
> Jonas
>
> >       .hw_params      = dw_hdmi_i2s_hw_params,
> >       .audio_shutdown = dw_hdmi_i2s_audio_shutdown,
> >       .get_dai_id     = dw_hdmi_i2s_get_dai_id,
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
