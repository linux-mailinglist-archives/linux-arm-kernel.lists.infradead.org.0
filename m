Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D2D131F56
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 06:32:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3G8UL/LKeF343/kbr7H5B+cg68B4FHl8baeRARMwb8c=; b=OU+Wf7RFpt/oCl
	khV+NT9pvk6I8MtMZQozjIY0zQNQ2WOyJn81W52FEXdT9xL9QtinNRW4RkAH+q7D/bsFUiEycrqnW
	HfcAEgHMc/I4wjmRBiidWZVongAr+zYm03sBUUiNIS4/N3AboJSuyOI9fm+pentP5zr47bwcak9A3
	UqiO077fxxkvHo2GraGkKNGzmDeZDX7F31vBXPOYqBVV+cVdInft869oAMlTM96ArEddYiZslivbn
	AViX7fNQFV26o/UIuqIOEouQMFNSjLIneCsHzkrfyqaI7S4Vg6tNFMJ/pZk6d4Pn+MeXl5g32sz0Y
	1YaeGXnIJi847UzZdkCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iohTD-0000jp-2f; Tue, 07 Jan 2020 05:31:59 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iohT4-0000iv-NP
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 05:31:52 +0000
Received: by mail-pl1-x643.google.com with SMTP id p9so22738708plk.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 21:31:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=0YHUU0Ivx/NHSzvA+8JE0/KSXoBNp97yyXmGvrm2014=;
 b=v5ANRPnNl2ct7jBumu6xMfcn0oB6+pE4UzYLjpgkTXJUHYlOeQy22xib2+2QZKXBxy
 Rz1g5Iy4XFd5rfQQsW6FpkD/kizYYNlKxt4s8NdRYucmZVLuQaoR0UrJo0BF9bFyQACC
 zuLOuT2vnN+pLg37BAloXbPVSi80y+BA+dy1/B1CTkA+GxPdon524WSf/mg6s4gP8Sx7
 kfj8fazRkTRHnI65Gpbc+eiICpcvJYvMVv+8DAkBMGQCnjVxHRP1PyXk/MyCGeSoNM38
 XQDGkosqV23yvEYBzOwziVNLZkUV1z7R6Ren3W0fDc+budS9I18wEj3DcqJAuChdymEa
 HqLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0YHUU0Ivx/NHSzvA+8JE0/KSXoBNp97yyXmGvrm2014=;
 b=Ikjh6NfwTUO4tamyHOvnJeOYixjyf2VQjoUecqN+YPhpOBqm48F+o5m4OqZr/tyATi
 69WdW5k4LdH2x0ib9EUcHIejOcXOgzQmvrwZxZOa9LkA7uaAGowb3eDBVv5qt3mrUnkQ
 a+cmt1RMzbEIuLdR7kZdiTb8Wkciwx3FQy36bjOpbwr0AQscthj8O2o/9PCtkiTKexrk
 GYByS5Q19VD1VrEkVeGuLNdbH9W+Qp0H70JtZBexJRi9+GGKwB36vztKQP1gunfZMjYq
 LOwcLw0g5ao4mz4kEf/A87+JGKFRurjXtpEgNS87gkfR90XQhnNcHCHgXJ0wc6z+0w3E
 EOZQ==
X-Gm-Message-State: APjAAAVd84mL/IHuoZ7B837JuIuJ+ClvVwFXU61C2ckBfftimCVkorBn
 KQNSjzxUCdKlGrXHQMuNwXeJAA==
X-Google-Smtp-Source: APXvYqw44TryZr313hZhrJbhpK95tgknorsfpCrqBBv/Hv0p/mkGQqkZVJlLD6zaK8WcvskkV6QIAw==
X-Received: by 2002:a17:90a:cb8c:: with SMTP id
 a12mr48084076pju.71.1578375109757; 
 Mon, 06 Jan 2020 21:31:49 -0800 (PST)
Received: from localhost ([122.172.26.121])
 by smtp.gmail.com with ESMTPSA id x132sm78621373pfc.148.2020.01.06.21.31.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 Jan 2020 21:31:48 -0800 (PST)
Date: Tue, 7 Jan 2020 11:01:47 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: qiwuchen55@gmail.com
Subject: Re: [PATCH v2] cpufreq: s3c: avoid use after free issue in
 xxx_cpufreq_reboot_notifier_evt()
Message-ID: <20200107053147.v5ooeeshknlqyc3l@vireshk-i7>
References: <1578303861-7217-1-git-send-email-qiwuchen55@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578303861-7217-1-git-send-email-qiwuchen55@gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_213150_809367_6D513AC5 
X-CRM114-Status: GOOD (  19.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
 rjw@rjwysocki.net, krzk@kernel.org, kgene@kernel.org,
 chenqiwu <chenqiwu@xiaomi.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06-01-20, 17:44, qiwuchen55@gmail.com wrote:
> From: chenqiwu <chenqiwu@xiaomi.com>
> 
> There is a potential UAF issue in xxx_cpufreq_reboot_notifier_evt() that
> the cpufreq policy of cpu0 has been released before using it. So we should
> make a judgement to avoid it.

Again, the subject and description are incorrect here. This isn't a user after
free problem as we were already calling cpufreq_cpu_get(). The problem was that
the balancing of refcount wasn't done properly.


> Signed-off-by: chenqiwu <chenqiwu@xiaomi.com>
> ---
> changes in v2:
>  - use the combination of cpufreq_cpu_get() and cpufreq_cpu_put()
>    instead of cpufreq_get_policy() in s3c2416-cpufreq.c
> ---
>  drivers/cpufreq/s3c2416-cpufreq.c | 12 +++++++++++-
>  drivers/cpufreq/s5pv210-cpufreq.c | 11 ++++++++++-
>  2 files changed, 21 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/cpufreq/s3c2416-cpufreq.c b/drivers/cpufreq/s3c2416-cpufreq.c
> index 1069103..f07c5d1 100644
> --- a/drivers/cpufreq/s3c2416-cpufreq.c
> +++ b/drivers/cpufreq/s3c2416-cpufreq.c
> @@ -304,6 +304,7 @@ static int s3c2416_cpufreq_reboot_notifier_evt(struct notifier_block *this,
>  {
>  	struct s3c2416_data *s3c_freq = &s3c2416_cpufreq;
>  	int ret;
> +	struct cpufreq_policy *policy;
>  
>  	mutex_lock(&cpufreq_lock);
>  
> @@ -318,7 +319,16 @@ static int s3c2416_cpufreq_reboot_notifier_evt(struct notifier_block *this,
>  	 */
>  	if (s3c_freq->is_dvs) {
>  		pr_debug("cpufreq: leave dvs on reboot\n");
> -		ret = cpufreq_driver_target(cpufreq_cpu_get(0), FREQ_SLEEP, 0);
> +
> +		policy = cpufreq_cpu_get(0);
> +		if (!policy) {
> +			pr_debug("cpufreq: get no policy for cpu0\n");
> +			return NOTIFY_BAD;
> +		}
> +
> +		ret = cpufreq_driver_target(&policy, FREQ_SLEEP, 0);
> +		cpufreq_cpu_put(policy);
> +
>  		if (ret < 0)
>  			return NOTIFY_BAD;
>  	}
> diff --git a/drivers/cpufreq/s5pv210-cpufreq.c b/drivers/cpufreq/s5pv210-cpufreq.c
> index 5d10030..e84281e 100644
> --- a/drivers/cpufreq/s5pv210-cpufreq.c
> +++ b/drivers/cpufreq/s5pv210-cpufreq.c
> @@ -555,8 +555,17 @@ static int s5pv210_cpufreq_reboot_notifier_event(struct notifier_block *this,
>  						 unsigned long event, void *ptr)
>  {
>  	int ret;
> +	struct cpufreq_policy *policy;
> +
> +	policy = cpufreq_cpu_get(0);
> +	if (!policy) {
> +		pr_debug("cpufreq: get no policy for cpu0\n");
> +		return NOTIFY_BAD;
> +	}
> +
> +	ret = cpufreq_driver_target(policy, SLEEP_FREQ, 0);
> +	cpufreq_cpu_put(policy);
>  
> -	ret = cpufreq_driver_target(cpufreq_cpu_get(0), SLEEP_FREQ, 0);
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
