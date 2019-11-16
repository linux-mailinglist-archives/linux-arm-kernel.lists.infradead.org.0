Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE7DFF16B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 Nov 2019 17:12:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AzpVb9j/+96wVOyveczkUtnQ8Sh0UgK5yJICqDKwCT0=; b=STezp4PANIbWfd
	V3MVw0TITyJQV4wNb6WpqVogadxMxrZgHjtQBwVhvSubJf6f7zmQNk6UamNRydhsQD4XFg3SjyEli
	wS4Edd9YlKs36+VNYx7/LQgeDZdWgR4DxKpnBXdnkMDrwYjwjkSkynHNNre7kb0/R57SpirZcnRtf
	LaXVUExPlqX1IVV3Vk5Yfu6coQ3iCshGOIC6Qq8ngIEDC6diDkWegOwh6EwhCSLdx3G8VKzCV33Cb
	/1jsSWhgpmbSI+9tKK1ZiTZ8hWB1Wos4WfGomP+WaMJFbRtL8AaVAZV2uWttgA2edTZmiERNT0zKP
	gSDouN4qOnkDR15Tv5zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iW0gI-0006N6-9J; Sat, 16 Nov 2019 16:12:14 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iW0gB-0006MK-1L
 for linux-arm-kernel@lists.infradead.org; Sat, 16 Nov 2019 16:12:08 +0000
Received: by mail-pf1-x441.google.com with SMTP id b19so8147657pfd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 16 Nov 2019 08:12:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=DLBwNS04s3vTncd8h6wYjqP9/zqj5Hw6C3ovDZPMJNw=;
 b=aWDwUslpmIQVa4GYtfBvd2CMsrtdrtzAXSurvFxn9mgpdxN5BKh64sYvKAAbYDKfSj
 4YMXLI9Fua6OvuYxk9aWHHjKqdWTtquxgyU2Ekugjx0AhH0B2lhuJMJVRi+yk65QDRdh
 CoQCd0F3l4D53DhJkRKl2tlal42XOJ5NtiyXPDIMbxtijjHPxUlqeCwzdUwgjDihryL/
 CJ5cwucFeg0xSf4TYkBeyf3doCOFGOg+Q1odrSMKSHCCaWOwWiJ4brhdjJUtyYBT8cDS
 0TMlKeK9t/aA+6JqhkkAPhqn1+7XTFmvaVvt4Y/wY6Y5CY47hgLvCakN7MxAv9gtLu9L
 ul6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=DLBwNS04s3vTncd8h6wYjqP9/zqj5Hw6C3ovDZPMJNw=;
 b=K6hFw03TA3+T2Ghp0FHn4hxPVwlvVmXgdLQBdJIQO7T3pXM6q+d2HSYNrqTl+FRtLe
 rpqJJjtEldVnj9k5yD1fJkI2cKlqPNiDr4vwuFHnRIkmigrw7gqp5d4iWohwMPRQYELl
 H3ftUmIAVmD+7RdscaSLSDczw4lQNB8LuZgl496fn8U69JP8rR7KvQW7PFaAJUdUYPDh
 ucChSr1webBsnWR8SiOmNCHZdkr0taC03IL/65JL9Sr2gx8lM4vJtZSAjGBUmUHTXvux
 h/VPLGOWAbNNt32lOAP85/0IVgiD7C/++/CtNLlbzyPJp5BmJ/yUlx2mShqzAr+4LU1H
 mWeg==
X-Gm-Message-State: APjAAAUtRWOMJgTqTsc/TBO6F6OwArmdPFGbN0YCxAvKPHeYizYy4pyk
 DkxYOHoHwTicfOq2/Rzp9YU=
X-Google-Smtp-Source: APXvYqyUjaIuhyaRHuw7HuQ7JdypEFfmmQ6CWLzYfMZsoL54sdj1Me9cxMFnQnrWwYl56ebRbcqIPA==
X-Received: by 2002:a63:e156:: with SMTP id h22mr7865038pgk.266.1573920726128; 
 Sat, 16 Nov 2019 08:12:06 -0800 (PST)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id 83sm14198063pgh.86.2019.11.16.08.12.04
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 16 Nov 2019 08:12:05 -0800 (PST)
Date: Sat, 16 Nov 2019 08:12:04 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Eugen.Hristev@microchip.com
Subject: Re: [PATCH v4 1/3] watchdog: sama5d4_wdt: cleanup the bit definitions
Message-ID: <20191116161204.GA22568@roeck-us.net>
References: <1573806579-7981-1-git-send-email-eugen.hristev@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573806579-7981-1-git-send-email-eugen.hristev@microchip.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_081207_081489_55C857D3 
X-CRM114-Status: GOOD (  16.13  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, alexandre.belloni@bootlin.com,
 linux-watchdog@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, wim@linux-watchdog.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 15, 2019 at 08:30:13AM +0000, Eugen.Hristev@microchip.com wrote:
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> Cleanup the macro definitions to use BIT and align with two spaces.
> 
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
> Changes in v4:
> - added UL suffix to value macros to avoid compile warnings
> - modified file header to include new copyright and datasheet
> - include linux/bits.h
> 
> Changes in v3:
> - new patch as requested from review on ML
> 
>  drivers/watchdog/at91sam9_wdt.h | 34 +++++++++++++++++++---------------
>  1 file changed, 19 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/watchdog/at91sam9_wdt.h b/drivers/watchdog/at91sam9_wdt.h
> index 390941c..abfe34d 100644
> --- a/drivers/watchdog/at91sam9_wdt.h
> +++ b/drivers/watchdog/at91sam9_wdt.h
> @@ -4,33 +4,37 @@
>   *
>   * Copyright (C) 2007 Andrew Victor
>   * Copyright (C) 2007 Atmel Corporation.
> + * Copyright (C) 2019 Microchip Technology Inc. and its subsidiaries
>   *
>   * Watchdog Timer (WDT) - System peripherals regsters.
>   * Based on AT91SAM9261 datasheet revision D.
> + * Based on SAM9X60 datasheet.
>   *
>   */
>  
>  #ifndef AT91_WDT_H
>  #define AT91_WDT_H
>  
> +#include <linux/bits.h>
> +
>  #define AT91_WDT_CR		0x00			/* Watchdog Control Register */
> -#define		AT91_WDT_WDRSTT		(1    << 0)		/* Restart */
> -#define		AT91_WDT_KEY		(0xa5 << 24)		/* KEY Password */
> +#define  AT91_WDT_WDRSTT	BIT(0)			/* Restart */
> +#define  AT91_WDT_KEY		(0xa5UL << 24)		/* KEY Password */
>  
>  #define AT91_WDT_MR		0x04			/* Watchdog Mode Register */
> -#define		AT91_WDT_WDV		(0xfff << 0)		/* Counter Value */
> -#define			AT91_WDT_SET_WDV(x)	((x) & AT91_WDT_WDV)
> -#define		AT91_WDT_WDFIEN		(1     << 12)		/* Fault Interrupt Enable */
> -#define		AT91_WDT_WDRSTEN	(1     << 13)		/* Reset Processor */
> -#define		AT91_WDT_WDRPROC	(1     << 14)		/* Timer Restart */
> -#define		AT91_WDT_WDDIS		(1     << 15)		/* Watchdog Disable */
> -#define		AT91_WDT_WDD		(0xfff << 16)		/* Delta Value */
> -#define			AT91_WDT_SET_WDD(x)	(((x) << 16) & AT91_WDT_WDD)
> -#define		AT91_WDT_WDDBGHLT	(1     << 28)		/* Debug Halt */
> -#define		AT91_WDT_WDIDLEHLT	(1     << 29)		/* Idle Halt */
> +#define  AT91_WDT_WDV		(0xfffUL << 0)		/* Counter Value */
> +#define  AT91_WDT_SET_WDV(x)	((x) & AT91_WDT_WDV)
> +#define  AT91_WDT_WDFIEN	BIT(12)		/* Fault Interrupt Enable */
> +#define  AT91_WDT_WDRSTEN	BIT(13)		/* Reset Processor */
> +#define  AT91_WDT_WDRPROC	BIT(14)		/* Timer Restart */
> +#define  AT91_WDT_WDDIS		BIT(15)		/* Watchdog Disable */
> +#define  AT91_WDT_WDD		(0xfffUL << 16)		/* Delta Value */
> +#define  AT91_WDT_SET_WDD(x)	(((x) << 16) & AT91_WDT_WDD)
> +#define  AT91_WDT_WDDBGHLT	BIT(28)		/* Debug Halt */
> +#define  AT91_WDT_WDIDLEHLT	BIT(29)		/* Idle Halt */
>  
> -#define AT91_WDT_SR		0x08			/* Watchdog Status Register */
> -#define		AT91_WDT_WDUNF		(1 << 0)		/* Watchdog Underflow */
> -#define		AT91_WDT_WDERR		(1 << 1)		/* Watchdog Error */
> +#define AT91_WDT_SR		0x08		/* Watchdog Status Register */
> +#define  AT91_WDT_WDUNF		BIT(0)		/* Watchdog Underflow */
> +#define  AT91_WDT_WDERR		BIT(1)		/* Watchdog Error */
>  
>  #endif

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
