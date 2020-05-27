Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A761E4AAF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:45:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+7qWqPlSyi8RAsXl/K/7sMYmTEix7yQxKcc7iB77q+c=; b=cT4Uoiz1GAUe3P
	DBtqEjpOg3p3ciXhG8OSMzSOm5vf/MMs1yZMJPMyUOu1o4s/hrWs+QY34nMIw5Ca0nEKraabs1nyZ
	BM/uDrvwhuOBx6VwJYtclZ4H+xvcdd3u7zXH6GcIW1rVXEH9StQ4wuamFrgfgR4QDlbWe8X6CcWO/
	pSDeXWFrbmzOQAd53GJT8bJehCTYiV6Qw1/UGEOSr6YioWQ6+D32gCVZ0/zWBC5cL4Drpr4942NC3
	rRQD0XZBAir0YAcdgkVx5LemmsSCoNePFWs4iA0FQGJPXdV7/MqEyt7KVvghQNIK/4IbdJ5M46jZ4
	KhMMFNZqyqm3OdvpJjLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdzBC-000163-LV; Wed, 27 May 2020 16:45:22 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdzB0-0008T1-0v
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 16:45:11 +0000
Received: by mail-lj1-x243.google.com with SMTP id w10so29808521ljo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 09:45:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=anholt-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=x5U/zKfkvmSEww+vSURoUmS0s1xUIVHLA1Nb4AtxJis=;
 b=W1Cxi2bY3PkaST1Z8OpeWGbMyEmo5P8jlNIwCdvVr+EjtPpX+j4R/HBMaMD7y4Dbz2
 sN2rfypqEM2mZkwCR0i0VC8WXHwpnf1WoXE9veH7nmHE1qcnAYL60rYjN5GtdbL7Er1s
 WzhIsrXN6NswcPYYrH1wEJ9LKSW6ea64X8zPbj5KzHqu6v6U4SOTWTD1ACj2AgEXeE6n
 Ow7zyaPtpdsM5IvuEpbGg6vrgBYIUyUwC4ri2NUosucaU5RmpJLrkxfAuYYsbvPM+u9v
 L7aHcngTSiHdWHOweNSQYkka0AxBsVpDzpNMA5BjYV4Hv/uBtOwPuqzDoOR/heOa38Sr
 dgyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=x5U/zKfkvmSEww+vSURoUmS0s1xUIVHLA1Nb4AtxJis=;
 b=GXZCx0M7BQeUG7CTTNJI8XrSTIxZUNYCBCl6WjWWvHmcpTLE2WLIdnWTf5XW/kPHP0
 XjL7LMy+Vr3yoHjKvVGaJCPUJQNdpttjrgD/2D5Gi5LaulbT62OLiSmprjh/nYaO67Kh
 QDb1RI42rJxhD9VSCBQl1tm8VNyi+rFgqiJtwe2lam8oxDserUCrhPZcOKqKNfDMNJiJ
 rFVR46j8Cs5HP8k2Qp8kZ7CPJQKPDybEWPqFa7Shav0obKO2px14QXMSqfW+K4J5pOpt
 E6Qo2Iond9uzd/0RCP+kAtt4HQDzHhEBh1GLcvIv0D0YTeH1/qL1W0n3ARAzlp3tJKO3
 pHUA==
X-Gm-Message-State: AOAM5325VxhxH30uf7RPDm6uf5ibrk5W8c3e7VH5JvLKvdlPu5zMNffy
 a0+Fyn84P4JCwV6mjIHLRD/adaogf1c5SMG26jGddg==
X-Google-Smtp-Source: ABdhPJzlE2zCA4ef3RAWHj2biI9Q1eAsYK7BNlo9EXKXBDmBQL0WWpSKBn/3tA9ID11/ogPIYEhxoy1NogcPeGz3zR4=
X-Received: by 2002:a2e:b0ec:: with SMTP id h12mr3241295ljl.269.1590597907811; 
 Wed, 27 May 2020 09:45:07 -0700 (PDT)
MIME-Version: 1.0
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
 <44e3ec27ee6c0d81c440cd2d6cdd1bf93ea102e7.1590594512.git-series.maxime@cerno.tech>
In-Reply-To: <44e3ec27ee6c0d81c440cd2d6cdd1bf93ea102e7.1590594512.git-series.maxime@cerno.tech>
From: Eric Anholt <eric@anholt.net>
Date: Wed, 27 May 2020 09:44:56 -0700
Message-ID: <CADaigPVbUZzo5c8fp9EqZsfrp44-09whu-HPk9c-eNc2KXS4Mg@mail.gmail.com>
Subject: Re: [PATCH v3 016/105] drm/vc4: plane: Improve LBM usage
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_094510_102542_5AF4357E 
X-CRM114-Status: GOOD (  21.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 DRI Development <dri-devel@lists.freedesktop.org>,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 8:49 AM Maxime Ripard <maxime@cerno.tech> wrote:
>
> From: Dave Stevenson <dave.stevenson@raspberrypi.com>
>
> LBM allocations were always taking the worst case sizing of
> max(src_width, dst_width) * 16. This is significantly over
> the required sizing, and stops us rendering multiple 4k images
> to the screen.
>
> Add some of the additional constraints to more accurately
> describe the LBM requirements.
>
> Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  drivers/gpu/drm/vc4/vc4_plane.c | 31 ++++++++++++++++++++-----------
>  1 file changed, 20 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/vc4/vc4_plane.c b/drivers/gpu/drm/vc4/vc4_plane.c
> index 1575c05e3106..602927745f84 100644
> --- a/drivers/gpu/drm/vc4/vc4_plane.c
> +++ b/drivers/gpu/drm/vc4/vc4_plane.c
> @@ -142,9 +142,10 @@ static const struct hvs_format *vc4_get_hvs_format(u32 drm_format)
>         return NULL;
>  }
>
> -static enum vc4_scaling_mode vc4_get_scaling_mode(u32 src, u32 dst)
> +static enum vc4_scaling_mode vc4_get_scaling_mode(u32 src, u32 dst,
> +                                                 bool chroma_vrep)
>  {
> -       if (dst == src)
> +       if (dst == src && !chroma_vrep)
>                 return VC4_SCALING_NONE;
>         if (3 * dst >= 2 * src)
>                 return VC4_SCALING_PPF;
> @@ -369,9 +370,11 @@ static int vc4_plane_setup_clipping_and_scaling(struct drm_plane_state *state)
>                 return ret;
>
>         vc4_state->x_scaling[0] = vc4_get_scaling_mode(vc4_state->src_w[0],
> -                                                      vc4_state->crtc_w);
> +                                                      vc4_state->crtc_w,
> +                                                      false);
>         vc4_state->y_scaling[0] = vc4_get_scaling_mode(vc4_state->src_h[0],
> -                                                      vc4_state->crtc_h);
> +                                                      vc4_state->crtc_h,
> +                                                      false);
>
>         vc4_state->is_unity = (vc4_state->x_scaling[0] == VC4_SCALING_NONE &&
>                                vc4_state->y_scaling[0] == VC4_SCALING_NONE);
> @@ -384,10 +387,12 @@ static int vc4_plane_setup_clipping_and_scaling(struct drm_plane_state *state)
>
>                 vc4_state->x_scaling[1] =
>                         vc4_get_scaling_mode(vc4_state->src_w[1],
> -                                            vc4_state->crtc_w);
> +                                            vc4_state->crtc_w,
> +                                            v_subsample == 2);
>                 vc4_state->y_scaling[1] =
>                         vc4_get_scaling_mode(vc4_state->src_h[1],
> -                                            vc4_state->crtc_h);
> +                                            vc4_state->crtc_h,
> +                                            v_subsample == 2);
>
>                 /* YUV conversion requires that horizontal scaling be enabled
>                  * on the UV plane even if vc4_get_scaling_mode() returned

The change above isn't mentioned in the commit message and I don't
understand what's going on.  It should be split out with an
explanation.

> @@ -437,10 +442,7 @@ static void vc4_write_ppf(struct vc4_plane_state *vc4_state, u32 src, u32 dst)
>  static u32 vc4_lbm_size(struct drm_plane_state *state)
>  {
>         struct vc4_plane_state *vc4_state = to_vc4_plane_state(state);
> -       /* This is the worst case number.  One of the two sizes will
> -        * be used depending on the scaling configuration.
> -        */
> -       u32 pix_per_line = max(vc4_state->src_w[0], (u32)vc4_state->crtc_w);
> +       u32 pix_per_line;
>         u32 lbm;
>
>         /* LBM is not needed when there's no vertical scaling. */
> @@ -448,6 +450,11 @@ static u32 vc4_lbm_size(struct drm_plane_state *state)
>             vc4_state->y_scaling[1] == VC4_SCALING_NONE)
>                 return 0;
>
> +       if (vc4_state->x_scaling[0] == VC4_SCALING_TPZ)
> +               pix_per_line = vc4_state->crtc_w;
> +       else
> +               pix_per_line = vc4_state->src_w[0];

Looks like it's also crtc_w for RGB or 4:4:4 and HPPF in (0.5,1.0].
Maybe drop a note in here that we're not covering that case, but src_w
> crtc_w so it's safe at least.

> +
>         if (!vc4_state->is_yuv) {
>                 if (vc4_state->y_scaling[0] == VC4_SCALING_TPZ)
>                         lbm = pix_per_line * 8;
> @@ -583,7 +590,9 @@ static int vc4_plane_allocate_lbm(struct drm_plane_state *state)
>                 spin_lock_irqsave(&vc4->hvs->mm_lock, irqflags);
>                 ret = drm_mm_insert_node_generic(&vc4->hvs->lbm_mm,
>                                                  &vc4_state->lbm,
> -                                                lbm_size, 32, 0, 0);
> +                                                lbm_size,
> +                                                vc4->hvs->hvs5 ? 64 : 32,
> +                                                0, 0);
>                 spin_unlock_irqrestore(&vc4->hvs->mm_lock, irqflags);
>
>                 if (ret)
> --
> git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
