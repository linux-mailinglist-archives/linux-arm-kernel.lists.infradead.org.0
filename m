Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB027FD80
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 17:29:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vz/rdYmtiHe84ES9H+EN04zzWzyTmH//lNlpYSXrpYI=; b=i3KEb6QVklAclG
	5V/u5zjEJbEmydoAhbu52NARe8ZF0gxpRizabWjhF04tZjP7u/aNGgS0X8TTQxGEIvr1Ty5XY5wIT
	2g5FaldYuEpg7DkPN2rS6quSm6Y9vM3EjppaSsRbQJ7J+3FTs2iGPDMCkA3s5oCnCMf/IX/ACHFry
	filp0IOCFwjbJUqHUVLFlM8TDNrX5iGnXELBI8YLk6N1mVfbsd8Y9nSlws53jpbTJCffzmffIi2NC
	VWb0FixMWY2tX1OgPcA318u+NTdRXBjQqWvI8SGQy/LaJ1can1Eab1feE+iUVamp8yu9bha1Lu1Rj
	4lSJhNmI64w/y39LYQJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htZUa-0001GF-9H; Fri, 02 Aug 2019 15:29:16 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htZUU-0001Fm-CL; Fri, 02 Aug 2019 15:29:12 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 60CAC80348;
 Fri,  2 Aug 2019 17:28:57 +0200 (CEST)
Date: Fri, 2 Aug 2019 17:28:55 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Jani Nikula <jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH v1 02/11] drm: drop uapi dependency from
 drm_print.h
Message-ID: <20190802152855.GA5626@ravnborg.org>
References: <20190718161507.2047-1-sam@ravnborg.org>
 <20190718161507.2047-3-sam@ravnborg.org>
 <156346840026.24728.936589728458336617@skylake-alporthouse-com>
 <460bf1e1-a38b-5f79-26e5-93764067f4e1@amd.com>
 <87tvb5nh5c.fsf@intel.com> <20190729143555.GA16927@ravnborg.org>
 <67c2807f-582c-49a9-5699-a8baab3d3a0f@amd.com>
 <20190729175011.GA1753@ravnborg.org> <87o917lluk.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87o917lluk.fsf@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VcLZwmh9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10
 a=xl3f9RERdMI_gyxlFtwA:9 a=CjuIK1q_8ugA:10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_082910_784413_6A647EC5 
X-CRM114-Status: GOOD (  17.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.15 listed in list.dnswl.org]
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
Cc: Boris Brezillon <bbrezillon@kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 David Airlie <airlied@linux.ie>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sean Paul <seanpaul@chromium.org>,
 Thierry Reding <treding@nvidia.com>, "Koenig,
 Christian" <Christian.Koenig@amd.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jani.

> >> I mean is it useful to have this extra printing subsystem in DRM while 
> >> the standard Linux one actually does a better job?
> > The added functionality of drm_xxx_err would be to keep the current
> > drm.debug=0x1f filtering on the command-line.
> > I do not think we can do this with the standard logging.
> 
> Correct. I'd love the benefits of dynamic debug, but there's no support
> for the kind of message categories that we do with drm.debug.
> 
> I've contemplated switching i915 over to using the variants where you
> pass the device, but I really really don't like the idea of:
> 
> - 	DRM_DEBUG_KMS("hello\n");
> + 	DRM_DEV_DEBUG_KMS(i915->drm.dev, "hello\n");
> 
> Where i915 is our private wrapper for drm_device. I think it's just too
> much ugly uppercase boilerplate, and a large portion of the debugs would
> have to span at least an extra line after that.
> 
> I'd also very much prefer passing just struct *drm_device instead of
> struct *device. In that, I think the needs of the few have prevailed
> over the needs of the many. I'd definitely prefer drm_err(const struct
> drm_device *drm, ...) and friends over the current ones.

This is from my notes:

"
drm_err(const struct drm_device *drm, ...)
drm_info(const struct drm_device *drm, ...)

drm_kms_err(const struct drm_device *drm, ...)
drm_kms_info(const struct drm_device *drm, ...))

etc.

Then we could fish out relevant info from the drm device and present
this nicely.

For the cases where no drm_device is available the fallback is:
drm_dev_err(const struct drm_device *drm, ...)
drm_dev_info(const struct drm_device *drm, ...))

We could modify the existing UPPERCASE macros to be placeholders for
the more reader friendly lower cases variants.
"

So we seems to be aligned here.
In other words - if you throw time after this then try to add
the new logging variants to drm_print.h for the benefit of all.
The we can maybe later do some mass conversion if we want to get rid
of some of the older logging systems.

I have not yet found time/energy to throw after this myself.

	Sam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
