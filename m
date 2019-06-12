Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F49442ADA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 17:24:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=S87jaDiohmPTKXPmOD5TCcYl5yjB3VcusgMCs4aGiyI=; b=JQGk3i9rGpG6y/0ZgaTolzCRy
	rOT0/IdlQ5RjUwrWYuRgJU+kpqGvA5jqcezK0sWc56HHENzY581i+64Je886PSZHpEKX5DOCQfOKs
	BmzwLEubzunvcT2OT3vwHiXt0vpfSRVrfGU84s2+XTrKTp39tH4BSvRg9w6/YB5HM0I8EQZj1n+xk
	X7nYUO5Zq1X3MXEWOYDpb1R9GWRvh3Tc4ur+ArDjgjpUw7nIR+zmo1VNSJhOJOxSc0TPWR0WTaVrQ
	jzPbPO5FOFimxFWKnALaqTyCly4eGcEoWfBG8H9ryvmebCK/j4lx1wCOPHzlKLiNVYr2mCAWcPCVK
	uhwU1Y+jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb56s-0004rh-Lc; Wed, 12 Jun 2019 15:24:22 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb56l-0004qi-5N
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 15:24:16 +0000
Received: by mail-pf1-x444.google.com with SMTP id i189so9851874pfg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 08:24:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Fj8w7JFwxSiJmuLmJTCqCfMeiQ/Z4xIXLViQMCuR7R8=;
 b=BueqaEpqE3yTy8qRAlT1y+RnLGUPcAfbZ9U8bwaVmBNE8GA58uNSFoDwn5ZbqCJbX0
 dhX/kgshtQdziUqhbWq22zptY56mz9uS5anM+Rn/VXWeqjHrFhNzy/wnwxQ/pG67aHyU
 tcXvwqgFhx/q0Gp6TAzEfmL+bj5yBzm1bqEjJpqOnIwJTGpQBiXBJLocPKX96O+RRpgP
 ypgQVGAe753s05t2Pqka0ytbu0xKxS9J6ARXTnYHrEgoDiioqolJ5qf6G59h+4HGU8Zc
 YyeF+lZ7kdW6IsLrvH/DS4vt0vjxN/To3DkR4P4jPsxpgtXdH8TA99gYLsHjKC4GJ35p
 WyAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Fj8w7JFwxSiJmuLmJTCqCfMeiQ/Z4xIXLViQMCuR7R8=;
 b=uVjFOxA+p1yMbqWuzPy8+WW+WM//ZivijRFIRYjykubH9mGp0oI6XYngSI0X4nM67R
 CbQ7EK0mro0SaCjakj63B3bVFUa+sRwF5+Ub5JavynfUMWjskadClhr2q+ZYvI3ONu/h
 KkI6RZHBs30fExOWbHCVinGmK8+WWk9+7HTee49UHF7kPj4DsnE7vGj2CRsPdaYOFOBi
 4/8/Pgq9w4CI+ueHARpFtPzsOUaB8y4M49JLQe4mHm1FQGsCeI5MR/K9dA51W0wsDa3Y
 +Pi50FgkfdGi7OtzeOG61h20S1qdHawPbJzSG/kZ6+cscPrCqMqjez1MGcaxCvc2TmG/
 VpXQ==
X-Gm-Message-State: APjAAAX8+tPt4hiyKK+KrJeSb61qikaZ7n28YRsjMHgfrWyXZylmkmeh
 eXLVvB1iAGJ4g1LfyqUzcgs=
X-Google-Smtp-Source: APXvYqwKlVFqfb3mgwvUK2av74PQnxpr/vAe172n2dcNuwwZhDxNLFcfKnU0R2L+6vNbVlyJyRB2gw==
X-Received: by 2002:a63:4d08:: with SMTP id a8mr9743550pgb.329.1560353053032; 
 Wed, 12 Jun 2019 08:24:13 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 z3sm223990pjn.16.2019.06.12.08.24.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 Jun 2019 08:24:11 -0700 (PDT)
Subject: Re: [PATCH v1 1/1] watchdog: atmel: atmel-sama5d4-wdt: Disable
 watchdog on system suspend
To: Ken Sloat <KSloat@aampglobal.com>,
 "nicolas.ferre@microchip.com" <nicolas.ferre@microchip.com>
References: <20190612150154.16778-1-ksloat@aampglobal.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <8af0794a-327d-7144-609f-0c56422e92ec@roeck-us.net>
Date: Wed, 12 Jun 2019 08:24:10 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190612150154.16778-1-ksloat@aampglobal.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_082415_230417_189846F5 
X-CRM114-Status: GOOD (  21.99  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ludovic.desroches@microchip.com" <ludovic.desroches@microchip.com>,
 "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/12/19 8:02 AM, Ken Sloat wrote:
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
> ---
>   drivers/watchdog/sama5d4_wdt.c | 31 +++++++++++++++++++++++++++++--
>   1 file changed, 29 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/watchdog/sama5d4_wdt.c b/drivers/watchdog/sama5d4_wdt.c
> index 111695223aae..84eb4db23993 100644
> --- a/drivers/watchdog/sama5d4_wdt.c
> +++ b/drivers/watchdog/sama5d4_wdt.c
> @@ -280,6 +280,18 @@ static const struct of_device_id sama5d4_wdt_of_match[] = {
>   MODULE_DEVICE_TABLE(of, sama5d4_wdt_of_match);
>   
>   #ifdef CONFIG_PM_SLEEP
> +static int sama5d4_wdt_suspend_late(struct device *dev)
> +{
> +	struct sama5d4_wdt *wdt;
> +
> +	wdt = dev_get_drvdata(dev);
> +
> +	if (watchdog_active(&wdt->wdd))
> +		sama5d4_wdt_stop(&wdt->wdd);
> +
> +	return 0;
> +}
> +
>   static int sama5d4_wdt_resume(struct device *dev)
>   {
>   	struct sama5d4_wdt *wdt = dev_get_drvdata(dev);
> @@ -293,10 +305,25 @@ static int sama5d4_wdt_resume(struct device *dev)
>   
>   	return 0;
>   }
> +
> +static int sama5d4_wdt_resume_early(struct device *dev)
> +{
> +	struct sama5d4_wdt *wdt;
> +
> +	wdt = dev_get_drvdata(dev);
> +
> +	if (watchdog_active(&wdt->wdd))
> +		sama5d4_wdt_start(&wdt->wdd);
> +
> +	return 0;
> +}
>   #endif
>   
> -static SIMPLE_DEV_PM_OPS(sama5d4_wdt_pm_ops, NULL,
> -			 sama5d4_wdt_resume);
> +static const struct dev_pm_ops sama5d4_wdt_pm_ops = {
> +	SET_SYSTEM_SLEEP_PM_OPS(NULL, sama5d4_wdt_resume)
> +	SET_LATE_SYSTEM_SLEEP_PM_OPS(sama5d4_wdt_suspend_late,
> +			sama5d4_wdt_resume_early)

I don't think you need both sama5d4_wdt_resume()
and sama5d4_wdt_resume_early().

Guenter

> +};
>   
>   static struct platform_driver sama5d4_wdt_driver = {
>   	.probe		= sama5d4_wdt_probe,
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
