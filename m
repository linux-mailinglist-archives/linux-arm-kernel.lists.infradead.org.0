Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED59F4C8B0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 09:53:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OUcWo8K1/cZ7uVhi7auSLVtCDp3pKvL6bFTTaHFp9GI=; b=ArhvJIuwA5m9NE
	bhaYI9kUKT/BehL7UMAeYnD8Qa9w5wm1cZ9vsOcfxtkVwuI8Z1MPhEnjYR0ZTPZEuAx2S8c5zQ22a
	unvn+5nu26l3L7VbWUxEAxFeNaL6rLh1EJRMhJjhKlBREUdGEfOMlOtTNKIhpFiyZByZN2QCZhmer
	ZS0ZcPXGXs8aQVn4Y+PLVuNS2IrYoCtdPKQGy9Bd244uUqOW7okKjUNJnKe4WubQDSKeZ2dUgPxVU
	hFjuNF/cWcS9CJMW15I9DF0PpE/Hw94zPDOWZlMBZyu7NR0jsNW5Q01tKeV38sDkyPVOGj2hdF9Ie
	zue+22kSldMvyA/bLYAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdrtA-0008Pv-3z; Thu, 20 Jun 2019 07:53:44 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdrsw-0008Pc-Pt
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 07:53:32 +0000
Received: by mail-wr1-x442.google.com with SMTP id x17so1913075wrl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 00:53:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=lsH4ngDT/IdZoy4iegWWymDr6AeZO2FoX+v0sL59S/I=;
 b=iQsP9zZQDrH362G1r/CZ1OPNk5wLoR8zIomFtOu2gAbskhz9nQ3HKeF6mJbP9rVPq3
 tAOHNJFczTm3T4oD6EZ2i50NXcuGAKvRacF54rMVTPKdnm7wni2JW676wor1o5iPbGDv
 yy8v5jRp8SjvI1rVbjZAg2fiKlwp/jBGtEem1rRpOgx5ZcaDEdBInzp7uX1n4fuA3qL2
 I1g/oKK8PEI831IvntNvoogM2pT6Gt7f6gsfdq7upihtRiXH6ZpiOdsVRy0o7GNyHmmT
 df0P3vRwYMeyJczZ6v9O2xS5PL/Dp848L0RfPE4JL7efkAjlFvRzVBwUqVd8GIl0j//v
 mAXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=lsH4ngDT/IdZoy4iegWWymDr6AeZO2FoX+v0sL59S/I=;
 b=q2JEF2KpbYXFkA40Bglj66Z4G+94nKijar7XpAH6X3hgEn4YkwALdxmX2F1zQAislG
 AzbhvgHbOS7RTdSpkSyKqfTvhh4F5vW8M+hzmtaWxrEZi36ZZ4CE9Ab8G8qONhzQdA0B
 +XA61E/0DRVjyr2L/pDHTYmB4pMjbDsS/K57/kSzmHdhZK4X0pfSuQNe+GdNf258G5xg
 ozoYQG8eBCXjZDU0Tv0a+nXKxp4rzfXgArCvsWpLI3o+ypzXspGLXZGvAfPBRdMeHrEq
 kN23QkLYHiAY0g1Eas0JulPv04cxO4SJA8NjP51UvIISaJ/UKgxEhtYfyhlV2+aYuKnB
 7H1w==
X-Gm-Message-State: APjAAAXsiWG7Mu5VWo51cGhldY57FiRXq/4bkOf5y7VcWMVGL/f8lGu0
 NWt86bMgvGKPCPat7L+w+0iWKg==
X-Google-Smtp-Source: APXvYqxbGKCKLUn3drTEpSz73VjgGxfZE9vrgDD+Nfc1mCFbKox+zYrpH9lA3V3XjjOS4BUgKN3W/g==
X-Received: by 2002:adf:e311:: with SMTP id b17mr90917417wrj.11.1561017208729; 
 Thu, 20 Jun 2019 00:53:28 -0700 (PDT)
Received: from localhost ([2a02:8010:64d6:1:af8:edfb:42f3:6c14])
 by smtp.gmail.com with ESMTPSA id a84sm5174055wmf.29.2019.06.20.00.53.27
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 20 Jun 2019 00:53:27 -0700 (PDT)
Date: Thu, 20 Jun 2019 08:53:26 +0100
From: Graeme Gregory <graeme.gregory@linaro.org>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [RFC PATCH] acpi/arm64: ignore 5.1 FADTs that are reported as 5.0
Message-ID: <20190620075326.GA2148@xora-haswell.xora.org.uk>
References: <20190619121831.7614-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190619121831.7614-1-ard.biesheuvel@linaro.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_005330_901823_A34FD353 
X-CRM114-Status: GOOD (  16.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: lorenzo.pieralisi@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 leif.lindholm@linaro.org, linux-acpi@vger.kernel.org, lee.jones@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 02:18:31PM +0200, Ard Biesheuvel wrote:
> Some Qualcomm Snapdragon based laptops built to run Microsoft Windows
> are clearly ACPI 5.1 based, given that that is the first ACPI revision
> that supports ARM, and introduced the FADT 'arm_boot_flags' field,
> which has a non-zero field on those systems.
> 
> So in these cases, infer from the ARM boot flags that the FADT must be
> 5.1 or later, and treat it as 5.1.
> 

Makes sense, I did actually see this in the wild in SBSA machine too
once.

Reviewed-by: Graeme Gregory <graeme.gregory@linaro.org>

> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> ---
>  arch/arm64/kernel/acpi.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/kernel/acpi.c b/arch/arm64/kernel/acpi.c
> index 803f0494dd3e..7722e85fb69c 100644
> --- a/arch/arm64/kernel/acpi.c
> +++ b/arch/arm64/kernel/acpi.c
> @@ -155,10 +155,14 @@ static int __init acpi_fadt_sanity_check(void)
>  	 */
>  	if (table->revision < 5 ||
>  	   (table->revision == 5 && fadt->minor_revision < 1)) {
> -		pr_err("Unsupported FADT revision %d.%d, should be 5.1+\n",
> +		pr_err(FW_BUG "Unsupported FADT revision %d.%d, should be 5.1+\n",
>  		       table->revision, fadt->minor_revision);
> -		ret = -EINVAL;
> -		goto out;
> +
> +		if (!fadt->arm_boot_flags) {
> +			ret = -EINVAL;
> +			goto out;
> +		}
> +		pr_err("FADT has ARM boot flags set, assuming 5.1\n");
>  	}
>  
>  	if (!(fadt->flags & ACPI_FADT_HW_REDUCED)) {
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
