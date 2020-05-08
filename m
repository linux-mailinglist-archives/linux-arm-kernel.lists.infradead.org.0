Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E201CA4CF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 09:09:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fJ8H+hFdio9LLsABBJHxmy/atBGyvc0r64eu/KqDtkA=; b=lOnKD3dJdtWaDp
	bHNhcWCkBCMb346a7EPx4rkor04wnnHsgAW7+SfBYABH4va71+5algSHKoEaX63LSldZVyJmuz87i
	GYynikQlM003KsWuMHSPTTPJW0D9Bbnl1VMG9v07qIwm9CmhsqGrvMuiToxmVw+wcK/uNNLx3cdQQ
	soZh1M+L883TfeE970AHveV21Ah/AB7xE93bUOxPMLc2Epx/r6VV7jXDxSWfrmpN4EQVTa+NxRApH
	tUo15NOa9POyhxtGS0hsXuSTFbQrc1GBq9NVjx5J5SDUZzvyoLMSJn8dv6TxyLdy44dJRRJnhe3SD
	PGE7J7Mr2vx4aUv1rjbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWx7p-00042b-Tw; Fri, 08 May 2020 07:08:49 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWx7i-00041x-Mj
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 07:08:44 +0000
Received: by mail-wr1-x444.google.com with SMTP id w7so572578wre.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 May 2020 00:08:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=DmTzp+J4aS4CxYYhCILNVwYfVehwX/dqCJCx5jKGlEM=;
 b=CEhHuPS/Sdlv7SlOF1Hc4wrg/jxQ0bfVMANuWCZjoRc8dNc/HsdgEoZO7HGBHXwoaf
 ruEIoF3gHK5AY6lSz66A+ROgs5JDNmxQyX5jJA9tVa0h0eLsOpexhZTVa8lNea46FiWB
 /GPsBiQ9zAcTAkVD8gFbnjr8OjE1EkxiL9eto=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=DmTzp+J4aS4CxYYhCILNVwYfVehwX/dqCJCx5jKGlEM=;
 b=kMCD/wYOM5fTqYFBIKBtc+lbro3aBqSVLHzy6g122sGfHSBhrnjZM4MxE9LBlrHwwF
 wClsuHUE8mvfS4YHRe1rycn3g52iPviYt6j4oy+LttkavaHSUYbbuYPkzTIUckRbln63
 fVgAvjsWPOsLhNwmrH0Uxq9Gs6Jerx178yo+cNqc/cSiyjq4Gxmck7dsVVO7XXuWOLAC
 B1l2zCCeWKynaYM5QtmwAAx0vldallVm0GdLrHtXAmk970QnPPbJ43RZcYFi5Vn4oRR9
 yt3m4L0ERfQwjrjm98M1DQhb9vPOY53DAOLi49nZUH5RzPDIQgZ0GVPjUPoEiwowrU+a
 HwPA==
X-Gm-Message-State: AGi0PuZ+taHgk9BALubqRxEIIECOzOrQM8BqCJcmNgXIJUQhxIEdnCjt
 uWa/rRtbk72lQxuduXY8nXxvzQ==
X-Google-Smtp-Source: APiQypIdXHZDbCY1mjOHI7A02KN/NFXcXdx0OSG3FPCPhGoilD6eSlbRaDrFn+uMA+JdV38nVB2Qsw==
X-Received: by 2002:adf:e791:: with SMTP id n17mr1265834wrm.217.1588921720359; 
 Fri, 08 May 2020 00:08:40 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s24sm12302509wmj.28.2020.05.08.00.08.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 May 2020 00:08:39 -0700 (PDT)
Date: Fri, 8 May 2020 09:08:37 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Colin King <colin.king@canonical.com>
Subject: Re: [PATCH] drm/exynos: remove redundant initialization to variable
 'start'
Message-ID: <20200508070837.GF1383626@phenom.ffwll.local>
Mail-Followup-To: Colin King <colin.king@canonical.com>,
 Inki Dae <inki.dae@samsung.com>,
 Joonyoung Shim <jy0922.shim@samsung.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 David Airlie <airlied@linux.ie>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20200507202237.64350-1-colin.king@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200507202237.64350-1-colin.king@canonical.com>
X-Operating-System: Linux phenom 5.4.0-4-amd64 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_000842_742156_91A336A2 
X-CRM114-Status: GOOD (  17.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 David Airlie <airlied@linux.ie>, kernel-janitors@vger.kernel.org,
 Seung-Woo Kim <sw0312.kim@samsung.com>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Inki Dae <inki.dae@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 09:22:37PM +0100, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> The variable 'start' is being initialized with a value that is never read
> and it is being updated later with a new value.  The initialization is
> redundant and can be removed.
> 
> Addresses-Coverity: ("Unused value")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  drivers/gpu/drm/exynos/exynos_drm_dsi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/exynos/exynos_drm_dsi.c b/drivers/gpu/drm/exynos/exynos_drm_dsi.c
> index 902938d2568f..b0b9cb1ec18f 100644
> --- a/drivers/gpu/drm/exynos/exynos_drm_dsi.c
> +++ b/drivers/gpu/drm/exynos/exynos_drm_dsi.c
> @@ -1150,7 +1150,7 @@ static bool exynos_dsi_transfer_finish(struct exynos_dsi *dsi)
>  {
>  	struct exynos_dsi_transfer *xfer;
>  	unsigned long flags;
> -	bool start = true;
> +	bool start;
>  
>  	spin_lock_irqsave(&dsi->transfer_lock, flags);
>  
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
