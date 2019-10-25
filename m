Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3B2E4650
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 10:54:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zq9NF2EmhqQJ185n+PGXWr2APFYB4u4pzs5D+Fs6Zig=; b=CzaFSTjM7soZ4G
	d7C3ToK8QsZLxXYu5WYfOfrN2qm4CnMWSO7/PNPmR+aCZDaf0wczwbDi6LKzizqmjUcwFeNtDUKsk
	QJlRhmDDqm3PgflFCbzSSGKQ8tvxmsUv6L5ZdXhu/PevwvVROXg4nnV+3oaSZXrWmFaXBE+wSkLsj
	gF2ovoxlJS1now7c8G55PXCa7doeocoqQ14+UOSKYXRWKyKz8unWdSNFfEQNddcsn1QT4I+1uhYpQ
	x/YqdOVV2fg/SZvXSDrJrps2lU8RF3tTLaWxxRusj8TU9YWms/FxK+Qc5hpadkyDnd4C11t8p+dsU
	augbRWV5KTtQx8Gy+1Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNvMG-0001Ch-Qj; Fri, 25 Oct 2019 08:54:08 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNvM4-0001Bs-R2
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 08:53:58 +0000
Received: by mail-wr1-x442.google.com with SMTP id p4so1344926wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 01:53:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=xvMV2lTjYYndNFlZSogoRJwtCYarX8hEWrKlnNonIDs=;
 b=LlMstyT7/QZxxzLumyNdWSE4VwJmLeiAJrHURYPRQYk+cOdjDqJfKsnoCmT+v8xm6T
 evnmfoUIP39tkx3GIlIGiVAlfuz3340MObs713msmAEsr83J966V0DegE6U8pjmP1GKi
 BSqW5ujuWiU4bEWreWy9sQoDI6ZDinL/RepAVENyIAFBXN+vbdmNNVQxYODcTjbwOsQ+
 91jghmO/SpJqnVe7KUhKNb7olJLtZM1RbZ0V27EQaz+qtHAkc2MDXdRlEs1DOfYZds5Q
 2SKx/FA6608fZbgAqAJkhR/hzhlLAPR7z4CiqLp12GPCQeZoDePfrU3q4reKdzCT9ybB
 pM9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xvMV2lTjYYndNFlZSogoRJwtCYarX8hEWrKlnNonIDs=;
 b=bUVVyeeEP6IsMQwo58ZSr0HLzom/Rj0cj2QzYRhd95bC590fLMFHHIli9nXfcn60vd
 mENmwMY7vSgaqAG+g48sgOSIg5umC/6vY6bNtYPVCgdMZBllJge4jNcMW5c2MVmB33AQ
 Zq805I/u0XbpbRoJXzC0UeRNJep9B1pKG4afoQ94q04FzZhqOfuPZP0jSW/MMjRh7WVJ
 1LMWNKG/M7NIY5OHv4pYeQLVgdUwpPRSP5lKV8XTDRWwhNlRHELH4THGX4kCSaGgVuq5
 mCWa6/ignzOvJqepezhNPP8Gal+wESKfKdUx3toNa8qVijXghuIisfVUOkYHXexeKoQ+
 N+Kw==
X-Gm-Message-State: APjAAAVIkHy2MBtan9ZuLfqFPJYkyI8hri6xD7CqhHSzQGwG3073uMl7
 GaEt7VbNMbdaMx7u6O/2wZyB2A==
X-Google-Smtp-Source: APXvYqxaNRRvLimHjbrPbQpnVDMDxSMM55r4+JN+AELtmLfi6nxsELz7rEeeHJgXt4GJvzTzzKbsmg==
X-Received: by 2002:adf:bad3:: with SMTP id w19mr2041099wrg.17.1571993635508; 
 Fri, 25 Oct 2019 01:53:55 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id c189sm1479227wme.24.2019.10.25.01.53.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 01:53:54 -0700 (PDT)
Date: Fri, 25 Oct 2019 09:53:53 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v3 06/10] x86: olpc-xo1-pm: Remove invocation of MFD's
 .enable()/.disable() call-backs
Message-ID: <20191025085353.c6o63ed54vspjxzh@holly.lan>
References: <20191024163832.31326-1-lee.jones@linaro.org>
 <20191024163832.31326-7-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191024163832.31326-7-lee.jones@linaro.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_015356_903229_34BE1491 
X-CRM114-Status: GOOD (  15.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

On Thu, Oct 24, 2019 at 05:38:28PM +0100, Lee Jones wrote:
> IO regions are now requested and released by this device's parent.
> 
> Signed-off-by: Lee Jones <lee.jones@linaro.org>

Reviewed-by: Daniel Thompson <daniel.thompson@linaro.org>

> ---
>  arch/x86/platform/olpc/olpc-xo1-pm.c | 8 --------
>  1 file changed, 8 deletions(-)
> 
> diff --git a/arch/x86/platform/olpc/olpc-xo1-pm.c b/arch/x86/platform/olpc/olpc-xo1-pm.c
> index e1a32062a375..f067ac780ba7 100644
> --- a/arch/x86/platform/olpc/olpc-xo1-pm.c
> +++ b/arch/x86/platform/olpc/olpc-xo1-pm.c
> @@ -12,7 +12,6 @@
>  #include <linux/platform_device.h>
>  #include <linux/export.h>
>  #include <linux/pm.h>
> -#include <linux/mfd/core.h>
>  #include <linux/suspend.h>
>  #include <linux/olpc-ec.h>
>  
> @@ -120,16 +119,11 @@ static const struct platform_suspend_ops xo1_suspend_ops = {
>  static int xo1_pm_probe(struct platform_device *pdev)
>  {
>  	struct resource *res;
> -	int err;
>  
>  	/* don't run on non-XOs */
>  	if (!machine_is_olpc())
>  		return -ENODEV;
>  
> -	err = mfd_cell_enable(pdev);
> -	if (err)
> -		return err;
> -
>  	res = platform_get_resource(pdev, IORESOURCE_IO, 0);
>  	if (!res) {
>  		dev_err(&pdev->dev, "can't fetch device resource info\n");
> @@ -152,8 +146,6 @@ static int xo1_pm_probe(struct platform_device *pdev)
>  
>  static int xo1_pm_remove(struct platform_device *pdev)
>  {
> -	mfd_cell_disable(pdev);
> -
>  	if (strcmp(pdev->name, "cs5535-pms") == 0)
>  		pms_base = 0;
>  	else if (strcmp(pdev->name, "olpc-xo1-pm-acpi") == 0)
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
