Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F3F102E31
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 22:22:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uJHlON7GhLUV4Q/qqFwA1louAmQR3F4Vk74vKV0Oi38=; b=Q6WlUMv+ws9qf2
	YI+fNhCw//vOkmzVnIXGG8vx5eFyazzTot1SLQfxyGFZkqRzJXAV4cxjEXxydkzOmJRncrIjMGvxM
	lQZhiBlZeAtXsN0mwwzk3Nb4bDnnY9reoZHONo8MBLKlWjXhvJaNlGuuK1rP8hak7/Y4EAZ+ceIDp
	wsnLHiN3qibjI4fQ7eAW21k7gG+17XPcNJo7yo+jBh/tJBNknvDbO1JtFmNubx9E40Q3eSQZ7iy0P
	Y+hxqskFX0RCemjuB5n6vwVnWd2yd7FbOuwLr+jrJbzIPLU1kfy4YIKuN5gzZRbs89D0xGzqxdxHK
	JlvDyEI1o7Axa2+jrXaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXAxR-0002Kb-1T; Tue, 19 Nov 2019 21:22:45 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXAxI-0002Ji-PB
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 21:22:38 +0000
Received: by mail-wr1-x444.google.com with SMTP id n1so25618537wra.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 Nov 2019 13:22:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=DlXKb9BgYz6v1KMFvMMPAiIkp2F3kVOgCpxH+j84Lwc=;
 b=TGShtLEHdu3HRj6tfTSQUMGYhrOov7aFOBwaj1LQTzzN1p2LNThZ3aJN2awfMO2+uz
 bVL9pmYvcj6kLNdmGTP00mf/WiaXxIGAK2gMrSLN53soNxtUi1DhxSWQEgZaX3QGb3VF
 B54T3Jlqd7rF8dDGfwSLOVODjwjAsD/lKx7Aw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DlXKb9BgYz6v1KMFvMMPAiIkp2F3kVOgCpxH+j84Lwc=;
 b=MLX2NuBix1GbxQdvM67wbzlD8HNNFOdqSE2cdGFDxvy5hXYu7b3Jth8vdgFFtHe5/9
 snq8OMZbJyH9y7lywZrGAjbO6ITBEjLi+Bp1j8R0rc+V7h1cUj9YkQRn+RwhOYNPW5od
 AuKgfsUMk+YTpfo8W1qx36xmWWWRlFS25d6quoloqgzX7eXgLKbLjF4UI7MxwF7Lsfv2
 JyqLJdm8mOilHcHwYcd7VT36ZgdWLBUO+uASwr6yQjqA+qQISFVKxclFtlY45EfvUxD7
 KOvZUhbnZ2HFxH5+YX7bkVEJVE0deZKKXnnVYXnMI9OoIqi90w1zs1j1az1RiryfGZUK
 a5uQ==
X-Gm-Message-State: APjAAAVDtzIXyvhM/nKWoUqBbyTKGgUob7Lj4NaH2lnLPEbf5cF8+8ny
 wag2A/149UTi6TpaiXcViMvfMg==
X-Google-Smtp-Source: APXvYqw1WQXBpMoG44fK0X22TCogCXWRV/ybRJc8btr4U8n/otAyw4dscEzByPiiWpPs5oLTQWkcmw==
X-Received: by 2002:adf:de0a:: with SMTP id b10mr40657112wrm.268.1574198554470; 
 Tue, 19 Nov 2019 13:22:34 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id b2sm3035487wrr.76.2019.11.19.13.22.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Nov 2019 13:22:33 -0800 (PST)
Date: Tue, 19 Nov 2019 22:22:31 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH 2/8] drm/atmel: ditch fb_create wrapper
Message-ID: <20191119212231.GE30416@phenom.ffwll.local>
References: <20191115092120.4445-1-daniel.vetter@ffwll.ch>
 <20191115092120.4445-3-daniel.vetter@ffwll.ch>
 <20191115103324.1fbeca63@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191115103324.1fbeca63@collabora.com>
X-Operating-System: Linux phenom 5.2.0-3-amd64 
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_132236_817099_74D672A0 
X-CRM114-Status: GOOD (  15.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Boris Brezillon <bbrezillon@kernel.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 15, 2019 at 10:33:24AM +0100, Boris Brezillon wrote:
> On Fri, 15 Nov 2019 10:21:14 +0100
> Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> 
> > Spotted while looking through them all.
> > 
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: Sam Ravnborg <sam@ravnborg.org>
> > Cc: Boris Brezillon <bbrezillon@kernel.org>
> 
> Acked-by: Boris Brezillon <boris.brezillon@collabora.com>

Merged, thanks for taking a look.
-Daniel

> 
> > Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
> > Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
> > Cc: Ludovic Desroches <ludovic.desroches@microchip.com>
> > Cc: linux-arm-kernel@lists.infradead.org
> > ---
> >  drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c | 8 +-------
> >  1 file changed, 1 insertion(+), 7 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c
> > index 92640298ad41..8dc917a1270b 100644
> > --- a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c
> > +++ b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c
> > @@ -557,12 +557,6 @@ static irqreturn_t atmel_hlcdc_dc_irq_handler(int irq, void *data)
> >  	return IRQ_HANDLED;
> >  }
> >  
> > -static struct drm_framebuffer *atmel_hlcdc_fb_create(struct drm_device *dev,
> > -		struct drm_file *file_priv, const struct drm_mode_fb_cmd2 *mode_cmd)
> > -{
> > -	return drm_gem_fb_create(dev, file_priv, mode_cmd);
> > -}
> > -
> >  struct atmel_hlcdc_dc_commit {
> >  	struct work_struct work;
> >  	struct drm_device *dev;
> > @@ -657,7 +651,7 @@ static int atmel_hlcdc_dc_atomic_commit(struct drm_device *dev,
> >  }
> >  
> >  static const struct drm_mode_config_funcs mode_config_funcs = {
> > -	.fb_create = atmel_hlcdc_fb_create,
> > +	.fb_create = drm_gem_fb_create,
> >  	.atomic_check = drm_atomic_helper_check,
> >  	.atomic_commit = atmel_hlcdc_dc_atomic_commit,
> >  };
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
