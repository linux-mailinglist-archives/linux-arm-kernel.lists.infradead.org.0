Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8DE4D192E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 21:45:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DASW/01/mbt5ABC3nJa+u1jXJg93hLw4J39LyN9ckjc=; b=jZ4h3eLfWoN7kJ
	xmVE6OUPjT5/mRI/QQ+kkkKq8VlVijkF29EU3BLkedYhWruz6RkWgExv5sW/pA+/AAjC8++WcQLjj
	oar5q6EekgcpIlM+vpwHyb7G4xMLzlNZJOmEDz10OaytjIr7kvAO2wgUHvabdGL6PhSR9bRt3sULV
	upuPQ/bCIZCdU6b1J6MilBD6qFaymFIju7TGQAkmPl4Kf4fH/JRoCTxVijFr/vYrJPobUajUsqzw8
	iFGq6rnvL+rtDX2bx9tfG/tnBU8OK5aoFPAf9aVwUGTmHMcv1loO7KkXD/2/5gTHgPwMlckDADv1e
	+4v/AFBvInBGJBx6/t+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIHta-0003dM-3g; Wed, 09 Oct 2019 19:45:14 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIHtQ-0002pC-7V
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 19:45:06 +0000
Received: by mail-yw1-xc41.google.com with SMTP id 129so1259696ywb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 12:45:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=xyT2XFMhIHUuOol3uHhbhZsTWeRlfSYpXK4jTO1RcTw=;
 b=EVuYV3llzDrejcZnJTO/p1cf3unw2nMXwvjjuzNnvgS+SO51La+ro+S19acrkLWCRP
 DgCCfmP0w3bJcefKnMC0s6eBwBx863jQeO7uJKeP4OzIvFmEpyk3TLZLukGbvxBLZz1F
 x6JnI2ykmZcoFcbboh7eucvrq48s6TqXPqw3JVYpaz9J2+y2y5gCs4WAvlOk3Qvxtyq6
 WSfn/iLDZ04ekHZOr4ghFSfjiS/WbJDuOEXFrrBfbwzQEmBR6U9ct4/NgkiF3Pm+fJ09
 TFK2DTEgjVeMwE4FZYzxB4wFzbqWZHos3Du5XMpps5gTDe6/RnNnjbdnhKDnSB2hFQNm
 2HQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xyT2XFMhIHUuOol3uHhbhZsTWeRlfSYpXK4jTO1RcTw=;
 b=OWV3sDLiQMwokPUWZKeAPEHBl+UOv8QwuNO1TbEfjTa7GTGy2RR3c1KEMIqgFmkAqu
 X0J7BDU7FE+Z93oKvdLXT/lPwq3kdY3qiZR2Spub9dHtbVF483cKaMK9LjY0sxuAD5qy
 IkL0H35G9K4s2C3fHRlxrr6vDzsEQe+wiq0R5yWNUPP5ZYaQh75sJF7vBdNIYR6fgNTt
 Kv3eI9LXioZqgmKGRMIrAW096/A9UhBdIEPOJUT1VdfYKRTwlkZQGAnDX44lw4pOSn7b
 iDtLld7pL7D8xdu1qdfG4g+lxqMxAjdff8G5mDpfUTMMogsTHSnrpgBKKfHt2vfIYmYp
 liJw==
X-Gm-Message-State: APjAAAWSEAMLzWv4uPAf3HDzY0JhFpjru3H2EHI/vdHo0+fcwGbDsQk+
 ynfWYZFOigEEhhyOa13ipoP/AA==
X-Google-Smtp-Source: APXvYqzRchyM1MV4+E4ONaAN27nFkTr9cQ1hEJGJB6BKGXh19kzlLt2iEuaWOg/qoogoq8hUcni8Ow==
X-Received: by 2002:a81:5ed4:: with SMTP id s203mr3958973ywb.485.1570650303049; 
 Wed, 09 Oct 2019 12:45:03 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id f68sm908781ywb.96.2019.10.09.12.45.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 12:45:02 -0700 (PDT)
Date: Wed, 9 Oct 2019 15:45:02 -0400
From: Sean Paul <sean@poorly.run>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2] drm/rockchip: Round up _before_ giving to the clock
 framework
Message-ID: <20191009194502.GH85762@art_vandelay>
References: <20191003114726.v2.1.Ib233b3e706cf6317858384264d5b0ed35657456e@changeid>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191003114726.v2.1.Ib233b3e706cf6317858384264d5b0ed35657456e@changeid>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_124504_280846_7264F7C6 
X-CRM114-Status: GOOD (  34.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: heiko@sntech.de, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 tfiga@chromium.org, linux-rockchip@lists.infradead.org, mka@chromium.org,
 seanpaul@chromium.org, ryandcase@chromium.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 03, 2019 at 11:47:30AM -0700, Douglas Anderson wrote:
> I'm embarassed to say that even though I've touched
> vop_crtc_mode_fixup() twice and I swear I tested it, there's still a
> stupid glaring bug in it.  Specifically, on veyron_minnie (with all
> the latest display timings) we want to be setting our pixel clock to
> 66,666,666.67 Hz and we tell userspace that's what we set, but we're
> actually choosing 66,000,000 Hz.  This is confirmed by looking at the
> clock tree.
> 
> The problem is that in drm_display_mode_from_videomode() we convert
> from Hz to kHz with:
> 
>   dmode->clock = vm->pixelclock / 1000;
> 
> ...and drm_display_mode_from_videomode() is called from panel-simple
> when we have an "override_mode" like we do on veyron_minnie.  See
> commit 123643e5c40a ("ARM: dts: rockchip: Specify
> rk3288-veyron-minnie's display timings").
> 
> ...so when the device tree specifies a clock of 66666667 for the panel
> then DRM translates that to 66666000.  The clock framework will always
> pick a clock that is _lower_ than the one requested, so it will refuse
> to pick 66666667 and we'll end up at 66000000.
> 
> While we could try to fix drm_display_mode_from_videomode() to round
> to the nearest kHz and it would fix our problem, it wouldn't help if
> the clock we actually needed was 60,000,001 Hz.  We could
> alternatively have DRM always round up, but maybe this would break
> someone else who already baked in the assumption that DRM rounds down.
> Specifically note that clock drivers are not consistent about whether
> they round up or round down when you call clk_set_rate().  We know how
> Rockchip's clock driver works, but (for instance) you can see that on
> most Qualcomm clocks the default is clk_rcg2_ops which rounds up.
> 
> Let's solve this by just adding 999 Hz before calling
> clk_round_rate().  This should be safe and work everywhere.  As
> discussed in more detail in comments in the commit, Rockchip's PLLs
> are configured in a way that there shouldn't be another PLL setting
> that is only a few kHz off so we won't get mixed up.
> 
> NOTE: if this is picked to stable, it's probably easiest to first pick
> commit 527e4ca3b6d1 ("drm/rockchip: Base adjustments of the mode based
> on prev adjustments") which shouldn't hurt in stable.
> 
> Fixes: b59b8de31497 ("drm/rockchip: return a true clock rate to adjusted_mode")
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Pushed to drm-misc-next, thanks for your patch (and revision)!

Sean

> Reviewed-by: Sean Paul <seanpaul@chromium.org>
> ---
> 
> Changes in v2:
> - Beefed up the commit message (Sean).
> 
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 37 +++++++++++++++++++--
>  1 file changed, 34 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> index 613404f86668..84e3decb17b1 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> @@ -1040,10 +1040,41 @@ static bool vop_crtc_mode_fixup(struct drm_crtc *crtc,
>  				struct drm_display_mode *adjusted_mode)
>  {
>  	struct vop *vop = to_vop(crtc);
> +	unsigned long rate;
>  
> -	adjusted_mode->clock =
> -		DIV_ROUND_UP(clk_round_rate(vop->dclk,
> -					    adjusted_mode->clock * 1000), 1000);
> +	/*
> +	 * Clock craziness.
> +	 *
> +	 * Key points:
> +	 *
> +	 * - DRM works in in kHz.
> +	 * - Clock framework works in Hz.
> +	 * - Rockchip's clock driver picks the clock rate that is the
> +	 *   same _OR LOWER_ than the one requested.
> +	 *
> +	 * Action plan:
> +	 *
> +	 * 1. When DRM gives us a mode, we should add 999 Hz to it.  That way
> +	 *    if the clock we need is 60000001 Hz (~60 MHz) and DRM tells us to
> +	 *    make 60000 kHz then the clock framework will actually give us
> +	 *    the right clock.
> +	 *
> +	 *    NOTE: if the PLL (maybe through a divider) could actually make
> +	 *    a clock rate 999 Hz higher instead of the one we want then this
> +	 *    could be a problem.  Unfortunately there's not much we can do
> +	 *    since it's baked into DRM to use kHz.  It shouldn't matter in
> +	 *    practice since Rockchip PLLs are controlled by tables and
> +	 *    even if there is a divider in the middle I wouldn't expect PLL
> +	 *    rates in the table that are just a few kHz different.
> +	 *
> +	 * 2. Get the clock framework to round the rate for us to tell us
> +	 *    what it will actually make.
> +	 *
> +	 * 3. Store the rounded up rate so that we don't need to worry about
> +	 *    this in the actual clk_set_rate().
> +	 */
> +	rate = clk_round_rate(vop->dclk, adjusted_mode->clock * 1000 + 999);
> +	adjusted_mode->clock = DIV_ROUND_UP(rate, 1000);
>  
>  	return true;
>  }
> -- 
> 2.23.0.444.g18eeb5a265-goog
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
