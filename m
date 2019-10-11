Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8148D4712
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 19:59:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GPIG5vY4qfYEsAhQ3Y4/+pRA97ygUhMTiZVo9aXjbxg=; b=RgJkdUETLdCxmRwJXWY9fGWrs
	cuxhHbG0M31xkAlWqYDv2h7N+4ZtdRswVL7xv+2mI3E6HoekROl/mdvsLFHQTb2OR2T43yKFsktgC
	M2Lgqczb9XFxL4IJnqNuroHmk6Fpg4u2R6uHjsKLjrrS3CoidS7xVPoQ7f0kcgdwMQYDmdsI4q1io
	tjyWP6TgmZ5/ehBP3FbNSZs6FZLzx6x6u+r11wbGhX51+au7b9aalAMb5yOCqgKznvHdZFYCPbsE/
	yNoAVxteMQxtWq/8QGxcaaxucH5BMC5Vhs9LSchpHJj6ivuKInrty8lZ4JWY/3x3h6zUrVSh43dxf
	DdncXB6Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIzCI-000754-Qe; Fri, 11 Oct 2019 17:59:26 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIzC5-000733-V4; Fri, 11 Oct 2019 17:59:16 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 1E83A60AA8; Fri, 11 Oct 2019 17:59:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570816753;
 bh=dEIHNtPJMeVe0/U1DX6bBGn/UKV/780n6No7ph7w8yw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Ykg12PFZxT3nlVFtqTIhn/ikrDlmLyXYQarYtasJm3LbVyNw1Fz57B12hB+1YPDM9
 6LJGerahP2a6tl7FZJHSWwMkodCM0qAt/hwJxmR+DthNHoGHCAuw2tg2L5ZsqP4E/Q
 6wPXvWTDQ399qJ7dp/et0vHhzJTHV5V3MkzPxiPw=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id C154460AA8;
 Fri, 11 Oct 2019 17:59:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570816751;
 bh=dEIHNtPJMeVe0/U1DX6bBGn/UKV/780n6No7ph7w8yw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=erwjxUldW6GlHm6A6jcnS4u/PE5qvU7lC+CFWLChnB2fTSNBAayRrlR3yr02FrHtL
 j9sbYg75buj9H5hd5WKvylgrlxFaYqV9WhnuGQok/00O3pJmTuhNuBDbeVPav3XpNk
 NLLhdJFUZEa6OwgZ9YkDGijCyM85w2BdKE5zuUVw=
MIME-Version: 1.0
Date: Fri, 11 Oct 2019 10:59:11 -0700
From: Jeykumar Sankaran <jsanka@codeaurora.org>
To: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCH] drm/meson: fix max mode_config height/width
In-Reply-To: <20191009104727.GX16989@phenom.ffwll.local>
References: <1538642563-22465-1-git-send-email-narmstrong@baylibre.com>
 <20181004100958.GI31561@phenom.ffwll.local>
 <0ef7fa13-ce77-f8a5-f5f3-6568be3d6145@baylibre.com>
 <CAKMK7uHxiDF3z19cMBb0o2o4Ev0DFJkhMR7Ny6U2776Ry4oc=A@mail.gmail.com>
 <8e980de4-5a52-8f3d-fba2-734617e40d1b@baylibre.com>
 <CAKMK7uE71OeOdDPb+5-cs9bByD-unYPxBV_R1t+4A0Nb4H6CAw@mail.gmail.com>
 <5dbd6337-7e08-f3f7-6d4a-d6bcaddfd3be@baylibre.com>
 <91cd8a2aebefd4ea3e9bcee5a4ef796a@codeaurora.org>
 <20191009104727.GX16989@phenom.ffwll.local>
Message-ID: <27976f3eca6bd96dcea071db97c229b1@codeaurora.org>
X-Sender: jsanka@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_105914_044908_A856E86E 
X-CRM114-Status: GOOD (  29.74  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, linux-amlogic@lists.infradead.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-10-09 03:47, Daniel Vetter wrote:
> On Tue, Sep 24, 2019 at 10:28:48AM -0700, Jeykumar Sankaran wrote:
>> Reviving this thread from the context of the below conversion:
>> 
>> 
> https://lore.kernel.org/linux-arm-msm/db26145b-3f64-a334-f698-76f972332881
> @baylibre.com/T/#u
>> 
>> On 2018-10-05 01:19, Neil Armstrong wrote:
>> > On 05/10/2018 09:58, Daniel Vetter wrote:
>> > > On Fri, Oct 5, 2018 at 9:39 AM Neil Armstrong
>> > > <narmstrong@baylibre.com> wrote:
>> > > >
>> >
>> > [...]
>> >
>> > > > OK, won't this be enough ?
>> > > > --- a/include/drm/drm_mode_config.h
>> > > > +++ b/include/drm/drm_mode_config.h
>> > > > @@ -333,6 +333,8 @@ struct drm_mode_config_funcs {
>> > > >   * @min_height: minimum fb pixel height on this device
>> > > >   * @max_width: maximum fb pixel width on this device
>> > > >   * @max_height: maximum fb pixel height on this device
>> > > > + * @max_fb_width: maximum fb buffer width if differs from
> max_width
>> > > > + * @max_fb_height: maximum fb buffer height if differs from
>> > > > max_height
>> > > >   * @funcs: core driver provided mode setting functions
>> > > >   * @fb_base: base address of the framebuffer
>> > > >   * @poll_enabled: track polling support for this device
>> > > > @@ -508,6 +510,7 @@ struct drm_mode_config {
>> > > >
>> > > >         int min_width, min_height;
>> > > >         int max_width, max_height;
>> > > > +       int max_fb_width, max_fb_height;
>> > > >         const struct drm_mode_config_funcs *funcs;
>> > > >         resource_size_t fb_base;
>> > > >
>> > > > --- a/drivers/gpu/drm/drm_framebuffer.c
>> > > > +++ b/drivers/gpu/drm/drm_framebuffer.c
>> > > > @@ -283,14 +283,20 @@ drm_internal_framebuffer_create(struct
>> > > > drm_device *dev,
>> > > >                 return ERR_PTR(-EINVAL);
>> > > >         }
>> > > >
>> > > > -       if ((config->min_width > r->width) || (r->width >
>> > > > config->max_width)) {
>> > > > +       if ((config->min_width > r->width) ||
>> > > > +           (!config->max_fb_width && r->width >
>> > > > config->max_width) ||
>> > > > +           (config->max_fb_width && r->width >
>> > > > config->max_fb_width)) {
>> > > >                 DRM_DEBUG_KMS("bad framebuffer width %d, should
>> > > > be >= %d && <= %d\n",
>> > > > -                         r->width, config->min_width,
>> > > > config->max_width);
>> > > > +                         r->width, config->min_width,
>> > > > config->max_fb_width ?
>> > > > +                         config->max_fb_width :
> config->max_width);
>> > > >                 return ERR_PTR(-EINVAL);
>> > > >         }
>> > > > -       if ((config->min_height > r->height) || (r->height >
>> > > > config->max_height)) {
>> > > > +       if ((config->min_height > r->height) ||
>> > > > +           (!config->max_fb_height && r->height >
>> > > > config->max_height) ||
>> > > > +           (config->max_fb_height && r->height >
>> > > > config->max_fb_height)) {
>> > > >                 DRM_DEBUG_KMS("bad framebuffer height %d, should
>> > > > be >= %d && <= %d\n",
>> > > > -                         r->height, config->min_height,
>> > > > config->max_height);
>> > > > +                         r->height, config->min_height,
>> > > > config->max_fb_height ?
>> > > > +                         config->max_fb_height :
>> > > > config->max_height);
>> > > >                 return ERR_PTR(-EINVAL);
>> > > >         }
>> > > >
>> > > > and in the driver :
>> > > >
>> > > > +       drm->mode_config.max_width = 4096;
>> > > > +       drm->mode_config.max_height = 3840;
>> > > > +       drm->mode_config.max_fb_width = 16384;
>> > > > +       drm->mode_config.max_fb_height = 8192;
>> > > >
>> > > > With this I leave the mode filtering intact.
>> > >
>> > > Not enough. See
>> > >
> https://dri.freedesktop.org/docs/drm/gpu/drm-kms-helpers.html#c.drm_connec
> tor_helper_funcs
>> > > and scroll down to mode_valid. You need to filter modes both in the
>> > > detect paths, and the atomic_check paths.
>> > >
>> > > Detect is explicitly filtered out, but atomic_check was only
>> > > implicitly filtered, through the max fb size checks. Ok, you could
>> > > light up a mode that's bigger than max fb, but in practice, no
>> > > userspace ever did that.
>> 
>> Daniel, MSM and few other vendor hardware have upscale blocks where 
>> the
>> driver can expose fb sizes smaller than
>> the mode resolution and use h/w upscaling to fill the screen. This 
>> would
>> optimize the fetch bandwidth.
>> 
>> But with your code we're missing crucial
>> > > validation now, and userspace could fall over that. What I think we
>> > > need is to add mode filter against mode_config.max_width/height in
>> > > drm_atomic_helper_check_modeset(). Probably best to stuff that into
>> > > the mode_valid() function.
>> >
>> Agreed! Since the above patch from Niel is taking care of cases where
>> max/min fb values
>> are not set, by checking against the original max/min values, can we
>> separate out this
>> core change from the driver level mode_valid changes? If Niel couldn't
> find
>> the time, I can
>> repost the above change.
> 
> Sure, I think Neil wouldn't mind if you take this over and get it ready
> for merging. Just need to make sure we're not leaving any validation 
> gaps
> in core/helper code.
> -Daniel
> 
I guess you are a bit late for the party!

I did post the patch on the forum. The latest on the thread can be found 
here: https://lkml.org/lkml/2019/10/2/369

The basic concern is if FB limits are different (especially smaller) 
than the display (mode) limits, it
will break the existing user space, who are creating unscaled FB's out 
of exposed mode limits.

Thanks and Regards,
Jeykumar S.

>> 
>> Thanks and Regards,
>> Jeykumar S.
>> 
>> > Ok I understood now, thanks for pointer, I'll try to add this.
>> >
>> > Neil
>> >
>> > >
>> > > Cheers, Daniel
>> > > >
>> > > > Neil
>> > > >
>> > > >
>> > > > > -Daniel
>> > > > >
>> > > > > >
>> > > > > > Neil
>> > > > > >
>> > > > > > >
>> > > > > > > Bunch of igt to make sure we're not missing anything
>> > > > > > > would be sweet on
>> > > > > > > top, e.g. e.g. trying to set a mode over the limit
>> > > > > > > and making sure it
>> > > > > > > fails.
>> > > > > > >
>> > > > > > > Cheers, Daniel
>> > > > > > >
>> > > > > > > > ---
>> > > > > > > >  drivers/gpu/drm/meson/meson_drv.c | 4 ++--
>> > > > > > > >  1 file changed, 2 insertions(+), 2 deletions(-)
>> > > > > > > >
>> > > > > > > > diff --git a/drivers/gpu/drm/meson/meson_drv.c
>> > > > > > > > b/drivers/gpu/drm/meson/meson_drv.c
>> > > > > > > > index d344312..2e29968 100644
>> > > > > > > > --- a/drivers/gpu/drm/meson/meson_drv.c
>> > > > > > > > +++ b/drivers/gpu/drm/meson/meson_drv.c
>> > > > > > > > @@ -243,8 +243,8 @@ static int
>> > > > > > > > meson_drv_bind_master(struct device *dev, bool
>> > > > > > > > has_components)
>> > > > > > > >              goto free_drm;
>> > > > > > > >
>> > > > > > > >      drm_mode_config_init(drm);
>> > > > > > > > -    drm->mode_config.max_width = 3840;
>> > > > > > > > -    drm->mode_config.max_height = 2160;
>> > > > > > > > +    drm->mode_config.max_width = 16384;
>> > > > > > > > +    drm->mode_config.max_height = 8192;
>> > > > > > > >      drm->mode_config.funcs = &meson_mode_config_funcs;
>> > > > > > > >
>> > > > > > > >      /* Hardware Initialization */
>> > > > > > > > --
>> > > > > > > > 2.7.4
>> > > > > > > >
>> > > > > > > > _______________________________________________
>> > > > > > > > dri-devel mailing list
>> > > > > > > > dri-devel@lists.freedesktop.org
>> > > > > > > > https://lists.freedesktop.org/mailman/listinfo/dri-devel
>> > > > > > >
>> > > > > >
>> > > > > > _______________________________________________
>> > > > > > dri-devel mailing list
>> > > > > > dri-devel@lists.freedesktop.org
>> > > > > > https://lists.freedesktop.org/mailman/listinfo/dri-devel
>> > > > >
>> > > > >
>> > > > >
>> > > >
>> > >
>> > >
>> >
>> > _______________________________________________
>> > dri-devel mailing list
>> > dri-devel@lists.freedesktop.org
>> > https://lists.freedesktop.org/mailman/listinfo/dri-devel
>> 
>> --
>> Jeykumar S

-- 
Jeykumar S

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
