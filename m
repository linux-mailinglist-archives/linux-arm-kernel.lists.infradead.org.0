Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87EDF1E4A84
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:41:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K8FuOMhYo+wfv/CqMvw20KPpHMHE/OPM4Ok2ZROCeBc=; b=PZGyZdvXpN8xoN
	ncmnGEL3OnJjfXHeeJYoB1OGXjRDBvHRsV6V2M8nXR/u07bGc6Zv/t6+wuZKXWd5CBotLiumFG7Ww
	a0CSVbUwS+xMz7mznZmOzGx+/gU+Ayyc6I3zoAFs2WMD9EImA/Ow7KVWKjeNIC1NGu9isqgudacC9
	T5kiDAEMWa43yKj6ZQeiMFSx/xqBHhqLg7oJn/dYIZ4mz2XFLrqMA9MWsLz84g0EFP+YP9I9u5/6H
	qhgLD7F0WICPZuowyZXUMoV9iMdLhaFIQqoNz+HRZr63FiQ3/8ruiUKY+GvYVc8MQyz6M8E74hbva
	56BjE6Ho7WusjiEvGi9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdz7S-00052A-Hr; Wed, 27 May 2020 16:41:30 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdytv-000392-MG
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 16:27:51 +0000
Received: by mail-lf1-x142.google.com with SMTP id z22so14873745lfd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 09:27:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=anholt-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XMhd8kBFatjxSzyX/p3050Yxy/ALKXPMLe1zG6XyHx0=;
 b=tg9oAlgp7VoL+EBWwFKZCwxZNy5lyMQoLLYGxu4yU21LOLoOeptabgcOIvROr+RaB1
 6oUeR/F5grzuF0LSLIyDzq8DBWr8p0a8mc6PB+g8LiOBY0d36llnTQ/4gNghXAihICLb
 LF2BCjUirUHryM1vMjxs131Od0fDR0I/cKVFkskphzXRGwpuwsMFL0jCPeLhm1OPybx1
 +R9NO6yWU/Y7sbUoGmk3JcWkxYYhkyH76f25Nuu5Ix0e5o3tcYC8dKaG1fg0UsZonmSG
 HNvIx8E9lCYlPvNpMOn+TEbUNDM2e1ltKGgeo12aEF9cRVxOgr8Yf+Udq+PwMdOfPVox
 IL6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XMhd8kBFatjxSzyX/p3050Yxy/ALKXPMLe1zG6XyHx0=;
 b=jYiWLIuXOfv4T41BPamSbjNVbBu0doKDGwrggH8TVVRVu9eiodEnWbG8JKjtrkz6KL
 3mX2WCB9HMpjvAOB87vv0ubvR4UdbTryEcEK2sKnkwHyXgn5X0mTtYTV89C3/ACet2QL
 zzDx2Ffb9SARqz4IX23hlkVA785uBo0KJMzTjCGLpY5Rsr3qM8bJN7ysotihqEwJrwmj
 bZ/fi16Ax7bk0AHjPgKh3XIlV68fBQPxENupBTaXw+XaruYOqNEofCj1o31RQSZN71/M
 58MXjEeBGFlNxaNHZSgGBnEokpeWj3i8lWLY4k8NRwi5IYHQPOFNSzPoGrfK3FqJN7AG
 6wJw==
X-Gm-Message-State: AOAM533Q1DL1SgqbXo1yPfJikvCjpUeNaOyzKBVIrFD9vin8Ru3JTl4s
 Ubt2UjwShJx/lPTerh3iWqpVV1VpLV4YUayxfn94Ig==
X-Google-Smtp-Source: ABdhPJxFvruh7NtW7OmnRsxfpA4KD4Sao+jVZ0SfkQQXEH279eVxlLFNAkd0wXGZRueXvW68axsCFwH8oNuW2YHoWP0=
X-Received: by 2002:a05:6512:3208:: with SMTP id
 d8mr3516857lfe.38.1590596848480; 
 Wed, 27 May 2020 09:27:28 -0700 (PDT)
MIME-Version: 1.0
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
 <49c552751ec619e03371bc4bb1b9ec66c8423bf7.1590594512.git-series.maxime@cerno.tech>
In-Reply-To: <49c552751ec619e03371bc4bb1b9ec66c8423bf7.1590594512.git-series.maxime@cerno.tech>
From: Eric Anholt <eric@anholt.net>
Date: Wed, 27 May 2020 09:27:17 -0700
Message-ID: <CADaigPU2YUoffXjaaBOxWRni3thKW9gM0+yr75TRgpeeW3CXaw@mail.gmail.com>
Subject: Re: [PATCH v3 012/105] drm/vc4: drv: Support BCM2711
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_092731_752333_B057B458 
X-CRM114-Status: GOOD (  15.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
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
> The BCM2711 has a reworked display pipeline, and the load tracker needs
> some adjustement to operate properly. Let's add a compatible for BCM2711
> and disable the load tracker until properly supported.
>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  drivers/gpu/drm/vc4/vc4_drv.c   |  1 +-
>  drivers/gpu/drm/vc4/vc4_drv.h   |  3 ++-
>  drivers/gpu/drm/vc4/vc4_kms.c   | 42 +++++++++++++++++++++++-----------
>  drivers/gpu/drm/vc4/vc4_plane.c |  5 ++++-
>  4 files changed, 38 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/vc4/vc4_drv.c b/drivers/gpu/drm/vc4/vc4_drv.c
> index 76f93b662766..d7f554a6f0ed 100644
> --- a/drivers/gpu/drm/vc4/vc4_drv.c
> +++ b/drivers/gpu/drm/vc4/vc4_drv.c
> @@ -364,6 +364,7 @@ static int vc4_platform_drm_remove(struct platform_device *pdev)
>  }
>
>  static const struct of_device_id vc4_of_match[] = {
> +       { .compatible = "brcm,bcm2711-vc5", },
>         { .compatible = "brcm,bcm2835-vc4", },
>         { .compatible = "brcm,cygnus-vc4", },
>         {},

Patch 6 Acked-by: Eric Anholt <eric@anholt.net>
Patch 7-11 Reviewed-by: Eric Anholt <eric@anholt.net>

This one to start probing needs to move later in the series once the
vc5 support is actually present in the driver.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
