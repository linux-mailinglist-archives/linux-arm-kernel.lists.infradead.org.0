Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2141A9C26
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 13:25:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yih77NEZUwl6i44ge9O+wuDVVllJYKsolHL5d6M+8Sc=; b=rjnZHOLT8bwdpf
	Qy+VYyI0YvmHnEwXkBSqzMvryj927/jBROY7tSlsqzAyNK5j16vS60Rg9UBMOYAQEfnsF0Nu/zngF
	hKDNGddhp6hYJc0IFZAm10R9GhkbAqq1o4DhgPPueSmSw+qQg0EklvkLNJ4R8nUdcM088iNb9OJak
	uQjEuWICX1CXAK1gXuAsljpc9HTdRgE5vcw1ARo6BjZYNBPUGDX7J2EG2UkMqhhzte6OtdVYh3A7i
	y4aCJUgjmWtWYxJ9PHDbPHx3ZjR1A5jgRSCPFFOuyWc+im+PtVx189hhTTi5oLfOnigTv4xP2z+vf
	79QJp4Vnu1W3KnvlE4gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOgAn-0007p8-AE; Wed, 15 Apr 2020 11:25:41 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOgAZ-0007ny-RQ
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 11:25:30 +0000
Received: by mail-wm1-x342.google.com with SMTP id o81so11373288wmo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 04:25:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=apXLkj8/Y6/Je/J3pw9VYIeGtZznbEDSTaodMw9SIP8=;
 b=CtHkHYlCnlsa+tUc8/F7g7a0/P6u8ejT1ayfSACtu0kpWhs3EFaqXHsG66HdK2TqVO
 1YepPve4g/tteoWGzn/BId3gVqa0gSrcAXKoX7yewG/1H0vQN4Qe2Pn7YxQ/IdDn6tw3
 UgUpHRyZ0gelkfNm/V6/st91NhPu8ozpGjQpo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=apXLkj8/Y6/Je/J3pw9VYIeGtZznbEDSTaodMw9SIP8=;
 b=CSIwxHpz383vyIQwH3dFGfzQ/oNtL/pWMt4QRQI/YbdcO7r1IppGL6eomQz4jvpd3M
 YTRTb8Wpp1zTUbah9EXMdJHKRN15uF/aHoNbfzstGkEhmbuI2fHvnNI0pRcZNf9jxpcV
 /VwR53KYfCSzWx2Z+tNEXPW4cGeDESJjrmFul5gzaVQHblF5myrGIcJUP4Olp8J8b9rT
 0ZS0Xolj+gUjkSHBYo09SSPfxlYp4mEyOWJHWeTv/qYSjsYIt6X5Lo5uGCDDQvYQnrac
 R3dkSGCUvc8ciYqpQgBVUdfrzuX9SzzzVR0q9cmchbc58LZE+a8Gz5RjcIKZX2pqO2FB
 zCIA==
X-Gm-Message-State: AGi0PuY27ooTDtUXSyjUTwFLjrwGegBhB9oQjr8rnfanENUNSWTtyouR
 g122LcryqfYrYHvgvXtQwTEC2w==
X-Google-Smtp-Source: APiQypLPhakDBiE4HRC90MnW5/bRC2vpIu2AQD3Xvb6Y3wPK7412N1qq31ytrTaUWKirLB1NJ1AesQ==
X-Received: by 2002:a1c:7c13:: with SMTP id x19mr4706062wmc.124.1586949925687; 
 Wed, 15 Apr 2020 04:25:25 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id w3sm4358429wrc.18.2020.04.15.04.25.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 04:25:25 -0700 (PDT)
Date: Wed, 15 Apr 2020 13:25:23 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Colin King <colin.king@canonical.com>
Subject: Re: [PATCH][next] drm/rockchip: fix spelling mistake "modifer" ->
 "modifier"
Message-ID: <20200415112523.GA3456981@phenom.ffwll.local>
Mail-Followup-To: Colin King <colin.king@canonical.com>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20200415083420.366279-1-colin.king@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200415083420.366279-1-colin.king@canonical.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_042529_430082_88E6B3B2 
X-CRM114-Status: GOOD (  16.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, kernel-janitors@vger.kernel.org,
 Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 15, 2020 at 09:34:20AM +0100, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> There is a spelling mistake in a DRM_DEBUG_KMS debug message. Fix it.
> 
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

Queued for 5.8, thanks for your patch.
-Daniel

> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> index b87d22eb6ae1..33463b79a37b 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> @@ -769,7 +769,7 @@ static bool rockchip_mod_supported(struct drm_plane *plane,
>  		return true;
>  
>  	if (!rockchip_afbc(modifier)) {
> -		DRM_DEBUG_KMS("Unsupported format modifer 0x%llx\n", modifier);
> +		DRM_DEBUG_KMS("Unsupported format modifier 0x%llx\n", modifier);
>  
>  		return false;
>  	}
> -- 
> 2.25.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
