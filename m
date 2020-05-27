Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C7891E4B0B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:53:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZEMCq2h1hMX+qqtCBPsHqutLiMK2al4hRkZK5tvtk4U=; b=LGYSVasrSQDpEs
	DwlabBaUqgwfk3nuZNVraF3YttMUw7+imerm3pNjBFDB7s5GnhA6YC7dAXmauJVCErBIPE0JPTgtM
	4GbQz3HZeIIVhXlMst7JS+LbAoTgplQiJgocRDtegkc+K1HUct5vVUog/92Y/vkdxWikadibdwy7V
	BQntR8AHg/k/sujeS0mKva8diiudkKUP8g3Xtl2VaNg3CwbXvZLwXK33ntPDPPJhcBLjBktsxAnZ4
	wTrIaJ2UL1YywDPkpsLFaFU+mecYKhAe9Hs7d/mTKdP1Il/7hn7Yn8YvFP2L9hnJhinEsbpznrQBQ
	p3FCfJ8oud7tPqNf2ZSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdzIY-00042n-1O; Wed, 27 May 2020 16:52:58 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdzIN-000427-Fl
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 16:52:48 +0000
Received: by mail-lj1-x242.google.com with SMTP id c11so27637169ljn.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 09:52:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=anholt-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3s8Z6TqgZ6rWtKMmi0vz86r9c3ZptE+7p8K+InML9XA=;
 b=hheOM/T3hgh3E9Yc0l9MkrAt26GKtRqNh6+lDuuRkJ/Z+uJHoSZl2dSFjgqp7BBq2L
 /SLxlWegH7b1a2tMbGhTqU9tk1RRu8RG6IgFKbDUfWCaHOMYtga8OzWAy6QPqhf6afE4
 BPHSLALrgxXbCKxk2lUBsDW7mQzcA5W1z6ovU9gQF7mTlBL1LR3YrrkKMxwQdgJtC1Ut
 U7d3H4vDH+D55QCG6JckSgD+23dcS96mwHuITUzmtasl8ytZgd9iNVVwwbWAHw1fvaPE
 kCJTA2dYBT45FIiwBmfqzZzr0+fDKMIxtpDKto1RUd6bnbcf/FYbBHHIeQMNoFLcbZ4N
 gfIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3s8Z6TqgZ6rWtKMmi0vz86r9c3ZptE+7p8K+InML9XA=;
 b=gm3VmXeMuyuW/z1/1AkrjAze5E9rpuzA092hEG4hmVw3bAS0dfRigMi0H4YaXPT7k2
 xDcjtl/Wmv+wgCyJo2GLMq18bbSDkraJdwc/2001WQimFNyMpDcRrvWpbrNzlxhF42aK
 YvW3fXRq0jVGMT+uF6N5XVE62C9+M6wDCKLIDoVPFbwO6QuspM/MwubxXTPk7du6BZri
 NqoxTdg5OW/ImXpiLajaApka+OGMB7XZNaACCq++5j6XV0v+8fv+iIEadDi1zwrcyCY7
 oTdhQ6DHG9gv+PnFVSxyDxEQ18qzSLAd7cpIp0GznsPvtGGALzOVkVQR8uPPBEu0tEZv
 6K0Q==
X-Gm-Message-State: AOAM531OdUaVVz5IkBGa2C2H5ZTSUrobW3wGF+L7wH0T/weaIlHHjauo
 HkSIhBeww/50NhQWDbbWWCp7clcS5VqaiFeDTpoybQ==
X-Google-Smtp-Source: ABdhPJykPtRUbq3wuH3bc4nCEgiCAkTCt706TKmwFiZu59fzrGES6YLoGp3T1oNdU87IWiuXxpt7gGN7IYPEMgs6uZM=
X-Received: by 2002:a2e:b0ec:: with SMTP id h12mr3253838ljl.269.1590598365768; 
 Wed, 27 May 2020 09:52:45 -0700 (PDT)
MIME-Version: 1.0
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
 <74d84c75511974bc1ff4bc044413894a43a907a6.1590594512.git-series.maxime@cerno.tech>
In-Reply-To: <74d84c75511974bc1ff4bc044413894a43a907a6.1590594512.git-series.maxime@cerno.tech>
From: Eric Anholt <eric@anholt.net>
Date: Wed, 27 May 2020 09:52:34 -0700
Message-ID: <CADaigPWzgP=C86D6zWN-z_tajFP8-F8GrQ-TcSzUt2cHcM8=8A@mail.gmail.com>
Subject: Re: [PATCH v3 020/105] drm/vc4: plane: Create overlays for any CRTC
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_095247_524023_BDF0879B 
X-CRM114-Status: GOOD (  23.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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
> Now that we have everything in place, we can now register all the overlay
> planes that can be assigned to all the CRTCs.
>
> This has two side effects:
>
>   - The number of overlay planes is reduced from 24 to 8. This is temporary
>     and will be increased again in the next patch.
>
>   - The ID of the various planes is changed again, and we will now have all
>     the primary planes, then all the overlay planes and finally the cursor
>     planes. This shouldn't cause any issue since the ordering between
>     primary, overlay and cursor planes is preserved.
>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Honestly, I'd squash this with the previous two patches, the
individual refactors don't make much sense on their own or simplify
this patch I think.  Either way, patch 17-29 r-b.




> ---
>  drivers/gpu/drm/vc4/vc4_plane.c | 35 +++++++++++++++++-----------------
>  1 file changed, 18 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/gpu/drm/vc4/vc4_plane.c b/drivers/gpu/drm/vc4/vc4_plane.c
> index 824c188980b0..5335123ae2a0 100644
> --- a/drivers/gpu/drm/vc4/vc4_plane.c
> +++ b/drivers/gpu/drm/vc4/vc4_plane.c
> @@ -1378,26 +1378,27 @@ int vc4_plane_create_additional_planes(struct drm_device *drm)
>         struct drm_crtc *crtc;
>         unsigned int i;
>
> -       drm_for_each_crtc(crtc, drm) {
> -               /* Set up some arbitrary number of planes.  We're not limited
> -                * by a set number of physical registers, just the space in
> -                * the HVS (16k) and how small an plane can be (28 bytes).
> -                * However, each plane we set up takes up some memory, and
> -                * increases the cost of looping over planes, which atomic
> -                * modesetting does quite a bit.  As a result, we pick a
> -                * modest number of planes to expose, that should hopefully
> -                * still cover any sane usecase.
> -                */
> -               for (i = 0; i < 8; i++) {
> -                       struct drm_plane *plane =
> -                               vc4_plane_init(drm, DRM_PLANE_TYPE_OVERLAY);
> +       /* Set up some arbitrary number of planes.  We're not limited
> +        * by a set number of physical registers, just the space in
> +        * the HVS (16k) and how small an plane can be (28 bytes).
> +        * However, each plane we set up takes up some memory, and
> +        * increases the cost of looping over planes, which atomic
> +        * modesetting does quite a bit.  As a result, we pick a
> +        * modest number of planes to expose, that should hopefully
> +        * still cover any sane usecase.
> +        */
> +       for (i = 0; i < 8; i++) {
> +               struct drm_plane *plane =
> +                       vc4_plane_init(drm, DRM_PLANE_TYPE_OVERLAY);
>
> -                       if (IS_ERR(plane))
> -                               continue;
> +               if (IS_ERR(plane))
> +                       continue;
>
> -                       plane->possible_crtcs = drm_crtc_mask(crtc);
> -               }
> +               plane->possible_crtcs =
> +                       GENMASK(drm->mode_config.num_crtc - 1, 0);
> +       }
>
> +       drm_for_each_crtc(crtc, drm) {
>                 /* Set up the legacy cursor after overlay initialization,
>                  * since we overlay planes on the CRTC in the order they were
>                  * initialized.
> --
> git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
