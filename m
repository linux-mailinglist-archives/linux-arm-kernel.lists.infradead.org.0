Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B5EFD3C0C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 11:15:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S6YuuzPjyxQ/+0tZuPzJHCui/yFJYAX3VNwSeYrtlM8=; b=ctp3QRQOdP8UN5
	XxtCWTfVwk1sLyRZvl5txgYSlwiPmbJZMj3fLizkRUMl7V8ZmLrJlUzoVPPzArYyDFFFXvVw/5iIx
	1c3raaGia1rEqCyz4picwJutqQPdDyomgpBOBSf9LH4qs71Pg7g0ubrSO4e01drlHUUiWisDaSQFs
	Wdbjx/mCA8N6VsKe/1PfW50SeInirGYNu4GMvTrp/B8W0XWIWPvzDfqTSrIaLfWvui5AxRe417hZt
	zOsC6x8pkkslAFHMKm2X+KRNjV2N6oq6T9mqQWGQNaqx8Vfn7vohlsZq4ZehkU25rUMODdye+G9Mi
	BiuSFE4GX+NqIQ54lUXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIr0l-00013Y-Ah; Fri, 11 Oct 2019 09:14:59 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIr0a-00011a-IM
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 09:14:50 +0000
Received: by mail-wr1-x444.google.com with SMTP id y19so11033364wrd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 02:14:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=z5AlrJtjAfS1ielUAh8vti9F8Eok2uibliGPIuLiXGE=;
 b=BqKZAwJjVx0NXpn7O/5DwecRCpUKAeMI+81jSEfEi48AtxHBLGxMO3mh5nft8WJUsw
 0blRtkQ9rJ/J0PIiNylrTqCkViYF1XO4uxlBUriIxC41xoiJxgZXS/ct2912c7X2g5r6
 twxN8VhUITr18pUYU/5Pk4/cZIZmZE5c2twQjzoFnhpNj4sTgkaOxAU5h4ylOdyQuIbH
 2PfW4CWMb5fRh3f3SaUQTSvJoeuUch6hzHS1xJdBX6PJkinHfsQ/EPtL0w/tSNhUUsBX
 uLoxsquFmk7ED2Wwc9eZL3bd0jsi8KIFLg8fD9ajss8WWvO5sDxZ/Fh+VoD2jexEWikW
 zlww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=z5AlrJtjAfS1ielUAh8vti9F8Eok2uibliGPIuLiXGE=;
 b=g+B+TwxsPnAF8/19K5IUjHhZ8vsvqyBdgqGzagwmSW2eJE8wGqIzX4IQOkvo89WbJp
 +8jFq0CcZVlTnchRDKTZyYDyeJjtTVa1JYosrRWvU27O/jpMhSosAgfK3v0l1QVIgLGB
 FKdei8Tu5Ombt+dgVlNd/jFZ1+5exog9dpBBOhrTd0yXCjF7mQ4O4km3+yjswA94JWD7
 tZzJC6UfbJfXpsR9e5kOyeaWLEr4ALfmxi6+ckVJJrUgvem3V1nUvNd7KpgcK+J3WYfJ
 an/5xhZlX5tWyVH6x7NJ5/YOCUyN4vwRPEGwB35QSf6EhBQSwd1tQDzxt/ZdWlLhY3Ce
 LKGA==
X-Gm-Message-State: APjAAAWZHj2w1CZrgtT9fO32t8a5agyDzaLHzBSlklnEQNXj9hslAsnr
 yaghAXGZAkSG9ObC00rXfC4jBw==
X-Google-Smtp-Source: APXvYqyEX5a3bSSC8V1FquZbS3aVcfnedd5wBwA1wOTjoHxK8KCfBLLcW9/4wXxAELPdmP7w4pQUPQ==
X-Received: by 2002:adf:aacc:: with SMTP id i12mr12212142wrc.15.1570785284721; 
 Fri, 11 Oct 2019 02:14:44 -0700 (PDT)
Received: from [10.1.2.12] (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id v20sm8059247wml.26.2019.10.11.02.14.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 11 Oct 2019 02:14:44 -0700 (PDT)
Subject: Re: [PATCH 4/7] drm/meson: plane: add support for AFBC mode for OSD1
 plane
To: Brian Starkey <Brian.Starkey@arm.com>
References: <20191010092526.10419-1-narmstrong@baylibre.com>
 <20191010092526.10419-5-narmstrong@baylibre.com>
 <20191010132601.GA10110@arm.com>
 <44f1771f-d640-f23d-995f-7bfcadd213bc@baylibre.com>
 <20191011084108.i7lfh2d7asfmcdk4@DESKTOP-E1NTVVP.localdomain>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <c9d4f840-a3da-0f40-3a1c-c4aa522daf0f@baylibre.com>
Date: Fri, 11 Oct 2019 11:14:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191011084108.i7lfh2d7asfmcdk4@DESKTOP-E1NTVVP.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_021448_610949_23165C24 
X-CRM114-Status: GOOD (  31.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

Hi Brian,

On 11/10/2019 10:41, Brian Starkey wrote:
> Hi Neil,
> 
> On Thu, Oct 10, 2019 at 03:41:15PM +0200, Neil Armstrong wrote:
>> Hi Ayan,
>>
>> On 10/10/2019 15:26, Ayan Halder wrote:
>>> On Thu, Oct 10, 2019 at 11:25:23AM +0200, Neil Armstrong wrote:
>>>> This adds all the OSD configuration plumbing to support the AFBC decoders
>>>> path to display of the OSD1 plane.
>>>>
>>>> The Amlogic GXM and G12A AFBC decoders are integrated very differently.
>>>>
>>>> The Amlogic GXM has a direct output path to the OSD1 VIU pixel input,
>>>> because the GXM AFBC decoder seem to be a custom IP developed by Amlogic.
>>>>
>>>> On the other side, the Amlogic G12A AFBC decoder seems to be an external
>>>> IP that emit pixels on an AXI master hooked to a "Mali Unpack" block
>>>> feeding the OSD1 VIU pixel input.
>>>> This uses a weird "0x1000000" internal HW physical address on both
>>>> sides to transfer the pixels.
>>>>
>>>> For Amlogic GXM, the supported pixel formats are the same as the normal
>>>> linear OSD1 mode.
>>>>
>>>> On the other side, Amlogic added support for all AFBC v1.2 formats for
>>>> the G12A AFBC integration.
>>>>
>>>> For simplicity, we stick to the already supported formats for now.
>>>>
>>>> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
>>>> ---
>>>>  drivers/gpu/drm/meson/meson_crtc.c  |   2 +
>>>>  drivers/gpu/drm/meson/meson_drv.h   |   4 +
>>>>  drivers/gpu/drm/meson/meson_plane.c | 215 ++++++++++++++++++++++++----
>>>>  3 files changed, 190 insertions(+), 31 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/meson/meson_crtc.c b/drivers/gpu/drm/meson/meson_crtc.c
>>>> index 57ae1c13d1e6..d478fa232951 100644
>>>> --- a/drivers/gpu/drm/meson/meson_crtc.c
>>>> +++ b/drivers/gpu/drm/meson/meson_crtc.c
>>>> @@ -281,6 +281,8 @@ void meson_crtc_irq(struct meson_drm *priv)
>>>>  	if (priv->viu.osd1_enabled && priv->viu.osd1_commit) {
>>>>  		writel_relaxed(priv->viu.osd1_ctrl_stat,
>>>>  				priv->io_base + _REG(VIU_OSD1_CTRL_STAT));
>>>> +		writel_relaxed(priv->viu.osd1_ctrl_stat2,
>>>> +				priv->io_base + _REG(VIU_OSD1_CTRL_STAT2));
>>>>  		writel_relaxed(priv->viu.osd1_blk0_cfg[0],
>>>>  				priv->io_base + _REG(VIU_OSD1_BLK0_CFG_W0));
>>>>  		writel_relaxed(priv->viu.osd1_blk0_cfg[1],
>>>> diff --git a/drivers/gpu/drm/meson/meson_drv.h b/drivers/gpu/drm/meson/meson_drv.h
>>>> index 60f13c6f34e5..de25349be8aa 100644
>>>> --- a/drivers/gpu/drm/meson/meson_drv.h
>>>> +++ b/drivers/gpu/drm/meson/meson_drv.h
>>>> @@ -53,8 +53,12 @@ struct meson_drm {
>>>>  		bool osd1_enabled;
>>>>  		bool osd1_interlace;
>>>>  		bool osd1_commit;
>>>> +		bool osd1_afbcd;
>>>>  		uint32_t osd1_ctrl_stat;
>>>> +		uint32_t osd1_ctrl_stat2;
>>>>  		uint32_t osd1_blk0_cfg[5];
>>>> +		uint32_t osd1_blk1_cfg4;
>>>> +		uint32_t osd1_blk2_cfg4;
>>>>  		uint32_t osd1_addr;
>>>>  		uint32_t osd1_stride;
>>>>  		uint32_t osd1_height;
>>>> diff --git a/drivers/gpu/drm/meson/meson_plane.c b/drivers/gpu/drm/meson/meson_plane.c
>>>> index 5e798c276037..412941aa8402 100644
>>>> --- a/drivers/gpu/drm/meson/meson_plane.c
>>>> +++ b/drivers/gpu/drm/meson/meson_plane.c
>>>> @@ -23,6 +23,7 @@
>>>>  #include "meson_plane.h"
>>>>  #include "meson_registers.h"
>>>>  #include "meson_viu.h"
>>>> +#include "meson_osd_afbcd.h"
>>>>  
>>>>  /* OSD_SCI_WH_M1 */
>>>>  #define SCI_WH_M1_W(w)			FIELD_PREP(GENMASK(28, 16), w)
>>>> @@ -92,12 +93,38 @@ static int meson_plane_atomic_check(struct drm_plane *plane,
>>>>  						   false, true);
>>>>  }
>>>>  
>>>> +#define MESON_MOD_AFBC_VALID_BITS (AFBC_FORMAT_MOD_BLOCK_SIZE_16x16 |	\
>>>> +				   AFBC_FORMAT_MOD_BLOCK_SIZE_32x8 |	\
>>>> +				   AFBC_FORMAT_MOD_YTR |		\
>>>> +				   AFBC_FORMAT_MOD_SPARSE |		\
>>>> +				   AFBC_FORMAT_MOD_SPLIT)
>>>> +
>>>>  /* Takes a fixed 16.16 number and converts it to integer. */
>>>>  static inline int64_t fixed16_to_int(int64_t value)
>>>>  {
>>>>  	return value >> 16;
>>>>  }
>>>>  
>>>> +static u32 meson_g12a_afbcd_line_stride(struct meson_drm *priv)
>>>> +{
>>>> +	u32 line_stride = 0;
>>>> +
>>>> +	switch (priv->afbcd.format) {
>>>> +	case DRM_FORMAT_RGB565:
>>>> +		line_stride = ((priv->viu.osd1_width << 4) + 127) >> 7;
>>>> +		break;
>>>> +	case DRM_FORMAT_RGB888:
>>>> +	case DRM_FORMAT_XRGB8888:
>>>> +	case DRM_FORMAT_ARGB8888:
>>>> +	case DRM_FORMAT_XBGR8888:
>>>> +	case DRM_FORMAT_ABGR8888:
>>> Please have a look at
>>> https://www.kernel.org/doc/html/latest/gpu/afbc.html for our
>>> recommendation. We suggest that *X* formats are avoided.
>>>
>>> Also, for interoperability and maximum compression efficiency (with
>>> AFBC_FORMAT_MOD_YTR), we suggest the following order :-
>>>
>>>         Component 0: R
>>>         Component 1: G
>>>         Component 2: B
>>>         Component 3: A (if available)
>>
>>
>> Sorry I don't understand, you ask me to limit AFBC to ABGR8888 ?
>>
>> But why if the HW (GPU and DPU) is capable of ?
> 
> AFBC doesn't have an in-memory component order in the traditional
> sense (i.e. a bit-position to component mapping), so Arm
> have decided to define the convention that DRM_FORMAT_ABGR8888
> represents the AFBC layout with R in component 0.

In this implementation, we handle the ARGB/ABGR as the same mode
since the AFBC can only represent the layout as "ABGR" anyway.

> 
> Are you sure the GPU supports other orders? I think any Arm driver
> will only be producing DRM_FORMATs with "BGR" order e.g. ABGR888>
> I'm not convinced the GPU HW actually supports any other order, but
> it's all rather confusing with texture swizzling. What I can tell you
> for sure is that it _does_ support BGR order (in DRM naming
> convention).

Well, since the Bifrost Mali blobs are closed-source and delivered
by licensees, it's hard to define what is supported from a closed
GPU HW, closed SW implementation to a closed pixel format implementation.

You'll have to tell us if the closed libMali handling AFBC would accept
ARGB8888 as format to render with AFBC enabled, if not you're right
I'll discard XRGB8888/ARGB8888 for AFBC buffers completely.

But it the libMali chooses tt generate an ARGB8888 buffer whatever
ARGB8888/XRGB8888/ABGR888/XBGR888 is asked, then no I'll keep it that way.

BTW I kept the vendor implementation here, which may be wrong but since
they have the AFBC IP license and Mali Bifrost GPU license...

> 
> If you do choose to expose orders other than BGR/ABGR, then you should
> certainly not allow YTR to be used with any orders other than
> BGR/ABGR. The AFBC spec defines YTR as using R in component 0, which
> Arm has defined as DRM_FORMAT_*BGR* (component 0 in LE LSBs).
> 

The MAFBC_FMT_RGBA8888 pixel format is defined in the AFBC decoder,
which seems to be an ARM IP, the registers documentation is in the
SoC datasheet at [1] and the formats bits are defined in the patch 3 at [2].

So it seems the decoder handles only a single type for 32bit RGB buffer
format, as Amlogic names it MAFBC_FMT_RGBA8888

For XRGB8888/XBGR8888 we simply "replace" the A component with a fixed
value in the pixel generator.

[1] https://dl.khadas.com/Hardware/VIM3/Datasheet/S905D3_datasheet_0.2_Wesion.pdf page 772
[2] https://patchwork.freedesktop.org/patch/335199/?series=67832&rev=1

>>
>> Isn't it an userspace choice ? I understand XRGB8888 is a waste
>> of memory space and compression efficiency, but this is not the
>> kernel driver's to decide this, right ?
>>
> 
> As long as it's agreed and understood what XRGB8888 means. It must be
> an AFBC bitstream with 4-components, with B in component 0, G in
> component 1, R in component 2 and 8 wasted bits in component 3.

Yes, but this is something userspace must assume, and it's already
wasted in the linear XRGB8888 format anyway.

> 
> I know of HW which treats "XBGR" with AFBC as a 3-component format,
> which isn't correct but can easily lead to confusion and
> incompatibility.

Seems it's not the case here, at least for the G12A SoC family.

> 
>> For interoperability I'll understand recommending a minimal set
>> of modifiers and formats. But here, each platform is also limited
>> by it's GPU capabilites aswell.
>>
> 
> The (Arm) GPUs support ABGR ordering, so if everyone sticks to that we
> can make sure everything's nice and compatible (until someone turns up
> with HW which _doesn't_ support that ordering).

This is not clean enough in the https://www.kernel.org/doc/html/latest/gpu/afbc.html
document. Since ARM is in control of the renderers, saying AFBC does _not_
support another components format as ABGR ordering in all the
OpenGL ES/Vulkan implementations, it would be clear we couldn't render
anything using AFBC with ARGB.
But we hit the closed-source/closed-specifications here again.

> 
>> Limiting to ABGR8888 would discard like every non-Android renderers,
>> using AFBC, I'm not sure it's the kernels driver's responsibility.
>>
> 
> It prevents renderers with hard-coded pixel formats, perhaps. But
> those are already fragile by nature, surely?

Well, except Android, all the other renderers uses ARGB8888/XRGB8888,
as fixed pixel format, which is quite a large amount of code.


Anyway, thanks for these technical clarifications, it makes things
much more clearer.

Neil

> 
> Cheers,
> -Brian
> 
>>>
>>> Thus, DRM_FORMAT_ABGR, DRM_FORMAT_BGR should only be allowed.
>>>> +		line_stride = ((priv->viu.osd1_width << 5) + 127) >> 7;
>>>> +		break;
>>>> +	}
>>>> +
>>>> +	return ((line_stride + 1) >> 1) << 1;
>>>> +}
>>>> +
>>>>  static void meson_plane_atomic_update(struct drm_plane *plane,
>>>>  				      struct drm_plane_state *old_state)
>>>>  {
>>
>> [...]
>>
>>>>  
>>>> +static bool meson_plane_format_mod_supported(struct drm_plane *plane,
>>>> +					     u32 format, u64 modifier)
>>>> +{
>>>> +	struct meson_plane *meson_plane = to_meson_plane(plane);
>>>> +	struct meson_drm *priv = meson_plane->priv;
>>>> +	int i;
>>>> +
>>>> +	if (modifier == DRM_FORMAT_MOD_INVALID)
>>>> +		return false;
>>>> +
>>>> +	if (modifier == DRM_FORMAT_MOD_LINEAR)
>>>> +		return true;
>>>> +
>>>> +	if (!meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXM) &&
>>>> +	    !meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A))
>>>> +		return false;
>>>> +
>>>> +	if (modifier & ~DRM_FORMAT_MOD_ARM_AFBC(MESON_MOD_AFBC_VALID_BITS))
>>>> +		return false;
>>>> +
>>>> +	for (i = 0 ; i < plane->modifier_count ; ++i)
>>>> +		if (plane->modifiers[i] == modifier)
>>>> +			break;
>>>> +
>>>> +	if (i == plane->modifier_count) {
>>>> +		DRM_DEBUG_KMS("Unsupported modifier\n");
>>>> +		return false;
>>>> +	}
>>
>> I can add a warn_once here, would it be enough ?
>>
>>>> +
>>>> +	if (priv->afbcd.ops && priv->afbcd.ops->supported_fmt)
>>>> +		return priv->afbcd.ops->supported_fmt(modifier, format);
>>>> +
>>>> +	DRM_DEBUG_KMS("AFBC Unsupported\n");
>>>> +	return false;
>>>> +}
>>>> +
>>>>  static const struct drm_plane_funcs meson_plane_funcs = {
>>>>  	.update_plane		= drm_atomic_helper_update_plane,
>>>>  	.disable_plane		= drm_atomic_helper_disable_plane,
>>>> @@ -353,6 +457,7 @@ static const struct drm_plane_funcs meson_plane_funcs = {
>>>>  	.reset			= drm_atomic_helper_plane_reset,
>>>>  	.atomic_duplicate_state = drm_atomic_helper_plane_duplicate_state,
>>>>  	.atomic_destroy_state	= drm_atomic_helper_plane_destroy_state,
>>>> +	.format_mod_supported   = meson_plane_format_mod_supported,
>>>>  };
>>>>  
>>>>  static const uint32_t supported_drm_formats[] = {
>>>> @@ -364,10 +469,53 @@ static const uint32_t supported_drm_formats[] = {
>>>>  	DRM_FORMAT_RGB565,
>>>>  };
>>>>  
>>>> +static const uint64_t format_modifiers_afbc_gxm[] = {
>>>> +	DRM_FORMAT_MOD_ARM_AFBC(AFBC_FORMAT_MOD_BLOCK_SIZE_16x16 |
>>>> +				AFBC_FORMAT_MOD_SPARSE |
>>>> +				AFBC_FORMAT_MOD_YTR),
>>>> +	/* SPLIT mandates SPARSE, RGB modes mandates YTR */
>>>> +	DRM_FORMAT_MOD_ARM_AFBC(AFBC_FORMAT_MOD_BLOCK_SIZE_16x16 |
>>>> +				AFBC_FORMAT_MOD_YTR |
>>>> +				AFBC_FORMAT_MOD_SPARSE |
>>>> +				AFBC_FORMAT_MOD_SPLIT),
>>>> +	DRM_FORMAT_MOD_LINEAR,
>>>> +	DRM_FORMAT_MOD_INVALID,
>>>> +};
>>>> +
>>>> +static const uint64_t format_modifiers_afbc_g12a[] = {
>>>> +	/*
>>>> +	 * - TOFIX Support AFBC modifiers for YUV formats (16x16 + TILED)
>>>> +	 * - AFBC_FORMAT_MOD_YTR is mandatory since we only support RGB
>>>> +	 * - SPLIT is mandatory for performances reasons when in 16x16
>>>> +	 *   block size
>>>> +	 * - 32x8 block size + SPLIT is mandatory with 4K frame size
>>>> +	 *   for performances reasons
>>>> +	 */
>>>> +	DRM_FORMAT_MOD_ARM_AFBC(AFBC_FORMAT_MOD_BLOCK_SIZE_16x16 |
>>>> +				AFBC_FORMAT_MOD_YTR |
>>>> +				AFBC_FORMAT_MOD_SPARSE |
>>>> +				AFBC_FORMAT_MOD_SPLIT),
>>>> +	DRM_FORMAT_MOD_ARM_AFBC(AFBC_FORMAT_MOD_BLOCK_SIZE_32x8 |
>>>> +				AFBC_FORMAT_MOD_YTR |
>>>> +				AFBC_FORMAT_MOD_SPARSE),
>>>> +	DRM_FORMAT_MOD_ARM_AFBC(AFBC_FORMAT_MOD_BLOCK_SIZE_32x8 |
>>>> +				AFBC_FORMAT_MOD_YTR |
>>>> +				AFBC_FORMAT_MOD_SPARSE |
>>>> +				AFBC_FORMAT_MOD_SPLIT),
>>>> +	DRM_FORMAT_MOD_LINEAR,
>>>> +	DRM_FORMAT_MOD_INVALID,
>>>> +};
>>>> +
>>>> +static const uint64_t format_modifiers_default[] = {
>>>> +	DRM_FORMAT_MOD_LINEAR,
>>>> +	DRM_FORMAT_MOD_INVALID,
>>>> +};
>>>> +
>>>>  int meson_plane_create(struct meson_drm *priv)
>>>>  {
>>>>  	struct meson_plane *meson_plane;
>>>>  	struct drm_plane *plane;
>>>> +	const uint64_t *format_modifiers = format_modifiers_default;
>>>>  
>>>>  	meson_plane = devm_kzalloc(priv->drm->dev, sizeof(*meson_plane),
>>>>  				   GFP_KERNEL);
>>>> @@ -377,11 +525,16 @@ int meson_plane_create(struct meson_drm *priv)
>>>>  	meson_plane->priv = priv;
>>>>  	plane = &meson_plane->base;
>>>>  
>>>> +	if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXM))
>>>> +		format_modifiers = format_modifiers_afbc_gxm;
>>>> +	else if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A))
>>>> +		format_modifiers = format_modifiers_afbc_g12a;
>>>> +
>>>>  	drm_universal_plane_init(priv->drm, plane, 0xFF,
>>>>  				 &meson_plane_funcs,
>>>>  				 supported_drm_formats,
>>>>  				 ARRAY_SIZE(supported_drm_formats),
>>>> -				 NULL,
>>>> +				 format_modifiers,
>>>>  				 DRM_PLANE_TYPE_PRIMARY, "meson_primary_plane");
>>>>  
>>>>  	drm_plane_helper_add(plane, &meson_plane_helper_funcs);
>>>> -- 
>>>> 2.22.0
>>
>> _______________________________________________
>> dri-devel mailing list
>> dri-devel@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/dri-devel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
