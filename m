Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B5D182ECB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 11:38:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mhIncC9OnTc9wLKBEXbkWuSufPsBo7yQemmhcAfG1H4=; b=WhgTXcDfo9V4RS
	eq8Yy5iJ5NPz4pilcUBN05UjcSexe3u09+3isuZwcVsspj3U3sgWPqsVBGi60vX7pWg+UEBVmoYFY
	AslxZJzdlqbIh7vnl+5zgPIVHEJeAePDPDymkX6F428adR5/tdcUk7e6GGmgdKPeEtB164kmdVrYa
	6Mrb8xUpYupJUPVQ6wJz7Id5zkmvCNxUkcNam5CaPro7pTWYTSF2N/C+Ptc9ym8qUexvT9PAKjLeW
	mvExluZMOzdCS3o/i5lavAWsUzljN6RQLWizzRdVAzdzjAkM9ruXffQxQSFzUdgm0480RNRdgm3V7
	pxBpBHDbtOSEgk7uRl5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huvvO-0002ge-FC; Tue, 06 Aug 2019 09:38:34 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huvvB-0002gC-Ai
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 09:38:22 +0000
Received: by mail-ed1-x542.google.com with SMTP id k8so81663853eds.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 02:38:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:mail-followup-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=lXyS+3a5qcDEyEF5LisBaQWkib6lVU2+K34nQBXYqTA=;
 b=VvVVfZAImggq+hv+uSLRfZNheEhVjvL+W5UVpgopska+tQ8Ns32KSgvyatrllNVad8
 8GXMBagHGD5RYCv4YfaSEOmkLu2BiH8CqUfZr0AvoqzTNY8/+hR40D4CrQXnT4khXUlf
 mxChHJ1ZYcKjNhkwkqyFKIV2AgxEs20G4jtB4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=lXyS+3a5qcDEyEF5LisBaQWkib6lVU2+K34nQBXYqTA=;
 b=gO2FJkVM44d25ZSVVzKzlp1faNeemUjqL0JrxvNEW18tAWNWeEiuC7hWxuqZN2jyXj
 48/B5MEz318hrj//KqrnFvSLdvKg+9fw2zaY0MrBsTO5cl/T9LqZz/ZABjmw4dTsBnY9
 xTMslDksiqLPt3AtkvroBPr5yiyUBvjd/2UgZyhxb02lGrFSMAJ0tQM2/BvQWO3aZXEl
 DqVY6kxwA6+QPzyuT9GyGgCmLzcc4KDF9fgb1iESO5kbV1QmbqLokK3ySETiLv+/ZWAK
 scy9AHfo6VTuTDNKHykBzOcP7NsYFVhhY0PfhKBHffpXhEbaYY+fQmV/BSn4raxXFfSo
 qiFw==
X-Gm-Message-State: APjAAAX0PfYGSF/jib4i8nDgi1Qbti/E3KvOTw69LX7Ox28RfHvvwIGQ
 f2ZvW1i1MiG2+hVC9FOvrvoe7A==
X-Google-Smtp-Source: APXvYqzqH6/bXZ26nVBNYTN2PzoLaN+S9OSr40dprY04zqgu8B5JxMBvPeFFL2JFhDIKf3hdZUQCxA==
X-Received: by 2002:a50:d79b:: with SMTP id w27mr2729896edi.126.1565084299696; 
 Tue, 06 Aug 2019 02:38:19 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id cw14sm14578958ejb.91.2019.08.06.02.38.18
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 02:38:18 -0700 (PDT)
Date: Tue, 6 Aug 2019 11:38:16 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 1/2] drm: add cache support for arm64
Message-ID: <20190806093816.GY7444@phenom.ffwll.local>
Mail-Followup-To: Christoph Hellwig <hch@lst.de>,
 Rob Clark <robdclark@gmail.com>, dri-devel@lists.freedesktop.org,
 Rob Clark <robdclark@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
 Allison Randal <allison@lohutok.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20190805211451.20176-1-robdclark@gmail.com>
 <20190806084821.GA17129@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190806084821.GA17129@lst.de>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_023821_373880_AFC138F5 
X-CRM114-Status: GOOD (  24.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rob Clark <robdclark@chromium.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Catalin Marinas <catalin.marinas@arm.com>, David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Sean Paul <sean@poorly.run>, Rob Clark <robdclark@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 06, 2019 at 10:48:21AM +0200, Christoph Hellwig wrote:
> This goes in the wrong direction.  drm_cflush_* are a bad API we need to
> get rid of, not add use of it.  The reason for that is two-fold:
> 
>  a) it doesn't address how cache maintaince actually works in most
>     platforms.  When talking about a cache we three fundamental operations:
> 
> 	1) write back - this writes the content of the cache back to the
> 	   backing memory
> 	2) invalidate - this remove the content of the cache
> 	3) write back + invalidate - do both of the above
> 
>  b) which of the above operation you use when depends on a couple of
>     factors of what you want to do with the range you do the cache
>     maintainance operations
> 
> Take a look at the comment in arch/arc/mm/dma.c around line 30 that
> explains how this applies to buffer ownership management.  Note that
> "for device" applies to "for userspace" in the same way, just that
> userspace then also needs to follow this protocol.  So the whole idea
> that random driver code calls random low-level cache maintainance
> operations (and use the non-specific term flush to make it all more
> confusing) is a bad idea.  Fortunately enough we have really good
> arch helpers for all non-coherent architectures (this excludes the
> magic i915 won't be covered by that, but that is a separate issue
> to be addressed later, and the fact that while arm32 did grew them
> very recently and doesn't expose them for all configs, which is easily
> fixable if needed) with arch_sync_dma_for_device and
> arch_sync_dma_for_cpu.  So what we need is to figure out where we
> have valid cases for buffer ownership transfer outside the DMA
> API, and build proper wrappers around the above function for that.
> My guess is it should probably be build to go with the iommu API
> as that is the only other way to map memory for DMA access, but
> if you have a better idea I'd be open to discussion.

I just read through all the arch_sync_dma_for_device/cpu functions and
none seem to use the struct *dev argument. Iirc you've said that's on the
way out?

That dev parameter is another holdup for the places where we do not yet
know what the new device will be (e.g. generic dma-buf exporters like
vgem). And sprinkling a fake dev or passing NULL is a bit silly.

Add a HAVE_ARCH_SYNC_DMA and the above refactor (assuming it's ok to roll
out everywhere) and we should indeed be able to use this. We still need to
have all the others for x86 and all that. Plus I guess we should roll out
the split into invalidate and flush.

The other bit is phys vs. virt addr confusion, but looks like standard if
phys_addr and you kmap underneath (except from drm_clflush_virt_range,
only used by i915).
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
