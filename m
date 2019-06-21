Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA4074E565
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 12:06:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=blklMD9SSEXqOTL7CKj726gJnO69W//RashY1EuX518=; b=bJ8PkWGqtRf5yG
	ukFzW8pIuZj+EzMd/ZwS6aXfZyBbH3mj5MDc2ceKe6oxyAHVsEQ5fbxpeymoTUsFTARzdeVnCbhVZ
	Dave7F1rFVaAaGJt4BcizGjjAIbKqHdWdSgW7ENNkc1no+7sZ9YOYqbM30i9KN1SCh90qp6iiMBLr
	l4WBfjXeGKeH94q6SD4KaH8SkXIpi6wvE9/vGaxTtRLqopofM7xrr1apx7kzZky3N2DAJYKPKBFyA
	sLtR4RL/d3apMw0fxAAQCXlkYQv8u54TG7YmZjFFlNKo0uAby7jRZiVu8OISMjKlzkx4M/HQdH+WQ
	vp/RATuFF9SIrFj+6I3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGRc-0001w3-Ev; Fri, 21 Jun 2019 10:06:56 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heG1l-0008N2-Uj
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:40:24 +0000
Received: by mail-vk1-xa43.google.com with SMTP id o19so1156934vkb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Jun 2019 02:40:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8vCdcbqoZQ1U1i7mBxY4bPH1TOrRBXQaqjxbkNh/nbQ=;
 b=aISYU0AuOWSMAGgxgMsNgcwyyCsQfgC0WTiJZVc6DjDjjnxMKUEageDY0FcrkMp5o7
 ifs6RlrFO0OjnAJaxSecDeakh4ZBOJPZ3vTpXi66AbMzyFoXJ4nrLFwPI1pk8zMLyg1v
 CuJnbc9bE0uzsi55qKLvlz/emOEVFfRxcBzaA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8vCdcbqoZQ1U1i7mBxY4bPH1TOrRBXQaqjxbkNh/nbQ=;
 b=JmvEOj90AMJTMbQh+EGTkjut/u+n9AXsfTDgA8b7wm0BVOq+wrdx+Yh6I568tR6ToW
 BvxgKOkFuI34xCrreZsj67sISBrBBPN6Fb9beAFGo4J8J/uF3f291IheejNhSb+Af0PJ
 1DOS94xUQLL+OZD6ni9MM66o7N/ycKY66jO6u1oaNoMWzcU9ccF0kmU0cbg3Fbk6YfgJ
 w4GnYnw4vRKP05qLZe+49f/S5dRJqxdDw0zpgo8RnDvG4WnNdu8lFQAnTjR8VyXr/hBX
 K0iIi7N9nldsKSWOIwjqWHS5v3j3Z+H0or0LftrDZi0d3dZknxTmRzglZUUIGIYw/ukw
 IKKg==
X-Gm-Message-State: APjAAAWTOT2dwCSH2xv1VNAxOXX4eXV+kLPK80D1y4NKYRRrhKdGFokx
 rMfrdmYpTAsYp6hh4KSQi5dsP192+wuHMVBnmP3ozg==
X-Google-Smtp-Source: APXvYqzqmaV63/sDh2pA+DmjqQt0rIScMqSjGIjM8UgwlzzNNUo2pMiNP3RyCDxLsaSVfiTVd9xkzA40WBjyjKt8VfQ=
X-Received: by 2002:a1f:3692:: with SMTP id d140mr9227965vka.88.1561110010447; 
 Fri, 21 Jun 2019 02:40:10 -0700 (PDT)
MIME-Version: 1.0
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
 <20190620211204.GW12905@phenom.ffwll.local>
In-Reply-To: <20190620211204.GW12905@phenom.ffwll.local>
From: Cheng-yi Chiang <cychiang@chromium.org>
Date: Fri, 21 Jun 2019 17:39:43 +0800
Message-ID: <CAFv8Nw+m-+pshD_cxKe4Nc_4wP3ttpAfDU7EFb-e+ZBcYNA51Q@mail.gmail.com>
Subject: Re: [PATCH 1/7] video: add HDMI state notifier support
To: Cheng-yi Chiang <cychiang@chromium.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 linux-kernel <linux-kernel@vger.kernel.org>, 
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Mark Brown <broonie@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Takashi Iwai <tiwai@suse.com>,
 Jaroslav Kysela <perex@perex.cz>, 
 Russell King <rmk+kernel@armlinux.org.uk>, Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 David Airlie <airlied@linux.ie>, 
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Doug Anderson <dianders@chromium.org>, Dylan Reid <dgreid@chromium.org>,
 tzungbi@chromium.org, linux-media@vger.kernel.org, 
 "moderated list:SOUND - SOC LAYER / DYNAMIC AUDIO POWER MANAGEM..."
 <alsa-devel@alsa-project.org>, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, Dariusz Marcinkiewicz <darekm@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_024014_257832_F1344B53 
X-CRM114-Status: GOOD (  30.84  )
X-Spam-Score: -7.4 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 5:12 AM Daniel Vetter <daniel@ffwll.ch> wrote:
>
> Massively cutting this thread, since halfway through in my previous reply
> I realized that maybe hdmi_codec is a much better starting point.
>
ACK
> On Thu, Jun 20, 2019 at 09:23:23PM +0800, Cheng-yi Chiang wrote:
> > On Thu, Jun 20, 2019 at 5:25 PM Daniel Vetter <daniel@ffwll.ch> wrote:
> > > Yeah fully agreeing that hdmi_audio_code is probably a better starting
> > > point. Problem is that becuase hdmi_codec is built on top of platform
> > > device it's quite a bit harder to extend with callbacks and things like
> > > that, without breaking the driver model.
> > >
> > > I need to think about this more, but if all we need to look at is
> > > hdmi_codec, then I think this becomes a lot easier. And we can ignore
> > > drm_audio_component.h completely.
> >
> >
> > It is surprising that you think this way.
> > Maybe the original patch before hdmi-notifier was introduced is the
> > better way to solve this issue, if we only need to look at hdmi_codec.
> >
> > The history of hdmi_codec driver is in this patch series:
> >
> > https://lore.kernel.org/patchwork/patch/539656/
>
> Hm, this doesn't seem to be the hdmi_codec driver I meant, but another,
> new one. I was talking about SND_SOC_HDMI_CODEC.
>
Yes you are right. They are different codec drivers.
Sorry for the confusion. What I meant was that my use case on RK3288
was using dw-hdmi-audio.c codec driver,
which was later replaced by a more general version hdmi-codec.c.

> > There was a callback mechanism implemented between dw-hdmi and hdmi
> > codec driver.
> > It was later consolidated by Doug in this patch for better jack status
> > reporting:
> >
> > https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/303573/
>
> Hm that still seems entirely separate hdmi-codec specific to dw-hdmi only
> ...
>
Again you are right. Sorry for the confusion. What I meant is that
this callback mechanism should work on hdmi-codec.c driver as well.

> > I am not sure why the original patch series did not get fully accepted
> > in the upstream.
> > It was quite long time ago.
> >
> > But if you think this might be the right way to do, then it is even
> > better for us because the patch series and Doug's patch had been quite
> > stable
> > on our RK3288 products for about four years with plenty of users, so
> > we have much higher confidence in them.
> > I can rebase and clean up them and post another patch for review.
> >
> > Please let me know what approach you feel is better.
> > Thanks again!
>
> Not sure we're talking about the same. What I had in mind is to add jack
> status to the hdmi-codec.c stuff, which is used by multiple soc drm
> display drivers already. Looking at git grep output, there seems to be
> already some support for dw-hdmi synopsys drm_bridge driver. I thought of
> extending that. Does that not work for you?
>
I think extending current interface will work.
There is a struct hdmi_codec_pdata to let ALSA codec driver access
some ops through platform data.
And after this patch

https://lore.kernel.org/patchwork/patch/692324/

ALSA codec driver can get access to the struct on DRM side.
Based on this I can add a new ops to register callback function for jack status.
It will be similar to Doug's chromium patch above.
I think that is quite a feasible way, and can benefit all boards using
hdmi-codec.c.

Thanks a lot!!

> Thanks, Daniel
> --
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
