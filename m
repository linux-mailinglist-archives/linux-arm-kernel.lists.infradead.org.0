Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E73381ECB6A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 10:24:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lzpLXqaIB1nL/WFvA785GStVmUJZASq/89UAL5n9oMA=; b=H5DPoue92HKt/z
	kDw21RfsLtQh1EuS9iFGwz9oxc1rYHqoF4MQaVc0RZaE04J4msh8FpMabLvNUZD8xawCDCiJlF2Tq
	DEhRXidqjRtCe5dogVoAE8WpMrKF89zwl2UcMXgXZzlt4ShdA1QlNxOrR1gi0aHE74WsHTEabxx+F
	uTyX1N9/l59sCuGf0hCWd5HSOEyCr0Og6SCbjSoR1nxSSU3ul54bMbSFMt25gcOb0Ir/F/Nj5tTYS
	B9BMLFv87JPRBn/19LkThBOTKiNfxeyQRYB+CN+iP4OEmtPGGB1yqJq6MRjFdk/Cq5Vo432Zb6PQx
	7sXvkMNWKxMbTKBdyiFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgOhD-0006Xg-JH; Wed, 03 Jun 2020 08:24:23 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgOh5-0006XJ-Bg
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 08:24:16 +0000
Received: by mail-wm1-x341.google.com with SMTP id v19so999011wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 01:24:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=qRRViGgr/XMXuK899gyJpd+glkMI9g3TUAqhc5bIdms=;
 b=diAPk9NzqmTTMCUpwWl/9I43wRC0s9YisBeaJ3i/Ao27NvMQV2tq0o/amb5EsgN5Dc
 m7UOzOkQ1IcJFbc/rP+zbfrn4e78xzB8fxvBTJwqpUCIS+KXHxZzWv0fJ8aqglCSFuUF
 PsgSO47gzy0i41trTDnIz8ohkR0xLziwSCsy0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=qRRViGgr/XMXuK899gyJpd+glkMI9g3TUAqhc5bIdms=;
 b=FtXcQ7hS0DCQDnDP6Q3T3y0QOHMDh8XDaF0FR6uW84S0t10PlI7WAnsU/lwHJZKNVW
 MJztwpxporqrfOCCw2vxUHZ+QRWXj44bqYrxhKgGSOYfmUICVK0jUipAmzX/AijIOMHn
 BdQYdPmuIgKjLpqwGFCwL+naLQpHWOf1wmFjXSUlcYjU4bKuedAUuRNsgk+UxvzH46H/
 SbPU3ukl75jsxm9PfXGBZHt8+2xduR6KGsE8APY2rkOLr6+iSXRIltdPCh2XqQA3ZYMz
 YuUy91Yqhkm2m++0qfOvh+1Idvj5iCVqI8RwvLtK8aHXZUVLCOIzf/K5Js0jG+hsYcCr
 HpbQ==
X-Gm-Message-State: AOAM531mVi2J6RqHJJcGCYHg8AzHqAmzOXf3RB0bwuHThMpPgPpg/qsR
 g78FKJfx/nfrv0WtI2BGibo/ag==
X-Google-Smtp-Source: ABdhPJwF05tJg2U8YAuUBqkP69xy0KO/yd1uPSYB+TFlsp2LQxAA+L8XZMe3ryw0UOWY+kevnffgNw==
X-Received: by 2002:a05:600c:1:: with SMTP id g1mr7447279wmc.142.1591172653407; 
 Wed, 03 Jun 2020 01:24:13 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id p10sm2318468wra.78.2020.06.03.01.24.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Jun 2020 01:24:12 -0700 (PDT)
Date: Wed, 3 Jun 2020 10:24:11 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jeykumar Sankaran <jsanka@codeaurora.org>
Subject: Re: [PATCH] drm/connector: notify userspace on hotplug after
 register complete
Message-ID: <20200603082411.GI20149@phenom.ffwll.local>
Mail-Followup-To: Jeykumar Sankaran <jsanka@codeaurora.org>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Steve Cohen <cohens@codeaurora.org>, seanpaul@chromium.org
References: <1591155451-10393-1-git-send-email-jsanka@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1591155451-10393-1-git-send-email-jsanka@codeaurora.org>
X-Operating-System: Linux phenom 5.6.0-1-amd64 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_012415_396897_FC4BC6A2 
X-CRM114-Status: GOOD (  17.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org, seanpaul@chromium.org,
 Steve Cohen <cohens@codeaurora.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 02, 2020 at 08:37:31PM -0700, Jeykumar Sankaran wrote:
> drm connector notifies userspace on hotplug event prematurely before
> late_register and mode_object register completes. This leads to a race
> between userspace and kernel on updating the IDR list. So, move the
> notification to end of connector register.
> 
> Signed-off-by: Jeykumar Sankaran <jsanka@codeaurora.org>
> Signed-off-by: Steve Cohen <cohens@codeaurora.org>

Hm on the unregister side we don't have the race, there we remove
everything and then send out the uevent. But there the uevent is also
generated in a separate step, so I wonder whether we shouldn't do the same
for register for symmetry ...

Anyway this looks good, nice catch, I'll add cc: stable and merge.
-Daniel

> ---
>  drivers/gpu/drm/drm_connector.c | 5 +++++
>  drivers/gpu/drm/drm_sysfs.c     | 3 ---
>  2 files changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
> index b1099e1..d877ddc 100644
> --- a/drivers/gpu/drm/drm_connector.c
> +++ b/drivers/gpu/drm/drm_connector.c
> @@ -27,6 +27,7 @@
>  #include <drm/drm_print.h>
>  #include <drm/drm_drv.h>
>  #include <drm/drm_file.h>
> +#include <drm/drm_sysfs.h>
>  
>  #include <linux/uaccess.h>
>  
> @@ -523,6 +524,10 @@ int drm_connector_register(struct drm_connector *connector)
>  	drm_mode_object_register(connector->dev, &connector->base);
>  
>  	connector->registration_state = DRM_CONNECTOR_REGISTERED;
> +
> +	/* Let userspace know we have a new connector */
> +	drm_sysfs_hotplug_event(connector->dev);
> +
>  	goto unlock;
>  
>  err_debugfs:
> diff --git a/drivers/gpu/drm/drm_sysfs.c b/drivers/gpu/drm/drm_sysfs.c
> index 939f003..f0336c8 100644
> --- a/drivers/gpu/drm/drm_sysfs.c
> +++ b/drivers/gpu/drm/drm_sysfs.c
> @@ -291,9 +291,6 @@ int drm_sysfs_connector_add(struct drm_connector *connector)
>  		return PTR_ERR(connector->kdev);
>  	}
>  
> -	/* Let userspace know we have a new connector */
> -	drm_sysfs_hotplug_event(dev);
> -
>  	if (connector->ddc)
>  		return sysfs_create_link(&connector->kdev->kobj,
>  				 &connector->ddc->dev.kobj, "ddc");
> -- 
> The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
> a Linux Foundation Collaborative Project
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
