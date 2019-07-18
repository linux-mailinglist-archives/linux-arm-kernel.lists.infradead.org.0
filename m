Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C9B96D2ED
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 19:41:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VimWkxhPIVWDClxjXOrJCM5Wn1wzflEVZTEElw9mgng=; b=sbjyFpULarGiJf
	g9wyCQzDvujPhXN+7PjyOERZgzAvbR8Ji4S10XLQNhtIBErdDjWbiYj3em9H92+Ql2Ka1TbEQboze
	fMqcKpJYf3WsB2zZ03mraiW3j6yzi4yCrrPUfPcMCdhCTRNxBPEi7+Em07vhINM+vp8OwvG4RUOgQ
	Y7LdkLF7UDz+Q4hdYraTjZbLP1X85ZutEQWPykmy1oywtiftk8VQh2JZbF4QV5oIsPU41cqcf/I26
	eyEyARN5zpEvuH8ullL+PcRC4AIPZbF1uJQ8rYXYsR6W0SZaa2QKyJIjVuIsN8rRDokWlx8d5S5cf
	uzIsltUwrJ8Wkp/OuHug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoAP6-0002Rq-2T; Thu, 18 Jul 2019 17:41:16 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoAOt-0002Qv-2o
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 17:41:05 +0000
Received: by mail-yw1-xc41.google.com with SMTP id l124so12537239ywd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jul 2019 10:41:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=f6qnUMPXnkWnmFRN12Yc+hxpIH+RTY5J9v4Al67WV/s=;
 b=Qro9GngmvMiiB3Z6FB8mN1PItY3TPbrhYXja5d21Qp0UaqJYrDAhOXDuA8N5Fo3kIa
 N/EH4G9LKvGVKw0Jr1GostJiiZkK1Jf05d3cSCHzMnzCretOwL87CciZ9crkt+1zlGPx
 TYr3i4wNKa7NTaU52E/1d/ScA8X7LXyaEKAgtQHB0ayR3nF9ZsFk7TEEs0SaOBd6551u
 B2ZjnuFK80UNJRr2GEryped1kSagz7pGkfAR0veiRFxmKArE/75NYgRIAElrxXtxUuZq
 O9OH5gzsp52Ju2LqPSCZhUecFNXlZU1RqWHlCWMB9hz4EcwiA6rtVNalLeX64/osjrje
 oN1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=f6qnUMPXnkWnmFRN12Yc+hxpIH+RTY5J9v4Al67WV/s=;
 b=N79zTBmn2K9mJoNlC/NVkNs0g8dmXEcERtzkj0Lx4lZO8dfuEckZ11dQTvD3mbDtz3
 W+RbBOnq6fW12Aj1WNTMeY2Ut9/sd9nFbx3sMcomU3r12e6iJ8HiwtGk97hIq6yPpyIb
 kNFRSoxaxO3MyoLfSCJ7IRbRgNFlrimPNIz5EUljZKUKaBTcj3VZYqxh2yrdWRJO0vaj
 AaUXVwq+287essWJgp85YcFwOWgcZpyZcLEPOcJ2Nt1p9icJkGIydVf64ivt1RQJfPWX
 gUmRPBzPczvKR4fBQMwtfs0SPXGewNcyZRpcs2H18Tba+/Aqm7WuD5Ptwbz9H2XppYow
 Qs0w==
X-Gm-Message-State: APjAAAWji26QXBtYuAFGWc0O7ZSWkxgCiguDgPlAi0ZmXTZ/H5Qtdo1k
 mj67JyiWLkmdE1ywZPiawy3rbg==
X-Google-Smtp-Source: APXvYqwhUJ/qcdaunEQ7i8P6wOE1BiEEzgCQrUD7jLZZMpnXGfaFaEs1Xa1X+PNaBbyZ0+t1OVUIhg==
X-Received: by 2002:a81:6dd6:: with SMTP id
 i205mr28057860ywc.180.1563471661869; 
 Thu, 18 Jul 2019 10:41:01 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id w193sm1185400ywa.72.2019.07.18.10.41.01
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 10:41:01 -0700 (PDT)
Date: Thu, 18 Jul 2019 13:41:01 -0400
From: Sean Paul <sean@poorly.run>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v1 03/11] drm: drop uapi dependency from drm_vblank.h
Message-ID: <20190718174101.GF31819@art_vandelay>
References: <20190718161507.2047-1-sam@ravnborg.org>
 <20190718161507.2047-4-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190718161507.2047-4-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_104103_126652_BE915FDF 
X-CRM114-Status: GOOD (  15.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Liviu Dudau <Liviu.Dudau@arm.com>, dri-devel@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh@kernel.org>, Stefan Agner <stefan@agner.ch>,
 Maxime Ripard <maxime.ripard@bootlin.com>, CK Hu <ck.hu@mediatek.com>,
 Thierry Reding <treding@nvidia.com>, Daniel Vetter <daniel@ffwll.ch>,
 Chunming Zhou <david1.zhou@amd.com>, Jani Nikula <jani.nikula@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-mediatek@lists.infradead.org,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org, Boris Brezillon <bbrezillon@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Rob Clark <robdclark@gmail.com>,
 Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 18, 2019 at 06:14:59PM +0200, Sam Ravnborg wrote:
> drm_vblank.h included uapi/drm/drm.h.
> It turns out this include was not required - delete it.
> 
> Note: uapi/drm/drm.h is included indirect via drm_file.h,
> but there are no dependencies in drm_vblank.h so the removal
> is legit.
> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <maxime.ripard@bootlin.com>
> Cc: Sean Paul <sean@poorly.run>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: Stefan Agner <stefan@agner.ch>
> Cc: Thierry Reding <treding@nvidia.com>

Reviewed-by: Sean Paul <sean@poorly.run>

> ---
>  include/drm/drm_vblank.h | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/include/drm/drm_vblank.h b/include/drm/drm_vblank.h
> index e528bb2f659d..9fe4ba8bc622 100644
> --- a/include/drm/drm_vblank.h
> +++ b/include/drm/drm_vblank.h
> @@ -30,7 +30,6 @@
>  
>  #include <drm/drm_file.h>
>  #include <drm/drm_modes.h>
> -#include <uapi/drm/drm.h>
>  
>  struct drm_device;
>  struct drm_crtc;
> -- 
> 2.20.1
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
