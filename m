Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A0716D2E9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 19:40:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vH6+sTJm1cqV9J1bX1txCatsshaViDNDxg5Pq5ejF+0=; b=ccP4gVN44WMwYy
	565Het7mCUzo5JxV3aQJQ3qnJd88Z88Dpgnn6kn4wUARlxgMaK3c28dOer/sPevjqZOUR5dA66rWM
	I2O67M5VYr1Txp+l7XC0wGw/iRqI3g7Fk9l4m4hHzht8aaUXNEt3uoSm1JRwcmZ6bgx9xWLnOKWTO
	lPohknEkIumca/11Crd6T3GoQLCh/pzfympvX8Z54zbwUO3E6HIIOCcagofP+OlaW20X087klQ6ut
	z8QC+cax/9o1ku5G4aYb6SBGhLVHZeJQCJr3ZrvUxi7Icbh3p0otX4b/hlVdHNfo3N37i4mEvwPEY
	zB3oSJKBJ3/GUpNkHOIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoAOb-0002BJ-IE; Thu, 18 Jul 2019 17:40:45 +0000
Received: from mail-yb1-xb41.google.com ([2607:f8b0:4864:20::b41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoAON-00029l-37
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 17:40:32 +0000
Received: by mail-yb1-xb41.google.com with SMTP id d9so5139105ybf.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jul 2019 10:40:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=l+1FrNNu6RWkcTjjfIpN7v4qd/Q00mT7mAH2ay5t5YU=;
 b=biDTjzEvV5Wul7i/WyioSr3VmyuNnxd9hl/aYBxur1J6Nlh9JqlFb0SX0jszQpCzin
 DtF2vZkl1jAodp5GPZ848x9Bg3S7l99tSQNiR3UV5iI3T2AM6Ul0Yyjaj+HPsNHPbmEM
 hREO5I59HNuv1/JufTZlHI6uBu2224l76gZmOrBIYJ7P/j/8KEC7avxJPToSiwztK6iZ
 uFxLAt9tqS2/OoBrpFWslIOMZuqddBHI08EbjSsRKFuxkNbxSBSHHlQP7VKmVxJawD3G
 ORstO1Z9eGe8pSFWVeYtmngaruHc+XHO7DkCHJ8Egb5EFBlOdPb1P0Ffx818IOJV/gS3
 UiCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=l+1FrNNu6RWkcTjjfIpN7v4qd/Q00mT7mAH2ay5t5YU=;
 b=Tm3sNFBaSvTgki1pMznvRVStaeOgE+INisxap79NqNmU1naJkRomkZtewvbQ/5UrqX
 wC3KM/dYlZBb4qc1mSEte8mWgoMox9XJPDqJdc6S8SOoWp+YVJQf3AO4tAPZmop2O8VY
 YzePi49QaI63JVRS7856/mtvSsoCOXHX+RqGaJtg57PFCf9GLGfyB3x2Vz0AqmzLiJGf
 hTzyzHwuizbRMM3Vj47ndxXQIWI+zi0FboYqnXfsoAgMBFOI2DhUxCLyzS8GGgoLae2v
 1T5qw6k8TZ5GhzkR3OFVfGyg8Fv0COynkG1QUg3dwOsw9O6O67I7AycIIV9XCPT+IpRG
 UE4A==
X-Gm-Message-State: APjAAAWJ4+f/79AFKVysgbYSMZkTl30Kvqzjoe+VwxMySsTn0bzLNW0l
 duwPjtBPrer4BU1nAsC0d/ajig==
X-Google-Smtp-Source: APXvYqxJ1zzhHTOV/V5q7YuSBr7QrcgmxKPpucgiwKedIA1Pi+QKm5M5Imn/NYHMNbUAMKQOdVF3Ww==
X-Received: by 2002:a25:6346:: with SMTP id x67mr27596848ybb.346.1563471629832; 
 Thu, 18 Jul 2019 10:40:29 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id 131sm6583625ywq.21.2019.07.18.10.40.28
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 10:40:29 -0700 (PDT)
Date: Thu, 18 Jul 2019 13:40:28 -0400
From: Sean Paul <sean@poorly.run>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v1 02/11] drm: drop uapi dependency from drm_print.h
Message-ID: <20190718174028.GE31819@art_vandelay>
References: <20190718161507.2047-1-sam@ravnborg.org>
 <20190718161507.2047-3-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190718161507.2047-3-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_104031_133760_A0EC4455 
X-CRM114-Status: GOOD (  16.69  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Liviu Dudau <Liviu.Dudau@arm.com>, dri-devel@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh@kernel.org>, Stefan Agner <stefan@agner.ch>,
 Maxime Ripard <maxime.ripard@bootlin.com>, CK Hu <ck.hu@mediatek.com>,
 Thierry Reding <treding@nvidia.com>, Daniel Vetter <daniel@ffwll.ch>,
 Chunming Zhou <david1.zhou@amd.com>, Jani Nikula <jani.nikula@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-mediatek@lists.infradead.org,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org, Boris Brezillon <bbrezillon@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Rob Clark <robdclark@gmail.com>,
 Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Sean Paul <seanpaul@chromium.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 18, 2019 at 06:14:58PM +0200, Sam Ravnborg wrote:
> drm_print.h used DRM_NAME - thus adding a dependency from
> include/drm/drm_print.h => uapi/drm/drm.h
> 
> Hardcode the name "drm" to break this dependency.
> The idea is that there shall be a minimal dependency
> between include/drm/* and uapi/*

You might also want to clean up the other uses of DRM_NAME in armada and i915
while you're at it. The easiest way to satisfy Chris' usecase and remove the
dependency would be to add #define DRM_PRINT_NAME "drm" in drm_print.h and use
that.

Sean

> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Suggested-by: Daniel Vetter <daniel@ffwll.ch>
> Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <maxime.ripard@bootlin.com>
> Cc: Sean Paul <sean@poorly.run>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Rob Clark <robdclark@gmail.com>
> Cc: Sean Paul <seanpaul@chromium.org>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> ---
>  include/drm/drm_print.h | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/include/drm/drm_print.h b/include/drm/drm_print.h
> index a5d6f2f3e430..760d1bd0eaf1 100644
> --- a/include/drm/drm_print.h
> +++ b/include/drm/drm_print.h
> @@ -32,8 +32,6 @@
>  #include <linux/device.h>
>  #include <linux/debugfs.h>
>  
> -#include <drm/drm.h>
> -
>  /**
>   * DOC: print
>   *
> @@ -287,7 +285,7 @@ void drm_err(const char *format, ...);
>  /* Macros to make printk easier */
>  
>  #define _DRM_PRINTK(once, level, fmt, ...)				\
> -	printk##once(KERN_##level "[" DRM_NAME "] " fmt, ##__VA_ARGS__)
> +	printk##once(KERN_##level "[drm] " fmt, ##__VA_ARGS__)
>  
>  #define DRM_INFO(fmt, ...)						\
>  	_DRM_PRINTK(, INFO, fmt, ##__VA_ARGS__)
> -- 
> 2.20.1
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
