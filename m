Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B89C93D534
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 20:10:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G38hRMEP0mr2jYi3PH1PGXZnlqeV7Oygo4HNTjbZBQo=; b=fMQYS13gsMg72P
	PolUdQFSqLvKyfXpFiSHuWIfcRWleYJmE1UE7MrASJqzZ5SadjjjetUkp+JB2fbxFemNrWgpuls4v
	F6+63SPuzzSE4JWpbIAl3Ok9Gy5qbzcih2kmFSA/AgRRGx9477NcA6rzUvOj5NpMUOGjES+NwhWra
	T5Ycd1Fgp0vNS2fpx5lBfskW8asatR3PbLrMtPhaFbrrNr+qle3vGJvAiir/UOUFsrn0P6YuKF5d2
	d9Pzb8hIn5OXNXW55TGz+KA6RvkUe7sD82TSdaD6SGb+GdO06NswYWyqyqoCfbby2YAHHuLhZeFT2
	cWn8YYAP1/PifWmAFxlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1halDs-0006Ju-DL; Tue, 11 Jun 2019 18:10:16 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1halDf-0005W3-AD
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 18:10:05 +0000
Received: by mail-qt1-x844.google.com with SMTP id m29so15685803qtu.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 11:10:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=eOLu2pv3ntr03fF23gOdX13Tk7BC8vZXwUsKPiu9VxE=;
 b=gYk4MhssKmkwQZ19maJBR4bE6vwfma3JhBXgQSnIYj0auCMAoMj8ot7V9VWKvTZsjC
 7JelP45rZXY/mVLwsNEB1C3Vzmy/XspjXapX/oefVGwUWli2PQo651u6o0qR1PcRDcpe
 sch0Q9D/9u+y9bD3NynRW9bm/r8Adw7KDRO/lkV7bMyhG6fOC/s7DChSw0SMrK/Q2QB1
 Cq4kBIoBmG9zf1lGcVJhO/Zr+/C9UQrYRsHpyRMphNNz3+AuQqz1KWI/ZR66dS/Fzi+j
 KtLimPwVEQhLndQPxDYqpjpbuOb9fMG8uWOmevXlRztOe9uh3GylXQvV+4NLRTh+8aIL
 liNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=eOLu2pv3ntr03fF23gOdX13Tk7BC8vZXwUsKPiu9VxE=;
 b=tIe4G+KJlxO95hLCNhOQe/4/TpXzNXkXi+hza6a/dPFoXnanvDOkNi3QGT71lLj1rh
 IhRvNWPwOk6V6smmK1YyidXepJT9DPsbLRC26BQU2MnvavpSdIB3pwksfgwwiPwhRYXd
 9SwY9QGH4jWtdTDR/O0e/eCH41IcL1uvMwPhPxxIO3SedvnuMZU1Ij2hUVmRjM9KSLy/
 stYxfVcdTFpdhYMnHDeEHiwP/x7mqhGGiycSGhqMQzxGY1GT1GTcpqqStUrkfUk+PwXF
 C+Y1IqXHlUT2he+RjD4hMNRM3V4h21UOxUl5kbvbAK+R0c6TxIWlK6SabFc5PKlzPqY0
 DB3g==
X-Gm-Message-State: APjAAAWlEtFFoyqO9s1xzZMMK2qeVwC+2+3XJJbEwH67weY/EaKiS+hw
 8+E/niAvD919L6PRqOxDtQKA9qh6NuI=
X-Google-Smtp-Source: APXvYqyvHdYPwZQmrTxT8DJFd42e4zwEUFfGqYqxQepII7ckzuHdwqYG+6QLY0hYZ4Ekq1LfdXqfUA==
X-Received: by 2002:aed:2fe7:: with SMTP id m94mr63059235qtd.191.1560276601090; 
 Tue, 11 Jun 2019 11:10:01 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id z57sm6848564qta.62.2019.06.11.11.10.00
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 11:10:00 -0700 (PDT)
Date: Tue, 11 Jun 2019 14:09:59 -0400
From: Sean Paul <sean@poorly.run>
To: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCH v5 06/11] drm/rockchip: Use dirtyfb helper
Message-ID: <20190611180719.GB179831@art_vandelay>
References: <20190611160844.257498-1-sean@poorly.run>
 <20190611160844.257498-7-sean@poorly.run>
 <20190611173912.GL2458@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190611173912.GL2458@phenom.ffwll.local>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_111003_508490_41B31921 
X-CRM114-Status: GOOD (  22.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@linux.ie>,
 Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, Sean Paul <seanpaul@chromium.org>,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 07:39:12PM +0200, Daniel Vetter wrote:
> On Tue, Jun 11, 2019 at 12:08:20PM -0400, Sean Paul wrote:
> > From: Sean Paul <seanpaul@chromium.org>
> > 
> > Instead of flushing all vops every time we get a dirtyfb call, use the
> > damage helper to kick off an atomic commit. Even though we don't use
> > damage clips, the helper commit will force us through the normal
> > psr_inhibit_get/put sequence.
> > 
> > Changes in v3:
> > - Added to the set
> > Changes in v4:
> > - None
> > Changes in v5:
> > - None
> > 
> > Link to v3: https://patchwork.freedesktop.org/patch/msgid/20190502194956.218441-7-sean@poorly.run
> > Link to v4: https://patchwork.freedesktop.org/patch/msgid/20190508160920.144739-7-sean@poorly.run
> > 
> > Suggested-by: Daniel Vetter <daniel@ffwll.ch>
> > Tested-by: Heiko Stuebner <heiko@sntech.de>
> > Signed-off-by: Sean Paul <seanpaul@chromium.org>
> 
> Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

Thanks!

> 
> btw somewhat bigger fish to fry, but imo also very much worth it:
> Switching over to the generic fbdev emulation.

Agreed, this tends to get swept under the rug on CrOS devices since we don't use
fbdev :/

> 
> Also, since everything up to this one is reviewed I think would be good to
> land that part already. So I can go around and haggle this to other
> drivers :-)

Sounds good to me, it'll be nice to offload some of the patches I've been
carrying.

Thanks again for the reviews,

Sean

> -Daniel
> 
> > ---
> >  drivers/gpu/drm/rockchip/rockchip_drm_fb.c | 13 ++-----------
> >  1 file changed, 2 insertions(+), 11 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
> > index 31030cf81bc97..a888e31aa545a 100644
> > --- a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
> > +++ b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
> > @@ -16,6 +16,7 @@
> >  #include <drm/drm.h>
> >  #include <drm/drmP.h>
> >  #include <drm/drm_atomic.h>
> > +#include <drm/drm_damage_helper.h>
> >  #include <drm/drm_fb_helper.h>
> >  #include <drm/drm_gem_framebuffer_helper.h>
> >  #include <drm/drm_probe_helper.h>
> > @@ -25,20 +26,10 @@
> >  #include "rockchip_drm_gem.h"
> >  #include "rockchip_drm_psr.h"
> >  
> > -static int rockchip_drm_fb_dirty(struct drm_framebuffer *fb,
> > -				 struct drm_file *file,
> > -				 unsigned int flags, unsigned int color,
> > -				 struct drm_clip_rect *clips,
> > -				 unsigned int num_clips)
> > -{
> > -	rockchip_drm_psr_flush_all(fb->dev);
> > -	return 0;
> > -}
> > -
> >  static const struct drm_framebuffer_funcs rockchip_drm_fb_funcs = {
> >  	.destroy       = drm_gem_fb_destroy,
> >  	.create_handle = drm_gem_fb_create_handle,
> > -	.dirty	       = rockchip_drm_fb_dirty,
> > +	.dirty	       = drm_atomic_helper_dirtyfb,
> >  };
> >  
> >  static struct drm_framebuffer *
> > -- 
> > Sean Paul, Software Engineer, Google / Chromium OS
> > 
> 
> -- 
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
