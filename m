Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCD2F6D32D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 19:51:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rYu53DD0QFWgO62rXpsbSb0iarvLY3qq2AXGOpj37tU=; b=dIaCnHu6+7qvfZ
	hSqyyCDxoKCBwqiRcTKxlNwjtdGFg98dy6cW+6ROkCCEKYcPY3z3kUVCN+KJJqYkm7m8f9FkVUPGf
	M3v+X+AbAECsNFn84bdAZCDsn/D4MfplwjdHGgMUEZ/pMzyGkGceNORZW+c6oo+BFQHwcZjTEr1KE
	VO0SQaOMwACaAGa0EUROLd8fSpDPaPo8T4GnYFciP59iNM3NS9xHXgORlwOfRFW8qQ8um+9MaiSq4
	7beaxrPYCcAjE/VSKRsYtoybxntQ3XFBlQccj50Q9N5vnKGrdBb93+9/jX2G4X0HBTBr8h1rTd2N8
	7s/k/j2iVOHyQiZANCSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoAZA-00072l-23; Thu, 18 Jul 2019 17:51:40 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoAYn-0006xS-8w
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 17:51:20 +0000
Received: by mail-yw1-xc43.google.com with SMTP id q128so12558463ywc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jul 2019 10:51:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=JuMhT0HKuYtEVUP5Y0F3NAGMIA0qzfXKwQ9hRAJo24c=;
 b=ISg9avvWTVXWzSxqKUeFrRTKYVfv4fF0925BqDiHXTtvk3iY4OIh6eeGihXOX50rsW
 8jsqf1KErZ9Nf+penk0bECSvA9VmEgl0F/lEkji23HMzjwwGn4dIFA2N4LsfF1TSTg5g
 GpsCzq2Ea7XhzNNdwoTHlL3Suej/Q/do+C/CpHii3kTwjNkCyhKw3A0zikRASnbRAD2f
 84Q5390Uxu1lscTlFFn6wKXiqgCX6Uns0tvB8ndDCBljIZE3Muv0NBUV/QHpCxF/Cq0I
 Qd97YAXzkAZd/eWFvtqbj8bxf8En7ikjkM47oQGhbIxjBYvwdetc10uYcF9tQmgEu6jU
 sWpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=JuMhT0HKuYtEVUP5Y0F3NAGMIA0qzfXKwQ9hRAJo24c=;
 b=nEjop6do+6bNGqrk9upZpsic2pxUQT1lSB7tE/PJd5Yd2lONZ0uceqBTrhdTr2gZKQ
 OLErixR9kKYralE8B/8tE+8vR5CGfNboEjqnSl+n+AXYXRVlSH2sOksXs5PL+0mkpz9f
 BvqpBEAEDC1/JqK05PeSd+Acqp1b95/nHBq2PaDIdptX/3CXvT+K+zg+dZdGbGcYG4+n
 XFUhwxX1JvwqxhATAfE2ji85ofTYUtSKEjgTzsE/5Bpumlh++Tkuj/HhXVxYIfe/La5G
 iVDEQ+Wn0GdECG3G34dhcz2pSJtFMs6I5Y7SRP8fNHaBuy4YVcqYBEDjatXQV9qr/Lkp
 a0zw==
X-Gm-Message-State: APjAAAWKVZ7qtgoLk8bMUfvmgYcrb3++B9QDhpx+R90jFw9tCeL2ZSvq
 MNbND/7Wmy8/H/6t595GZ5yTbg==
X-Google-Smtp-Source: APXvYqwuJzFtzgQESxcgghViBQHUytRxwHQCDFElqyu/mxGd+RBXaA8FGHOYounVgJinWdQSQCtI/A==
X-Received: by 2002:a81:4ec7:: with SMTP id
 c190mr27962174ywb.160.1563472276256; 
 Thu, 18 Jul 2019 10:51:16 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id m124sm5282541ywb.13.2019.07.18.10.51.15
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 10:51:15 -0700 (PDT)
Date: Thu, 18 Jul 2019 13:51:15 -0400
From: Sean Paul <sean@poorly.run>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v1 06/11] drm: direct include of drm.h in drm_gem.c
Message-ID: <20190718175115.GI31819@art_vandelay>
References: <20190718161507.2047-1-sam@ravnborg.org>
 <20190718161507.2047-7-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190718161507.2047-7-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_105117_504671_7A5AC883 
X-CRM114-Status: GOOD (  15.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
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
Cc: David Airlie <airlied@linux.ie>, Liviu Dudau <Liviu.Dudau@arm.com>,
 dri-devel@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 Eric Anholt <eric@anholt.net>, Rob Herring <robh@kernel.org>,
 Stefan Agner <stefan@agner.ch>, Maxime Ripard <maxime.ripard@bootlin.com>,
 CK Hu <ck.hu@mediatek.com>, Thierry Reding <treding@nvidia.com>,
 Daniel Vetter <daniel@ffwll.ch>, Chunming Zhou <david1.zhou@amd.com>,
 Jani Nikula <jani.nikula@intel.com>,
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

On Thu, Jul 18, 2019 at 06:15:02PM +0200, Sam Ravnborg wrote:
> Do not rely on including drm.h from drm_file.h,
> as the include in drm_file.h will be dropped.
> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>

Reviewed-by: Sean Paul <sean@poorly.run>

> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <maxime.ripard@bootlin.com>
> Cc: Sean Paul <sean@poorly.run>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: Eric Anholt <eric@anholt.net>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Rob Herring <robh@kernel.org>
> ---
>  drivers/gpu/drm/drm_gem.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
> index e6c12c6ec728..243f43d70f42 100644
> --- a/drivers/gpu/drm/drm_gem.c
> +++ b/drivers/gpu/drm/drm_gem.c
> @@ -39,6 +39,7 @@
>  #include <linux/mem_encrypt.h>
>  #include <linux/pagevec.h>
>  
> +#include <drm/drm.h>
>  #include <drm/drm_device.h>
>  #include <drm/drm_drv.h>
>  #include <drm/drm_file.h>
> -- 
> 2.20.1
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
