Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C40FD78BEA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 14:41:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yZzgs9nIvjGfpqZMOvVSPv5U4mcjL/1Qt3pvz0wozWo=; b=F4ZU/LMEN5ufkL
	yOWgp7Wqbvrsp7pHUyVN8uFDDCajOLA7dI41fHhGVXZ/L8gNEMRe5P7Juy0IKtAJfQnSFFN7Xo3Dd
	mA6oRK3Mr7Af3aXONz9+K62Z3c+pAy7bdhLqs4SbV+bbtnPRXgY3NRo2xeThg5DuF+z0izYYernoW
	CxU83AFJBQg6Eu2d3wruSYIF5HEgeSdCzf+iG+t8nROwjcvOx+j4B0x7QwHGfQbvYMr3ICSjLgkKk
	uHp0Gc7dcn/mw/ycMnBzFVhbJ1db9BgyiJsXk5RhEGkJ3ivBRMPiP5DdPmoITmtfbmar4SBEFvrlt
	et2lo43bycHmS+kUqGhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs4xw-00078x-Vs; Mon, 29 Jul 2019 12:41:24 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs4xp-00077t-MH; Mon, 29 Jul 2019 12:41:19 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jul 2019 05:41:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,322,1559545200"; d="scan'208";a="190561299"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 29 Jul 2019 05:41:11 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Koenig\, Christian" <Christian.Koenig@amd.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Sam Ravnborg <sam@ravnborg.org>,
 "dri-devel\@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Subject: Re: [PATCH v1 02/11] drm: drop uapi dependency from drm_print.h
In-Reply-To: <460bf1e1-a38b-5f79-26e5-93764067f4e1@amd.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190718161507.2047-1-sam@ravnborg.org>
 <20190718161507.2047-3-sam@ravnborg.org>
 <156346840026.24728.936589728458336617@skylake-alporthouse-com>
 <460bf1e1-a38b-5f79-26e5-93764067f4e1@amd.com>
Date: Mon, 29 Jul 2019 15:45:35 +0300
Message-ID: <87tvb5nh5c.fsf@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_054117_770402_DA2BE94B 
X-CRM114-Status: GOOD (  15.69  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Boris Brezillon <bbrezillon@kernel.org>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, Liviu Dudau <Liviu.Dudau@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sean Paul <seanpaul@chromium.org>,
 Thierry Reding <treding@nvidia.com>, Sean Paul <sean@poorly.run>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 19 Jul 2019, "Koenig, Christian" <Christian.Koenig@amd.com> wrote:
> Am 18.07.19 um 18:46 schrieb Chris Wilson:
>> Quoting Sam Ravnborg (2019-07-18 17:14:58)
>>> drm_print.h used DRM_NAME - thus adding a dependency from
>>> include/drm/drm_print.h => uapi/drm/drm.h
>>>
>>> Hardcode the name "drm" to break this dependency.
>>> The idea is that there shall be a minimal dependency
>>> between include/drm/* and uapi/*
>>>
>>> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
>>> Suggested-by: Daniel Vetter <daniel@ffwll.ch>
>>> Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
>>> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>>> Cc: Maxime Ripard <maxime.ripard@bootlin.com>
>>> Cc: Sean Paul <sean@poorly.run>
>>> Cc: David Airlie <airlied@linux.ie>
>>> Cc: Rob Clark <robdclark@gmail.com>
>>> Cc: Sean Paul <seanpaul@chromium.org>
>>> Cc: Chris Wilson <chris@chris-wilson.co.uk>
>>> Cc: Daniel Vetter <daniel@ffwll.ch>
>>> ---
>>>   include/drm/drm_print.h | 4 +---
>>>   1 file changed, 1 insertion(+), 3 deletions(-)
>>>
>>> diff --git a/include/drm/drm_print.h b/include/drm/drm_print.h
>>> index a5d6f2f3e430..760d1bd0eaf1 100644
>>> --- a/include/drm/drm_print.h
>>> +++ b/include/drm/drm_print.h
>>> @@ -32,8 +32,6 @@
>>>   #include <linux/device.h>
>>>   #include <linux/debugfs.h>
>>>   
>>> -#include <drm/drm.h>
>>> -
>>>   /**
>>>    * DOC: print
>>>    *
>>> @@ -287,7 +285,7 @@ void drm_err(const char *format, ...);
>>>   /* Macros to make printk easier */
>>>   
>>>   #define _DRM_PRINTK(once, level, fmt, ...)                             \
>>> -       printk##once(KERN_##level "[" DRM_NAME "] " fmt, ##__VA_ARGS__)
>>> +       printk##once(KERN_##level "[drm] " fmt, ##__VA_ARGS__)
>> I guess I'm th only one who
>>
>> #undef DRM_NAME
>> #define DRM_NAME i915
>>
>> just so that I didn't have inane logs?
>>
>> One might suggest that instead of hardcoding it, follow the pr_fmt()
>> pattern and only add "[drm]" for the drm core.
>>
>> Even then it so useless (which drm driver is this message for???) that I
>> want to remove them all :(
>
> Yeah, agree. I mean it is nice if the core drm functions use a prefix 
> for debug output.
>
> But I actually don't see the point for individual drivers.

We should all migrate to the versions with device...

BR,
Jani.


>
> Christian.
>
>> -Chris
>
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
Jani Nikula, Intel Open Source Graphics Center

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
