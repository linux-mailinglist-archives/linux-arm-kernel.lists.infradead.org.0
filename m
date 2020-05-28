Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E64E1E5A9C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 10:20:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q1mCtaKwp3BTko0P6k9+fW1QotQIUrB26hHX2Cp5fg0=; b=VKRSusJ714IpVJ
	dx3f2kj9gbYHAMazdmk1gxsYDFH4GBbKJ7jpYH+iX6yHO1e66pVOfCimZmRLpkgEO7Wl15QzK/tlF
	uP2bvaPOiHb6HxuhVZJKvEBvMIwWzAW6KCGnmFml7/InP6DLACsIEt9DYWt1NvIZapU5HYJjWQKdg
	/ohjHAYlnk93PkeS8y95HOmtwmkrQgDZpVXQtTi2BZN6xu/OSD+TqI5iRUnJrHobBSZtk18F3OVYg
	RzIsWhujEnTLgalUmI9fr5Ruw3kGTuKNS3L/QNOCFYYUDeF5Q7FEQbUGktIBCGtp4fiFASABkf8m8
	rgemN4AyTvMVnanuZDWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeDli-0001WM-Ni; Thu, 28 May 2020 08:20:02 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeDlW-0001W0-Nq
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 08:19:52 +0000
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id 9F17E5C3E05;
 Thu, 28 May 2020 10:19:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1590653986;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rjuIwLc6TgSpZuJvVE/30CTZKhSVc37Hl85RakLKn9g=;
 b=F5TSa2VAlySusy3/XgAtm7su4QHvXn56ywvfPAkr2cD5TRk0cZnjr6MJ1/MIHt34VhkjFK
 6n0gSHfGIv3HQh8V9JkzhVhGhlpV7XqT1Opf0j6Xax9NjzEHcJWwI+MHdY4QcpY/MIiD8H
 VHlrjn0q9+ZNX9qwDgqRo9v3vg2n5eM=
MIME-Version: 1.0
Date: Thu, 28 May 2020 10:19:46 +0200
From: Stefan Agner <stefan@agner.ch>
To: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCH 1/2] drm/mxsfb: Call drm_crtc_vblank_on/off
In-Reply-To: <CAKMK7uGzbadiY1EQKQvQcBND4Ja73WZRF8-DoxLJNTsGBJS0jw@mail.gmail.com>
References: <20200527094757.1414174-1-daniel.vetter@ffwll.ch>
 <20200528054643.GQ206103@phenom.ffwll.local>
 <7911368105b92200b661f0fed39f5642@agner.ch>
 <CAKMK7uGzbadiY1EQKQvQcBND4Ja73WZRF8-DoxLJNTsGBJS0jw@mail.gmail.com>
User-Agent: Roundcube Webmail/1.4.1
Message-ID: <c8294901e201cd40a41111b05ecccd43@agner.ch>
X-Sender: stefan@agner.ch
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_011951_071854_A3571C54 
X-CRM114-Status: GOOD (  21.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

On 2020-05-28 10:06, Daniel Vetter wrote:
> On Thu, May 28, 2020 at 9:56 AM Stefan Agner <stefan@agner.ch> wrote:
>>
>> Hi Daniel,
>>
>> On 2020-05-28 07:46, Daniel Vetter wrote:
>> > On Wed, May 27, 2020 at 11:47:56AM +0200, Daniel Vetter wrote:
>> >> mxsfb has vblank support, is atomic, but doesn't call
>> >> drm_crtc_vblank_on/off as it should. Not good.
>> >>
>> >> With my next patch to add the drm_crtc_vblank_reset to helpers this
>> >> means not even the very first crtc enabling will vblanks work anymore,
>> >> since they'll just stay off forever.
>> >>
>> >> Since mxsfb doesn't have any vblank waits of its own in the
>> >> enable/disable flow, nor an enable/disable_vblank callback we can do
>> >> the on/off as the first respectively last operation, and it should all
>> >> work.
>> >>
>> >> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
>> >> Cc: Marek Vasut <marex@denx.de>
>> >> Cc: Stefan Agner <stefan@agner.ch>
>> >> Cc: Shawn Guo <shawnguo@kernel.org>
>> >> Cc: Sascha Hauer <s.hauer@pengutronix.de>
>> >> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
>> >> Cc: Fabio Estevam <festevam@gmail.com>
>> >> Cc: NXP Linux Team <linux-imx@nxp.com>
>> >> Cc: linux-arm-kernel@lists.infradead.org
>> >
>> > Ping for some ack/review on this one here, it's holding up the subsystem
>> > wide fix in patch 2.
>>
>> Sorry for the delay.
>>
>> I guess that has the same effect as patch 14 in Laurent's patchset would
>> have:
>> https://lore.kernel.org/dri-devel/20200309195216.31042-15-laurent.pinchart@ideasonboard.com/
> 
> Uh, looking at that patch I realized that mxsfb indeed calls
> drm_vblank_init before mode_config.num_crtc is set. Which means it
> never had working vblank support in upstream. That also explains the
> lack of fireworks, since all other drivers that actually do initialize
> vblank support have the drm_crtc_vblank_on/off calls - without them
> the driver doesn't survive for very long.
> 
> tldr; I don't need this patch here to apply the 2nd one, so no
> conflict potential at all. And the patch from Laurent does fix up
> everything correctly, so we should be good.

Uh I see, that is somehow unfortunate and fortunate at the same time!

Ok, I hope we get this cleaned up soon.

--
Stefan

> -Daniel
> 
>> But should be rather trivial to rebase. So until Laurent's patchset is
>> ready, we can go with this fix.
>>
>> Acked-by: Stefan Agner <stefan@agner.ch>
>>
>> --
>> Stefan
>>
>> >
>> > Thanks, Daniel
>> >
>> >> ---
>> >>  drivers/gpu/drm/mxsfb/mxsfb_drv.c | 2 ++
>> >>  1 file changed, 2 insertions(+)
>> >>
>> >> diff --git a/drivers/gpu/drm/mxsfb/mxsfb_drv.c b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
>> >> index 497cf443a9af..1891cd6deb2f 100644
>> >> --- a/drivers/gpu/drm/mxsfb/mxsfb_drv.c
>> >> +++ b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
>> >> @@ -124,6 +124,7 @@ static void mxsfb_pipe_enable(struct drm_simple_display_pipe *pipe,
>> >>      drm_panel_prepare(mxsfb->panel);
>> >>      mxsfb_crtc_enable(mxsfb);
>> >>      drm_panel_enable(mxsfb->panel);
>> >> +    drm_crtc_vblank_on(&pipe->crtc);
>> >>  }
>> >>
>> >>  static void mxsfb_pipe_disable(struct drm_simple_display_pipe *pipe)
>> >> @@ -133,6 +134,7 @@ static void mxsfb_pipe_disable(struct drm_simple_display_pipe *pipe)
>> >>      struct drm_crtc *crtc = &pipe->crtc;
>> >>      struct drm_pending_vblank_event *event;
>> >>
>> >> +    drm_crtc_vblank_off(&pipe->crtc);
>> >>      drm_panel_disable(mxsfb->panel);
>> >>      mxsfb_crtc_disable(mxsfb);
>> >>      drm_panel_unprepare(mxsfb->panel);
>> >> --
>> >> 2.26.2
>> >>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
