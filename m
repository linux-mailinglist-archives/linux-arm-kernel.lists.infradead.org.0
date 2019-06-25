Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CBEE5584F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 22:03:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8gRiLhrz9kbKhZyfHe43Bsw0cG66wjZnUgNXgq/kGto=; b=rua/DBv7ui+Nut
	ulKCIwwVuDem2c+8Ah1sbI9QOQlfr6I7h0Y5UfbW+wsCAz4DZsSDytZmh2m3QdG12uOZHcDHIHylV
	UJY1HnfqLyHuq5U2CGJL07J+ffC2lQZg3SQpCAhpaYBYnZit09qryxR3ILtnhqgRxQAD7Ro+J1/nB
	ubJYE49x6tE7duFfJoqk/JTXrYmSyeevLWdCJZONpK384ZJFE7nCXb9O/yXQRtS+FfGcthRHN4snW
	7ccZ+FaizAgGIwsmmXO/FbLxqg+PVCXsAf6asJ7DLVezLHssgGAHujnqkpx8b5r1gzCpSBXhfc/Ri
	7AkphynaIXRRjd4+A1Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfrel-0000us-E2; Tue, 25 Jun 2019 20:03:07 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfreU-0000uL-Hr
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 20:02:52 +0000
Received: by mail-ed1-x544.google.com with SMTP id k8so28961431eds.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 13:02:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=sender:date:from:to:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DmS1jNL47BlCeH7f/PXu4ZPXGuwE81QoT6SSZgP5EfA=;
 b=Qeo0rZGKwLlLKqReBhoZJ8BiSZyBWcjLuJ5zL9fbsq8WUKITB5LgdxoLYpK3FW0cG7
 KQ9WeabH4I4Dh2ci7fWd2d7xv00yr6/dGF1cXGMNXq5HKXKb1R8TQIHT7sfu+U4DF6IS
 o5+8S4KcN7IFrcz5xN5c8/OkDyMjxdIQiFfM8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=DmS1jNL47BlCeH7f/PXu4ZPXGuwE81QoT6SSZgP5EfA=;
 b=KyKXKH++jCocNj+XWiFyPeSmbts1nDcr889gK1KHtA08Q0t9HFxugqCUv4Mn0Wwvni
 hx+em89Lin8QsoyPuehCbPvPCCVSCQsq3CF2ninqSC7q8+rTHdKj+foXL3Xo8vL0SXR6
 dDnowO2VyuhaP+sDaoS3PrcjMKIHYHTL2vkDCnimPEWC4GJBZbpixJzKXHwnOvJ/uZQN
 Q0GdFPecOXP/6gzn75GaSKj92PUWKp5XxiBDoJ1t0dfBnTdFOJoSaD+PmnzLpP2EXg4h
 9WQ156FN39eebCu3fdIS250ljraBUD0KGNSy3Panp8Wk7lP+tStxbtUuIuUiHZEpfX6f
 TCWQ==
X-Gm-Message-State: APjAAAVocAa85iAruouMvZzY9xzpLZQv+BCKmw0jYXFRGcQdYTWvpmqx
 74syaD3avZjluAVXSjX0tjGlhg==
X-Google-Smtp-Source: APXvYqzia67HddlGmDa0OCB9iU/++DB8gSxq/pTHPCjjVlkhcaBvvSzaHxF0djPvj6x74cJ3TAndBg==
X-Received: by 2002:a50:d0d6:: with SMTP id g22mr352450edf.250.1561492968402; 
 Tue, 25 Jun 2019 13:02:48 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id a9sm5165772edc.44.2019.06.25.13.02.47
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 13:02:47 -0700 (PDT)
Date: Tue, 25 Jun 2019 22:02:45 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Robert Beckett <bob.beckett@collabora.com>,
 dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
 Philipp Zabel <p.zabel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 1/4] drm/vblank: warn on sending stale event
Message-ID: <20190625200245.GD12905@phenom.ffwll.local>
Mail-Followup-To: Robert Beckett <bob.beckett@collabora.com>,
 dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <cover.1561483965.git.bob.beckett@collabora.com>
 <a21034afa30246f31daa16e74a0772377a4791ef.1561483965.git.bob.beckett@collabora.com>
 <20190625200042.GC12905@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625200042.GC12905@phenom.ffwll.local>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_130250_590163_EC1DACC0 
X-CRM114-Status: GOOD (  27.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 10:00:42PM +0200, Daniel Vetter wrote:
> On Tue, Jun 25, 2019 at 06:59:12PM +0100, Robert Beckett wrote:
> > Warn when about to send stale vblank info and add advice to
> > documentation on how to avoid.
> > 
> > Signed-off-by: Robert Beckett <bob.beckett@collabora.com>
> > ---
> >  drivers/gpu/drm/drm_vblank.c | 17 +++++++++++++++++
> >  1 file changed, 17 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
> > index 603ab105125d..7dabb2bdb733 100644
> > --- a/drivers/gpu/drm/drm_vblank.c
> > +++ b/drivers/gpu/drm/drm_vblank.c
> > @@ -918,6 +918,19 @@ EXPORT_SYMBOL(drm_crtc_arm_vblank_event);
> >   *
> >   * See drm_crtc_arm_vblank_event() for a helper which can be used in certain
> >   * situation, especially to send out events for atomic commit operations.
> > + *
> > + * Care should be taken to avoid stale timestamps. If:
> > + *   - your driver has vblank support (i.e. dev->num_crtcs > 0)
> > + *   - the vblank irq is off (i.e. no one called drm_crtc_vblank_get)
> 
> drm_crtc_vblank_get() so it becomes a neat hyperlink.
> 
> > + *   - from the vblank code's pov the pipe is still running (i.e. not
> > + *     in-between a drm_crtc_vblank_off()/on() pair)
> 
> Not sure the above will lead to great markup, maybe spell out the
> drm_crtc_vblank_on() and maybe make it a bit clearer like "i.e. not after
> the call to drm_crtc_vblank_off() but before the next call to
> drm_crtc_vblank_on()" so it's clear which said of this pair we're talking
> about.
> 
> > + * If all of these conditions hold then drm_crtc_send_vblank_event is
> 
> style nit: the enumeration is one sentence (and and oxford comman missing
> but whatever), but you don't continue it here. Also, does the enumeration
> look pretty in the htmldocs output?
> 
> > + * going to give you a garbage timestamp and and sequence number (the last
> > + * recorded before the irq was disabled). If you call drm_crtc_vblank_get/put
> > + * around it, or after vblank_off, then either of those will have rolled things
> > + * forward for you.
> 
> Again pls fix the markup so all the function reference stick out and work.

One more style nit: s/you/drivers/, so maybe:

"Drivers must either hold a vblank reference acquired through
drm_crtc_vblank_get() or the vblank must have been shut off by calling
drm_crtc_vblank_off()." Those functions then have in turn links and hints
what you also need to do, like not forget to call drm_crtc_vblank_put().
> 
> > + * So, drivers should call drm_crtc_vblank_off() before this function in their
> > + * crtc atomic_disable handlers.
> 
> Imo this sentence here is needed but a bit confusing, and we have it
> documented already in the atomic_disable hook.
> 
> Other option would be to list all the places where a driver might want to
> call this and how they could get it wrong, which imo doesn't make sense.
> 
> With the nits addressed:
> 
> Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> 
> >   */
> >  void drm_crtc_send_vblank_event(struct drm_crtc *crtc,
> >  				struct drm_pending_vblank_event *e)
> > @@ -925,8 +938,12 @@ void drm_crtc_send_vblank_event(struct drm_crtc *crtc,
> >  	struct drm_device *dev = crtc->dev;
> >  	u64 seq;
> >  	unsigned int pipe = drm_crtc_index(crtc);
> > +	struct drm_vblank_crtc *vblank = &dev->vblank[pipe];
> >  	ktime_t now;
> >  
> > +	WARN_ONCE(dev->num_crtcs > 0 && !vblank->enabled && !vblank->inmodeset,
> > +		  "sending stale vblank info\n");
> > +
> >  	if (dev->num_crtcs > 0) {
> >  		seq = drm_vblank_count_and_time(dev, pipe, &now);
> >  	} else {
> > -- 
> > 2.18.0
> > 
> 
> -- 
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
