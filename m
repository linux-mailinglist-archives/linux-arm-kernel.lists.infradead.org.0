Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C83115D0DF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 15:40:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5akOp4dcGmmyX/SyUcEKymSBnAENXWNlwo2uvQd7LfA=; b=qYC3mP2oTAT7aG
	vMztqPGhhjI/gGXb51LQ3Is7MkPgRR/cIzL9FAWj+p3JZkdX9TNicYQgRr9ya4eGW9BIc2JEXk2kS
	qEgnq8cZ52FkBJgHlGDLd9OTTrjZS5s3V6LQoK4QRrBF9+jv0pgjs1/lg5ZfemSjylD43y4uDwWT/
	MHcH2UkSoIOT6C8WMVy+b+/Pq0IF9PuCiPGkzdTdLdXgAc38Zn9CG7/aAHeEZaP8NiUKpz1She/Qr
	Y3QXZI1bave6oqOHjzf1FFUa/Nj6x+MKvzCZnrlv5DaItA6LgDcsOzrH2sVPrxzXbvOdK1c8QHzDe
	20andx4xVut/p8D2beyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiJ1h-00056H-9I; Tue, 02 Jul 2019 13:40:53 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiJ1T-00055V-LK
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 13:40:41 +0000
Received: by mail-pf1-x442.google.com with SMTP id x15so8282958pfq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 06:40:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=TG01TGISb1yaWBogYU6mOa7ow9eBYHJfFmPCCNfkb5M=;
 b=smcXrkSUJ7rZrYSKdhGuS234aAc2L4NUovI+9Jh5zaHdqd8Lc2ZLImzROrsYAaRluZ
 hjRjyDZ3IuV7aW2oLPDRhlT38+mFZAoimJPMrL9oa9sI79lrXWiJhK33ucc9HEBRdT/3
 wdMiB+8W7xVE0UCW2Ajunyn0LUBpXKOI8yf2edhyqZLuAhq70tUNf9tzJkuTa9LSuZii
 NO9TRqdLZs30F408XkvP507HQaEXLvPDl/OgiA/W15XNKKlgshlaov5KrWLW2T74Wn/y
 QD7stJDgihpq5zUOuhv0mOX2d14sa3fhvO4BiXEJElF9tk3/FNx3FQU1YOe/RJQPWKuQ
 /W0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=TG01TGISb1yaWBogYU6mOa7ow9eBYHJfFmPCCNfkb5M=;
 b=IJgtfIClP2pnfHrHtWCBPCz99r5795XR/gdbsblkxSyHqFQuRxC+ElsOeQi1YSmKgL
 46B6fjl+cAK1slzFP/+G5OkaGDZmqpVZG38RYI44nh+LAibC5iCum3XIPqVuZzTGtimS
 aNXoWW1GM/OJzzRkgL6gJYxAwJUH8jComTd/ILXgIQw+fZpzOcZC+WkHmH0zKaQmX21T
 vIr0PBxVG2w0LBNoI6VJvJR8yDSJotRjPzCKmvpoodmobg6wCZmGah+mPLqkUXefTZIY
 bk0w4a5dWRm3lLw8etW2jQsK9UQENebUs0W8+np3MjtD6J6yaRXAExJGBvFICdvJcZE3
 AyOw==
X-Gm-Message-State: APjAAAXnr5eaSwT5N+3/qLowajPbGx2spE66EOAYrrlNyC59J27Xg1ks
 u5q+ZEVuCQAnVx03ZRDHcB0=
X-Google-Smtp-Source: APXvYqywgKjj5HcP6LGVDjHKN+eHEzwJaObV/i9U5epabyKIF9WYhMzD1XH0fJ4ei3TIuE7aNAwsyg==
X-Received: by 2002:a63:4105:: with SMTP id o5mr31798673pga.308.1562074838556; 
 Tue, 02 Jul 2019 06:40:38 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id a3sm17913917pfi.63.2019.07.02.06.40.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jul 2019 06:40:38 -0700 (PDT)
Date: Tue, 2 Jul 2019 06:40:37 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Ken Sloat <KSloat@aampglobal.com>
Subject: Re: [PATCH v2 1/1] watchdog: atmel: atmel-sama5d4-wdt: Disable
 watchdog on system suspend
Message-ID: <20190702134037.GA23223@roeck-us.net>
References: <20190614125310.29458-1-ksloat@aampglobal.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614125310.29458-1-ksloat@aampglobal.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_064039_724796_BF5A8398 
X-CRM114-Status: GOOD (  20.43  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ludovic.desroches@microchip.com" <ludovic.desroches@microchip.com>,
 "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 12:53:22PM +0000, Ken Sloat wrote:
> From: Ken Sloat <ksloat@aampglobal.com>
> 
> Currently, the atmel-sama5d4-wdt continues to run after system suspend.
> Unless the system resumes within the watchdog timeout period so the
> userspace can kick it, the system will be reset. This change disables
> the watchdog on suspend if it is active and re-enables on resume. These
> actions occur during the late and early phases of suspend and resume
> respectively to minimize chances where a lock could occur while the
> watchdog is disabled.
> 
> Signed-off-by: Ken Sloat <ksloat@aampglobal.com>
> Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
>  Changes in v2:
>  -Consolidate resume and resume early statements.
> 
>  drivers/watchdog/sama5d4_wdt.c | 21 ++++++++++++++++++---
>  1 file changed, 18 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/watchdog/sama5d4_wdt.c b/drivers/watchdog/sama5d4_wdt.c
> index 111695223aae..0d123f8cbcc6 100644
> --- a/drivers/watchdog/sama5d4_wdt.c
> +++ b/drivers/watchdog/sama5d4_wdt.c
> @@ -280,7 +280,17 @@ static const struct of_device_id sama5d4_wdt_of_match[] = {
>  MODULE_DEVICE_TABLE(of, sama5d4_wdt_of_match);
>  
>  #ifdef CONFIG_PM_SLEEP
> -static int sama5d4_wdt_resume(struct device *dev)
> +static int sama5d4_wdt_suspend_late(struct device *dev)
> +{
> +	struct sama5d4_wdt *wdt = dev_get_drvdata(dev);
> +
> +	if (watchdog_active(&wdt->wdd))
> +		sama5d4_wdt_stop(&wdt->wdd);
> +
> +	return 0;
> +}
> +
> +static int sama5d4_wdt_resume_early(struct device *dev)
>  {
>  	struct sama5d4_wdt *wdt = dev_get_drvdata(dev);
>  
> @@ -291,12 +301,17 @@ static int sama5d4_wdt_resume(struct device *dev)
>  	 */
>  	sama5d4_wdt_init(wdt);
>  
> +	if (watchdog_active(&wdt->wdd))
> +		sama5d4_wdt_start(&wdt->wdd);
> +
>  	return 0;
>  }
>  #endif
>  
> -static SIMPLE_DEV_PM_OPS(sama5d4_wdt_pm_ops, NULL,
> -			 sama5d4_wdt_resume);
> +static const struct dev_pm_ops sama5d4_wdt_pm_ops = {
> +	SET_LATE_SYSTEM_SLEEP_PM_OPS(sama5d4_wdt_suspend_late,
> +			sama5d4_wdt_resume_early)
> +};
>  
>  static struct platform_driver sama5d4_wdt_driver = {
>  	.probe		= sama5d4_wdt_probe,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
