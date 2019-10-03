Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98D99C973E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 06:24:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HRPMRpEC7HIFe1f8VvLxBhbjB6Up9acCnLQJD3BZFcI=; b=e14EJ47CF25NFv
	9sFLGWBblCNS3DvlwTLa7oVVT4GPZyiwEzSTI5c7ypL7tUqvfRgp0FZnf5NUuM+qFB6NTBFg8pANM
	qQAirhFVIgUuhKfGSqfghEaySdvNa+pO4d2+nmiFhpFoAiwu95Jdx8zL/I5EABHF+2jrN+hGkRDwW
	5e0lBzfkBECgNXD7NL8K2YPJfj2EH1NokSvW0UU4RVbHs3MHPJdcLXRdVGVPBE1n3rIWC5y4uc4wl
	YL1pffnDZsErAybeNEBa+M4/6/91U3vyfOswAaA0/6doNfB/nE9LPmevmnOuHE122XkqSFqaZMX0V
	TRiEU/K1MqONL25M92ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFsf7-0006in-KM; Thu, 03 Oct 2019 04:24:21 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFsf0-0006hs-JC
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 04:24:16 +0000
Received: by mail-io1-xd43.google.com with SMTP id h144so2412589iof.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 21:24:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xXxgss0qRr38ViNhIsY4E48BXxGon0iuPdHcJHwqwhc=;
 b=SjYfr4ci/wu2v5HJdhvG5VWQ0L+nAwZxsH1u0w5kKILfPjaBnSDE0XQZ0s4eJoryIW
 As8fGKd6gSiZcy6eQNhCL56xGXObLVRxQ0ZedLXEOMrpa3zxChhoO6OGH2dnWZOBl6u3
 mQx5xJ9LM+t6NZp1NyL2uHQ16yh56mtV4nZYw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xXxgss0qRr38ViNhIsY4E48BXxGon0iuPdHcJHwqwhc=;
 b=qDK8TNq/yXa6ObXzJ4vp25gkhOSJxrc7ikGN2Bs/R1dTvE3AHYt8ZvBmUCNb2lJx2Y
 XT3xsJcBdnvPHN20kyXYdQlC9LAecEazZF8aj/YoNwSKzhtfTl43r2IfCx3pg5CCxlLA
 Rlk84E5mJvO6zL9pcS9RQFoe3t+vtlvzGSKf1O4KbinjZ0KdFnT1kmzg7+0dnH1fNiY2
 wmix4nAfUHWzhcrCohr95EmvfPxxOj/6EHFOPznZSHBxZZ+lT8VJHqr/seJN3ETPQqGp
 8Zi8WNPDLKhLYxSBPE3j3VsfzAcBm0KTR6d6OOECpJrgLLwn/paO9/aCARXLLwu53T20
 mxkg==
X-Gm-Message-State: APjAAAXyTLMy6fBARZLhwGTLqLHlXhtEsfIAAWhgbcrOn1diZQDtWmUD
 TwjUIqJ3tDqqL21++1Kp73ebE79Y+8ZdqsvEwEWVOw==
X-Google-Smtp-Source: APXvYqz7lFdMeYaFOqQuDlV2bgB6TK9bjpGTgkqgd8HQd647X9V9/RgwVucyGUxqcrmBjl6fatT+jMGOcVJrQTxylyU=
X-Received: by 2002:a02:6284:: with SMTP id d126mr7511832jac.51.1570076645543; 
 Wed, 02 Oct 2019 21:24:05 -0700 (PDT)
MIME-Version: 1.0
References: <20191001080253.6135-1-icenowy@aosc.io>
 <20191001080253.6135-4-icenowy@aosc.io>
In-Reply-To: <20191001080253.6135-4-icenowy@aosc.io>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Thu, 3 Oct 2019 09:53:54 +0530
Message-ID: <CAMty3ZDW4XHyW+6XL_RSVHqTSk79-r749pa0n5e6VbUzowAsiw@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH 3/3] Revert "drm/sun4i: dsi: Rework a bit
 the hblk calculation"
To: Icenowy Zheng <icenowy@aosc.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_212414_633945_DE8692DF 
X-CRM114-Status: GOOD (  17.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: David Airlie <airlied@linux.ie>, linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Wens,

On Tue, Oct 1, 2019 at 1:34 PM Icenowy Zheng <icenowy@aosc.io> wrote:
>
> This reverts commit 62e7511a4f4dcf07f753893d3424decd9466c98b.
>
> This commit, although claimed as a refactor, in fact changed the
> formula.
>
> By expanding the original formula, we can find that the const 10 is not
> substracted, instead it's added to the value (because 10 is negative
> when calculating hsa, and hsa itself is negative when calculating hblk).
> This breaks the similar pattern to other formulas, so restoring the
> original formula is more proper.
>
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> ---
>  drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 9 ++-------
>  1 file changed, 2 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> index 2d3e822a7739..cb5fd19c0d0d 100644
> --- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> +++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> @@ -577,14 +577,9 @@ static void sun6i_dsi_setup_timings(struct sun6i_dsi *dsi,
>                           (mode->hsync_start - mode->hdisplay) * Bpp - HFP_PACKET_OVERHEAD);
>
>                 /*
> -                * The blanking is set using a sync event (4 bytes)
> -                * and a blanking packet (4 bytes + payload + 2
> -                * bytes). Its minimal size is therefore 10 bytes.
> +                * hblk seems to be the line + porches length.
>                  */
> -#define HBLK_PACKET_OVERHEAD   10
> -               hblk = max((unsigned int)HBLK_PACKET_OVERHEAD,
> -                          (mode->htotal - (mode->hsync_end - mode->hsync_start)) * Bpp -
> -                          HBLK_PACKET_OVERHEAD);
> +               hblk = mode->htotal * Bpp - hsa;

The original formula is correct according to BSP [1] and work with my
panels which I have tested before. May be the horizontal timings on
panels you have leads to negative value.

[1] https://github.com/ayufan-pine64/linux-pine64/blob/my-hacks-1.2-with-drm/drivers/video/sunxi/disp2/disp/de/lowlevel_sun50iw1/de_dsi.c#L919

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
