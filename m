Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3732A2D09
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 04:56:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dXupDVHJ71p8IM1V49aoQUj8n7uRQhmTsUpIHWcjsVE=; b=OQqGXvhss/FjiI
	hi4FTuHD39x+nEB4bI8Q2f4HusJYgJZjKIuO0uFnVy3eL+GZN4UFV6OKpcnfWj2N6y5IsirUktHbk
	drpYF5Vo1SDePqBkXc9sXt82YNqXz27EmOJOMVyWbcroO2TB2LTRA7zAXFZcJ+kghnDn30kQ7uIdg
	uLl28phI0Xb/CyQ+o59FbeLbeG7BP8FCQmqkiwZ4Hwh8XT/AoKUkMk3cGgoikeGauLB3HYivMLb5y
	MDQ4VA0Y2yuCXh8aJc8xd02MQdlEhVS3PEupZe0dJ0DFmuERImSmJdUN2/OV3j6pkyi5bFO6I0ER9
	doOz13oq4ijYNRrbOGow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3X4v-00029R-4f; Fri, 30 Aug 2019 02:55:57 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3X4i-00028R-1P
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 02:55:45 +0000
Received: by mail-ua1-x944.google.com with SMTP id r10so1867663uam.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 19:55:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uVJP3tNQZmRfMHp/W2ZEuVlB3ztV/VuTs152oodDoRA=;
 b=go/AeEsI5vC+mODTwi/w5PsQtEjcwg1f3Pf9r94z/spWywhIHshzlHgOAz73WeypOX
 pqMIDya9cWyUswo1xPqA+BADMwbb805CpsmQht+9dYBhC6NqBViosIEVvwIli8l3sTlO
 1jIG9p8bhTKdxA20ytec9mf4cYGdg+LwRAdxU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uVJP3tNQZmRfMHp/W2ZEuVlB3ztV/VuTs152oodDoRA=;
 b=XLbgOiigW85yzABbYhKb3L8LLDJWwwnZPN2k7LHJ0s+zfHbNVu/8LIRzalC5s8QyaN
 ZFz4B9de2WGaVIW6LuKJv7eNVW83TtqkQtQlRxoeIzrZ5p05uGZzlVJ6v8dE41cFqNUw
 6EILhOXX9xFHVOGhzP10Ezbc4qfHTT1YjAQj9WDuoQ0eyqHTYsO7V5DXMBQz8Wsi1emt
 xfEam9vZUyvLQd8U//nXn4HPixonAjOiAaZ9WHlMgcCl3DoML5t/eXyoULLogGLnywYO
 kPKnJHnEGSqg68fjar3ZhPYC0LSDk/trJesDz6Fy1VkpiLgJDi6SFiD3WuS3rCkNETQt
 YEwQ==
X-Gm-Message-State: APjAAAXj1obuOiKkoRgPXYSsjt0nNy4YR0qdgiJoOThKXvo/LXqoLJop
 SUVgZOGPk7FOfuuKf3iK/SJiW46akTtd3sd3L2pZKw==
X-Google-Smtp-Source: APXvYqz3y2+iMq8OG/5tEVPvpxYHj7wpUTGqFySYc0DUG/K3JsZPiNj8noweU6gAsRnU3oLPZiigq/TH0naxasIEv+E=
X-Received: by 2002:ab0:7c3:: with SMTP id d3mr6638328uaf.131.1567133739477;
 Thu, 29 Aug 2019 19:55:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190717083327.47646-1-cychiang@chromium.org>
 <CA+Px+wX4gbntkd6y8NN8xwXpZLD4MH9rTeHcW9+Ndtw=3_mWBw@mail.gmail.com>
In-Reply-To: <CA+Px+wX4gbntkd6y8NN8xwXpZLD4MH9rTeHcW9+Ndtw=3_mWBw@mail.gmail.com>
From: Cheng-yi Chiang <cychiang@chromium.org>
Date: Fri, 30 Aug 2019 10:55:12 +0800
Message-ID: <CAFv8NwLiY+ro0L4c5vjSOGN8jA-Qr4zm2OWvVHkiuoa7_4e2Fg@mail.gmail.com>
Subject: Re: [PATCH v5 0/5] Add HDMI jack support on RK3288
To: Tzung-Bi Shih <tzungbi@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_195544_087988_7E80ECDE 
X-CRM114-Status: GOOD (  16.78  )
X-Spam-Score: -7.4 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: ALSA development <alsa-devel@alsa-project.org>,
 Douglas Anderson <dianders@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Liam Girdwood <lgirdwood@gmail.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Takashi Iwai <tiwai@suse.com>,
 tzungbi@chromium.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-rockchip@lists.infradead.org,
 Dylan Reid <dgreid@chromium.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 17, 2019 at 6:28 PM Tzung-Bi Shih <tzungbi@google.com> wrote:
>
> On Wed, Jul 17, 2019 at 4:33 PM Cheng-Yi Chiang <cychiang@chromium.org> wrote:
> >
> > This patch series supports HDMI jack reporting on RK3288, which uses
> > DRM dw-hdmi driver and hdmi-codec codec driver.
> >
> > The previous discussion about reporting jack status using hdmi-notifier
> > and drm_audio_component is at
> >
> > https://lore.kernel.org/patchwork/patch/1083027/
> >
> > The new approach is to use a callback mechanism that is
> > specific to hdmi-codec.
> >
> > Changes from v4 to v5:
> > - synopsys/Kconfig: Remove the incorrect dependency change in v4.
> > - rockchip/Kconfig: Add dependency of hdmi-codec when it is really need
> >   for jack support.
> >
> > Cheng-Yi Chiang (5):
> >   ASoC: hdmi-codec: Add an op to set callback function for plug event
> >   drm: bridge: dw-hdmi: Report connector status using callback
> >   drm: dw-hdmi-i2s: Use fixed id for codec device
> >   ASoC: rockchip_max98090: Add dai_link for HDMI
> >   ASoC: rockchip_max98090: Add HDMI jack support
> >
> LGTM.
>
> Reviewed-by: Tzung-Bi Shih <tzungbi@google.com>

Hi Daniel,
Do you have further concern on this patch series related to hdmi-codec
and drm part ?
We would like to merge this patch series if possible.
They will be needed in many future chrome projects for HDMI audio jack
detection.
Thanks a lot!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
