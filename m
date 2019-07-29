Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3431878E2A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 16:38:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DpGVSCQRLWHePhsbR0UGvgV7GBFJVprXxjPoQ0KkN88=; b=UHa7U7Z2M+LeE0
	ouWaUTX+7oE9ULvAUMO3BIZQiPkqLPJVazKc7SqdMc4Eu419vPnoOgRLksFnUMCYxLh6QS+DVNvLK
	36cycwy92p7pobki/+l6FDcUXJfPOJiJtyE1oCIAv0WK4r8oJXHhmMAWosoMnH92B4c1qD36S3/Ko
	xKgfn1IuRN3pQVbbib+ht/KSjr7g+XHpBB1dEWL+RW4cfSjtj3Efbli9pZVbyObqQfcyMAlwF2kWp
	R/EoIjng5Yjpiu5PZ8nHWM5Xrl01AuUwbmoaqG59wE9Ne59iAAam/NwMc7JkfvFm1iGJaxmldUjIP
	H+O1C/C3buyT8T5oRQsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs6nB-00018c-Tj; Mon, 29 Jul 2019 14:38:26 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs6mv-00013r-5X; Mon, 29 Jul 2019 14:38:10 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id CCA4E20037;
 Mon, 29 Jul 2019 16:35:56 +0200 (CEST)
Date: Mon, 29 Jul 2019 16:35:55 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH v1 02/11] drm: drop uapi dependency from drm_print.h
Message-ID: <20190729143555.GA16927@ravnborg.org>
References: <20190718161507.2047-1-sam@ravnborg.org>
 <20190718161507.2047-3-sam@ravnborg.org>
 <156346840026.24728.936589728458336617@skylake-alporthouse-com>
 <460bf1e1-a38b-5f79-26e5-93764067f4e1@amd.com>
 <87tvb5nh5c.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87tvb5nh5c.fsf@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=dqr19Wo4 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=z97LkYvmAAAA:8
 a=K2UDfjvxisjQRRjod3UA:9 a=CjuIK1q_8ugA:10 a=vIYCe-biKPAlS5OZFR2a:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_073809_389125_D53EF48D 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.14 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Liviu Dudau <Liviu.Dudau@arm.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sean Paul <seanpaul@chromium.org>,
 Thierry Reding <treding@nvidia.com>, Sean Paul <sean@poorly.run>, "Koenig,
 Christian" <Christian.Koenig@amd.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> >>
> >> Even then it so useless (which drm driver is this message for???) that I
> >> want to remove them all :(
> >
> > Yeah, agree. I mean it is nice if the core drm functions use a prefix 
> > for debug output.
> >
> > But I actually don't see the point for individual drivers.
> 
> We should all migrate to the versions with device...

Just to do an xkdc.com/927 I have considered:

drm_err(const struct drm_device *drm, ...)
drm_info(const struct drm_device *drm, ...)

drm_kms_err(const struct drm_device *drm, ...)
drm_kms_info(const struct drm_device *drm, ...))

And so on for vbl, primse. lease, state etc.

Then we could fish out relevant info from the drm device and present
this nicely.

For the cases where no drm_device is available the fallback is:
drm_dev_err(const struct drm_device *drm, ...)
drm_dev_info(const struct drm_device *drm, ...))

We could modify the existing UPPERCASE macros to be placeholders for
the more reader friendly lower cases variants and base it all on the
established infrastructure.

But this is just idle thinking, as only a serious patch would stir the
relevant discussions.

For now this is far from the top of my TODO list.


	Sam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
