Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF464DC48
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 23:12:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tfs1yw6wEjCwEmh8eL7zj8YEBoSX7oEzha8fUh+6wZU=; b=i3KqixFNkwSyI2
	sMUmgsTJXa1kGQqjfDhLAKtBIMAVtxk9EHqoZ6+rocE9viWETZTxrniTxmrJAaOTJb3lWxssYbBzp
	3LCO2JWf+XHsfv5ER7FikwcVrH3V6abQ96G1LW2qUT8hGAw8wN4hvQOG/gqhD1qHPBYhKTJZ5Wtxc
	yF3T+eYeUHjYeIDYKlNRr0WS0cftammnmRaLG8WWwP+0F+ZucVZ2LzjKdgkfY5Ojpvp8j92ilJ/C7
	7QR9/4WVSM8w5t22J2PO4YlNFCg0ylXUllQAqVHWoLvrEMelinHZSzZ0olSK++5o/9oli3IJeiWio
	o1E1VffFN7g5CgrzwxKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he4MA-0001Vg-ED; Thu, 20 Jun 2019 21:12:30 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he4Ls-0001UC-L1
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 21:12:14 +0000
Received: by mail-ed1-x541.google.com with SMTP id k21so6717066edq.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 14:12:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:mail-followup-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=959ru36WY2J0Xrly1vs1MXuZnqXsrreyoL0xoecTXQA=;
 b=ZyyEIWc8g9qNg4ofLToKGhgAmro8fi/qsiplRDzzYnsQzgUBFe4c86Ee/wR4SebDjt
 d63ZPlgcJxB1wYNf1eIPn3M3bB13fdEww4NsSF+uA3/ahauLDZUM1S12sFjWLoIzrkEq
 HMbsASyI+4J0m7OfyVxoUW085H+KZiQlel8eY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=959ru36WY2J0Xrly1vs1MXuZnqXsrreyoL0xoecTXQA=;
 b=MiwrpHMsyHzFbNTrtztxr9RwW0QXJwjbKkdKY1CGmtanusEujuXNCmmxoLTcKZl5po
 c95pk3mK8yM8fcD8hm09tC/6b8cDez6J0nDD3wGXLhx01wpNxikTKZCAawfA444KoTeW
 kqm0gsAGSJlJJPd3V5BB/pJfGwlNY/X2V6F7s6yXwR+HJkqkCq3ot87XINkZy0WN0phG
 SIN4Vz0aYhFxtZu62XDvo9z319KuXsIJ1j6hvGUsAjmRbw88tI9HGEilOx6/EQ4TxPq8
 KzGlDfufIm5y5BClhOf3OXVGfme7Fhex0ZArQnd3qIv+QR4TJzOcCzQ7sUPL68o5wCTN
 Fh3w==
X-Gm-Message-State: APjAAAXNc3NJGyjxyYMpLI6zb0znUlqTnHdG031NqFnvosfAxqE0Df0g
 NYvz4YxTAJHbNPlYeLzA6AJeQg==
X-Google-Smtp-Source: APXvYqx3EnsHuhcIFTP2RIslvwoM3AQZ6N+bN+bCoN37PG+nA2hCPhd0nIWscWNoh843HbyPEoTJjw==
X-Received: by 2002:a17:906:2510:: with SMTP id
 i16mr98153366ejb.130.1561065130725; 
 Thu, 20 Jun 2019 14:12:10 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id p18sm76849ejr.61.2019.06.20.14.12.08
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 20 Jun 2019 14:12:09 -0700 (PDT)
Date: Thu, 20 Jun 2019 23:12:04 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Cheng-yi Chiang <cychiang@chromium.org>
Subject: Re: [PATCH 1/7] video: add HDMI state notifier support
Message-ID: <20190620211204.GW12905@phenom.ffwll.local>
Mail-Followup-To: Cheng-yi Chiang <cychiang@chromium.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mark Brown <broonie@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Takashi Iwai <tiwai@suse.com>,
 Jaroslav Kysela <perex@perex.cz>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 David Airlie <airlied@linux.ie>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Doug Anderson <dianders@chromium.org>,
 Dylan Reid <dgreid@chromium.org>, tzungbi@chromium.org,
 linux-media@vger.kernel.org,
 "moderated list:SOUND - SOC LAYER / DYNAMIC AUDIO POWER MANAGEM..."
 <alsa-devel@alsa-project.org>, 
 dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Dariusz Marcinkiewicz <darekm@google.com>
References: <20190603080931.GG21222@phenom.ffwll.local>
 <CAFv8Nw+1sB8i1d87vLeKxRricZOi4gnXFSgOzW9k0sa_Tzybjg@mail.gmail.com>
 <20190604072411.GP21222@phenom.ffwll.local>
 <CAFv8NwKL9ZL=gNpDmdRV+R9eq22+Da_1kzuYBv8kMMyV3Hq14g@mail.gmail.com>
 <20190611123455.GD2458@phenom.ffwll.local>
 <CAFv8NwJxs-R=ehgeqyx=e+T5OmUBsk3uWnUb2t0cC-LDPS7G5w@mail.gmail.com>
 <20190618121220.GU12905@phenom.ffwll.local>
 <CAFv8NwLci2ALi3V-e=8jjatciHWOoOj-FeajwNLWRpWRtqgBdg@mail.gmail.com>
 <20190620092506.GP12905@phenom.ffwll.local>
 <CAFv8NwLbS_f4cfeorzqtmRzQSY0u1tgM7fitAokg_QfViPvq=Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFv8NwLbS_f4cfeorzqtmRzQSY0u1tgM7fitAokg_QfViPvq=Q@mail.gmail.com>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_141212_760654_B7BBC355 
X-CRM114-Status: GOOD (  24.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "moderated list:SOUND - SOC LAYER / DYNAMIC AUDIO POWER MANAGEM..."
 <alsa-devel@alsa-project.org>, Heiko Stuebner <heiko@sntech.de>,
 Liam Girdwood <lgirdwood@gmail.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Takashi Iwai <tiwai@suse.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 linux-rockchip@lists.infradead.org, Dylan Reid <dgreid@chromium.org>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org, tzungbi@chromium.org,
 Daniel Vetter <daniel@ffwll.ch>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Rob Herring <robh+dt@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Doug Anderson <dianders@chromium.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Dariusz Marcinkiewicz <darekm@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Massively cutting this thread, since halfway through in my previous reply
I realized that maybe hdmi_codec is a much better starting point.

On Thu, Jun 20, 2019 at 09:23:23PM +0800, Cheng-yi Chiang wrote:
> On Thu, Jun 20, 2019 at 5:25 PM Daniel Vetter <daniel@ffwll.ch> wrote:
> > Yeah fully agreeing that hdmi_audio_code is probably a better starting
> > point. Problem is that becuase hdmi_codec is built on top of platform
> > device it's quite a bit harder to extend with callbacks and things like
> > that, without breaking the driver model.
> >
> > I need to think about this more, but if all we need to look at is
> > hdmi_codec, then I think this becomes a lot easier. And we can ignore
> > drm_audio_component.h completely.
> 
> 
> It is surprising that you think this way.
> Maybe the original patch before hdmi-notifier was introduced is the
> better way to solve this issue, if we only need to look at hdmi_codec.
> 
> The history of hdmi_codec driver is in this patch series:
> 
> https://lore.kernel.org/patchwork/patch/539656/

Hm, this doesn't seem to be the hdmi_codec driver I meant, but another,
new one. I was talking about SND_SOC_HDMI_CODEC.

> There was a callback mechanism implemented between dw-hdmi and hdmi
> codec driver.
> It was later consolidated by Doug in this patch for better jack status
> reporting:
> 
> https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/303573/

Hm that still seems entirely separate hdmi-codec specific to dw-hdmi only
...

> I am not sure why the original patch series did not get fully accepted
> in the upstream.
> It was quite long time ago.
> 
> But if you think this might be the right way to do, then it is even
> better for us because the patch series and Doug's patch had been quite
> stable
> on our RK3288 products for about four years with plenty of users, so
> we have much higher confidence in them.
> I can rebase and clean up them and post another patch for review.
> 
> Please let me know what approach you feel is better.
> Thanks again!

Not sure we're talking about the same. What I had in mind is to add jack
status to the hdmi-codec.c stuff, which is used by multiple soc drm
display drivers already. Looking at git grep output, there seems to be
already some support for dw-hdmi synopsys drm_bridge driver. I thought of
extending that. Does that not work for you?

Thanks, Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
