Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5728D1B25BF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 14:17:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jbMCbkhbeoEVgnDmnkquC3NITMbF+haCAzrNCnGH9lg=; b=Cp4HHB/V567Zh2
	kuTba0W7IcJOK5JgzlzDsPWclj9YJ2spRB0vezfy3wTMWguaSmxhMjyjRjxPX/vUZuMIyII10xUkK
	WOvAI7YaBUbU5PaM4UdUi5ddD9oBLMM7zNxuxgYwPJl0CGZr1Qqj9X43/UikmsnqJg7xzZcZtCchU
	lqxooi53eI39EZZT+sIQBuDqfopHFSI1mIGGhboruHDQERr6PT9EbAfl3f1Ss2l5GETQRNjGU8fJl
	2gHlp6dB4a4t7iioVtK3Ypqfao4Ke1ox9xM0nQIGi5NHRAbmeU8EPRn0HEfTlt5l/IWMe23qTfM9P
	PfMAZDLBYFNWfJZ07UDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQrpe-00054G-Qg; Tue, 21 Apr 2020 12:16:54 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQrpW-00052u-0J
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 12:16:47 +0000
Received: by mail-wm1-x344.google.com with SMTP id u127so3432326wmg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 05:16:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=HlX9CDNaQn0ah+4R2AJ8wU9V1YmJ5LGY+YY4RdpAxCc=;
 b=kdV7+rdOTNmiPODp9VtKU4EpsM+j0zHeqYPxjmux0otaOS7b/KLp9tNgpGGH2KjNhE
 o1nuHapdqGwdeIK7l7EzC76Krca+ooeFj/9WU2im5j1/SdHjGluDrkALqRqWu/c7To61
 SbCPhDmUc+mKUw2JuqgyJ+cTndnRdCZ8LNAaE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=HlX9CDNaQn0ah+4R2AJ8wU9V1YmJ5LGY+YY4RdpAxCc=;
 b=Wf7bnVKiDgSvuljpQYhYQykEyEprvwnxvIbXYr1FSU3RjgVQ7JQg57hBvV2776N18h
 +lMRY4NwTFJrISTc2PSn/X9hpK6Oy1KznkNJfEBRCJ/PgsclZrT6u26feeS9oJ75NmuE
 oJDCWGDPQXSgFiziunPEEv6asyqmxr5090DfBuPnWcBsTopER/I2vEkJIDMoGcKGl1nB
 5RjpC3n2CeHFu/Mq2nTEf8k2luhfJ+R6+hGt7fVONSQKiob/7ZsXOg55xXymZCdk1HhJ
 AKoJDUVyJ2Xto9msBgVAGOgSZZ1Dma04CpKpkulpcrOvrQ5/VZW5LubTEN+czxfjPy8A
 588Q==
X-Gm-Message-State: AGi0PubKVJCzDSqP9/HNidJMkWICCv8uIjmMNHKmsIF2aqvXhAeawlsG
 vfGxMirr8EqBJL1Jopejv7BlfQ==
X-Google-Smtp-Source: APiQypLp+msXrwjQeDf59CmGpFmh2wKSOzgAEen1QE4ESErJgzU2kye0C9MqIxLWezadPjOfFk67bw==
X-Received: by 2002:a1c:9dd1:: with SMTP id g200mr4976643wme.82.1587471403637; 
 Tue, 21 Apr 2020 05:16:43 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id 91sm3728608wra.37.2020.04.21.05.16.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2020 05:16:43 -0700 (PDT)
Date: Tue, 21 Apr 2020 14:16:41 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v5 1/8] drm/fourcc: Add modifier definitions for
 describing Amlogic Video Framebuffer Compression
Message-ID: <20200421121641.GU3456981@phenom.ffwll.local>
Mail-Followup-To: Neil Armstrong <narmstrong@baylibre.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 linux-amlogic@lists.infradead.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Kevin Hilman <khilman@baylibre.com>
References: <20200416152500.29429-1-narmstrong@baylibre.com>
 <20200416152500.29429-2-narmstrong@baylibre.com>
 <20200417150729.GP3456981@phenom.ffwll.local>
 <65879a34-2e31-2908-3cc4-183f62c70ca0@baylibre.com>
 <CAKMK7uHXtcMFv6LpCEjTg5V-TXbkt2eLyitZoCfSc-nMnwJbuA@mail.gmail.com>
 <25f5ed14-2caf-6b2b-2cd4-3dbf0dd9a03c@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <25f5ed14-2caf-6b2b-2cd4-3dbf0dd9a03c@baylibre.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_051646_204781_B894A481 
X-CRM114-Status: GOOD (  15.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kevin Hilman <khilman@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>,
 linux-amlogic@lists.infradead.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 20, 2020 at 12:21:24PM +0200, Neil Armstrong wrote:
> On 17/04/2020 20:14, Daniel Vetter wrote:
> > On Fri, Apr 17, 2020 at 6:05 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
> >>
> >> On 17/04/2020 17:07, Daniel Vetter wrote:
> 
> [...]
> 
> > 
> > Yup there's a number of parametried modifiers. As long as the stuff
> > you get from a DRM_FORMAT_MOD_ ... macro is a full modifier with
> > everything it should be all fine.
> 
> Would something like that be ok ?
> 
> #define __fourcc_mod_amlogic_layout_mask 0xf
> #define __fourcc_mod_amlogic_options_shift 8
> #define __fourcc_mod_amlogic_options_mask 0xf
> 
> #define DRM_FORMAT_MOD_AMLOGIC_FBC(__layout, __options) \
> 	fourcc_mod_code(AMLOGIC, \
> 			((__layout) & __fourcc_mod_amlogic_layout_mask) | \
> 			((options) & __fourcc_mod_amlogic_options_mask \
> 			 << __fourcc_mod_amlogic_options_shift))
> 
> /* Amlogic FBC Layouts */
> 
> /* bla */
> #define AMLOGIC_FBC_LAYOUT_BASIC		(1ULL)
> 
> /* bla */
> #define AMLOGIC_FBC_LAYOUT_SCATTER		(2ULL)
> 
> /* Amlogic FBC Layout Options Bit Mask */
> 
> /* bla */
> #define AMLOGIC_FBC_OPTION_MEM_SAVING		(1ULL << 0)

lgtm.
-Daniel

> 
> Neil
> 
> > -Daniel
> > 
> >> Neil
> >>
> >>> -Daniel
> >>>
> >>>> +
> >>>>  #if defined(__cplusplus)
> >>>>  }
> >>>>  #endif
> >>>> --
> >>>> 2.22.0
> >>>>
> >>>
> >>
> >> _______________________________________________
> >> dri-devel mailing list
> >> dri-devel@lists.freedesktop.org
> >> https://lists.freedesktop.org/mailman/listinfo/dri-devel
> > 
> > 
> > 
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
