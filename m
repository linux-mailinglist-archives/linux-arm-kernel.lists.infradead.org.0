Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 255CAEEAF9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 22:20:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wgrO/yu8dL82xvITBwEmBHOf/ITyY9nR56iLEvFwdtU=; b=LPNaOxKOO4dLXq
	vKgXzrPr/s51OV159qL7PHcPwGChDRA3ofcfuQz4Swy0ZVSTNt3mkzhlmXhzJrRwe3gZoSlFpmoCH
	YipDAAXuesuxOVXOvxHT0bfogIwBEQbrJV9BMyhp5XxVUrXeKXM1hmZPNG86X3HCQ+V7rmMez0EVt
	3SGDLoy4fqBxoheI3bbwUe4EXcgiBfg7hF1DrqfenDuF8ma/o0BLr1vqYJcTJKQ3FJRsjB1yk/PYn
	cG2I8w44FfpWGp09mxg/j4XU2c9uDQ1/3GrXFSuESP+V5qtXIHxpBh+gAfbG3eN0PPfyPsiszUn8g
	S0Nk7B2wvLTGtEyO23pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRjm7-0000Ly-Ts; Mon, 04 Nov 2019 21:20:35 +0000
Received: from mail-yb1-xb41.google.com ([2607:f8b0:4864:20::b41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRjlz-0000Jc-1C
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 21:20:28 +0000
Received: by mail-yb1-xb41.google.com with SMTP id w6so6892754ybj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 13:20:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=OZKsfFaybCUsa3mStDHqmBR3Wkj6icu+7VdtxsBxOfU=;
 b=T6eB4AT9j0t3yWPfCx6JLXnMXByaB7WWCzN/YdbfCKMXw2qppUfNpIBM+a0JYeXvJi
 W9ZzNhfCq6R23pYJNgOyTmu389AQZloblU8IaTm7qvXN9kwXuxMEzqhNrarBUJfxDjfl
 YmkbqVApiY5kzOPQpVm4u/Wla6PnOEtgcBzKl6aELjvpbPhcO4p7s+VTEMOyz5XGRfRm
 U1NJWIVyL6MLod969EEq4q2foye07PYLu2J09v3WY1V8WMvTwzYmA7VUyVyyD/LdodXa
 u3jAgupHbbGxUr1pdy/ZFcAfZoQPqlRr4oZfRgCbZer8oKEyLgRt2MV0ja+y+K2C+TEV
 Q3NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=OZKsfFaybCUsa3mStDHqmBR3Wkj6icu+7VdtxsBxOfU=;
 b=hrWhmU5JAy7KFWjJcHSWE0WwR/thl8pd4skLCwkHhERYUxaSGW1EbNWdOpy9j5is5M
 Pw4EzNpFQSKteydEO/ROn5Cf9KjpCJjmVAF0jaC1yQdqtkXt0YFBG67l7jh8QKA6wNMa
 ESPhxzJDuOdRelII5ukxb4nkQPhmLoLSHH07g7MYSdZbe00PkYEicg9MyC7PPZF2K8sL
 Y+FHIH9WTDeYTRIRCA6Xg+YpnzBkoSV4ZnMxAHpFE+xKdVmzqY2H3U/UpstRtZc0h8V5
 hDa7k9bmf4aoQxZ6qZGrbbaaB/3li1YXicJKcW98Qvrxt9P6TLAzx0wPt1bbJcAnQZbW
 1q8w==
X-Gm-Message-State: APjAAAWkLoWsWnofNyJtuW7oTywG2plJJXWI8XeGTshAolFst87p6H5q
 XAN13y3w0J+MuEK1ylQob4vFwA==
X-Google-Smtp-Source: APXvYqxvj9j8AaNNsyIq3VOHp9kLKM+2gmCcXSWNtpFapUNFN+7IJa6nJYN+vIgod/6jIWO8+YL0Ew==
X-Received: by 2002:a25:361d:: with SMTP id d29mr7946802yba.276.1572902425055; 
 Mon, 04 Nov 2019 13:20:25 -0800 (PST)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id j5sm10500353ywc.57.2019.11.04.13.20.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Nov 2019 13:20:24 -0800 (PST)
Date: Mon, 4 Nov 2019 16:20:24 -0500
From: Sean Paul <sean@poorly.run>
To: CK Hu <ck.hu@mediatek.com>
Subject: Re: [PATCH] drm/mediatek: Support reflect-y plane rotation
Message-ID: <20191104212024.GA63329@art_vandelay>
References: <20191101132647.189033-1-sean@poorly.run>
 <1572654319.24679.4.camel@mtksdaap41>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1572654319.24679.4.camel@mtksdaap41>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_132027_219518_2AF1E8F1 
X-CRM114-Status: GOOD (  27.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Daniele Castagna <dcastagna@chromium.org>, dri-devel@lists.freedesktop.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Miguel Casas <mcasas@chromium.org>,
 Sean Paul <seanpaul@chromium.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Fritz Koenig <frkoenig@chromium.org>, linux-mediatek@lists.infradead.org,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org,
 Mark Yacoub <markyacoub@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Nov 02, 2019 at 08:25:19AM +0800, CK Hu wrote:
> Hi, Sean:
> 
> On Fri, 2019-11-01 at 09:26 -0400, Sean Paul wrote:
> > From: Sean Paul <seanpaul@chromium.org>
> > 
> > Expose the rotation property and handle REFLECT_Y rotations.
> > 
> > Cc: Fritz Koenig <frkoenig@chromium.org>
> > Cc: Daniele Castagna <dcastagna@chromium.org>
> > Cc: Miguel Casas <mcasas@chromium.org>
> > Cc: Mark Yacoub <markyacoub@google.com>
> > Signed-off-by: Sean Paul <seanpaul@chromium.org>
> > ---
> > 
> > The hardware also supports REFLECT_X, but I just could not figure out
> > how to get it working. If someone is interested in getting this going,
> > I'm happy to share notes and my WIP patch. For now, though, I actually
> > only need y-flip so I'm giving up on x-flip.
> 
> Does [1] give you any hint for x-flip, or that patch is incorrect?
> 
> [1]
> https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/1533519
> 

Hi CK,
Thank you for the pointer, that did help! That patch is slightly incorrect, but
pointed me to the issue I was having with REFLECT_X. I'll upload a new set with
REFLECT_X and ROTATE_180 support shortly.

Sean

> > 
> > 
> >  drivers/gpu/drm/mediatek/mtk_disp_ovl.c  |  6 ++++++
> >  drivers/gpu/drm/mediatek/mtk_drm_plane.c | 11 ++++++++++-
> >  drivers/gpu/drm/mediatek/mtk_drm_plane.h |  1 +
> >  3 files changed, 17 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> > index 14878ebf59d7..6505479ee506 100644
> > --- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> > +++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> > @@ -50,6 +50,7 @@
> >  					OVL_CON_CLRFMT_RGB : 0)
> >  #define	OVL_CON_AEN		BIT(8)
> >  #define	OVL_CON_ALPHA		0xff
> > +#define	OVL_CON_VIRT_FLIP	BIT(9)
> >  
> >  struct mtk_disp_ovl_data {
> >  	unsigned int addr;
> > @@ -229,6 +230,11 @@ static void mtk_ovl_layer_config(struct mtk_ddp_comp *comp, unsigned int idx,
> >  	if (idx != 0)
> >  		con |= OVL_CON_AEN | OVL_CON_ALPHA;
> >  
> > +	if (pending->rotation & DRM_MODE_REFLECT_Y) {
> > +		con |= OVL_CON_VIRT_FLIP;
> > +		addr += (pending->height - 1) * pending->pitch;
> > +	}
> > +
> >  	writel_relaxed(con, comp->regs + DISP_REG_OVL_CON(idx));
> >  	writel_relaxed(pitch, comp->regs + DISP_REG_OVL_PITCH(idx));
> >  	writel_relaxed(src_size, comp->regs + DISP_REG_OVL_SRC_SIZE(idx));
> > diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.c b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> > index 584a9ecadce6..4d8f2b55334b 100644
> > --- a/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> > +++ b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> > @@ -88,6 +88,9 @@ static int mtk_plane_atomic_check(struct drm_plane *plane,
> >  	if (!fb)
> >  		return 0;
> >  
> > +	if (fb->format->is_yuv && (state->rotation & ~DRM_MODE_ROTATE_0) != 0)
> > +		return -EINVAL;
> 
> If this patch does not support all color format, please describe what
> color format does this patch support, so others could try to make the
> rest color format work.
> 
> Regards,
> CK
> 
> > +
> >  	if (!state->crtc)
> >  		return 0;
> >  
> > @@ -132,6 +135,7 @@ static void mtk_plane_atomic_update(struct drm_plane *plane,
> >  	state->pending.y = plane->state->dst.y1;
> >  	state->pending.width = drm_rect_width(&plane->state->dst);
> >  	state->pending.height = drm_rect_height(&plane->state->dst);
> > +	state->pending.rotation = plane->state->rotation;
> >  	wmb(); /* Make sure the above parameters are set before update */
> >  	state->pending.dirty = true;
> >  }
> > @@ -166,7 +170,12 @@ int mtk_plane_init(struct drm_device *dev, struct drm_plane *plane,
> >  		return err;
> >  	}
> >  
> > -	drm_plane_helper_add(plane, &mtk_plane_helper_funcs);
> > +	err = drm_plane_create_rotation_property(plane, 0,
> > +						 DRM_MODE_ROTATE_0 |
> > +						 DRM_MODE_REFLECT_Y);
> > +	if (err)
> > +		DRM_INFO("Create rotation property failed, continuing...\n");
> >  
> > +	drm_plane_helper_add(plane, &mtk_plane_helper_funcs);
> >  	return 0;
> >  }
> > diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.h b/drivers/gpu/drm/mediatek/mtk_drm_plane.h
> > index 6f842df722c7..83b634a997cc 100644
> > --- a/drivers/gpu/drm/mediatek/mtk_drm_plane.h
> > +++ b/drivers/gpu/drm/mediatek/mtk_drm_plane.h
> > @@ -20,6 +20,7 @@ struct mtk_plane_pending_state {
> >  	unsigned int			y;
> >  	unsigned int			width;
> >  	unsigned int			height;
> > +	unsigned int			rotation;
> >  	bool				dirty;
> >  };
> >  
> 
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
