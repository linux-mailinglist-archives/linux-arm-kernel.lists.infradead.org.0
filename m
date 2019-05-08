Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D367E17E25
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 18:34:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4s3NsHGNyZJRwO+6rMhC9hPF1w353BT+RaQuxCxhrWg=; b=GI+m4F8KSAqCj6
	zYt3OHMkQcRvaYMaN17nWp0bWao+fJ6mRTjwW/GRaK671xIgIFwomRK157vqQtL2Dtwbvz/IllmMZ
	NnfYBPBgZJ3WP4J0mt+2AU3sZPiji9O30Bs3sxcJifxq1LPBFglRQtkuzy3mCKDPoeaG9e3E258qp
	PpqygdqvoEDyqJpPLaMT59R10GBUO0cIh815y5u/EArSTdVTKPhviddlOd8mfY1zT5T/UO76d4M54
	eUUu7APHhoPYVvsQTZlLYgYxQWsHZxRiHDACMMGQ9EYvBU1MPq2G13Z+adsXdzL/YlqrkZTY1YKfK
	cDCzXEoWVj6hJCKOeaKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOPWK-0001Ox-0z; Wed, 08 May 2019 16:34:16 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOPWC-0001OD-4F
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 16:34:09 +0000
Received: by mail-pl1-x644.google.com with SMTP id p15so2987596pll.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 09:34:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=nZa/rVFqYlCABHsDIEvh0ySWcdIXBH3APQZbGajRFsw=;
 b=jn74uX0nUzJwU6Jzp61zr7oCaFQ0C9r23rG7FC5zV3amCN2DOojHeQ9KArVrenveGp
 iE85RZjJpuXu30Xc0kp7ftAQnQ7ha+tKh/myAtQKan+LzZ/wa10j/DLoROtoJxniFgyC
 ixMXiqRwmY6eWQBhcZMc7xw8gUAatIielF3dJW4CvZcF5m+hOkkN1S/GeXnYZSBB4Pms
 gsbkHS74yj1OZ6JWEQOHehT/r2ydBnNerXVmfN6gA2yGEVCX0mXbGerEZl9X883LpBj1
 63+8U0/qaEEjchfBEQRU0yjB38pXBqRZ/NJfL38KrdUK74U93mxcm3QZvNupIh5X71Gq
 p41g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=nZa/rVFqYlCABHsDIEvh0ySWcdIXBH3APQZbGajRFsw=;
 b=eXuy/QhkohFonsHlNxtOSK81bUZm2TtINRMIlptUIMzJrMcLt0yAdhjOTKuGh2Ix8R
 TbXqfUqoWrC8J5odkWiu/o9KtJw5GXzqMY/TWVm3iCNGxv/wLxuJSHzrF7Gqkk7JbMzw
 Gc8pkJjtIdYKGBtzmLMshy88IknKwVqoyQiL+WEzIKboVW/Y2vzBXca1TY5xg9SnrMOV
 G1nWKI7+O64iQsTWCdO4NilHltZ0rkWMoGSGYW7p6DtkVeyxA9QB3sPkXuBiBCuvBt8F
 MgoFbqjDVn+Scnk52cBMgV3dMSuVjPEbXdDIknnMLi+1eeQStx3Y17max65RRFMU7HB6
 2INg==
X-Gm-Message-State: APjAAAUjV+vBM0mN5IoP0K6hfpQMjYCPysUD6BCW2n/pqjLdyIQRYINV
 yUuvTC9+EHLU4E1Jvr8oKNi1CBEQ
X-Google-Smtp-Source: APXvYqyvnGvdh44Gnr++BrN+spWWXY1NLWiDeaNmB9lhagQVN2gQmVZ6rlhb+KR7+MvqWKVfqL1nBQ==
X-Received: by 2002:a17:902:7885:: with SMTP id
 q5mr48746957pll.12.1557333247236; 
 Wed, 08 May 2019 09:34:07 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id h74sm29914217pfj.5.2019.05.08.09.34.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 09:34:06 -0700 (PDT)
Date: Wed, 8 May 2019 09:34:05 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Eugen.Hristev@microchip.com
Subject: Re: [PATCH] watchdog: sama5d4: fix WDD value to be always set to max
Message-ID: <20190508163405.GB5495@roeck-us.net>
References: <1557324535-9050-1-git-send-email-eugen.hristev@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557324535-9050-1-git-send-email-eugen.hristev@microchip.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_093408_167864_92CE794B 
X-CRM114-Status: GOOD (  16.21  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.1 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-watchdog@vger.kernel.org, wim@linux-watchdog.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 08, 2019 at 02:15:03PM +0000, Eugen.Hristev@microchip.com wrote:
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> WDD value must be always set to max (0xFFF) otherwise the hardware
> block will reset the board on the first ping of the watchdog.
> 
Not sure why setting WDD to the same value as WDV would do that,
but on the other side it looks like setting WDD to anything but
the maximum doesn't add any value either, so

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

Guenter

> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> ---
>  drivers/watchdog/sama5d4_wdt.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/watchdog/sama5d4_wdt.c b/drivers/watchdog/sama5d4_wdt.c
> index 1e93c1b..d495336 100644
> --- a/drivers/watchdog/sama5d4_wdt.c
> +++ b/drivers/watchdog/sama5d4_wdt.c
> @@ -111,9 +111,7 @@ static int sama5d4_wdt_set_timeout(struct watchdog_device *wdd,
>  	u32 value = WDT_SEC2TICKS(timeout);
>  
>  	wdt->mr &= ~AT91_WDT_WDV;
> -	wdt->mr &= ~AT91_WDT_WDD;
>  	wdt->mr |= AT91_WDT_SET_WDV(value);
> -	wdt->mr |= AT91_WDT_SET_WDD(value);
>  
>  	/*
>  	 * WDDIS has to be 0 when updating WDD/WDV. The datasheet states: When
> @@ -251,7 +249,7 @@ static int sama5d4_wdt_probe(struct platform_device *pdev)
>  
>  	timeout = WDT_SEC2TICKS(wdd->timeout);
>  
> -	wdt->mr |= AT91_WDT_SET_WDD(timeout);
> +	wdt->mr |= AT91_WDT_SET_WDD(WDT_SEC2TICKS(MAX_WDT_TIMEOUT));
>  	wdt->mr |= AT91_WDT_SET_WDV(timeout);
>  
>  	ret = sama5d4_wdt_init(wdt);
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
