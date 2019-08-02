Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5621800E6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 21:26:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tDfqrbsqbNeny4eFUjmCbUa3ikKE+tsUILO1UM9l6o4=; b=na2fY2shC9n1Mh
	vNXMUOFfHa1xPKOWly2u7f2h8iBCJGmy1+AAH0wo3TZzJp72bUKek/y9D5zeZ+B2PTIaSteBLUh6K
	yLkSC8cXqmYu5q4JUipmlTvkqDENY8L4i0K6oGczTG+1thsEd6cSwLpM13PTnxm89A1/HCBmTvKzQ
	Aznak50Hi85ktEx81uZ7bl6mL38Jt9liaK2yMpjJKeuZ1Fny45YiKbd4W8LRdzhrLcRWkVdOb6V3u
	o2AxN1loskg2Ais/8beU47ZWEiP///WKTQIWDfbPk+tpW4Dj509DK0cO8qgUzX4KgIJ8sasg2tk1O
	PxtfXF4qtLB/ci5534Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htdCT-0005vr-1B; Fri, 02 Aug 2019 19:26:49 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htdCD-0005uJ-DD
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 19:26:34 +0000
Received: by mail-yb1-xb44.google.com with SMTP id s41so5075923ybe.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 02 Aug 2019 12:26:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=oolSjnNy8o69qEXumrcNervgTiZ+0C/a0z2WrugF1/U=;
 b=aobcd8eDORReviFPdWXwJ+owjz07tUDlmFTI8N2UVHjRvHreP3t+H60+aVprbNizpN
 DVp9kUtL4tHn9qZ1XKPX2XWMn2+X7vva5tuYoKXNJIvUQE8qgVSBtEEc+9BLd77TgAle
 9ugd4NRMK+0DTYvGMi8PGMKCXL62gEqNiCxYBbvWVGEvd85Bk1yR58GuU2AK+YI3/j4T
 Ya7uA2+jqRuqLBOtDwGQj/oXyvmwAIsWbYU++bAVC7r1PUqCnQzZ+//dqKBBp/aGjoRN
 R7AJmQDz+uVBx9kBwjBALruxa0mpEMTTGWoxf63Z/Czq9klDBcDv9sA+JKzqtWnKyicb
 nJRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=oolSjnNy8o69qEXumrcNervgTiZ+0C/a0z2WrugF1/U=;
 b=JlVLLQRW6WW+UtFkSBWWlFVadXdbz7ln6MlWNLuUgcZhYeueqWxpHBQIEi3T7s7HdK
 nfqroNAvRzkLP4N69nFyUULqR0NEdrSVAe8XUbUzZmM9q7s7SlFR5hcNWvHkAcjtiR8Q
 xu7DnrdIHcnGpg1tAmPNLxklkjPfa0Frj5Goz5dR8dV3HNuiROWfR7OVWQetTvXMIzaf
 iOVPWzzKHIt3ZehItJ9koz/h6ND2+f2eXhy27tTXSMP9H11aVS7A7Qzki7lG+TT2FuTj
 hZPjwV8LamT1IAbhc4KAtRenJpyJOPo56sPgquBCm7P3TlaLn3ZGfScWO8z0g0k8Rdbi
 LREg==
X-Gm-Message-State: APjAAAUYhfRrwoswHa7rZasIQpHti9rr5dfe7RNQ5oMuDucmE5krtzQX
 OrsIMo9NOh27KoBTauz0JCUbMA==
X-Google-Smtp-Source: APXvYqyzp76n9T+wWTNjzFV6D8CqVkpC4vTtN8rYlshUPMNLk6fs5ugiybl1QqkrOcbaUwfiGlN7aQ==
X-Received: by 2002:a25:9209:: with SMTP id b9mr74080808ybo.271.1564773990707; 
 Fri, 02 Aug 2019 12:26:30 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id p141sm17544110ywg.78.2019.08.02.12.26.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 02 Aug 2019 12:26:30 -0700 (PDT)
Date: Fri, 2 Aug 2019 15:26:29 -0400
From: Sean Paul <sean@poorly.run>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH] drm/rockchip: Suspend DP late
Message-ID: <20190802192629.GX104440@art_vandelay>
References: <20190802184616.44822-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190802184616.44822-1-dianders@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_122633_501230_58FB40BB 
X-CRM114-Status: GOOD (  18.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Heiko Stuebner <heiko@sntech.de>, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, mka@chromium.org, seanpaul@chromium.org,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 02, 2019 at 11:46:16AM -0700, Douglas Anderson wrote:
> In commit fe64ba5c6323 ("drm/rockchip: Resume DP early") we moved
> resume to be early but left suspend at its normal time.  This seems
> like it could be OK, but casues problems if a suspend gets interrupted
> partway through.  The OS only balances matching suspend/resume levels.
> ...so if suspend was called then resume will be called.  If suspend
> late was called then resume early will be called.  ...but if suspend
> was called resume early might not get called.  This leads to an
> unbalance in the clock enables / disables.
> 
> Lets take the simple fix and just move suspend to be late to match.
> This makes the PM core take proper care in keeping things balanced.
> 
> Fixes: fe64ba5c6323 ("drm/rockchip: Resume DP early")
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Reviewed-by: Sean Paul <sean@poorly.run>

This should go in -misc-fixes and due to some... administrative reasons... I
will leave it on the list until Maarten has a chance to ff to -rc4 on Monday.
I'll apply it then so as to not require a backmerge.

Sean

> ---
> 
>  drivers/gpu/drm/rockchip/analogix_dp-rockchip.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> index 7d7cb57410fc..f38f5e113c6b 100644
> --- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> @@ -436,7 +436,7 @@ static int rockchip_dp_resume(struct device *dev)
>  
>  static const struct dev_pm_ops rockchip_dp_pm_ops = {
>  #ifdef CONFIG_PM_SLEEP
> -	.suspend = rockchip_dp_suspend,
> +	.suspend_late = rockchip_dp_suspend,
>  	.resume_early = rockchip_dp_resume,
>  #endif
>  };
> -- 
> 2.22.0.770.g0f2c4a37fd-goog
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
