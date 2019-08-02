Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B78CC7FB54
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 15:44:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lQA1qWOs64/xL6p+uERbEeI41gQ8N76DpLgqLLH6KWw=; b=LJroRnNQ87CBsN
	ljJePdHi2OI0hI7Wx1zgzNDcyDbvdnbcnhyFV2Q1izakBndq9uHt9Vpdy73zr4bkstxwqpb0KI4f3
	Sx8hlkfHukhSwjR72wrdgfvxj1bLKD4L+Q38PMYOoLn0wpzpigwMu7bG8FV3py8iey6KB+XWVoZZg
	lBb1lUrcve8rdQkG/xBt7WVYsr45U8T70y9ZRyMtiu0lApaKixBcbMSjet2Bgeq+MsR9UGI4H2S6j
	o9lkkW1SmVC03Cas3NQkaiE3NxdGlW5FA4jkEhcvPVXC9UDk+H8JIwrPXfHK9dmVXg38P4ulqdLlT
	t9E1VsBFBJMhDv9Xn5Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htXqu-0008N1-Bn; Fri, 02 Aug 2019 13:44:12 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htXqm-0008Lw-Qh; Fri, 02 Aug 2019 13:44:06 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Aug 2019 06:44:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,338,1559545200"; d="scan'208";a="191853555"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 02 Aug 2019 06:43:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Sam Ravnborg <sam@ravnborg.org>, "Koenig\,
 Christian" <Christian.Koenig@amd.com>
Subject: Re: [Intel-gfx] [PATCH v1 02/11] drm: drop uapi dependency from
 drm_print.h
In-Reply-To: <20190729175011.GA1753@ravnborg.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190718161507.2047-1-sam@ravnborg.org>
 <20190718161507.2047-3-sam@ravnborg.org>
 <156346840026.24728.936589728458336617@skylake-alporthouse-com>
 <460bf1e1-a38b-5f79-26e5-93764067f4e1@amd.com> <87tvb5nh5c.fsf@intel.com>
 <20190729143555.GA16927@ravnborg.org>
 <67c2807f-582c-49a9-5699-a8baab3d3a0f@amd.com>
 <20190729175011.GA1753@ravnborg.org>
Date: Fri, 02 Aug 2019 16:48:19 +0300
Message-ID: <87o917lluk.fsf@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_064404_908550_05BFC712 
X-CRM114-Status: GOOD (  19.72  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
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
Cc: Boris Brezillon <bbrezillon@kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 David Airlie <airlied@linux.ie>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sean Paul <seanpaul@chromium.org>,
 Thierry Reding <treding@nvidia.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 29 Jul 2019, Sam Ravnborg <sam@ravnborg.org> wrote:
> Hi Christian.
>
> On Mon, Jul 29, 2019 at 03:28:15PM +0000, Koenig, Christian wrote:
>> Am 29.07.19 um 16:35 schrieb Sam Ravnborg:
>> >>>> Even then it so useless (which drm driver is this message for???) that I
>> >>>> want to remove them all :(
>> >>> Yeah, agree. I mean it is nice if the core drm functions use a prefix
>> >>> for debug output.
>> >>>
>> >>> But I actually don't see the point for individual drivers.
>> >> We should all migrate to the versions with device...
>> > Just to do an xkdc.com/927 I have considered:
>> >
>> > drm_err(const struct drm_device *drm, ...)
>> > drm_info(const struct drm_device *drm, ...)
>> >
>> > drm_kms_err(const struct drm_device *drm, ...)
>> > drm_kms_info(const struct drm_device *drm, ...))
>> 
>> Why not get completely rid of those and just use dev_err, dev_warn, 
>> pr_err, pr_warn etc?
>> 
>> I mean is it useful to have this extra printing subsystem in DRM while 
>> the standard Linux one actually does a better job?
> The added functionality of drm_xxx_err would be to keep the current
> drm.debug=0x1f filtering on the command-line.
> I do not think we can do this with the standard logging.

Correct. I'd love the benefits of dynamic debug, but there's no support
for the kind of message categories that we do with drm.debug.

I've contemplated switching i915 over to using the variants where you
pass the device, but I really really don't like the idea of:

- 	DRM_DEBUG_KMS("hello\n");
+ 	DRM_DEV_DEBUG_KMS(i915->drm.dev, "hello\n");

Where i915 is our private wrapper for drm_device. I think it's just too
much ugly uppercase boilerplate, and a large portion of the debugs would
have to span at least an extra line after that.

I'd also very much prefer passing just struct *drm_device instead of
struct *device. In that, I think the needs of the few have prevailed
over the needs of the many. I'd definitely prefer drm_err(const struct
drm_device *drm, ...) and friends over the current ones.

Frankly, I've actually ended up thinking about adding our own, short
i915 wrappers for our needs. :(

BR,
Jani.


>
> And then we can prefix every logging with driver name and device name.
>
> The idea is to make a thin layer on top of the existing pr_xxx() functions.
> So not a full subsystem, only a wrapper on top of what we already have.
>
> Anyway, idle talk only. We need patches and sample output if we should
> discuss more.
>
> 	Sam
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Jani Nikula, Intel Open Source Graphics Center

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
