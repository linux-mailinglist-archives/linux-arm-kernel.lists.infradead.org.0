Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3C3E6D338
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 19:52:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eB38yZZywTfrMeD45BabTi0wVJplN/l9JL4eEHfqZuY=; b=psF180ggnsCBNd
	ZT+8fNadWsx5XGnSV629Eh23F0991k0N1HZzbXXG5k2GRgqwRBE7IwfWdmX8RrbgkFkw12IAkawxu
	twzxXlD0vgIG4n5GcjcWXosVmhs4ZWWfY1w/InhDkh7Y7EqvZDwSIKIU0sujpOSuIdWECLAnDAayL
	uSX1+Xl0HAh2Nm/fyRgTlgjwvPdJ+ACTLPmNHWrVPv+qnDTA5fpT6qo56423vkQBSyGJQeksYlbL1
	4MwsVRVCSwUmUgsDa7ui16Y5yqSwadtrGiq9+CaBnYKl0mbHee2t/M9oBgZ8ESNhaxJmBxrq58Anu
	VTPrGQ2hV1BaBcSFFGuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoAZq-0007cu-6a; Thu, 18 Jul 2019 17:52:22 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoAYx-00076x-Hj
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 17:51:32 +0000
Received: by mail-yw1-xc44.google.com with SMTP id q128so12558669ywc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jul 2019 10:51:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=HclqU1Hi0W57E2gKsEu2RVOLJkHR4HLSFJNAFC1/Q8g=;
 b=HH0FL1tbuy7uPalwAKfC6ZHeRdaAnjcbTG9jFdzr2xbYH2DBAdmQ6Gb3M0+NvdIgNr
 41U4nFb7yULWA1ReJDB7gNtwAk6OiSbmGBqMrNsOkCY79FynHXMTRu51lPTxWDmap6Kg
 ZzFDoT/Hp+sskhyBFUd7cc+gHOehddjeuD35fJQadoMfpcxw0ngzUkp+bukgbsyFqDTc
 D1HRS48zMjajSM2IN2HSDvw+F+p9uM83hMJx/KeC6jDvY/OdYcP6pBA8CGK2UjS7WDgr
 FxOKGlekYtktN9Zu2ZDRAySgP3nnL37wl+4D/vf6V64m5LkSg/66nWDiwv/oREhIIM24
 LLGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HclqU1Hi0W57E2gKsEu2RVOLJkHR4HLSFJNAFC1/Q8g=;
 b=pLufWe/c5fF30QLYiqa/BKPmO62iSkeGC7ueN+dR8YeuDkbyfKFWi0Q+fE0imPztvU
 VP0PA4vTvGxm6O99BC7zhKb9DTf6DX3/bNqQ8B8kiTFyR527VH7wDS0TnAvsahcJu1Lo
 5PY1Xe4haUf7XCpljdhbgVdMuFV1EpPKTGgXbEmDoYghBqrlrQ7BrgfeRPwh9RJtO/47
 joYQiCl2ixMzisVnHL2Pj/+sePWUDjB3S5PZCbaCNRrLCMTgFGSC8xyQrkmSQV81E0UZ
 NuzhTYsJKPnAcalctKuCqSwsAgK5QmOEd+PpZIGCHtXTAjp2A+fexcMkP9GWykig5YuL
 X7IA==
X-Gm-Message-State: APjAAAWZd5HB7z7cUPUkvPbfwWwz0ni3OjYN0CL4rXBLrS1vq9UwWJu5
 vCHYKUy8R3E4V/VGzvSQbu+kvQ==
X-Google-Smtp-Source: APXvYqz/hgPZl3J9zJ4rzgI3lHx4jd7KFLGFW7byJ9gOKdbCM4y5GD4mmEkDv1a0XOVFBA/waQ2A2g==
X-Received: by 2002:a81:23ca:: with SMTP id
 j193mr28745543ywj.332.1563472286787; 
 Thu, 18 Jul 2019 10:51:26 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id b63sm6624338ywb.12.2019.07.18.10.51.26
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 10:51:26 -0700 (PDT)
Date: Thu, 18 Jul 2019 13:51:26 -0400
From: Sean Paul <sean@poorly.run>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v1 07/11] drm: direct include of drm.h in
 drm_gem_shmem_helper.c
Message-ID: <20190718175126.GJ31819@art_vandelay>
References: <20190718161507.2047-1-sam@ravnborg.org>
 <20190718161507.2047-8-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190718161507.2047-8-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_105127_988268_7F187278 
X-CRM114-Status: GOOD (  15.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
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

On Thu, Jul 18, 2019 at 06:15:03PM +0200, Sam Ravnborg wrote:
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
>  drivers/gpu/drm/drm_gem_shmem_helper.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/drm_gem_shmem_helper.c b/drivers/gpu/drm/drm_gem_shmem_helper.c
> index 472ea5d81f82..2f64667ac805 100644
> --- a/drivers/gpu/drm/drm_gem_shmem_helper.c
> +++ b/drivers/gpu/drm/drm_gem_shmem_helper.c
> @@ -10,6 +10,7 @@
>  #include <linux/slab.h>
>  #include <linux/vmalloc.h>
>  
> +#include <drm/drm.h>
>  #include <drm/drm_device.h>
>  #include <drm/drm_drv.h>
>  #include <drm/drm_gem_shmem_helper.h>
> -- 
> 2.20.1
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
