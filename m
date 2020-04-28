Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1CE1BC0DC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 16:13:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gPq7Ps/1c2sDP9jWdugJ6b0J9qhCfccS/IonE3DY/Mw=; b=bNvjfnU7OPgC5G
	dvtI9ur0Lyd97OymM8qhs4KnvorNrBtAkymjXBSZUQIpd5YizEmmcUy/nmlWiVGdRBvjClC4soeml
	hLnmob1sGiQGpf43BmQOIqePuZ/rx5VNxe0SWT+/8CCq3EPhcFVywP5aWeyRZAdaX77VutBVFGOvD
	oi9ue28xseBz8LSvcDHiokM+VsjMj2QwJ8D0WlwM/W1FPEWBdSPWC46NI5MGbNix1bRA7eN3VszEX
	U+4a4eGVcZigocqBD5w5KSe+8jxdZRlW//mCA7puyyGUFOBkBUHrkJaKif2bs+6D705CEAq46G1/O
	EauKkYe62Inpyr0coK9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTQyt-0006Cr-MX; Tue, 28 Apr 2020 14:13:03 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTQyI-0005tF-Pg
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 14:12:28 +0000
Received: by mail-wm1-x341.google.com with SMTP id z6so3041224wml.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 07:12:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=YsD7GjwZh2xdJ3wMaC19FB+yUQls1ObZL8q+/TqZPaI=;
 b=K5fJIDkt6Nm8nqxpnj2sj9apyTV1p/vWTeB4os0Sv3i6GExhsJCwJqdvEh7yjJ0KT1
 ieHVuuujb8rPee1NzLN1x/mbJ8mJ0Kv+LjXXmT34crv1Oaez2A8mQVAMMXFHv9ehZtYu
 Z/QVYtYFtRbA7o5XyBCK4NNUPMpQ5ZBTA1j0o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=YsD7GjwZh2xdJ3wMaC19FB+yUQls1ObZL8q+/TqZPaI=;
 b=k143EvPitNpycNzvVhsiq/AhJLnTg5jPEPPcZCtsJFZ+98qeQMzyTrvI9PSQNEnu2y
 jdld2X6pfFe6pq32TlMtURqnJSIOuZqNPryvrwAxIc7cOEluKj3X4l4asKJZsoy7r6YT
 sIFuVv5suTn8kBH+DrIbH0uf4QqghktZaDS2fiT5trP2gnjlwZTwbAk/Qmz0NuDUG8ly
 xGqbUrNjSxb1SNENj/bJTGxZacf5zgfhwfEJhP3YNpd2ncZ7aLBZPh72xCDBv6CqzxD+
 5TQ+bGdhaJKBSTStkbanb4OaPkxngj2pIl5kk6zTbdjflLYDTGApTDLsiSXhm84DhwGK
 puCA==
X-Gm-Message-State: AGi0PuYVNV5NE6aI9TjMsbkhurhtv4iUefgveUPCSgyBNtrhxDcAh05o
 k55RIfPhWH+DfwwMBTyfb16eHQ==
X-Google-Smtp-Source: APiQypKEM1Oo8wUtGkwt4tUTGbBDhF4duM1wEmCSJuoJRgt815cei21omhnSwJlWEA3iCo1wmfevbQ==
X-Received: by 2002:a1c:1d92:: with SMTP id d140mr4758593wmd.67.1588083144107; 
 Tue, 28 Apr 2020 07:12:24 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id 185sm4020627wmc.32.2020.04.28.07.12.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 07:12:23 -0700 (PDT)
Date: Tue, 28 Apr 2020 16:12:21 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH 56/59] drm/aspeed: Use managed drmm_mode_config_cleanup
Message-ID: <20200428141221.GM3456981@phenom.ffwll.local>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
 <20200415074034.175360-57-daniel.vetter@ffwll.ch>
 <20200424181002.GL7074@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200424181002.GL7074@ravnborg.org>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_071227_170216_FE771DA7 
X-CRM114-Status: GOOD (  21.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Joel Stanley <joel@jms.id.au>, Daniel Vetter <daniel.vetter@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 24, 2020 at 08:10:02PM +0200, Sam Ravnborg wrote:
> On Wed, Apr 15, 2020 at 09:40:31AM +0200, Daniel Vetter wrote:
> > Since aspeed doesn't use devm_kzalloc anymore we can use the managed
> > mode config cleanup.
> > 
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: Joel Stanley <joel@jms.id.au>
> > Cc: Andrew Jeffery <andrew@aj.id.au>
> > Cc: linux-aspeed@lists.ozlabs.org
> > Cc: linux-arm-kernel@lists.infradead.org
> 
> Hmm, the helper function makes no sense, maybe embed it?
> 
> One Q below. Whith Q addressed:
> Acked-by: Sam Ravnborg <sam@ravnborg.org>
> 
> > ---
> >  drivers/gpu/drm/aspeed/aspeed_gfx_drv.c | 11 ++++++-----
> >  1 file changed, 6 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c b/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c
> > index 6b27242b9ee3..6e464b84a256 100644
> > --- a/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c
> > +++ b/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c
> > @@ -63,15 +63,15 @@ static const struct drm_mode_config_funcs aspeed_gfx_mode_config_funcs = {
> >  	.atomic_commit		= drm_atomic_helper_commit,
> >  };
> >  
> > -static void aspeed_gfx_setup_mode_config(struct drm_device *drm)
> > +static int aspeed_gfx_setup_mode_config(struct drm_device *drm)
> >  {
> > -	drm_mode_config_init(drm);
> > -
> >  	drm->mode_config.min_width = 0;
> >  	drm->mode_config.min_height = 0;
> >  	drm->mode_config.max_width = 800;
> >  	drm->mode_config.max_height = 600;
> >  	drm->mode_config.funcs = &aspeed_gfx_mode_config_funcs;
> > +
> > +	return drmm_mode_config_init(drm);
> 
> I do not see anything that documents that it is OK to init min/max
> width/heigh not funcs before drmm_mode_config_init() is called.
> Maybe drmm_mode_config_init() gain an memset(drm->mode_config),
> and we loose all the assingments from before the call to init().
> 
> Also most (all?) other users of drmm_mode_config_init()
> set them after the call to drmm_mode_config_init().
> So re-order here and then embed while you are touching the code again.

Only reason I've done it like this is that it saves a few lines of diff
compared to other options.

Wrt calling stuff the wrong way round: We pretty much assume throughout
that structures are allocated with kzalloc, none of our _init() functions
in drm have a memset. We'd break the world if we start doing memset() in
random _init() functions I think.

Also the main aspeed_gfx_load() function is quite long already, smashing
more random stuff in there won't help it's readability.

Anyway I don't care, if you insist I'm happy to repaint this in whatever
color choice you deem best :-)

Cheers, Daniel

> 
> 	Sam
> 
> >  }
> >  
> >  static irqreturn_t aspeed_gfx_irq_handler(int irq, void *data)
> > @@ -144,7 +144,9 @@ static int aspeed_gfx_load(struct drm_device *drm)
> >  	writel(0, priv->base + CRT_CTRL1);
> >  	writel(0, priv->base + CRT_CTRL2);
> >  
> > -	aspeed_gfx_setup_mode_config(drm);
> > +	ret = aspeed_gfx_setup_mode_config(drm);
> > +	if (ret < 0)
> > +		return ret;
> >  
> >  	ret = drm_vblank_init(drm, 1);
> >  	if (ret < 0) {
> > @@ -181,7 +183,6 @@ static int aspeed_gfx_load(struct drm_device *drm)
> >  static void aspeed_gfx_unload(struct drm_device *drm)
> >  {
> >  	drm_kms_helper_poll_fini(drm);
> > -	drm_mode_config_cleanup(drm);
> >  }
> >  
> >  DEFINE_DRM_GEM_CMA_FOPS(fops);
> > -- 
> > 2.25.1
> > 
> > _______________________________________________
> > dri-devel mailing list
> > dri-devel@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
