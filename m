Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 278441E5AB8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 10:26:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+GpaoC1OaZfwwi4SGsEg5E40xxKGdEqsHlYQXH7fDu4=; b=C3Xxt0smY+pSmt
	gcms/3Eqqic8xXwiEs4FYvgn3spZ2aKcN4JqFnlPAeTxDfCINwNUEH57DNbSR0Gdc4q7mN2cDktXj
	bHAVgVwOSNs25prD7kyXdW1XU0bMIlWbtBB3nLlZqigUePoUyXrsbDXqtZqckVuWtj0A0aUznlstM
	TiMDurdoDohVOV1VcOpvYzlj5uvqy0dqzg3tUHe9TXiOU346lZwaMdWw0+Va8ZJZ/0IB8lphzpXd7
	04HiMhm6JrGfVsJwAxIGNsRwpd2fuPfP+EXY9+YXtTUtYJ4xkkn5FpdsivAw1t+/UJzPmJt3VwdWu
	qAB5igGDiX0ITfaWFR0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeDrR-0008BK-MT; Thu, 28 May 2020 08:25:57 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeDrF-0008Ac-Bb
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 08:25:47 +0000
Received: by mail-wr1-x443.google.com with SMTP id e1so26953484wrt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 01:25:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=dZm4qqnvnFfi9AnD6QwHMa98Owv4lt6xBotC4KU/1vk=;
 b=czup3S4I54O/SmAYJ1Yp032Bx7qbeA/atZsIzCP1VOKKssxod9difMHd2pgQRQxnAl
 XPPDdkNnsr4nGucu0jsfvEjhEvgKy1XhTyVyjk00Kpj5+6kbsaTM3Rf0jqixp6tjilap
 QsF7jrQHPymmQ1iI926fYhE6+fP62b0lLwEik=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=dZm4qqnvnFfi9AnD6QwHMa98Owv4lt6xBotC4KU/1vk=;
 b=q5FI7HOoa/N1ji7snIZf/TZM8hPRcj4AyW1PKCS/FP/6JbTUsUFARbLMtcdy7jvvPm
 ebdhgDYugGXV+SjTX/9DEsE6KnldnHbQxFXTxsO/2+h+bImY65445ds7iznLJui3npCM
 siMLLCGIqZ35cCvkmCxFWnD3Qw6yBpt4Uz+i4+gk2jLqImyVUpgrbXdoyxryAqLswm0F
 fAFOoE4+MZP107DAiBCtjxYfVfqRpoKUGpAw+ytMLwsBaMTL5UonLzCciFEf/LHPyyeU
 VpAEs8lJutUBJtcdlFKwHfAwZ5WSOhkHvSY2fK8NpoH7xYcvPUhl4Z3KJIT+7BigM8o6
 Vr7A==
X-Gm-Message-State: AOAM532Wc5SOGo3JKaRcaH+6NW5FL7GnPsOzWPQpzHtkhYJJyfq8YQQG
 gOIbidgTJav1kVo9sHh5aP9qEQ==
X-Google-Smtp-Source: ABdhPJxgiT43pQLH7LRt5KZW/Vdlek75Gu2WZPGjirY+tzqkiyl5+Cnx66FgSLx0/C9mCLO0V0lQfg==
X-Received: by 2002:a5d:4286:: with SMTP id k6mr2309159wrq.140.1590654343729; 
 Thu, 28 May 2020 01:25:43 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id j4sm3492917wma.7.2020.05.28.01.25.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 01:25:43 -0700 (PDT)
Date: Thu, 28 May 2020 10:25:41 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Stefan Agner <stefan@agner.ch>
Subject: Re: [PATCH 1/2] drm/mxsfb: Call drm_crtc_vblank_on/off
Message-ID: <20200528082541.GS206103@phenom.ffwll.local>
References: <20200527094757.1414174-1-daniel.vetter@ffwll.ch>
 <20200528054643.GQ206103@phenom.ffwll.local>
 <7911368105b92200b661f0fed39f5642@agner.ch>
 <CAKMK7uGzbadiY1EQKQvQcBND4Ja73WZRF8-DoxLJNTsGBJS0jw@mail.gmail.com>
 <c8294901e201cd40a41111b05ecccd43@agner.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c8294901e201cd40a41111b05ecccd43@agner.ch>
X-Operating-System: Linux phenom 5.6.0-1-amd64 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_012545_397471_6756D7FE 
X-CRM114-Status: GOOD (  27.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Marek Vasut <marex@denx.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Daniel Vetter <daniel.vetter@intel.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 28, 2020 at 10:19:46AM +0200, Stefan Agner wrote:
> On 2020-05-28 10:06, Daniel Vetter wrote:
> > On Thu, May 28, 2020 at 9:56 AM Stefan Agner <stefan@agner.ch> wrote:
> >>
> >> Hi Daniel,
> >>
> >> On 2020-05-28 07:46, Daniel Vetter wrote:
> >> > On Wed, May 27, 2020 at 11:47:56AM +0200, Daniel Vetter wrote:
> >> >> mxsfb has vblank support, is atomic, but doesn't call
> >> >> drm_crtc_vblank_on/off as it should. Not good.
> >> >>
> >> >> With my next patch to add the drm_crtc_vblank_reset to helpers this
> >> >> means not even the very first crtc enabling will vblanks work anymore,
> >> >> since they'll just stay off forever.
> >> >>
> >> >> Since mxsfb doesn't have any vblank waits of its own in the
> >> >> enable/disable flow, nor an enable/disable_vblank callback we can do
> >> >> the on/off as the first respectively last operation, and it should all
> >> >> work.
> >> >>
> >> >> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> >> >> Cc: Marek Vasut <marex@denx.de>
> >> >> Cc: Stefan Agner <stefan@agner.ch>
> >> >> Cc: Shawn Guo <shawnguo@kernel.org>
> >> >> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> >> >> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> >> >> Cc: Fabio Estevam <festevam@gmail.com>
> >> >> Cc: NXP Linux Team <linux-imx@nxp.com>
> >> >> Cc: linux-arm-kernel@lists.infradead.org
> >> >
> >> > Ping for some ack/review on this one here, it's holding up the subsystem
> >> > wide fix in patch 2.
> >>
> >> Sorry for the delay.
> >>
> >> I guess that has the same effect as patch 14 in Laurent's patchset would
> >> have:
> >> https://lore.kernel.org/dri-devel/20200309195216.31042-15-laurent.pinchart@ideasonboard.com/
> > 
> > Uh, looking at that patch I realized that mxsfb indeed calls
> > drm_vblank_init before mode_config.num_crtc is set. Which means it
> > never had working vblank support in upstream. That also explains the
> > lack of fireworks, since all other drivers that actually do initialize
> > vblank support have the drm_crtc_vblank_on/off calls - without them
> > the driver doesn't survive for very long.
> > 
> > tldr; I don't need this patch here to apply the 2nd one, so no
> > conflict potential at all. And the patch from Laurent does fix up
> > everything correctly, so we should be good.
> 
> Uh I see, that is somehow unfortunate and fortunate at the same time!
> 
> Ok, I hope we get this cleaned up soon.

I recommend igt tests for actually making sure your driver does something,
instead of just thinking you've enabled a feature :-)
-Daniel

> 
> --
> Stefan
> 
> > -Daniel
> > 
> >> But should be rather trivial to rebase. So until Laurent's patchset is
> >> ready, we can go with this fix.
> >>
> >> Acked-by: Stefan Agner <stefan@agner.ch>
> >>
> >> --
> >> Stefan
> >>
> >> >
> >> > Thanks, Daniel
> >> >
> >> >> ---
> >> >>  drivers/gpu/drm/mxsfb/mxsfb_drv.c | 2 ++
> >> >>  1 file changed, 2 insertions(+)
> >> >>
> >> >> diff --git a/drivers/gpu/drm/mxsfb/mxsfb_drv.c b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
> >> >> index 497cf443a9af..1891cd6deb2f 100644
> >> >> --- a/drivers/gpu/drm/mxsfb/mxsfb_drv.c
> >> >> +++ b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
> >> >> @@ -124,6 +124,7 @@ static void mxsfb_pipe_enable(struct drm_simple_display_pipe *pipe,
> >> >>      drm_panel_prepare(mxsfb->panel);
> >> >>      mxsfb_crtc_enable(mxsfb);
> >> >>      drm_panel_enable(mxsfb->panel);
> >> >> +    drm_crtc_vblank_on(&pipe->crtc);
> >> >>  }
> >> >>
> >> >>  static void mxsfb_pipe_disable(struct drm_simple_display_pipe *pipe)
> >> >> @@ -133,6 +134,7 @@ static void mxsfb_pipe_disable(struct drm_simple_display_pipe *pipe)
> >> >>      struct drm_crtc *crtc = &pipe->crtc;
> >> >>      struct drm_pending_vblank_event *event;
> >> >>
> >> >> +    drm_crtc_vblank_off(&pipe->crtc);
> >> >>      drm_panel_disable(mxsfb->panel);
> >> >>      mxsfb_crtc_disable(mxsfb);
> >> >>      drm_panel_unprepare(mxsfb->panel);
> >> >> --
> >> >> 2.26.2
> >> >>

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
