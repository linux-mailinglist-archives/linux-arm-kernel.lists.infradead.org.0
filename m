Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC162C8A13
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 15:45:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jU7onsjUlDOHqwfOJZ9GQMolvlIdfuC35OLPIwRaJJ4=; b=ZbvB9KW6JtceYN
	ShCI7hHRwDd1080CKvz38KXfnyU5RPznRnJ5KgvLpiFhH3wLcueanejo3Jr1t2YZo7NOGL7QGG2SX
	myKV0pdTDt0s3fMoDfpvxSiq12TKhLVAt0JvupDoL32TsSetS6eWZTZHar+yGkSYNsnJd64gaxnZA
	ykUymr+/fOrXsHUCWPSUGGaaTGsK/Xj3vrf5/VKMcvOABo4nMZ0tOShfFBvWcx7wPp7PWfF1MAUVi
	1vxqkP9c3rNMJwz5cuyVjZRtvAXaUQU/WXNepE5Y4YevVMy91xWhgkc8Do8K1j6OCp/ckMN37FHdQ
	Cs+WisZarZYaxcD85bDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFews-0006U8-Sa; Wed, 02 Oct 2019 13:45:46 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFewm-0006TA-Cl
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 13:45:42 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 06:45:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,574,1559545200"; d="scan'208";a="198214198"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 02 Oct 2019 06:45:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 02 Oct 2019 16:45:35 +0300
Date: Wed, 2 Oct 2019 16:45:35 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jeykumar Sankaran <jsanka@codeaurora.org>
Subject: Re: [PATCH] drm: add fb max width/height fields to drm_mode_config
Message-ID: <20191002134535.GU1208@intel.com>
References: <1569634131-13875-1-git-send-email-jsanka@codeaurora.org>
 <1569634131-13875-2-git-send-email-jsanka@codeaurora.org>
 <20190930103931.GZ1208@intel.com>
 <f6d3c2b6ad897ce8b2fdcaab44993eed@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f6d3c2b6ad897ce8b2fdcaab44993eed@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_064540_473641_19291CA6 
X-CRM114-Status: GOOD (  21.86  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org, seanpaul@chromium.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 narmstrong@baylibre.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 01, 2019 at 02:20:55PM -0700, Jeykumar Sankaran wrote:
> On 2019-09-30 03:39, Ville Syrj=E4l=E4 wrote:
> > On Fri, Sep 27, 2019 at 06:28:51PM -0700, Jeykumar Sankaran wrote:
> >> The mode_config max width/height values determine the maximum
> >> resolution the pixel reader can handle.
> > =

> > Not according to the docs I "fixed" a while ago.
> > =

> >> But the same values are
> >> used to restrict the size of the framebuffer creation. Hardware's
> >> with scaling blocks can operate on framebuffers larger/smaller than
> >> that of the pixel reader resolutions by scaling them down/up before
> >> rendering.
> >> =

> >> This changes adds a separate framebuffer max width/height fields
> >> in drm_mode_config to allow vendors to set if they are different
> >> than that of the default max resolution values.
> > =

> > If you're going to change the meaning of the old values you need
> > to fix the drivers too.
> > =

> > Personally I don't see too much point in this since you most likely
> > want to validate all the other timings as well, and so likely need
> > some kind of mode_valid implementation anyway. Hence to validate
> > modes there's not much benefit of having global min/max values.
> > =

> https://patchwork.kernel.org/patch/10467155/
> =

> I believe you are referring to this patch.
> =

> I am primarily interested in the scaling scenario mentioned here. MSM
> and a few other hardware have scaling block that are used both ways:
> =

> 1) Where FB limits are larger than the display limits. Scalar blocks are =

> used to
>     downscale the framebuffers and render within display limits.
> =

> In this scenario, with your patch, are you suggesting the drivers =

> maintain the
> display limits locally and use those values in fill_modes() / =

> mode_valid() to filter
> out invalid modes explicitly instead of mode_config.max_width/height?
> =

> 2) Where FB limits are smaller than display limits. Enforced for =

> performance reasons on low tier hardware.
> It reduces the fetch bandwidth and uses post blending scalar block to =

> scale up the pixel stream
> to match the display resolution.

As Daniel mentioned in that discussion your typical userspace
assumes that it can use a single unscaled framebuffer with any
advertised mode. Hence I believe limiting the mode list based
on the max framebuffer size is pretty much required unless
you want to break existing userspace.

In i915 I went a bit further than that recently and now we
filter the mode list based on the maximum plane size [1] =

(which can be less than the max fb size and less than the
maximum crtc dimensions). And again that's because userspace
assumes that it can just use a single unscaled fullscreen
plane to cover the entire crtc.

These assumption are also carved into the legacy setcrtc uapi
where you can't even specify multiple framebuffers. In theory
a driver could internally use multiple planes to overcome some
of the limitations, but in i915 at least we don't.

[1] https://cgit.freedesktop.org/drm/drm-intel/commit/?id=3D2d20411e25a3bf3=
d2914a2219f47ed48dc57aed5

> =

> Any suggestions on how this topology can be handled with a single set of =

> max/min values?
>

I think a safe way to relax these rules would be to either:
a) Add a client cap by which userspace can inform the kernel
   it understands there are more complicated limits at play
   and thus can't assume that everything will just work
b) Maybe we could just tie that in with the atomic cap since
   atomic clients are pretty much required to do the TEST_ONLY
   dance anyway, so one might hope they have a working fallback
   strategy. Though I suspect eg. the modesetting ddx wouldn't
   like this. But we no longer allow atomic with X anyway so
   that partcular argument may not hold much weight anymore.

-- =

Ville Syrj=E4l=E4
Intel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
