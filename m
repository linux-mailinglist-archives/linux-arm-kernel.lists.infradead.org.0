Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8E116D314
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 19:49:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RqseMqiL97mvEGH9DTUuUP/5+xQPlQBjqdD0tosAh8w=; b=GWU0Y+gZfBosLe
	XxZSi3qRUGMQ7h/4G7O6zI4GFH+QMmePsLpZvV7XMZuUVJALzXLmFaclZ7hptof8uqrfdo7MaJ6U+
	Qa6QP174kctj22rLYQIfcmlhjP7lOrx9QFkHOaVEmbvUzQkPFb9GAr0cntJTxli6k1G9xm2kYzkGg
	bKXW6h017qFkEwIW+VcH8pM38DgQ6Hhy5q3Wi7HU6NTitDzdzQ5KPP0+OG4tnk98KT979GCSK7CjM
	c/9c5jeS0licUt0CDKB7zGKUC399PFdiXWk8jqMdnAQYFZ5BMqGNb9paPOaTQRG0i03HM3bg60zNo
	qsFtG/Brih0+aNOUI8vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoAWt-0005CU-V6; Thu, 18 Jul 2019 17:49:20 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoAWh-0005Ap-Cq
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 17:49:08 +0000
Received: by mail-yw1-xc42.google.com with SMTP id n205so12535126ywb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jul 2019 10:49:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=TcHEhgeLg4wCyvAuCh277bKvKMlAO9sX0vLEQ8gbuaw=;
 b=H6wkH+Ja6Vv25R0kLDO3V4VVaS5ztNs9UcAubxqNI+3MthILN+2PFYat2u8m43w84T
 dAl/y87QY25XTUsQar+5BsMFrCcgZZr2GZBLhuqyQHujiIFXoQSWk06OtnL5c36L74TC
 VxBLEPjDdkPgpMEK7dFUqwRJj+fvhBAX6RIVfav3Jv8IKNZRSO4hEMAaQJ+tiTHT8GCC
 58uDhvWDf0K5kwRrrRpoDq/1sHOiikD5rNc1/JfuBN9AtOcD6T+9q+hREa6IMDY3J47U
 XJ1yiFscnRKTlmsHD1sW4ywez1baijXdAhIcjPWMvudB7QJGXHuaGaZUZArhWVOxGrjq
 WC9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=TcHEhgeLg4wCyvAuCh277bKvKMlAO9sX0vLEQ8gbuaw=;
 b=fI/Owj5yHI1e6RBU3p1/tHJZiHO/lBr+znBaHG56dD26FRknBvZp2XCNR+Poxsphq9
 xh8Hzrh6pcUXkY7Y+gyXRD8CucPBP7d/c0K1joon8n7wQjd3HqSLP3SJq9QNij/WefF5
 b9QtO8713XZOtsa9Q/uJIJufkuxr7/F3JJnJhNEljmv/MzOs39GyguMopZWsCxpIhdCC
 oXr9U1jb0BvQlbqy2ePMMOKZOAnai9rY2jb2KSDwsNf9E2UV8t/GCJWiNO57YidBRlEC
 3Gxl7PAZGKYbEAWgY6BMyaM8dlmGvIR5OlRP3SdCORyye60LhQLMkzt0qoIlCCghfqeP
 ghtg==
X-Gm-Message-State: APjAAAXEvYYI+32ZvRVTnDtLqA0/pc6rB7xmr8Myl8ZHyHfktSighTYE
 JbECKFsb0yumiqkDuBWidOpwLQ==
X-Google-Smtp-Source: APXvYqx6Uslwcgt6FXtPTtAmiDT6PsPZOZfSYSrx+5nJhVWwXm/mkQxhro4Op23WJMYr87U7zzwBEg==
X-Received: by 2002:a81:5fd4:: with SMTP id
 t203mr27254887ywb.300.1563472146017; 
 Thu, 18 Jul 2019 10:49:06 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id j67sm6907891ywa.39.2019.07.18.10.49.05
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 10:49:05 -0700 (PDT)
Date: Thu, 18 Jul 2019 13:49:05 -0400
From: Sean Paul <sean@poorly.run>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v1 04/11] drm/ati_pcigart: drop dependency on
 drm_os_linux.h
Message-ID: <20190718174905.GG31819@art_vandelay>
References: <20190718161507.2047-1-sam@ravnborg.org>
 <20190718161507.2047-5-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190718161507.2047-5-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_104907_435383_F7E5C92F 
X-CRM114-Status: GOOD (  19.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
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

On Thu, Jul 18, 2019 at 06:15:00PM +0200, Sam Ravnborg wrote:
> The drm_os_linux.h header is deprecated.
> Just opencode the sole DRM_WRITE32().

Any plans for the other users of DRM_WRITE<N>()? It seems like it'd be trivial
to fix it up for via and mga. I don't really have any background on
drm_os_linux.h, but it doesn't seem like it'd be that much more effort to just
remove the whole thing.

Sean

> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <maxime.ripard@bootlin.com>
> Cc: Sean Paul <sean@poorly.run>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> ---
>  drivers/gpu/drm/ati_pcigart.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/ati_pcigart.c b/drivers/gpu/drm/ati_pcigart.c
> index 2a413e291a60..580aa2676358 100644
> --- a/drivers/gpu/drm/ati_pcigart.c
> +++ b/drivers/gpu/drm/ati_pcigart.c
> @@ -35,7 +35,6 @@
>  
>  #include <drm/ati_pcigart.h>
>  #include <drm/drm_device.h>
> -#include <drm/drm_os_linux.h>
>  #include <drm/drm_pci.h>
>  #include <drm/drm_print.h>
>  
> @@ -169,6 +168,7 @@ int drm_ati_pcigart_init(struct drm_device *dev, struct drm_ati_pcigart_info *ga
>  		page_base = (u32) entry->busaddr[i];
>  
>  		for (j = 0; j < (PAGE_SIZE / ATI_PCIGART_PAGE_SIZE); j++) {
> +			u32 offset;
>  			u32 val;
>  
>  			switch(gart_info->gart_reg_if) {
> @@ -184,10 +184,12 @@ int drm_ati_pcigart_init(struct drm_device *dev, struct drm_ati_pcigart_info *ga
>  				break;
>  			}
>  			if (gart_info->gart_table_location ==
> -			    DRM_ATI_GART_MAIN)
> +			    DRM_ATI_GART_MAIN) {
>  				pci_gart[gart_idx] = cpu_to_le32(val);
> -			else
> -				DRM_WRITE32(map, gart_idx * sizeof(u32), val);
> +			} else {
> +				offset = gart_idx * sizeof(u32);
> +				writel(val, (void __iomem *)map->handle + offset);
> +			}
>  			gart_idx++;
>  			page_base += ATI_PCIGART_PAGE_SIZE;
>  		}
> -- 
> 2.20.1
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
