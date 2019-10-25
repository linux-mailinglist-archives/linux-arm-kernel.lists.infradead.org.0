Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A435E4653
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 10:55:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oE/KrLrZ06m3gDy0B71Zr3aNejt0AmmgndIDhQHoPuY=; b=MMeDbu53v2+WxO
	2sp9ZaIpChNQRKGa0c3h3+oDexW4jDvYcCoGPCWlXZbzqqVr6T8EYwRdGkSkI+VdKbiVPWDMSefIL
	HP8DC0S4szMZ5Kq3RYzPNZv1ZVwaihUt6Kiy3B1Q9J9/TBMn5l4LIXtVP9/nYEw1E7dBFs+EFRGrS
	IgvK1mOvWv96+od1mHYabD8M8cDHtyji6U+ViAAWYPtry/2GUXpO4ADjfrUgSIx9PO3qTUtgik+7E
	+lk/WA1TsIwzOgoM3XQYOIpqQYhZDjlUIjmjrjSpoWt7dMfgFaDaBpUW/pgqZ5acP2hg1iOQVQew9
	u7ezwwwMV5L0g4eeIYaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNvNN-00029P-Ef; Fri, 25 Oct 2019 08:55:17 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNvN9-0001bd-3N
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 08:55:04 +0000
Received: by mail-wm1-x342.google.com with SMTP id q70so1192441wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 01:55:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=e0o1evno6haV1PZk5CsennP2f66XiGB9AxCdg0rnVFQ=;
 b=FG4lhRPIpLv1bI2+5PQqXPccLi1M2LaG9ZFLA3JTw9apptcOjsF4yUBGQ1p2o/MVPP
 aw/pTe89CmukvK92D40EQeECYpkHiTjrvVWy5M5Y4T323TNQ2ZIG97XnDQkuGBUITFG5
 6bm001yu7zKieO1XyPmOa0noaAhkf71cDWchXEbw0rWk/i70Zt27f76GLPuVifDxLPgm
 wRnSP+8ztowGnMPeWBSnDnrfcaoriRwcpl+9Kjv5OjIpiPbpUhEecKJu7U6BBZ8Qo66V
 sRZmFoL+5r33yQDEQnwb1vBOA0QphlCzcBeFWrxEC8nf/im/I8lsYMgmfo/jsROilf0Q
 W5yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=e0o1evno6haV1PZk5CsennP2f66XiGB9AxCdg0rnVFQ=;
 b=ihEgiez/RGsTAmHrDJlPmTQWoE+5ZHgMpppMxGlg0jBWgGe0LBP1BIpEoTSTMbSpOD
 HYktWE2F5AhRbRc4hXx1sJst2DfetIqJp8K54MW1YtbI+EGgjqFMg39xOHoQYkwXWAcU
 g5NGlh3aKBSQYEn3E0dZzyGpRoOByuP1UBXO/kCYnE5vd8cdlhqyQVRc0zpFeNlCiCCZ
 kb/eHBgVVbgmWEkpUvKa+Rg/FDXXv+Be6vlg1YNISmAz4K6jnLu/TaYXQTNykhDTVmzf
 p7KhqPuHCpMGBUEmwCRgm/3wik9FNGo/53GygQ9viUesrGQCcPMzOqEKituVVBuv0ip9
 CK+Q==
X-Gm-Message-State: APjAAAWCSnfqnW8QTmq24BVdfQhFNTBWD8uHhifvKEc6Is7zeKm5uRhc
 mp0WD+kNevxSCblkCbpCG0GECg==
X-Google-Smtp-Source: APXvYqwxebVwU3JPLWu+FN21Yw5b1DUrU9iBzksnwjCY+rWOd7gEbbU27OgkACABTCrk/ERH3DzeHA==
X-Received: by 2002:a1c:2e94:: with SMTP id u142mr2497100wmu.69.1571993701786; 
 Fri, 25 Oct 2019 01:55:01 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id o18sm2031749wrm.11.2019.10.25.01.55.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 01:55:01 -0700 (PDT)
Date: Fri, 25 Oct 2019 09:54:59 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v3 07/10] x86: olpc-xo1-sci: Remove invocation of MFD's
 .enable()/.disable() call-backs
Message-ID: <20191025085459.roxig2nyxfjlf6dz@holly.lan>
References: <20191024163832.31326-1-lee.jones@linaro.org>
 <20191024163832.31326-8-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191024163832.31326-8-lee.jones@linaro.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_015503_172395_AC207C79 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: baohua@kernel.org, stephan@gerhold.net, arnd@arndb.de,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 24, 2019 at 05:38:29PM +0100, Lee Jones wrote:
> IO regions are now requested and released by this device's parent.
> 
> Signed-off-by: Lee Jones <lee.jones@linaro.org>

Reviewed-by: Daniel Thompson <daniel.thompson@linaro.org>

> ---
>  arch/x86/platform/olpc/olpc-xo1-sci.c | 6 ------
>  1 file changed, 6 deletions(-)
> 
> diff --git a/arch/x86/platform/olpc/olpc-xo1-sci.c b/arch/x86/platform/olpc/olpc-xo1-sci.c
> index 99a28ce2244c..933dd4fe3a97 100644
> --- a/arch/x86/platform/olpc/olpc-xo1-sci.c
> +++ b/arch/x86/platform/olpc/olpc-xo1-sci.c
> @@ -15,7 +15,6 @@
>  #include <linux/platform_device.h>
>  #include <linux/pm.h>
>  #include <linux/pm_wakeup.h>
> -#include <linux/mfd/core.h>
>  #include <linux/power_supply.h>
>  #include <linux/suspend.h>
>  #include <linux/workqueue.h>
> @@ -537,10 +536,6 @@ static int xo1_sci_probe(struct platform_device *pdev)
>  	if (!machine_is_olpc())
>  		return -ENODEV;
>  
> -	r = mfd_cell_enable(pdev);
> -	if (r)
> -		return r;
> -
>  	res = platform_get_resource(pdev, IORESOURCE_IO, 0);
>  	if (!res) {
>  		dev_err(&pdev->dev, "can't fetch device resource info\n");
> @@ -605,7 +600,6 @@ static int xo1_sci_probe(struct platform_device *pdev)
>  
>  static int xo1_sci_remove(struct platform_device *pdev)
>  {
> -	mfd_cell_disable(pdev);
>  	free_irq(sci_irq, pdev);
>  	cancel_work_sync(&sci_work);
>  	free_ec_sci();
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
