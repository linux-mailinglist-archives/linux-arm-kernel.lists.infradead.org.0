Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22AAF6D250
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 18:48:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-ID:References:
	In-Reply-To:From:To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D9SURA1azYwB531lzD0SMfzTjI16lBmc8D+QnAt98RY=; b=gNBQewsRZCwYOB
	aC+B6JZPriTSrYiu4YLze1/TmxcSDBU86sbxawZXPE5Ya+ul7YvabQjwdX1/HspduxaS8Cj1447ZN
	Lwmisz9hgVreWzc53+eS1zfFft+A9now1EAuVP2jliJs80Kyi07bHqIDloe4mIWazsX/MhpmFFeBA
	5yY11lx2NSAYhdx+gBqthd/FFevUWAj0K1TtBHHVYN11PhJOA0nGeWMcxTGK/I5awyv3m7RbpnqB4
	XiuxpngvouflsyG12qTluHGSxZHkVqR81mDAinftcHNqpNPeBHxur2qAE8wanNMKg+F6rllLk08De
	Q4pqZ1hlDWuQdqmpdOcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho9a4-0000oD-UG; Thu, 18 Jul 2019 16:48:33 +0000
Received: from mail.fireflyinternet.com ([109.228.58.192]
 helo=fireflyinternet.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho9Zq-0000lT-T7; Thu, 18 Jul 2019 16:48:21 +0000
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17404642-1500050 for multiple; Thu, 18 Jul 2019 17:46:43 +0100
MIME-Version: 1.0
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190718161507.2047-3-sam@ravnborg.org>
References: <20190718161507.2047-1-sam@ravnborg.org>
 <20190718161507.2047-3-sam@ravnborg.org>
Message-ID: <156346840026.24728.936589728458336617@skylake-alporthouse-com>
User-Agent: alot/0.6
Subject: Re: [PATCH v1 02/11] drm: drop uapi dependency from drm_print.h
Date: Thu, 18 Jul 2019 17:46:40 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_094819_213271_4C7045AC 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.228.58.192 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Liviu Dudau <Liviu.Dudau@arm.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Eric Anholt <eric@anholt.net>, Sam Ravnborg <sam@ravnborg.org>,
 Rob Herring <robh@kernel.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 CK Hu <ck.hu@mediatek.com>, Thierry Reding <treding@nvidia.com>,
 Daniel Vetter <daniel@ffwll.ch>, Chunming Zhou <david1.zhou@amd.com>,
 Jani Nikula <jani.nikula@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-mediatek@lists.infradead.org, Stefan Agner <stefan@agner.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org, Boris Brezillon <bbrezillon@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Rob Clark <robdclark@gmail.com>,
 =?utf-8?q?Noralf_Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Sean Paul <seanpaul@chromium.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Sam Ravnborg (2019-07-18 17:14:58)
> drm_print.h used DRM_NAME - thus adding a dependency from
> include/drm/drm_print.h => uapi/drm/drm.h
> 
> Hardcode the name "drm" to break this dependency.
> The idea is that there shall be a minimal dependency
> between include/drm/* and uapi/*
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
>  #define _DRM_PRINTK(once, level, fmt, ...)                             \
> -       printk##once(KERN_##level "[" DRM_NAME "] " fmt, ##__VA_ARGS__)
> +       printk##once(KERN_##level "[drm] " fmt, ##__VA_ARGS__)

I guess I'm th only one who

#undef DRM_NAME
#define DRM_NAME i915

just so that I didn't have inane logs?

One might suggest that instead of hardcoding it, follow the pr_fmt()
pattern and only add "[drm]" for the drm core.

Even then it so useless (which drm driver is this message for???) that I
want to remove them all :(
-Chris

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
