Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01ED3E4661
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 10:56:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wYWM2EfVIf4ZZMRPRhjlUIKbSytI2LHNpkh/I4mPtWg=; b=OZl7d2dvrQdFPp
	0uDlEM5rF5Tu54kkuLx+uKnrs32dpt/TivFqj8cILswDxZKjgdD03Fg4wXn/p5D4YCQjoy5LzVkdK
	Hy0VFIIdcW78VfVTPtYYoWafSfJHjoNzRSroe5BwAKs2ScJMb4OLcHLwcnRUfdGcXlc1e8diD1VES
	JO6qvGn7H9EQuePbXeyBe36MajSO4lhBqV0KtrN2yO3+r+HVGxoK5Nt0Ih8nVjPqhE7L9QvqWvsLP
	t7rPYpsUkODd7sW6NzgpKilRlnsLHnl7U3dfwGqyBOY+UKSwjn5gLMfySgToD0o1NPorE9k7ZvnKw
	c/IzMc0TvH53xFdRlt7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNvOg-0003Si-2T; Fri, 25 Oct 2019 08:56:38 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNvOT-0003RK-NT
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 08:56:27 +0000
Received: by mail-wr1-x444.google.com with SMTP id v9so1370672wrq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 01:56:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Za+k390P96EYSItDepM5dTHhQrr03QyXzfLr1/CgGOk=;
 b=LSvtfixYphn1xvmJLPG4xBTjQ7hqgGvgq1+mPntlD8fi5f4h8YKYgCwpXkbFX6/fe+
 fRf9pY1fyyidqk0Xkvx4W+3xLBGvFWcZzFXra7cW0QAyx4PSmXKg4XC1X57hCTWJVzEI
 hYXRzBOKNHUPFZ7zeE9/x3KMFLn6BkkIN7oGtfrukb2ELldOfeyQ0+Jg/NAvg0cZDbz5
 dbXDybMmt5ptDPiDoIyXUDaPFwJBRBHSCAH3h28TXK0e85Mssz1DYVvqDzRLqZj2HS8s
 517Yn8K4zb3+8o9PMEFcixmTiiRzLbqQ0T5vpPX6Z5kF3M5TeYtpGQ4ILJZGGFLGAu1G
 vJow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Za+k390P96EYSItDepM5dTHhQrr03QyXzfLr1/CgGOk=;
 b=AJ4SDkstS9B2GFHGuEbwCOb5XXAVMon7TNO9ofEIoUNcoGqcvYHRSBZrMkmMubZMHA
 230eeT8ksFIcQiCTiUqvRSTSNfQhVsRWu29EmRhNIoi0qD9tKhcQlUEL1SUFJhUU/7Wz
 G9OflaVK+ENtM+z0DRHy1FsW4s/IbXYdbWzEWo3zXJPdDvycKl1iclE33LHVHdSlZeYK
 jrqJgeacoi3srIE7QKgomEhlwpXtaMKViw3ZzeiwnZIJcKT8frkNGCwNGoFdbAVxkMF7
 Ng/1LcLfWKoP5ibKYrspOl/kInr9DqCq0qkb6/Cvm7icIuIrUjph7KREym92GYaaAAWT
 HOdw==
X-Gm-Message-State: APjAAAXc8JJpIgYC/Ga3qcG8ZvBGqf39xMXOBXiuX5vrD01zIB49USn3
 ra4OLm+gx28n3YFLGRSMiQDNaA==
X-Google-Smtp-Source: APXvYqwVzxvbTRKbXJBqofPICUZqHUpZWS5OByE8bfHop6pOmKVSBV0+6k4fVzLoIWf1HYnMBXh9hg==
X-Received: by 2002:adf:ee10:: with SMTP id y16mr1843678wrn.67.1571993784357; 
 Fri, 25 Oct 2019 01:56:24 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id c16sm1918320wrw.32.2019.10.25.01.56.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 01:56:23 -0700 (PDT)
Date: Fri, 25 Oct 2019 09:56:22 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v3 10/10] mfd: mfd-core: Move pdev->mfd_cell creation
 back into mfd_add_device()
Message-ID: <20191025085622.7gdfbaesiwgnrfd3@holly.lan>
References: <20191024163832.31326-1-lee.jones@linaro.org>
 <20191024163832.31326-11-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191024163832.31326-11-lee.jones@linaro.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_015625_766325_EFB7DCBC 
X-CRM114-Status: GOOD (  16.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

On Thu, Oct 24, 2019 at 05:38:32PM +0100, Lee Jones wrote:
> Most of the complexity of mfd_platform_add_cell() has been removed. The
> only functionality left duplicates cell memory into the child's platform
> device. Since it's only a few lines, moving it to the main thread and
> removing the superfluous function makes sense.
> 
> Signed-off-by: Lee Jones <lee.jones@linaro.org>

Reviewed-by: Daniel Thompson <daniel.thompson@linaro.org>


> ---
>  drivers/mfd/mfd-core.c | 21 ++++-----------------
>  1 file changed, 4 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/mfd/mfd-core.c b/drivers/mfd/mfd-core.c
> index 2535dd3605c0..cb3e0a14bbdd 100644
> --- a/drivers/mfd/mfd-core.c
> +++ b/drivers/mfd/mfd-core.c
> @@ -49,19 +49,6 @@ int mfd_cell_disable(struct platform_device *pdev)
>  }
>  EXPORT_SYMBOL(mfd_cell_disable);
>  
> -static int mfd_platform_add_cell(struct platform_device *pdev,
> -				 const struct mfd_cell *cell)
> -{
> -	if (!cell)
> -		return 0;
> -
> -	pdev->mfd_cell = kmemdup(cell, sizeof(*cell), GFP_KERNEL);
> -	if (!pdev->mfd_cell)
> -		return -ENOMEM;
> -
> -	return 0;
> -}
> -
>  #if IS_ENABLED(CONFIG_ACPI)
>  static void mfd_acpi_add_device(const struct mfd_cell *cell,
>  				struct platform_device *pdev)
> @@ -141,6 +128,10 @@ static int mfd_add_device(struct device *parent, int id,
>  	if (!pdev)
>  		goto fail_alloc;
>  
> +	pdev->mfd_cell = kmemdup(cell, sizeof(*cell), GFP_KERNEL);
> +	if (!pdev->mfd_cell)
> +		goto fail_device;
> +
>  	res = kcalloc(cell->num_resources, sizeof(*res), GFP_KERNEL);
>  	if (!res)
>  		goto fail_device;
> @@ -183,10 +174,6 @@ static int mfd_add_device(struct device *parent, int id,
>  			goto fail_alias;
>  	}
>  
> -	ret = mfd_platform_add_cell(pdev, cell);
> -	if (ret)
> -		goto fail_alias;
> -
>  	for (r = 0; r < cell->num_resources; r++) {
>  		res[r].name = cell->resources[r].name;
>  		res[r].flags = cell->resources[r].flags;
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
