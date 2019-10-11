Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC6ED3F35
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 14:07:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KVXpfp/kt581VfDpouYLbVC89JSwUuC3OTwytvqNLYU=; b=NRzT4l/lJse/Kz
	xAYDyv90CkFFyj4p0AZIKVstj9kdusfvgyEyNEJKuwdUy6jh95Dz/xVUREkpeh2hdEpJiBYZ58vBc
	3yjdBOuRF0Jk3PDxA1l2Aq68WfZ7s0fRGbPc9bYQ6FEyyoGXwr7UUsa7lTKs9/Vd/6ACUQI2V1ESc
	9ds9KJFKXpgqLg0ZgJet7rH2lE+RHgHB8H3Y8n++62sOVyVIYSozm+iUB9pcSuvp+ovF/p8UEciyw
	uH4fl8o9GE+xOKhXGgFI0sHyt5d7QtdlJO+8CkcDG5aFKilcbeWsbZE3bBGUg2oMfUSFHiXBEqpLA
	8XlfWqe4OuIcMy2gjmfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iItha-0000zt-Ec; Fri, 11 Oct 2019 12:07:22 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIthL-0000yG-7C
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 12:07:10 +0000
Received: by mail-wr1-x442.google.com with SMTP id r3so11655723wrj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 05:07:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=skVJpFrwlbssHfoMwJ5Qz60jZ7+YZBL8hOeGfInPjgA=;
 b=eQdJEhQ9jA/XxQ+4OdRfQw3vG1COpB7sZod80GFYclFBzZIMCvlVxoOsWF4lakumyS
 kUhj4jmx1yvNh8i35JLziPqfLW+Iz9CwsQ5481idEwdFCuibc701xnx+ufqLrcmAPc5l
 +p7hecBboyxgWWiJTOBu9AcZJ//CmWE7VOtVi9RKBFCp5xfKVCVbAKcVrIDTNoea/ItQ
 aYutnT2NnWbamv1XuHzefcSVMRPhcTY53befxKME+338/iF0VGuZEKuPqG8IVOe12WrF
 zJFVi+odqTt1iy+JmaYM8wkoqvK13nf6VnPYp3R8hqKwZdInAEL2txPo5NOn5VJuI697
 a5qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=skVJpFrwlbssHfoMwJ5Qz60jZ7+YZBL8hOeGfInPjgA=;
 b=dayEQa2AkRaiy0gq6Q3zKbuG4U1o7HT38+KsNdZ7Wab7dX83q9AfQ0i5Pl7LnJpOLb
 Xm24EBhvlOXBX6fYVvEFsA+u/vEu48d7eDcywMLkcBa6b2UJyyi/4YAOj4F55T7BRqU5
 QwJkuX/WD7hAu47jtDzvgBe2rW1wrApxKRGKJsRAikQuMzTESKvyrxB//9PTDU2PAd9V
 WqbZUGhZi0KzB6lpob3grYlZx8lEQ8eIQN2bTLm5bvYcXFWIwRj6z/1PbfXDUN99+636
 /TV4btqadMlRDRm8+xv2DzR+rJCjs+DQ72tmhJvlbZdPyxueCIl2wbnPUBQ1yejUg72B
 Beqw==
X-Gm-Message-State: APjAAAWKkJBA/v3ITAjfWXh9zORNN7xEr5wK9FUX+C92RV83i0A9B4xl
 TfKHURD4YLNQlp6lI5LzYxVE5A==
X-Google-Smtp-Source: APXvYqzmbbFALORP/sVFC6QVYMkGTRWBmOdVEvPwtEXDxANM1No+1064NIyHI19EXXLz3qJk6Sf1gQ==
X-Received: by 2002:a5d:5705:: with SMTP id a5mr13426722wrv.112.1570795622822; 
 Fri, 11 Oct 2019 05:07:02 -0700 (PDT)
Received: from [10.1.2.12] (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id p5sm11842456wmi.4.2019.10.11.05.07.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 11 Oct 2019 05:07:02 -0700 (PDT)
Subject: Re: [PATCH 4/7] drm/meson: plane: add support for AFBC mode for OSD1
 plane
To: Brian Starkey <Brian.Starkey@arm.com>
References: <20191010092526.10419-1-narmstrong@baylibre.com>
 <20191010092526.10419-5-narmstrong@baylibre.com>
 <20191010132601.GA10110@arm.com>
 <44f1771f-d640-f23d-995f-7bfcadd213bc@baylibre.com>
 <20191011084108.i7lfh2d7asfmcdk4@DESKTOP-E1NTVVP.localdomain>
 <c9d4f840-a3da-0f40-3a1c-c4aa522daf0f@baylibre.com>
 <20191011105559.clttghy52wfdmb34@DESKTOP-E1NTVVP.localdomain>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <d1010021-cbd8-4328-4b21-7481cba5485e@baylibre.com>
Date: Fri, 11 Oct 2019 14:07:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191011105559.clttghy52wfdmb34@DESKTOP-E1NTVVP.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_050707_297166_EE2F45E7 
X-CRM114-Status: GOOD (  30.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ayan Halder <Ayan.Halder@arm.com>,
 "khilman@baylibre.com" <khilman@baylibre.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-amlogic@lists.infradead.org" <linux-amlogic@lists.infradead.org>,
 nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/10/2019 12:56, Brian Starkey wrote:
> Hi,
> 
> On Fri, Oct 11, 2019 at 11:14:43AM +0200, Neil Armstrong wrote:
>> Hi Brian,
>>
>> On 11/10/2019 10:41, Brian Starkey wrote:
>>> Hi Neil,
>>>
>>> On Thu, Oct 10, 2019 at 03:41:15PM +0200, Neil Armstrong wrote:
>>>> Hi Ayan,
>>>>
>>>> On 10/10/2019 15:26, Ayan Halder wrote:
>>>>> On Thu, Oct 10, 2019 at 11:25:23AM +0200, Neil Armstrong wrote:
>>>>>> This adds all the OSD configuration plumbing to support the AFBC decoders
>>>>>> path to display of the OSD1 plane.
>>>>>>
>>>>>> The Amlogic GXM and G12A AFBC decoders are integrated very differently.
>>>>>>
>>>>>> The Amlogic GXM has a direct output path to the OSD1 VIU pixel input,
>>>>>> because the GXM AFBC decoder seem to be a custom IP developed by Amlogic.
>>>>>>
>>>>>> On the other side, the Amlogic G12A AFBC decoder seems to be an external
>>>>>> IP that emit pixels on an AXI master hooked to a "Mali Unpack" block
>>>>>> feeding the OSD1 VIU pixel input.
>>>>>> This uses a weird "0x1000000" internal HW physical address on both
>>>>>> sides to transfer the pixels.
>>>>>>
>>>>>> For Amlogic GXM, the supported pixel formats are the same as the normal
>>>>>> linear OSD1 mode.
>>>>>>
>>>>>> On the other side, Amlogic added support for all AFBC v1.2 formats for
>>>>>> the G12A AFBC integration.
>>>>>>
>>>>>> For simplicity, we stick to the already supported formats for now.
>>>>>>
>>>>>> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
>>>>>> ---
>>>>>>  drivers/gpu/drm/meson/meson_crtc.c  |   2 +
>>>>>>  drivers/gpu/drm/meson/meson_drv.h   |   4 +
>>>>>>  drivers/gpu/drm/meson/meson_plane.c | 215 ++++++++++++++++++++++++----
>>>>>>  3 files changed, 190 insertions(+), 31 deletions(-)
>>>>>>
>>>>>> diff --git a/drivers/gpu/drm/meson/meson_crtc.c b/drivers/gpu/drm/meson/meson_crtc.c
>>>>>> index 57ae1c13d1e6..d478fa232951 100644
>>>>>> --- a/drivers/gpu/drm/meson/meson_crtc.c
>>>>>> +++ b/drivers/gpu/drm/meson/meson_crtc.c
>>>>>> @@ -281,6 +281,8 @@ void meson_crtc_irq(struct meson_drm *priv)
>>>>>>  	if (priv->viu.osd1_enabled && priv->viu.osd1_commit) {
>>>>>>  		writel_relaxed(priv->viu.osd1_ctrl_stat,
>>>>>>  				priv->io_base + _REG(VIU_OSD1_CTRL_STAT));
>>>>>> +		writel_relaxed(priv->viu.osd1_ctrl_stat2,
>>>>>> +				priv->io_base + _REG(VIU_OSD1_CTRL_STAT2));
>>>>>>  		writel_relaxed(priv->viu.osd1_blk0_cfg[0],
>>>>>>  				priv->io_base + _REG(VIU_OSD1_BLK0_CFG_W0));
>>>>>>  		writel_relaxed(priv->viu.osd1_blk0_cfg[1],
>>>>>> diff --git a/drivers/gpu/drm/meson/meson_drv.h b/drivers/gpu/drm/meson/meson_drv.h
>>>>>> index 60f13c6f34e5..de25349be8aa 100644
>>>>>> --- a/drivers/gpu/drm/meson/meson_drv.h
>>>>>> +++ b/drivers/gpu/drm/meson/meson_drv.h
>>>>>> @@ -53,8 +53,12 @@ struct meson_drm {
>>>>>>  		bool osd1_enabled;
>>>>>>  		bool osd1_interlace;
>>>>>>  		bool osd1_commit;
>>>>>> +		bool osd1_afbcd;
>>>>>>  		uint32_t osd1_ctrl_stat;
>>>>>> +		uint32_t osd1_ctrl_stat2;
>>>>>>  		uint32_t osd1_blk0_cfg[5];
>>>>>> +		uint32_t osd1_blk1_cfg4;
>>>>>> +		uint32_t osd1_blk2_cfg4;
>>>>>>  		uint32_t osd1_addr;
>>>>>>  		uint32_t osd1_stride;
>>>>>>  		uint32_t osd1_height;
>>>>>> diff --git a/drivers/gpu/drm/meson/meson_plane.c b/drivers/gpu/drm/meson/meson_plane.c
>>>>>> index 5e798c276037..412941aa8402 100644
>>>>>> --- a/drivers/gpu/drm/meson/meson_plane.c
>>>>>> +++ b/drivers/gpu/drm/meson/meson_plane.c
>>>>>> @@ -23,6 +23,7 @@
>>>>>>  #include "meson_plane.h"
>>>>>>  #include "meson_registers.h"
>>>>>>  #include "meson_viu.h"
>>>>>> +#include "meson_osd_afbcd.h"
>>>>>>  
>>>>>>  /* OSD_SCI_WH_M1 */
>>>>>>  #define SCI_WH_M1_W(w)			FIELD_PREP(GENMASK(28, 16), w)
>>>>>> @@ -92,12 +93,38 @@ static int meson_plane_atomic_check(struct drm_plane *plane,
>>>>>>  						   false, true);
>>>>>>  }
>>>>>>  
>>>>>> +#define MESON_MOD_AFBC_VALID_BITS (AFBC_FORMAT_MOD_BLOCK_SIZE_16x16 |	\
>>>>>> +				   AFBC_FORMAT_MOD_BLOCK_SIZE_32x8 |	\
>>>>>> +				   AFBC_FORMAT_MOD_YTR |		\
>>>>>> +				   AFBC_FORMAT_MOD_SPARSE |		\
>>>>>> +				   AFBC_FORMAT_MOD_SPLIT)
>>>>>> +
>>>>>>  /* Takes a fixed 16.16 number and converts it to integer. */
>>>>>>  static inline int64_t fixed16_to_int(int64_t value)
>>>>>>  {
>>>>>>  	return value >> 16;
>>>>>>  }
>>>>>>  
>>>>>> +static u32 meson_g12a_afbcd_line_stride(struct meson_drm *priv)
>>>>>> +{
>>>>>> +	u32 line_stride = 0;
>>>>>> +
>>>>>> +	switch (priv->afbcd.format) {
>>>>>> +	case DRM_FORMAT_RGB565:
>>>>>> +		line_stride = ((priv->viu.osd1_width << 4) + 127) >> 7;
>>>>>> +		break;
>>>>>> +	case DRM_FORMAT_RGB888:
>>>>>> +	case DRM_FORMAT_XRGB8888:
>>>>>> +	case DRM_FORMAT_ARGB8888:
>>>>>> +	case DRM_FORMAT_XBGR8888:
>>>>>> +	case DRM_FORMAT_ABGR8888:
>>>>> Please have a look at
>>>>> https://www.kernel.org/doc/html/latest/gpu/afbc.html for our
>>>>> recommendation. We suggest that *X* formats are avoided.
>>>>>
>>>>> Also, for interoperability and maximum compression efficiency (with
>>>>> AFBC_FORMAT_MOD_YTR), we suggest the following order :-
>>>>>
>>>>>         Component 0: R
>>>>>         Component 1: G
>>>>>         Component 2: B
>>>>>         Component 3: A (if available)
>>>>
>>>>
>>>> Sorry I don't understand, you ask me to limit AFBC to ABGR8888 ?
>>>>
>>>> But why if the HW (GPU and DPU) is capable of ?
>>>
>>> AFBC doesn't have an in-memory component order in the traditional
>>> sense (i.e. a bit-position to component mapping), so Arm
>>> have decided to define the convention that DRM_FORMAT_ABGR8888
>>> represents the AFBC layout with R in component 0.
>>
>> In this implementation, we handle the ARGB/ABGR as the same mode
>> since the AFBC can only represent the layout as "ABGR" anyway.
>>
> 
> In this case, with the external AFBC IP, there's a whole extra layer
> of potential confusion :-(
> 
> The decoder only needs to know the number of components - so
> irrespective of what color channel is mapped to what component, it can
> always be configured with the same mode for 4-component 32-bit
> formats.
> 
> For everything to work correctly with YTR, the thing consuming the
> output from the decoder must treat component 0 as 'R', but otherwise
> it doesn't matter.
> 
> Is your HW able to treat the decoder output in different ways? e.g.
> mapping component 0 to 'B'? If that's the case, then exposing the
> different orders is valid - but only ABGR should allow YTR.

Yes, we can remap each components from AFBC in any order.

Ok thanks for clarifying, so:
- I'll allow only ABGR/XBGR with YTR
- I'll allow ABGR/XBGR/ARGB/XRGB only if !YTR and use the AFBC components remapping
for ARGB/XRGB

I'll also need to clean up the RGB888/BGR888 as we support only RGB888 for now.

And I'll reject RGB565 since we don't support it without AFBC.

> 
>>>
>>> Are you sure the GPU supports other orders? I think any Arm driver
>>> will only be producing DRM_FORMATs with "BGR" order e.g. ABGR888>
>>> I'm not convinced the GPU HW actually supports any other order, but
>>> it's all rather confusing with texture swizzling. What I can tell you
>>> for sure is that it _does_ support BGR order (in DRM naming
>>> convention).
>>
>> Well, since the Bifrost Mali blobs are closed-source and delivered
>> by licensees, it's hard to define what is supported from a closed
>> GPU HW, closed SW implementation to a closed pixel format implementation.
>>
> 
> I hear you. IMO the only way to make any of this clear is to publish
> reference data and tests which make sure implementations match each
> other. It's something I'm trying to make happen.

I'll be happy to run them when available and fix the implementation accordingly !

> 
>> You'll have to tell us if the closed libMali handling AFBC would accept
>> ARGB8888 as format to render with AFBC enabled, if not you're right
>> I'll discard XRGB8888/ARGB8888 for AFBC buffers completely.
>>
>> But it the libMali chooses tt generate an ARGB8888 buffer whatever
>> ARGB8888/XRGB8888/ABGR888/XBGR888 is asked, then no I'll keep it that way.
>>
> 
> Yeah, I'll try and get clarity on this. It's not at all clear to me
> either. When you say "accept ARGB8888 as format to render with AFBC
> enabled", which API are you referring to, just so I can be clear? Do
> you have an example of some code you're using to render AFBC with the
> GPU blob?

Let's take kmscube using EGL and GBM.

The buffer is allocated using gbm_surface_create_with_modifiers(),
but the gbm implementation is vendor specified.

Then the surface is passed to eglCreateWindowSurface().
Then the format is matched using eglGetConfigAttrib() with the
returned configs.

Here support on the gbm and EGL implementation.

> 
> In many APIs, there's no real expectation on in-memory component
> order, so perhaps there treating them as all the same is acceptable.
> 
> However, fourcc + AFBC modifier is explicit in terms of component
> order, and so IMO it's very harmful to "ignore" component order in
> interfaces using fourcc + AFBC modifier.
> 
> There are implementations which support other orders, so ignoring
> order will break those implementations. In some cases (Android, maybe
> GL), this can be hidden behind "driver magic", but if the API is
> fourcc + AFBC modifier, IMO it had better be completely explicit with
> no tricks - irrespective of whatever other less-prescriptive APIs do.

Sure

> 
>> BTW I kept the vendor implementation here, which may be wrong but since
>> they have the AFBC IP license and Mali Bifrost GPU license...
>>
>>>
>>> If you do choose to expose orders other than BGR/ABGR, then you should
>>> certainly not allow YTR to be used with any orders other than
>>> BGR/ABGR. The AFBC spec defines YTR as using R in component 0, which
>>> Arm has defined as DRM_FORMAT_*BGR* (component 0 in LE LSBs).
>>>
>>
>> The MAFBC_FMT_RGBA8888 pixel format is defined in the AFBC decoder,
>> which seems to be an ARM IP, the registers documentation is in the
>> SoC datasheet at [1] and the formats bits are defined in the patch 3 at [2].
>>
>> So it seems the decoder handles only a single type for 32bit RGB buffer
>> format, as Amlogic names it MAFBC_FMT_RGBA8888
>>
> 
> Hopefully my comments at the beginning of this mail helps clear this
> part up a bit.
> 
>> For XRGB8888/XBGR8888 we simply "replace" the A component with a fixed
>> value in the pixel generator.
> 
> That seems correct, so long as the decoder is configured in the
> 4-component mode.
> 
>>
>> [1] https://dl.khadas.com/Hardware/VIM3/Datasheet/S905D3_datasheet_0.2_Wesion.pdf page 772
>> [2] https://patchwork.freedesktop.org/patch/335199/?series=67832&rev=1
>>
>>>>
>>>> Isn't it an userspace choice ? I understand XRGB8888 is a waste
>>>> of memory space and compression efficiency, but this is not the
>>>> kernel driver's to decide this, right ?
>>>>
>>>
>>> As long as it's agreed and understood what XRGB8888 means. It must be
>>> an AFBC bitstream with 4-components, with B in component 0, G in
>>> component 1, R in component 2 and 8 wasted bits in component 3.
>>
>> Yes, but this is something userspace must assume, and it's already
>> wasted in the linear XRGB8888 format anyway.
>>
>>>
>>> I know of HW which treats "XBGR" with AFBC as a 3-component format,
>>> which isn't correct but can easily lead to confusion and
>>> incompatibility.
>>
>> Seems it's not the case here, at least for the G12A SoC family.
> 
> That's good :-)
> 
>>
>>>
>>>> For interoperability I'll understand recommending a minimal set
>>>> of modifiers and formats. But here, each platform is also limited
>>>> by it's GPU capabilites aswell.
>>>>
>>>
>>> The (Arm) GPUs support ABGR ordering, so if everyone sticks to that we
>>> can make sure everything's nice and compatible (until someone turns up
>>> with HW which _doesn't_ support that ordering).
>>
>> This is not clean enough in the https://www.kernel.org/doc/html/latest/gpu/afbc.html
>> document. Since ARM is in control of the renderers, saying AFBC does _not_
>> support another components format as ABGR ordering in all the
>> OpenGL ES/Vulkan implementations, it would be clear we couldn't render
>> anything using AFBC with ARGB.
>> But we hit the closed-source/closed-specifications here again.
>>
> 
> I didn't really understand the middle sentence.
> 
> I know and understand that the "closed-ness" is a problem. The page
> you linked was an initial attempt at making a clear, public
> specification.
> 
> What I need to be clear about, though, is that it describes _only_
> cases where DRM fourcc + AFBC modifier are used. I don't think there's
> any sane way to apply it to other APIs, because the formats are
> described differently, and the "leeway" allowed for doing things
> "under-the-hood" is very different.

Indeed

> 
>>>
>>>> Limiting to ABGR8888 would discard like every non-Android renderers,
>>>> using AFBC, I'm not sure it's the kernels driver's responsibility.
>>>>
>>>
>>> It prevents renderers with hard-coded pixel formats, perhaps. But
>>> those are already fragile by nature, surely?
>>
>> Well, except Android, all the other renderers uses ARGB8888/XRGB8888,
>> as fixed pixel format, which is quite a large amount of code.
>>
> 
> I think whether that matters or not really depends on which graphics
> APIs you're referring to. IMO it's inevitable that modifiers don't
> simply "drop in" everywhere. The kernel API allows you to query what's
> supported and pick that.

Sure, we'll need to add an extra layer to discover the GL API capabilities
vs the DRM Display driver capabilities in term of fourcc+modifiers at some point.
This may be an goal for the liboutput library !

Thanks,
Neil

> 
> Thanks,
> -Brian
> 
>>
>> Anyway, thanks for these technical clarifications, it makes things
>> much more clearer.
>>
>> Neil
>>
>>>
>>> Cheers,
>>> -Brian
>>>
>>>>>
>>>>> Thus, DRM_FORMAT_ABGR, DRM_FORMAT_BGR should only be allowed.
>>>>>> +		line_stride = ((priv->viu.osd1_width << 5) + 127) >> 7;
>>>>>> +		break;
>>>>>> +	}
>>>>>> +
>>>>>> +	return ((line_stride + 1) >> 1) << 1;
>>>>>> +}
>>>>>> +
>>>>>>  static void meson_plane_atomic_update(struct drm_plane *plane,
>>>>>>  				      struct drm_plane_state *old_state)
>>>>>>  {
>>>>
>>>> [...]
>>>>
>>>>>>  
>>>>>> +static bool meson_plane_format_mod_supported(struct drm_plane *plane,
>>>>>> +					     u32 format, u64 modifier)
>>>>>> +{
>>>>>> +	struct meson_plane *meson_plane = to_meson_plane(plane);
>>>>>> +	struct meson_drm *priv = meson_plane->priv;
>>>>>> +	int i;
>>>>>> +
>>>>>> +	if (modifier == DRM_FORMAT_MOD_INVALID)
>>>>>> +		return false;
>>>>>> +
>>>>>> +	if (modifier == DRM_FORMAT_MOD_LINEAR)
>>>>>> +		return true;
>>>>>> +
>>>>>> +	if (!meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXM) &&
>>>>>> +	    !meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A))
>>>>>> +		return false;
>>>>>> +
>>>>>> +	if (modifier & ~DRM_FORMAT_MOD_ARM_AFBC(MESON_MOD_AFBC_VALID_BITS))
>>>>>> +		return false;
>>>>>> +
>>>>>> +	for (i = 0 ; i < plane->modifier_count ; ++i)
>>>>>> +		if (plane->modifiers[i] == modifier)
>>>>>> +			break;
>>>>>> +
>>>>>> +	if (i == plane->modifier_count) {
>>>>>> +		DRM_DEBUG_KMS("Unsupported modifier\n");
>>>>>> +		return false;
>>>>>> +	}
>>>>
>>>> I can add a warn_once here, would it be enough ?
>>>>
>>>>>> +
>>>>>> +	if (priv->afbcd.ops && priv->afbcd.ops->supported_fmt)
>>>>>> +		return priv->afbcd.ops->supported_fmt(modifier, format);
>>>>>> +
>>>>>> +	DRM_DEBUG_KMS("AFBC Unsupported\n");
>>>>>> +	return false;
>>>>>> +}
>>>>>> +
>>>>>>  static const struct drm_plane_funcs meson_plane_funcs = {
>>>>>>  	.update_plane		= drm_atomic_helper_update_plane,
>>>>>>  	.disable_plane		= drm_atomic_helper_disable_plane,
>>>>>> @@ -353,6 +457,7 @@ static const struct drm_plane_funcs meson_plane_funcs = {
>>>>>>  	.reset			= drm_atomic_helper_plane_reset,
>>>>>>  	.atomic_duplicate_state = drm_atomic_helper_plane_duplicate_state,
>>>>>>  	.atomic_destroy_state	= drm_atomic_helper_plane_destroy_state,
>>>>>> +	.format_mod_supported   = meson_plane_format_mod_supported,
>>>>>>  };
>>>>>>  
>>>>>>  static const uint32_t supported_drm_formats[] = {
>>>>>> @@ -364,10 +469,53 @@ static const uint32_t supported_drm_formats[] = {
>>>>>>  	DRM_FORMAT_RGB565,
>>>>>>  };
>>>>>>  
>>>>>> +static const uint64_t format_modifiers_afbc_gxm[] = {
>>>>>> +	DRM_FORMAT_MOD_ARM_AFBC(AFBC_FORMAT_MOD_BLOCK_SIZE_16x16 |
>>>>>> +				AFBC_FORMAT_MOD_SPARSE |
>>>>>> +				AFBC_FORMAT_MOD_YTR),
>>>>>> +	/* SPLIT mandates SPARSE, RGB modes mandates YTR */
>>>>>> +	DRM_FORMAT_MOD_ARM_AFBC(AFBC_FORMAT_MOD_BLOCK_SIZE_16x16 |
>>>>>> +				AFBC_FORMAT_MOD_YTR |
>>>>>> +				AFBC_FORMAT_MOD_SPARSE |
>>>>>> +				AFBC_FORMAT_MOD_SPLIT),
>>>>>> +	DRM_FORMAT_MOD_LINEAR,
>>>>>> +	DRM_FORMAT_MOD_INVALID,
>>>>>> +};
>>>>>> +
>>>>>> +static const uint64_t format_modifiers_afbc_g12a[] = {
>>>>>> +	/*
>>>>>> +	 * - TOFIX Support AFBC modifiers for YUV formats (16x16 + TILED)
>>>>>> +	 * - AFBC_FORMAT_MOD_YTR is mandatory since we only support RGB
>>>>>> +	 * - SPLIT is mandatory for performances reasons when in 16x16
>>>>>> +	 *   block size
>>>>>> +	 * - 32x8 block size + SPLIT is mandatory with 4K frame size
>>>>>> +	 *   for performances reasons
>>>>>> +	 */
>>>>>> +	DRM_FORMAT_MOD_ARM_AFBC(AFBC_FORMAT_MOD_BLOCK_SIZE_16x16 |
>>>>>> +				AFBC_FORMAT_MOD_YTR |
>>>>>> +				AFBC_FORMAT_MOD_SPARSE |
>>>>>> +				AFBC_FORMAT_MOD_SPLIT),
>>>>>> +	DRM_FORMAT_MOD_ARM_AFBC(AFBC_FORMAT_MOD_BLOCK_SIZE_32x8 |
>>>>>> +				AFBC_FORMAT_MOD_YTR |
>>>>>> +				AFBC_FORMAT_MOD_SPARSE),
>>>>>> +	DRM_FORMAT_MOD_ARM_AFBC(AFBC_FORMAT_MOD_BLOCK_SIZE_32x8 |
>>>>>> +				AFBC_FORMAT_MOD_YTR |
>>>>>> +				AFBC_FORMAT_MOD_SPARSE |
>>>>>> +				AFBC_FORMAT_MOD_SPLIT),
>>>>>> +	DRM_FORMAT_MOD_LINEAR,
>>>>>> +	DRM_FORMAT_MOD_INVALID,
>>>>>> +};
>>>>>> +
>>>>>> +static const uint64_t format_modifiers_default[] = {
>>>>>> +	DRM_FORMAT_MOD_LINEAR,
>>>>>> +	DRM_FORMAT_MOD_INVALID,
>>>>>> +};
>>>>>> +
>>>>>>  int meson_plane_create(struct meson_drm *priv)
>>>>>>  {
>>>>>>  	struct meson_plane *meson_plane;
>>>>>>  	struct drm_plane *plane;
>>>>>> +	const uint64_t *format_modifiers = format_modifiers_default;
>>>>>>  
>>>>>>  	meson_plane = devm_kzalloc(priv->drm->dev, sizeof(*meson_plane),
>>>>>>  				   GFP_KERNEL);
>>>>>> @@ -377,11 +525,16 @@ int meson_plane_create(struct meson_drm *priv)
>>>>>>  	meson_plane->priv = priv;
>>>>>>  	plane = &meson_plane->base;
>>>>>>  
>>>>>> +	if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXM))
>>>>>> +		format_modifiers = format_modifiers_afbc_gxm;
>>>>>> +	else if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A))
>>>>>> +		format_modifiers = format_modifiers_afbc_g12a;
>>>>>> +
>>>>>>  	drm_universal_plane_init(priv->drm, plane, 0xFF,
>>>>>>  				 &meson_plane_funcs,
>>>>>>  				 supported_drm_formats,
>>>>>>  				 ARRAY_SIZE(supported_drm_formats),
>>>>>> -				 NULL,
>>>>>> +				 format_modifiers,
>>>>>>  				 DRM_PLANE_TYPE_PRIMARY, "meson_primary_plane");
>>>>>>  
>>>>>>  	drm_plane_helper_add(plane, &meson_plane_helper_funcs);
>>>>>> -- 
>>>>>> 2.22.0
>>>>
>>>> _______________________________________________
>>>> dri-devel mailing list
>>>> dri-devel@lists.freedesktop.org
>>>> https://lists.freedesktop.org/mailman/listinfo/dri-devel
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
