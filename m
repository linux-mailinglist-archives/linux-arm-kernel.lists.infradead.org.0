Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BB771BC620
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 19:06:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZuQMQFStIC8OuSgE8jhzrS/yDowuZE1volhkfxZ8zkg=; b=ebZy+menKgzONo
	DOp0uouvF55mmRuOQ87spsjXr7pBE1B3vpwZAp1h3h6QaytUqq+BUrt/KT/eEm2HtJO1te0vEkwCN
	cYyt4hMXGY3WS354xWXLYNTwbacbb96SsfJ9Bcm76mUsFa73s3xSz+bXWLVkjyNehpG0dHJzWY1Yb
	5ZQKIFWHcez1NqWWm1T+lcjHgE2aDxiMTGxDNLXwIORa4QQGdofnsSjx+RfU9X7BZduIolvjEKxrY
	4Xo/J28HLrWprx1nno7K7qSm/VSkSTrvg/EeQYJekudVEe4Qx1C80HhVMX6ARjjTSlZZtM+dCV92f
	yQripC5xMR4zxAH5dSvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTTg9-00035l-Fy; Tue, 28 Apr 2020 17:05:53 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTTfv-0000GZ-At
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 17:05:41 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id 03B7F20022;
 Tue, 28 Apr 2020 19:03:27 +0200 (CEST)
Date: Tue, 28 Apr 2020 19:03:26 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCH 56/59] drm/aspeed: Use managed drmm_mode_config_cleanup
Message-ID: <20200428170326.GB27234@ravnborg.org>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
 <20200415074034.175360-57-daniel.vetter@ffwll.ch>
 <20200424181002.GL7074@ravnborg.org>
 <20200428141221.GM3456981@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428141221.GM3456981@phenom.ffwll.local>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=ULXz4hXy c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=kj9zAlcOel0A:10 a=QyXUC8HyAAAA:8 a=voM4FWlXAAAA:8 a=JfrnYn6hAAAA:8
 a=7gkXJVJtAAAA:8 a=enx1l9sRoPJb_agsY6UA:9 a=zjnPc2nJzrSlpMA7:21
 a=QoBruPAAwtBn6P47:21 a=CjuIK1q_8ugA:10 a=IC2XNlieTeVoXbcui8wp:22
 a=1CNFftbPRP8L7MoqJWF3:22 a=E9Po1WZjFZOl8hwRPBS3:22
 a=pHzHmUro8NiASowvMSCR:22 a=nt3jZW36AmriUCFCBwmW:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_100540_334709_DED662A4 
X-CRM114-Status: GOOD (  23.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

On Tue, Apr 28, 2020 at 04:12:21PM +0200, Daniel Vetter wrote:
> On Fri, Apr 24, 2020 at 08:10:02PM +0200, Sam Ravnborg wrote:
> > On Wed, Apr 15, 2020 at 09:40:31AM +0200, Daniel Vetter wrote:
> > > Since aspeed doesn't use devm_kzalloc anymore we can use the managed
> > > mode config cleanup.
> > > 
> > > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > > Cc: Joel Stanley <joel@jms.id.au>
> > > Cc: Andrew Jeffery <andrew@aj.id.au>
> > > Cc: linux-aspeed@lists.ozlabs.org
> > > Cc: linux-arm-kernel@lists.infradead.org
> > 
> > Hmm, the helper function makes no sense, maybe embed it?
> > 
> > One Q below. Whith Q addressed:
> > Acked-by: Sam Ravnborg <sam@ravnborg.org>
> > 
> > > ---
> > >  drivers/gpu/drm/aspeed/aspeed_gfx_drv.c | 11 ++++++-----
> > >  1 file changed, 6 insertions(+), 5 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c b/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c
> > > index 6b27242b9ee3..6e464b84a256 100644
> > > --- a/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c
> > > +++ b/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c
> > > @@ -63,15 +63,15 @@ static const struct drm_mode_config_funcs aspeed_gfx_mode_config_funcs = {
> > >  	.atomic_commit		= drm_atomic_helper_commit,
> > >  };
> > >  
> > > -static void aspeed_gfx_setup_mode_config(struct drm_device *drm)
> > > +static int aspeed_gfx_setup_mode_config(struct drm_device *drm)
> > >  {
> > > -	drm_mode_config_init(drm);
> > > -
> > >  	drm->mode_config.min_width = 0;
> > >  	drm->mode_config.min_height = 0;
> > >  	drm->mode_config.max_width = 800;
> > >  	drm->mode_config.max_height = 600;
> > >  	drm->mode_config.funcs = &aspeed_gfx_mode_config_funcs;
> > > +
> > > +	return drmm_mode_config_init(drm);
> > 
> > I do not see anything that documents that it is OK to init min/max
> > width/heigh not funcs before drmm_mode_config_init() is called.
> > Maybe drmm_mode_config_init() gain an memset(drm->mode_config),
> > and we loose all the assingments from before the call to init().
> > 
> > Also most (all?) other users of drmm_mode_config_init()
> > set them after the call to drmm_mode_config_init().
> > So re-order here and then embed while you are touching the code again.
> 
> Only reason I've done it like this is that it saves a few lines of diff
> compared to other options.
> 
> Wrt calling stuff the wrong way round: We pretty much assume throughout
> that structures are allocated with kzalloc, none of our _init() functions
> in drm have a memset. We'd break the world if we start doing memset() in
> random _init() functions I think.
> 
> Also the main aspeed_gfx_load() function is quite long already, smashing
> more random stuff in there won't help it's readability.
> 
> Anyway I don't care, if you insist I'm happy to repaint this in whatever
> color choice you deem best :-)

From the principle of least suprises, you should at least call init and
then set min_width and friends.
This is easy to do in the helper, so easy to avoid the inlining I
suggested.

	Sam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
