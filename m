Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEA031AE490
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 20:15:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VTTmfklmjRh6lrE4uBCUeTrPy4veY4lUdJxsaHi8Irc=; b=USvwfRpH2H5XZS
	BjXaJ4OyMlEYwazIX97mGxjRKZgpW44LW61AtZhJUETXc9yD7wDPyADaSEkLQoJkJvqcdCCNubhJ8
	mxYy/Dk4WBRdtlWf26LOmOUB2EHUhAIBaqUHqK5ksQrhGknDaW21aMllSQmi2A/9Rn08gdSoWXUQS
	dRvFzO50L6gFdSJVB2MvOkkbKyIkdKPDzxlNa0zUH5UWXFLYp0Q9q4DVYLqvQAB+7dmD89ipECyrT
	7c631kTStYg9mdsddjPMDuw/VwVY8cWCnKoLdIQRkKjW5YNztW//yIXl2s0zlOsSL2s/7Hq40mwkG
	kUytGt6ZwWel4HCOhgnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPVVq-00043h-E3; Fri, 17 Apr 2020 18:14:50 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPVVd-00041z-55
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 18:14:38 +0000
Received: by mail-oi1-x242.google.com with SMTP id o25so2828843oic.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 11:14:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8ZtGqnHCQ07/Ew2aP7iD3NcrezbX+AN+GwFRXoG4Q1s=;
 b=VITfARv4/usebH48Hls8WBXhMUQ4Gj5ghaLuDkZLWDvu69+TtDM4myloJYEz7HGLG+
 ctiSRBGjjHoQpLHe9ktSiWjtor4yQjJF8PlYuOTPZPpBh/G/DtZ2VrpUjQNhn4mcSqku
 gJpuiLS0Y/WtCI7eT8UESFjBUlyfLMPIUWc9Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8ZtGqnHCQ07/Ew2aP7iD3NcrezbX+AN+GwFRXoG4Q1s=;
 b=AY3qIsvQPPaCDrdWjxdvQcbMqgJeS3fpE8V60482W27svbWP1GwuqQWTdPmrKaarDz
 7xH9LEofSokrPAEEonDYcysGEHhvfWVAwVYUGe+kF0rgB895ph2WxGpMjv3w6zGZ6Esr
 TjQ8wQaF0Ds6/nIGBq9sM+Gv+XieD7b/pDeGleUIHCopx9LtuZjFQVAfj0vWDUBduzSx
 09ZQikB6sacaYVfx2fiC/SynyBXO728cfisuHy52TFBAk/y5YImTj5WCjxmOGVpUhiO2
 dDDUpYc3OL4ABpsLYzCF3V2kELVGdv1gl4N6IdEeUMVZi9Y2E2ex1ORTABEFwlwOf5OE
 Yfzw==
X-Gm-Message-State: AGi0PuZfxy1G/GRYMIoApU2KTEEITL1KLKwx48P34zvLN//5WkLFoh3c
 HZwZFlbUW/Uj9866kHvkmCaJXWWIs0A3Q8G8DDcMlw==
X-Google-Smtp-Source: APiQypL0F757LauIcBY+JcZyLMy1N/8zxDWB1hXSGdCXb1RXCdnwO8/JVGdpn2VXZvyWPj7TygkZGcDnOVapsu7/az8=
X-Received: by 2002:aca:4408:: with SMTP id r8mr3135520oia.14.1587147275820;
 Fri, 17 Apr 2020 11:14:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200416152500.29429-1-narmstrong@baylibre.com>
 <20200416152500.29429-2-narmstrong@baylibre.com>
 <20200417150729.GP3456981@phenom.ffwll.local>
 <65879a34-2e31-2908-3cc4-183f62c70ca0@baylibre.com>
In-Reply-To: <65879a34-2e31-2908-3cc4-183f62c70ca0@baylibre.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Fri, 17 Apr 2020 20:14:24 +0200
Message-ID: <CAKMK7uHXtcMFv6LpCEjTg5V-TXbkt2eLyitZoCfSc-nMnwJbuA@mail.gmail.com>
Subject: Re: [PATCH v5 1/8] drm/fourcc: Add modifier definitions for
 describing Amlogic Video Framebuffer Compression
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_111437_192058_96F96C3D 
X-CRM114-Status: GOOD (  23.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-amlogic@lists.infradead.org, Kevin Hilman <khilman@baylibre.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 17, 2020 at 6:05 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> On 17/04/2020 17:07, Daniel Vetter wrote:
> > On Thu, Apr 16, 2020 at 05:24:53PM +0200, Neil Armstrong wrote:
> >> Amlogic uses a proprietary lossless image compression protocol and format
> >> for their hardware video codec accelerators, either video decoders or
> >> video input encoders.
> >>
> >> It considerably reduces memory bandwidth while writing and reading
> >> frames in memory.
> >>
> >> The underlying storage is considered to be 3 components, 8bit or 10-bit
> >> per component, YCbCr 420, single plane :
> >> - DRM_FORMAT_YUV420_8BIT
> >> - DRM_FORMAT_YUV420_10BIT
> >>
> >> This modifier will be notably added to DMA-BUF frames imported from the V4L2
> >> Amlogic VDEC decoder.
> >>
> >> This introduces the basic layout composed of:
> >> - a body content organized in 64x32 superblocks with 4096 bytes per
> >>   superblock in default mode.
> >> - a 32 bytes per 128x64 header block
> >>
> >> This layout is tranferrable between Amlogic SoCs supporting this modifier.
> >>
> >> Tested-by: Kevin Hilman <khilman@baylibre.com>
> >> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> >> ---
> >>  include/uapi/drm/drm_fourcc.h | 39 +++++++++++++++++++++++++++++++++++
> >>  1 file changed, 39 insertions(+)
> >>
> >> diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.h
> >> index 8bc0b31597d8..a1b163a5641f 100644
> >> --- a/include/uapi/drm/drm_fourcc.h
> >> +++ b/include/uapi/drm/drm_fourcc.h
> >> @@ -309,6 +309,7 @@ extern "C" {
> >>  #define DRM_FORMAT_MOD_VENDOR_BROADCOM 0x07
> >>  #define DRM_FORMAT_MOD_VENDOR_ARM     0x08
> >>  #define DRM_FORMAT_MOD_VENDOR_ALLWINNER 0x09
> >> +#define DRM_FORMAT_MOD_VENDOR_AMLOGIC 0x0a
> >>
> >>  /* add more to the end as needed */
> >>
> >> @@ -804,6 +805,44 @@ extern "C" {
> >>   */
> >>  #define DRM_FORMAT_MOD_ALLWINNER_TILED fourcc_mod_code(ALLWINNER, 1)
> >>
> >> +/*
> >> + * Amlogic Video Framebuffer Compression modifiers
> >> + *
> >> + * Amlogic uses a proprietary lossless image compression protocol and format
> >> + * for their hardware video codec accelerators, either video decoders or
> >> + * video input encoders.
> >> + *
> >> + * It considerably reduces memory bandwidth while writing and reading
> >> + * frames in memory.
> >> + *
> >> + * The underlying storage is considered to be 3 components, 8bit or 10-bit
> >> + * per component YCbCr 420, single plane :
> >> + * - DRM_FORMAT_YUV420_8BIT
> >> + * - DRM_FORMAT_YUV420_10BIT
> >> + *
> >> + * The first 8 bits of the mode defines the layout, then the following 8 bits
> >> + * defines the options changing the layout.
> >
> > None of the modifiers you're doing seem to have these other 8 bits
> > defined anywhere. And it's not encoded in your modifiers. Can't we just
> > enumerate the ones we have/need and done?
>
> It's introduced in patch 5

Hm must have been blind, I overlooked the << 8 shift. I'd just do a
macro which encoders all fields into the modifier, instead of
hand-rolling this.

> >
> >> + *
> >> + * Not all combinations are valid, and different SoCs may support different
> >> + * combinations of layout and options.
> >> + */
> >> +#define DRM_FORMAT_MOD_AMLOGIC_FBC(__modes) fourcc_mod_code(AMLOGIC, __modes)
> >> +
> >> +/* Amlogic FBC Layouts */
> >> +#define DRM_FORMAT_MOD_AMLOGIC_FBC_LAYOUT_MASK              (0xf << 0)
> >> +
> >> +/*
> >> + * Amlogic FBC Basic Layout
> >> + *
> >> + * The basic layout is composed of:
> >> + * - a body content organized in 64x32 superblocks with 4096 bytes per
> >> + *   superblock in default mode.
> >> + * - a 32 bytes per 128x64 header block
> >> + *
> >> + * This layout is transferrable between Amlogic SoCs supporting this modifier.
> >> + */
> >> +#define DRM_FORMAT_MOD_AMLOGIC_FBC_LAYOUT_BASIC             (1ULL << 0)
> >
> > This is kinda confusing, since this isn't actually the modifier, but the
> > mode of the modifer. Generally what we do is only define the former, with
> > maybe some macros to extract stuff.
> >
> > To make this more mistake-proof I'd only define the full modifier code.
> > Definitely don't add a #define with the DRM_FORMAT_MOD_ prefix which isn't
> > actually a full modifier code.
>
> Exact, I'll use the same scheme as AFBC: AMLOGIC_FBC_FORMAT_ ...

Yup there's a number of parametried modifiers. As long as the stuff
you get from a DRM_FORMAT_MOD_ ... macro is a full modifier with
everything it should be all fine.
-Daniel

> Neil
>
> > -Daniel
> >
> >> +
> >>  #if defined(__cplusplus)
> >>  }
> >>  #endif
> >> --
> >> 2.22.0
> >>
> >
>
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel



-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
