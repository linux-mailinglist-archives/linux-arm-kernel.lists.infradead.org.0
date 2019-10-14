Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC8D7D5D57
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 10:24:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QPuluDbtwsMpjMiIy6lIbiCv2gvQQYI/1RUG91LrJug=; b=XGrqe2f9LypfHP
	a/dfqdRmjkwwNIHa+EkWTZHox73tCKsfGQdVMG5mEoGPM0bvl9qIsAS36YqmyMj6vZ5TN28ryzrVl
	fmL12vc3mHcjuTDYWqqZjJDnv7PfxqPmaFp7Ss2443B+4EgRnPyc8lXeJ+uoOlWL5PPqHhVY+Hyb5
	zh8bdUuy8shswLUiWEZhCGsKt+SBu1UMJuYHyoRtV9ah8Vi0x35/WGfY8xTQEcQAfruR7Ej9Q34Et
	aPZgiurwF8lDY//PgEjmQfWUxdfuPMYLn88eYmQN3uHM4SPcD9r3517CgDpPcXzN10FR89QUucW2T
	pmWXyZCR0rFnBMJF7NmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJvew-00047y-CO; Mon, 14 Oct 2019 08:24:54 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJven-00046O-SF
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 08:24:47 +0000
Received: by mail-ed1-x543.google.com with SMTP id j8so2349602eds.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 01:24:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:mail-followup-to
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=j6O20ev7OAGuxzIa80e5vDAXtGyW2LTnu77UaffpJCE=;
 b=Y4BN43Jpv0jfoCynOGvEDGKo3T6kpHMLPm53oR14RzhJHTd72+n1dQ0OGJ9I2DF8nB
 nUKRKB13dTXGGk1RRtEVF+rvE18LGdvkNZX0pMhlUVzriDowDxd348l4hTZUMEyOeGgL
 s6JbWIbh6q5eB8PT/rnkOECWPPfoI++bA31+c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=j6O20ev7OAGuxzIa80e5vDAXtGyW2LTnu77UaffpJCE=;
 b=ThcD9lQDo9W6g/pfO+sghTK6biE+6vxSbcDACGBK01hWwPFOaskgyfRbqvtcXL+kwM
 bscg7N+VFyHVSMcnvvmExkpkmHigNJftL06pzb0A6lgHsuBbDPloKKFsZpnkmzrEAnjV
 J6xWLxuk5JI9oxhleTXmWhoXwLEXzsbIBYuzKPVVP3FWqJ/JgF4yB5One4xYwe+idcPX
 LTe+mfdH0zYStO1t4Ke8PXrcivyNwLNnIO8atOIOqtD/ub5e798Ewjqrkd74N5i6zGt7
 I+pBUO9pUHNWMUe9NGhVT84CwcKWmMbkc21xbgYWgfHfFNfSDXq6zeHSQYLlv338XjuV
 vTAw==
X-Gm-Message-State: APjAAAX5RmWsJROetZW1gkrgvKATE9r8tKbsgRLIU4a/aTSivgW5z6FL
 +tu5NhwbI1C6MG4No4mFtSMxTQ==
X-Google-Smtp-Source: APXvYqwXYHlLsNH8IZ0yHVKT+WNEtOwUbzIAoI04sPQqxR0KrJVKvhaWJIh+WyCfN2js9VOglylnJA==
X-Received: by 2002:a17:906:3b10:: with SMTP id
 g16mr27774667ejf.34.1571041483656; 
 Mon, 14 Oct 2019 01:24:43 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id k18sm2218817ejc.16.2019.10.14.01.24.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 01:24:42 -0700 (PDT)
Date: Mon, 14 Oct 2019 10:24:33 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH] drm: add fb max width/height fields to drm_mode_config
Message-ID: <20191014082433.GA11828@phenom.ffwll.local>
Mail-Followup-To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?=
 <ville.syrjala@linux.intel.com>, 
 Rob Clark <robdclark@gmail.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Sean Paul <seanpaul@chromium.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
References: <1569634131-13875-1-git-send-email-jsanka@codeaurora.org>
 <1569634131-13875-2-git-send-email-jsanka@codeaurora.org>
 <20190930103931.GZ1208@intel.com>
 <f6d3c2b6ad897ce8b2fdcaab44993eed@codeaurora.org>
 <20191002134535.GU1208@intel.com>
 <CAF6AEGtETiKLggNEKm+YyH8PMzpXpp119PjV2f6jdbU4UYxiAQ@mail.gmail.com>
 <20191003102718.GC1208@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191003102718.GC1208@intel.com>
X-Operating-System: Linux phenom 5.2.0-2-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_012445_919080_D228C93A 
X-CRM114-Status: GOOD (  31.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Rob Clark <robdclark@gmail.com>,
 Sean Paul <seanpaul@chromium.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 03, 2019 at 01:27:18PM +0300, Ville Syrj=E4l=E4 wrote:
> On Wed, Oct 02, 2019 at 03:55:10PM -0400, Rob Clark wrote:
> > On Wed, Oct 2, 2019 at 9:45 AM Ville Syrj=E4l=E4
> > <ville.syrjala@linux.intel.com> wrote:
> > >
> > > On Tue, Oct 01, 2019 at 02:20:55PM -0700, Jeykumar Sankaran wrote:
> > > > On 2019-09-30 03:39, Ville Syrj=E4l=E4 wrote:
> > > > > On Fri, Sep 27, 2019 at 06:28:51PM -0700, Jeykumar Sankaran wrote:
> > > > >> The mode_config max width/height values determine the maximum
> > > > >> resolution the pixel reader can handle.
> > > > >
> > > > > Not according to the docs I "fixed" a while ago.
> > > > >
> > > > >> But the same values are
> > > > >> used to restrict the size of the framebuffer creation. Hardware's
> > > > >> with scaling blocks can operate on framebuffers larger/smaller t=
han
> > > > >> that of the pixel reader resolutions by scaling them down/up bef=
ore
> > > > >> rendering.
> > > > >>
> > > > >> This changes adds a separate framebuffer max width/height fields
> > > > >> in drm_mode_config to allow vendors to set if they are different
> > > > >> than that of the default max resolution values.
> > > > >
> > > > > If you're going to change the meaning of the old values you need
> > > > > to fix the drivers too.
> > > > >
> > > > > Personally I don't see too much point in this since you most like=
ly
> > > > > want to validate all the other timings as well, and so likely need
> > > > > some kind of mode_valid implementation anyway. Hence to validate
> > > > > modes there's not much benefit of having global min/max values.
> > > > >
> > > > https://patchwork.kernel.org/patch/10467155/
> > > >
> > > > I believe you are referring to this patch.
> > > >
> > > > I am primarily interested in the scaling scenario mentioned here. M=
SM
> > > > and a few other hardware have scaling block that are used both ways:
> > > >
> > > > 1) Where FB limits are larger than the display limits. Scalar block=
s are
> > > > used to
> > > >     downscale the framebuffers and render within display limits.
> > > >
> > > > In this scenario, with your patch, are you suggesting the drivers
> > > > maintain the
> > > > display limits locally and use those values in fill_modes() /
> > > > mode_valid() to filter
> > > > out invalid modes explicitly instead of mode_config.max_width/heigh=
t?
> > > >
> > > > 2) Where FB limits are smaller than display limits. Enforced for
> > > > performance reasons on low tier hardware.
> > > > It reduces the fetch bandwidth and uses post blending scalar block =
to
> > > > scale up the pixel stream
> > > > to match the display resolution.
> > >
> > > As Daniel mentioned in that discussion your typical userspace
> > > assumes that it can use a single unscaled framebuffer with any
> > > advertised mode. Hence I believe limiting the mode list based
> > > on the max framebuffer size is pretty much required unless
> > > you want to break existing userspace.
> > >
> > > In i915 I went a bit further than that recently and now we
> > > filter the mode list based on the maximum plane size [1]
> > > (which can be less than the max fb size and less than the
> > > maximum crtc dimensions). And again that's because userspace
> > > assumes that it can just use a single unscaled fullscreen
> > > plane to cover the entire crtc.
> > >
> > > These assumption are also carved into the legacy setcrtc uapi
> > > where you can't even specify multiple framebuffers. In theory
> > > a driver could internally use multiple planes to overcome some
> > > of the limitations, but in i915 at least we don't.
> > >
> > > [1] https://cgit.freedesktop.org/drm/drm-intel/commit/?id=3D2d20411e2=
5a3bf3d2914a2219f47ed48dc57aed5
> > >
> > > >
> > > > Any suggestions on how this topology can be handled with a single s=
et of
> > > > max/min values?
> > > >
> > >
> > > I think a safe way to relax these rules would be to either:
> > > a) Add a client cap by which userspace can inform the kernel
> > >    it understands there are more complicated limits at play
> > >    and thus can't assume that everything will just work

+1 on this approach. We already have that for 3d modes, another client cap
for "modes bigger than max fb" sounds like a good idea.

For "max plane size" I'm leaning towards drivers should virtualize at
least the primary plane if that's needed to scan out the biggest
resolution. Since there's way too much userspace which will simply not
work otherwise (iirc that's what a bunch of dual-pipe dsi drivers did).

> > > b) Maybe we could just tie that in with the atomic cap since
> > >    atomic clients are pretty much required to do the TEST_ONLY
> > >    dance anyway, so one might hope they have a working fallback
> > >    strategy. Though I suspect eg. the modesetting ddx wouldn't
> > >    like this. But we no longer allow atomic with X anyway so
> > >    that partcular argument may not hold much weight anymore.
> > =

> > What was the conclusion of the hack to not expose atomic to
> > modesetting ddx, due to the brokenness of it's atomic use?  I guess
> > that could also make the modesetting case go away..
> =

> I thought it went in? Maybe I'm mistaken.

I did:

commit 26b1d3b527e7bf3e24b814d617866ac5199ce68d
Author: Daniel Vetter <daniel.vetter@ffwll.ch>
Date:   Thu Sep 5 20:53:18 2019 +0200

    drm/atomic: Take the atomic toys away from X

Cheers, Daniel
-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
