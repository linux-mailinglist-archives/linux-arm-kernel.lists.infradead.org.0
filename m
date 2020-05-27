Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6731E4D15
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 20:26:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=orOfaOAg18MVA0pe25+U6M0BiTHpse9hBPNkNFYvC0o=; b=C/5bisNM1+oHb6
	+ntm7eQ6j1j41FTrW4B3tCUoYvrXT/YTYa0AyPnYgln/xjoRVNHtt/J8+WOFm6kixPU3h5jzugDnv
	V/ihEfsCZTt4LANqY/niZf0D0rweTXB49HRy/hDnHiTweYBSYmEnK4Tq46I+g7+u2kjSOUjiaC8BV
	V96DRGUnR2dHtYFwZrhLhTyZkQeASYvW6+T3Ki0opvGRiy3W9jiwDTMk6KKMNEShU0nTdd+hDLMTw
	MeJZLZGduaT/Tsgu4Rhz2QUHlQQSUObfXv+12k5IOQ6/ocpscgWEa+SyK0+0Zxnq6StCPlAHnO1yc
	FhV/Q5pK7aXQxGy4VT4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je0l8-0003Zl-C6; Wed, 27 May 2020 18:26:34 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je0kz-0003Yz-FF
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 18:26:26 +0000
Received: by mail-lj1-x242.google.com with SMTP id l15so29807227lje.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 11:26:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=anholt-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QB7YwKLcAEW/NVxETJ/RRwZrpqw1ubcJORL5utvFFXU=;
 b=jVDU6dAIH5AMHvUenFCLEWc4e55tCqNJdfkNlGCKtdQ94FJ2ncc6VGQQ6rttsFcAyl
 dqtMPPBIon1Ieua2HOivG/UGPk9Ax02cmVxtlqyXA4gNg4qCWoTPim7JDk6SxP0y+Snc
 KqNNJXD4/Fwdr13n9LZMd/DSXHh7ebYllwc7RsOiaeEfmid5gUShCMZoJaA/zHhugQ+3
 vXiq57zCHznETZPv6jo2AMUFiicPgZ5MgBnBGNQ2/aZdxQdxbjj4kALa2fBrOfUuIFU2
 2SKqQuH6ewCZ4tiwHO47DhJaRPS5pt/diRpda0vF7ojfHnwoJpJnohxNt+gtNrB5K2Ax
 G+Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QB7YwKLcAEW/NVxETJ/RRwZrpqw1ubcJORL5utvFFXU=;
 b=iq32KZ6SfieHSzDYcoV3X00Q0nz+l80jGS93OItWPCGMRHzS3o5bwvBZzHfxnGVh46
 lxv9+XXyDV0lpJkFWzzT1tbi8qZzhtsyny6xy+xJs6dhEVUaWzeQsaDaBSpupD40exSo
 7QBZb3g6jqTQsz9rsO4zF3pKSx32J12xtR1UsVNKTEieUZc1xLDVDa/iusIn0Mf70qrU
 oZl5ryX9d7gm1xwkZN6qGSNNtkn1JTQQ1jCTzjeu26JEIyfnjXWQdm93jzA08ILdve+M
 IXPKQoQ2PDdWHlkC71N8JBtLzZLiedkUnSuRwNNDdXJ7hxgYCJCSCgrm/gO5OlOGp0n3
 PEXQ==
X-Gm-Message-State: AOAM5319pqwb1pFoMALxzFz8tMLqgGazTSZE9oVC/ZYXHrLv89x+S0og
 uOBXz4buRPIyr/2gdMpJmawoOTU/QYMgZD5mfW/mMw==
X-Google-Smtp-Source: ABdhPJxA8oAlyNouzKzEzxB2DjfrFnm6s4bMaRIjUr0L/MTi6rlsrHzCde2XffFmTHZekkBhimOM52uiHfe7MBRTvrc=
X-Received: by 2002:a2e:8186:: with SMTP id e6mr3843593ljg.252.1590603983554; 
 Wed, 27 May 2020 11:26:23 -0700 (PDT)
MIME-Version: 1.0
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
 <afcc607bdcaf9ad38480f49cc1fa186ebe6f2d5a.1590594512.git-series.maxime@cerno.tech>
In-Reply-To: <afcc607bdcaf9ad38480f49cc1fa186ebe6f2d5a.1590594512.git-series.maxime@cerno.tech>
From: Eric Anholt <eric@anholt.net>
Date: Wed, 27 May 2020 11:26:12 -0700
Message-ID: <CADaigPUFP5QXCbE81kFnwJPGO1GjvmoaKK28BhbEUNnJ4Pc0jg@mail.gmail.com>
Subject: Re: [PATCH v3 041/105] drm/vc4: crtc: Move HVS mode config to HVS file
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_112625_511930_B33EA543 
X-CRM114-Status: GOOD (  14.97  )
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

On Wed, May 27, 2020 at 8:50 AM Maxime Ripard <maxime@cerno.tech> wrote:
>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  drivers/gpu/drm/vc4/vc4_crtc.c | 272 +-------------------------------
>  drivers/gpu/drm/vc4/vc4_drv.h  |   5 +-
>  drivers/gpu/drm/vc4/vc4_hvs.c  | 298 ++++++++++++++++++++++++++++++++++-
>  3 files changed, 309 insertions(+), 266 deletions(-)


>  static void vc4_crtc_mode_set_nofb(struct drm_crtc *crtc)
>  {
> -       struct drm_device *dev = crtc->dev;
> -       struct vc4_dev *vc4 = to_vc4_dev(dev);
>         struct vc4_crtc *vc4_crtc = to_vc4_crtc(crtc);
>         struct vc4_crtc_state *vc4_state = to_vc4_crtc_state(crtc->state);
> -       struct drm_display_mode *mode = &crtc->state->adjusted_mode;
> -       bool interlace = mode->flags & DRM_MODE_FLAG_INTERLACE;
>         bool debug_dump_regs = false;
>
>         if (debug_dump_regs) {
> @@ -418,42 +372,10 @@ static void vc4_crtc_mode_set_nofb(struct drm_crtc *crtc)
>                 drm_print_regset32(&p, &vc4_crtc->regset);
>         }
>
> -       if (vc4_crtc->data->hvs_output == 2) {
> -               u32 dispctrl;
> -               u32 dsp3_mux;
> -
> -               /*
> -                * SCALER_DISPCTRL_DSP3 = X, where X < 2 means 'connect DSP3 to
> -                * FIFO X'.
> -                * SCALER_DISPCTRL_DSP3 = 3 means 'disable DSP 3'.
> -                *
> -                * DSP3 is connected to FIFO2 unless the transposer is
> -                * enabled. In this case, FIFO 2 is directly accessed by the
> -                * TXP IP, and we need to disable the FIFO2 -> pixelvalve1
> -                * route.
> -                */
> -               if (vc4_state->feed_txp)
> -                       dsp3_mux = VC4_SET_FIELD(3, SCALER_DISPCTRL_DSP3_MUX);
> -               else
> -                       dsp3_mux = VC4_SET_FIELD(2, SCALER_DISPCTRL_DSP3_MUX);
> -
> -               dispctrl = HVS_READ(SCALER_DISPCTRL) &
> -                          ~SCALER_DISPCTRL_DSP3_MUX_MASK;
> -               HVS_WRITE(SCALER_DISPCTRL, dispctrl | dsp3_mux);
> -       }

I just noticed, this block being moved looks like it should probably
have been removed as part of patch #33.  Cleaning this up I think will
impact the following patches.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
