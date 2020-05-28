Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B671E5A5D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 10:06:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aY7rQ7zaCKMktkhnMQYKqZkJ7QRzG8ssDMHQEhpYMBI=; b=FNRyQpzO8R/4ql
	YROjO33bGI/T7E5o4zgIjOt62dGPZ4hBhIcKJEtjEcSmpIoi4Y0kIPDc/uFDoQU1Xd0i1XADsZiim
	nsVLjvpGd21/YMB58Sc/DngFcO4QyCFqtVsCWhrzkOrQTZqErSZvgCVdPkTRkg3hcf4inAD0NqZ46
	v7eRSADG9ytuDYsEZrFN8skYyOc/s61QOtuuENS+pyD/f+Yl3DFmog6peu1bTDA/g2ifV4VlgWH4q
	JUAVXK4X9yNFn7n2o6Vamlt382+FFZR/C5gQtwBTqANQK60R/iUtNxHQ/5i3AKjk8sMi3QGvUCGaA
	hJgDz+Hy9upJ8iN6avUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeDYY-0000gu-DO; Thu, 28 May 2020 08:06:26 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeDYP-0000gQ-NE
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 08:06:19 +0000
Received: by mail-oi1-x243.google.com with SMTP id z9so19324666oid.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 01:06:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UBU5+7fUfcx/BFsQBhJKuGgAPC1pjV/lW8bKyZn/8YA=;
 b=QYw513yKNG+MiOsYHBVbvBHwfuOpFv8wHK2pt2iQfchUEGmOiM53ZBpy2KggA+fbZl
 znVpn1PvRtiAjy3h81HHPcEsaDAJgg/LNL0m4BI1jp5IRtjqyXIgsoql/blnM9HYHY3D
 NvlA4KVcr9SPNgAyceP1K3QdJtQrPf6ntKILU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UBU5+7fUfcx/BFsQBhJKuGgAPC1pjV/lW8bKyZn/8YA=;
 b=r+fUolkxVNq/2Om3AFMYABcEiO0HGdYNcKACQunEhLiuRQQMLliTVhtLpqFKKNaI4x
 Vv7PVJBqdV7CzpAMg2sH41aS+QPwJgkYSy20wgn+9n4bLKeZukDxtANatBx/keSfn7NL
 myDnb68GZxu/aUfC+WIsjeI3cHodk50GzO99zju8WcC2x9ZFHWRR/FMMdi/UfTs8/QyM
 2tJ/Ub67XzgQfLhQrR4R1LQvCENFEHtcbvNUr45KtrSi6NPuZJILYu1X4BlLear/GR8D
 ZIzWAMWCJ4UGU1wtXQZsxgqKgnsMxrFc715LgxhHz23JS3GYd3TeqEtUzMpiHwxBRTm6
 U3Eg==
X-Gm-Message-State: AOAM531vpSQUFeEQLUqGcSP6dn9taJtFn+sGkA6p3cgSbIhQb/wvy9FW
 f7i232fQ6acEStZ+aWlyOH6xp2X/yyfMCf6fNShd1A==
X-Google-Smtp-Source: ABdhPJxNY7bapakiUxoIiaI893J9SHvaNGZMwx9iHoilvd0U7heMyWEeQwlFecPlwmSYeu0KafaVJUt650OgtPx0t4c=
X-Received: by 2002:aca:4b91:: with SMTP id y139mr1355130oia.128.1590653176190; 
 Thu, 28 May 2020 01:06:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200527094757.1414174-1-daniel.vetter@ffwll.ch>
 <20200528054643.GQ206103@phenom.ffwll.local>
 <7911368105b92200b661f0fed39f5642@agner.ch>
In-Reply-To: <7911368105b92200b661f0fed39f5642@agner.ch>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 28 May 2020 10:06:04 +0200
Message-ID: <CAKMK7uGzbadiY1EQKQvQcBND4Ja73WZRF8-DoxLJNTsGBJS0jw@mail.gmail.com>
Subject: Re: [PATCH 1/2] drm/mxsfb: Call drm_crtc_vblank_on/off
To: Stefan Agner <stefan@agner.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_010617_757851_681F06A1 
X-CRM114-Status: GOOD (  25.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
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
Cc: Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@gmail.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 28, 2020 at 9:56 AM Stefan Agner <stefan@agner.ch> wrote:
>
> Hi Daniel,
>
> On 2020-05-28 07:46, Daniel Vetter wrote:
> > On Wed, May 27, 2020 at 11:47:56AM +0200, Daniel Vetter wrote:
> >> mxsfb has vblank support, is atomic, but doesn't call
> >> drm_crtc_vblank_on/off as it should. Not good.
> >>
> >> With my next patch to add the drm_crtc_vblank_reset to helpers this
> >> means not even the very first crtc enabling will vblanks work anymore,
> >> since they'll just stay off forever.
> >>
> >> Since mxsfb doesn't have any vblank waits of its own in the
> >> enable/disable flow, nor an enable/disable_vblank callback we can do
> >> the on/off as the first respectively last operation, and it should all
> >> work.
> >>
> >> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> >> Cc: Marek Vasut <marex@denx.de>
> >> Cc: Stefan Agner <stefan@agner.ch>
> >> Cc: Shawn Guo <shawnguo@kernel.org>
> >> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> >> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> >> Cc: Fabio Estevam <festevam@gmail.com>
> >> Cc: NXP Linux Team <linux-imx@nxp.com>
> >> Cc: linux-arm-kernel@lists.infradead.org
> >
> > Ping for some ack/review on this one here, it's holding up the subsystem
> > wide fix in patch 2.
>
> Sorry for the delay.
>
> I guess that has the same effect as patch 14 in Laurent's patchset would
> have:
> https://lore.kernel.org/dri-devel/20200309195216.31042-15-laurent.pinchart@ideasonboard.com/

Uh, looking at that patch I realized that mxsfb indeed calls
drm_vblank_init before mode_config.num_crtc is set. Which means it
never had working vblank support in upstream. That also explains the
lack of fireworks, since all other drivers that actually do initialize
vblank support have the drm_crtc_vblank_on/off calls - without them
the driver doesn't survive for very long.

tldr; I don't need this patch here to apply the 2nd one, so no
conflict potential at all. And the patch from Laurent does fix up
everything correctly, so we should be good.
-Daniel

> But should be rather trivial to rebase. So until Laurent's patchset is
> ready, we can go with this fix.
>
> Acked-by: Stefan Agner <stefan@agner.ch>
>
> --
> Stefan
>
> >
> > Thanks, Daniel
> >
> >> ---
> >>  drivers/gpu/drm/mxsfb/mxsfb_drv.c | 2 ++
> >>  1 file changed, 2 insertions(+)
> >>
> >> diff --git a/drivers/gpu/drm/mxsfb/mxsfb_drv.c b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
> >> index 497cf443a9af..1891cd6deb2f 100644
> >> --- a/drivers/gpu/drm/mxsfb/mxsfb_drv.c
> >> +++ b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
> >> @@ -124,6 +124,7 @@ static void mxsfb_pipe_enable(struct drm_simple_display_pipe *pipe,
> >>      drm_panel_prepare(mxsfb->panel);
> >>      mxsfb_crtc_enable(mxsfb);
> >>      drm_panel_enable(mxsfb->panel);
> >> +    drm_crtc_vblank_on(&pipe->crtc);
> >>  }
> >>
> >>  static void mxsfb_pipe_disable(struct drm_simple_display_pipe *pipe)
> >> @@ -133,6 +134,7 @@ static void mxsfb_pipe_disable(struct drm_simple_display_pipe *pipe)
> >>      struct drm_crtc *crtc = &pipe->crtc;
> >>      struct drm_pending_vblank_event *event;
> >>
> >> +    drm_crtc_vblank_off(&pipe->crtc);
> >>      drm_panel_disable(mxsfb->panel);
> >>      mxsfb_crtc_disable(mxsfb);
> >>      drm_panel_unprepare(mxsfb->panel);
> >> --
> >> 2.26.2
> >>



-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
