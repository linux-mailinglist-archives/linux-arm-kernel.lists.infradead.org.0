Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E90C3130D43
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 06:48:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lagQsMbKrSzlvdc/xpvQ9EOUV+hGVs4V8UJR7HJPAw8=; b=p+KDlenJST9Foi
	l5dVIUcGWmn1kCveMkbgMLYKbylBKiIWaJO1Lr06eZs3yd+AhtaoC/LmJepRS8jGlbIQs+1uQE5aH
	RhHVKuOrfNLhVEeHwW4VimVqGfwhBi3HH/3hVB4vK+OMGTHsn7hY9HR6Yx3lb4AeHlurMuggilVnh
	TwIkOLCaSRRv8UXII7H1UWpeXaDcs9gYKQl+JXmh8kVSFqNJW8kvN0BIVwUM9ZLCGBKzPlrWE8Oci
	O1vX6wOGxpwSmyDU1jHe1XJTREPSiL89c/rxc8BJS2/3jxFbHsVaS5mmMhF/XwQEP2s0rxmoHrwV9
	ZwReeJ020Q3GP0GBIlZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioLFV-0000NC-A6; Mon, 06 Jan 2020 05:48:21 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioLFP-0000MU-7R
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 05:48:17 +0000
Received: by mail-pj1-x1044.google.com with SMTP id bg7so7303883pjb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Jan 2020 21:48:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ittmWLzoiwbYfzA04b4FRh3oV8Mt00ekdOIO1DGBia4=;
 b=PCgb8ZzsvivfjE9d60WEMDMyQbNBzEHv5fBK7m3g+KRKmJWigbH5K1vjI2ggSi7juH
 HZhxqwZvLlxCGMbISviW9+xituKp0g0kxYOff5eS7vH2ZjXUOm2g1g6i/UDEiUaB6ga4
 HWKRqfxhjX6jwLoDoTY5NRJpWervYA1ksV0EESrmsJX8eZUly31FDgtdL4x2rv3y+QjF
 ppQA3qywUSgo6nlLkTaBFRp48rA1AtwpypHyQsb/2ggxnfe/mPfSEx5qOxc/aYYW6APm
 aMzObXB6sDp7jt7vOWa2wDlO2JX8yi1QnBLwF4ZSGVkbXA3X5GxaNKC4XB6LuqQ9w8R3
 Upvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ittmWLzoiwbYfzA04b4FRh3oV8Mt00ekdOIO1DGBia4=;
 b=Iwp8AWUSeb4x7ZVmA564agEa+Dk8M4tWDVYPnvaAbmXv9DsnuxO4rwBoYRVBd94v2F
 1OU0793p9BEJn2y60zTdpNOtQUDxiK7qqtf8h3oLvX0PRVH5bOl8Uz7FHxayaXvJcW/5
 1EFY+c+6/eiNcxXxxzFnnssj6fDWp3COF2NwDW33QoQf0KjSsQgg4ZW8JTkdpDe9G+sS
 SLn+kN1d5eCWeC8SZPZ/uANvXi3Cnq75X8WGXuOZuamxQGQi+UXUl/R6na6TXdiw4QRF
 UdMevnfMZvBOw4Dwg6O5qfM6ebpnR/I/3WpOf6qOaRkQcSOyzes/RP7zUg7oHVY5Q3/H
 r7Qg==
X-Gm-Message-State: APjAAAValbMvSvWV04VduaIoMj2T/dq61PErNPT28c4X31TjUQL9M8L9
 +wn58qv3HsfVot3C5x/XSF6low==
X-Google-Smtp-Source: APXvYqzY7Y/N3u1EIAlYonSqEdQqQr5D/DGlIXfcIAtx/yQ+I9zoC0IR+vPRp+fuNusv/Ptc8RdGSA==
X-Received: by 2002:a17:90a:5806:: with SMTP id
 h6mr41233347pji.63.1578289693795; 
 Sun, 05 Jan 2020 21:48:13 -0800 (PST)
Received: from localhost ([122.172.26.121])
 by smtp.gmail.com with ESMTPSA id 64sm73939461pfd.48.2020.01.05.21.48.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 05 Jan 2020 21:48:13 -0800 (PST)
Date: Mon, 6 Jan 2020 11:18:11 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: qiwuchen55@gmail.com
Subject: Re: [PATCH] cpufreq: s3c: avoid use after free issue in
 xxx_cpufreq_reboot_notifier_evt()
Message-ID: <20200106054811.uduf2qdn5ecvbwrc@vireshk-i7>
References: <1577515439-14477-1-git-send-email-qiwuchen55@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1577515439-14477-1-git-send-email-qiwuchen55@gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_214815_462735_2F5616A6 
X-CRM114-Status: GOOD (  18.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, krzk@kernel.org,
 kgene@kernel.org, chenqiwu <chenqiwu@xiaomi.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 28-12-19, 14:43, qiwuchen55@gmail.com wrote:
> From: chenqiwu <chenqiwu@xiaomi.com>
> 
> There is a potential UAF issue in xxx_cpufreq_reboot_notifier_evt() that
> the cpufreq policy of cpu0 has been released before using it. So we should
> make a judgement to avoid it.

There is no UAF problem here, but that we do cpufreq_cpu_get() with a
corresponding cpufreq_cpu_put().

> Signed-off-by: chenqiwu <chenqiwu@xiaomi.com>
> ---
>  drivers/cpufreq/s3c2416-cpufreq.c | 11 ++++++++++-
>  drivers/cpufreq/s5pv210-cpufreq.c | 10 +++++++++-
>  2 files changed, 19 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/cpufreq/s3c2416-cpufreq.c b/drivers/cpufreq/s3c2416-cpufreq.c
> index 1069103..0f576ba 100644
> --- a/drivers/cpufreq/s3c2416-cpufreq.c
> +++ b/drivers/cpufreq/s3c2416-cpufreq.c
> @@ -304,6 +304,7 @@ static int s3c2416_cpufreq_reboot_notifier_evt(struct notifier_block *this,
>  {
>  	struct s3c2416_data *s3c_freq = &s3c2416_cpufreq;
>  	int ret;
> +	struct cpufreq_policy policy;
>  
>  	mutex_lock(&cpufreq_lock);
>  
> @@ -318,7 +319,15 @@ static int s3c2416_cpufreq_reboot_notifier_evt(struct notifier_block *this,
>  	 */
>  	if (s3c_freq->is_dvs) {
>  		pr_debug("cpufreq: leave dvs on reboot\n");
> -		ret = cpufreq_driver_target(cpufreq_cpu_get(0), FREQ_SLEEP, 0);
> +
> +		memset(&policy, 0, sizeof(policy));
> +		ret = cpufreq_get_policy(&policy, 0);
> +		if (ret < 0) {
> +			pr_debug("cpufreq: get no policy for cpu0\n");
> +			return NOTIFY_BAD;
> +		}
> +

This doesn't make sense to me, why don't you do cpufreq_cpu_get() and
put() instead ?

> +		ret = cpufreq_driver_target(&policy, FREQ_SLEEP, 0);
>  		if (ret < 0)
>  			return NOTIFY_BAD;
>  	}
> diff --git a/drivers/cpufreq/s5pv210-cpufreq.c b/drivers/cpufreq/s5pv210-cpufreq.c
> index 5d10030..d99b4b1 100644
> --- a/drivers/cpufreq/s5pv210-cpufreq.c
> +++ b/drivers/cpufreq/s5pv210-cpufreq.c
> @@ -555,8 +555,16 @@ static int s5pv210_cpufreq_reboot_notifier_event(struct notifier_block *this,
>  						 unsigned long event, void *ptr)
>  {
>  	int ret;
> +	struct cpufreq_policy *policy;
>  
> -	ret = cpufreq_driver_target(cpufreq_cpu_get(0), SLEEP_FREQ, 0);
> +	policy = cpufreq_cpu_get(0);
> +	if (!policy) {
> +		pr_debug("cpufreq: get no policy for cpu0\n");
> +		return NOTIFY_BAD;
> +	}
> +
> +	ret = cpufreq_driver_target(policy, SLEEP_FREQ, 0);
> +	cpufreq_cpu_put(policy);

Like what is done here.

Also add a blank line here.

>  	if (ret < 0)
>  		return NOTIFY_BAD;
>  
> -- 
> 1.9.1

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
