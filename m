Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5E4FBD09E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 19:29:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xExcAL+NpQReup9GMYRAqHCvMSk/v5Wcb7LgK/MFXyY=; b=nx7yP6+T4ytAY4m69XUG6QhKy
	N6g8J1qkdmEUmyXz3AHr1g6fGl4oQgdgTQoj0tfIrEGMuy5FJ/TNZYsM4txzQt3+5rMfglradSTEc
	IrgCBtd2iXotGM5jxj6XpGmUl8SNXmGybCdiUj+9MDNV31zr7S+O9/gJfMFCWaNLXsNEaqumN0oey
	HR2MckqXVbgulCn2mbZer0R3rjbo1DbSKzzWSvt4vkMQ6EXeay1B9dDL8o3GW0izTK9Gm0t9iUw/d
	hmfmmIuG7Jk/tGkpFOwgyJPJbdS/CViXjo6ZUwktMInRIfwAm83dRceXhKdLpUUx33uzhBq5+503Q
	cN76NIm7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCocn-0004yC-2L; Tue, 24 Sep 2019 17:29:17 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCocO-0004tH-Av; Tue, 24 Sep 2019 17:28:54 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 0EF6261214; Tue, 24 Sep 2019 17:28:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569346130;
 bh=m5nRpCCGsAeJVX0FTjg6i2xbJTPmx0BJPve6hoE/kIo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=nZ8owIVvsWeqZqrm8BUr6pGuopffd6EJJfc2u4FMnVTh1Pk/cxCNTA32pg0Z2mN7m
 Te1efabp8rSdDvdO3sJ8PjgwM943Bn0PmeV2iUKpxS8IyKLWpaOATJr+7WI7A+0Y+a
 TW7o8SvQmmBh8zvAIDxeMyfhbXBpnUwKRdG+042I=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id B673E61214;
 Tue, 24 Sep 2019 17:28:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569346128;
 bh=m5nRpCCGsAeJVX0FTjg6i2xbJTPmx0BJPve6hoE/kIo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=VHb6ytHqFfkvnGh/XX/YQdEQJVoueT4RPiEaoUqqv9J98u2ecMdvNsEHCwLqIRDxI
 UKFLZtrB3AYTpj6ZBNBsHx+SUztKyBuVksO/2cMZivUfKKY2gzX1G2MeLZOfhCsRDK
 lRW+5dSlmv7JpdOr4fyEKLTi+5I5QFIqbWuTIXNA=
MIME-Version: 1.0
Date: Tue, 24 Sep 2019 10:28:48 -0700
From: Jeykumar Sankaran <jsanka@codeaurora.org>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH] drm/meson: fix max mode_config height/width
In-Reply-To: <5dbd6337-7e08-f3f7-6d4a-d6bcaddfd3be@baylibre.com>
References: <1538642563-22465-1-git-send-email-narmstrong@baylibre.com>
 <20181004100958.GI31561@phenom.ffwll.local>
 <0ef7fa13-ce77-f8a5-f5f3-6568be3d6145@baylibre.com>
 <CAKMK7uHxiDF3z19cMBb0o2o4Ev0DFJkhMR7Ny6U2776Ry4oc=A@mail.gmail.com>
 <8e980de4-5a52-8f3d-fba2-734617e40d1b@baylibre.com>
 <CAKMK7uE71OeOdDPb+5-cs9bByD-unYPxBV_R1t+4A0Nb4H6CAw@mail.gmail.com>
 <5dbd6337-7e08-f3f7-6d4a-d6bcaddfd3be@baylibre.com>
Message-ID: <91cd8a2aebefd4ea3e9bcee5a4ef796a@codeaurora.org>
X-Sender: jsanka@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_102852_491007_13FEAC3A 
X-CRM114-Status: GOOD (  18.39  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-amlogic@lists.infradead.org,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Reviving this thread from the context of the below conversion:

https://lore.kernel.org/linux-arm-msm/db26145b-3f64-a334-f698-76f972332881@baylibre.com/T/#u

On 2018-10-05 01:19, Neil Armstrong wrote:
> On 05/10/2018 09:58, Daniel Vetter wrote:
>> On Fri, Oct 5, 2018 at 9:39 AM Neil Armstrong 
>> <narmstrong@baylibre.com> wrote:
>>> 
> 
> [...]
> 
>>> OK, won't this be enough ?
>>> --- a/include/drm/drm_mode_config.h
>>> +++ b/include/drm/drm_mode_config.h
>>> @@ -333,6 +333,8 @@ struct drm_mode_config_funcs {
>>>   * @min_height: minimum fb pixel height on this device
>>>   * @max_width: maximum fb pixel width on this device
>>>   * @max_height: maximum fb pixel height on this device
>>> + * @max_fb_width: maximum fb buffer width if differs from max_width
>>> + * @max_fb_height: maximum fb buffer height if differs from 
>>> max_height
>>>   * @funcs: core driver provided mode setting functions
>>>   * @fb_base: base address of the framebuffer
>>>   * @poll_enabled: track polling support for this device
>>> @@ -508,6 +510,7 @@ struct drm_mode_config {
>>> 
>>>         int min_width, min_height;
>>>         int max_width, max_height;
>>> +       int max_fb_width, max_fb_height;
>>>         const struct drm_mode_config_funcs *funcs;
>>>         resource_size_t fb_base;
>>> 
>>> --- a/drivers/gpu/drm/drm_framebuffer.c
>>> +++ b/drivers/gpu/drm/drm_framebuffer.c
>>> @@ -283,14 +283,20 @@ drm_internal_framebuffer_create(struct 
>>> drm_device *dev,
>>>                 return ERR_PTR(-EINVAL);
>>>         }
>>> 
>>> -       if ((config->min_width > r->width) || (r->width > 
>>> config->max_width)) {
>>> +       if ((config->min_width > r->width) ||
>>> +           (!config->max_fb_width && r->width > config->max_width) 
>>> ||
>>> +           (config->max_fb_width && r->width > 
>>> config->max_fb_width)) {
>>>                 DRM_DEBUG_KMS("bad framebuffer width %d, should be >= 
>>> %d && <= %d\n",
>>> -                         r->width, config->min_width, 
>>> config->max_width);
>>> +                         r->width, config->min_width, 
>>> config->max_fb_width ?
>>> +                         config->max_fb_width : config->max_width);
>>>                 return ERR_PTR(-EINVAL);
>>>         }
>>> -       if ((config->min_height > r->height) || (r->height > 
>>> config->max_height)) {
>>> +       if ((config->min_height > r->height) ||
>>> +           (!config->max_fb_height && r->height > 
>>> config->max_height) ||
>>> +           (config->max_fb_height && r->height > 
>>> config->max_fb_height)) {
>>>                 DRM_DEBUG_KMS("bad framebuffer height %d, should be 
>>> >= %d && <= %d\n",
>>> -                         r->height, config->min_height, 
>>> config->max_height);
>>> +                         r->height, config->min_height, 
>>> config->max_fb_height ?
>>> +                         config->max_fb_height : 
>>> config->max_height);
>>>                 return ERR_PTR(-EINVAL);
>>>         }
>>> 
>>> and in the driver :
>>> 
>>> +       drm->mode_config.max_width = 4096;
>>> +       drm->mode_config.max_height = 3840;
>>> +       drm->mode_config.max_fb_width = 16384;
>>> +       drm->mode_config.max_fb_height = 8192;
>>> 
>>> With this I leave the mode filtering intact.
>> 
>> Not enough. See
>> https://dri.freedesktop.org/docs/drm/gpu/drm-kms-helpers.html#c.drm_connector_helper_funcs
>> and scroll down to mode_valid. You need to filter modes both in the
>> detect paths, and the atomic_check paths.
>> 
>> Detect is explicitly filtered out, but atomic_check was only
>> implicitly filtered, through the max fb size checks. Ok, you could
>> light up a mode that's bigger than max fb, but in practice, no
>> userspace ever did that.

Daniel, MSM and few other vendor hardware have upscale blocks where the 
driver can expose fb sizes smaller than
the mode resolution and use h/w upscaling to fill the screen. This would 
optimize the fetch bandwidth.

But with your code we're missing crucial
>> validation now, and userspace could fall over that. What I think we
>> need is to add mode filter against mode_config.max_width/height in
>> drm_atomic_helper_check_modeset(). Probably best to stuff that into
>> the mode_valid() function.
> 
Agreed! Since the above patch from Niel is taking care of cases where 
max/min fb values
are not set, by checking against the original max/min values, can we 
separate out this
core change from the driver level mode_valid changes? If Niel couldn't 
find the time, I can
repost the above change.

Thanks and Regards,
Jeykumar S.

> Ok I understood now, thanks for pointer, I'll try to add this.
> 
> Neil
> 
>> 
>> Cheers, Daniel
>>> 
>>> Neil
>>> 
>>> 
>>>> -Daniel
>>>> 
>>>>> 
>>>>> Neil
>>>>> 
>>>>>> 
>>>>>> Bunch of igt to make sure we're not missing anything would be 
>>>>>> sweet on
>>>>>> top, e.g. e.g. trying to set a mode over the limit and making sure 
>>>>>> it
>>>>>> fails.
>>>>>> 
>>>>>> Cheers, Daniel
>>>>>> 
>>>>>>> ---
>>>>>>>  drivers/gpu/drm/meson/meson_drv.c | 4 ++--
>>>>>>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>>>>>> 
>>>>>>> diff --git a/drivers/gpu/drm/meson/meson_drv.c 
>>>>>>> b/drivers/gpu/drm/meson/meson_drv.c
>>>>>>> index d344312..2e29968 100644
>>>>>>> --- a/drivers/gpu/drm/meson/meson_drv.c
>>>>>>> +++ b/drivers/gpu/drm/meson/meson_drv.c
>>>>>>> @@ -243,8 +243,8 @@ static int meson_drv_bind_master(struct 
>>>>>>> device *dev, bool has_components)
>>>>>>>              goto free_drm;
>>>>>>> 
>>>>>>>      drm_mode_config_init(drm);
>>>>>>> -    drm->mode_config.max_width = 3840;
>>>>>>> -    drm->mode_config.max_height = 2160;
>>>>>>> +    drm->mode_config.max_width = 16384;
>>>>>>> +    drm->mode_config.max_height = 8192;
>>>>>>>      drm->mode_config.funcs = &meson_mode_config_funcs;
>>>>>>> 
>>>>>>>      /* Hardware Initialization */
>>>>>>> --
>>>>>>> 2.7.4
>>>>>>> 
>>>>>>> _______________________________________________
>>>>>>> dri-devel mailing list
>>>>>>> dri-devel@lists.freedesktop.org
>>>>>>> https://lists.freedesktop.org/mailman/listinfo/dri-devel
>>>>>> 
>>>>> 
>>>>> _______________________________________________
>>>>> dri-devel mailing list
>>>>> dri-devel@lists.freedesktop.org
>>>>> https://lists.freedesktop.org/mailman/listinfo/dri-devel
>>>> 
>>>> 
>>>> 
>>> 
>> 
>> 
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
Jeykumar S

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
