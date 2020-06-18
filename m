Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 789701FEF10
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 11:54:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rk4iFJB8pOrSBFaGuEamHgc9FfXd0VP1tYzffj9+M9U=; b=CzebWkgcULDe/w
	ARCqP66O2QUN0gQyda+OSBO07zsRjrYSyeOUtHl6NRE8MYWfz+WtiiLL2gOF6qYXATO2KOAX3axf2
	TnZBjdeYl3BxEeERDoWbPPHxrLTDy83AiDxnWPohjIZaAr33UCRpBqK7zlXfiZUEddDz8gZkKB5N2
	veoPFdZeOiMdeGup6UKrm+ZfHTTFXjyooUJcAapNfQ5aXZ5vmmlZLfdacNFlyaN4GMr5kZ2n6sEZH
	KowaEHSunjHiqDz5A80NzxMN/fBBrMXqyKy4LLothyVi0qg1UGWwYFdQPgl0F8FuVEPuPe448Mmkr
	6jIiux1r6ohqwyl6Ci6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlrFq-0006U7-KC; Thu, 18 Jun 2020 09:54:42 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlrFh-0006TU-92
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 09:54:34 +0000
Received: by mail-pj1-x1041.google.com with SMTP id k2so2314031pjs.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 02:54:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=jxYaQFOuethLH+6qCp7SYy5ev2dqdee2Bmv5jtz/8kU=;
 b=SwZyvRFdIOLAmwWOUo+F40IAyx5vcY7t7VtCMKmlXE5959lxtrfuSOav6SXn4HEn9b
 qfL+cZUXFpZGvbPTC0VlkifpM0hcelUY7m2dbEIVCQDc0i5gwQLG8jRublPoOSB8U/A1
 CKLeuwPhIXsjBVZHBPSvT9aVkkzWnvLpesnQzIHA/l82U+rOC2gO5V0int8I8RCnhuNo
 eFYWYbjZF600Vd0sOYvGaO0vsM6+v/nsa46OEeu+OWY/jwRx2Rrz2AOy43tjQbMeADoK
 vP+wEJo0eNBi9Zt0Hpo4x1Wd/Dg1bEnKYbB1LhKC/pAUd14DWmTBmrs7gvgmBx27wOQq
 Nzkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=jxYaQFOuethLH+6qCp7SYy5ev2dqdee2Bmv5jtz/8kU=;
 b=jgQOJQ1gmIDoJ0hg3vPPA4I91v8v7+HcQgE+QGop9dImDy05C/faNN3u9VCk+bi25o
 94d03FhWpUN5szR8s1LfMve16hYjZwCR1zAoPazoZgvPNHQ8VPWZMbQk66zw0odmbPoH
 6UFvqk4agkTsqWSTN35t8MHUI5Bzjn19l5HwYtkdytvLgt6mGu2lv6BG62FImFu2eZyM
 7MbAerYW8xnXf5OfWVDMhY2Wq+3ow3TgOBzorwTO4ghgVw16G2L8Nor47pm7Th+eh915
 7ZwcEaDRpnDrxXvjQsy/Ktxz5FNuVOFhP1Xyex4adEH89SFFOqdF80doHJ699KdM51Be
 Ez6Q==
X-Gm-Message-State: AOAM531zuMtJQ32drn+bbi+w3bxsqtyZtTWVnEZuTawiYRT8LZlIN1lN
 FqgQbC+JZhMlt+BERQpd8u/3KQ==
X-Google-Smtp-Source: ABdhPJwri2PoCABkalcKuQR/pD7ASrRIrdyeZ9bnWjTeKTykWL3STjOgPPvyP9Bl4x+fqvXirq3UgQ==
X-Received: by 2002:a17:902:ee12:: with SMTP id
 z18mr2983112plb.308.1592474072433; 
 Thu, 18 Jun 2020 02:54:32 -0700 (PDT)
Received: from localhost ([122.172.119.132])
 by smtp.gmail.com with ESMTPSA id z144sm2567092pfc.195.2020.06.18.02.54.30
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 18 Jun 2020 02:54:31 -0700 (PDT)
Date: Thu, 18 Jun 2020 15:24:29 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Nicola Mazzucato <nicola.mazzucato@arm.com>
Subject: Re: [PATCH 2/2] cpufreq: arm_scmi: Set fast_switch_possible
 conditionally
Message-ID: <20200618095429.tj3ddquy5m2q367e@vireshk-i7>
References: <20200617094332.8391-1-nicola.mazzucato@arm.com>
 <20200617094332.8391-2-nicola.mazzucato@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200617094332.8391-2-nicola.mazzucato@arm.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_025433_380069_DAB275A0 
X-CRM114-Status: GOOD (  17.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
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
Cc: linux-pm@vger.kernel.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, sudeep.holla@arm.com,
 lukasz.luba@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17-06-20, 10:43, Nicola Mazzucato wrote:
> Currently the fast_switch_possible flag is set unconditionally
> to true. Based on this, schedutil does not create a
> thread for frequency switching and would always use the
> fast switch path.
> However, if the platform does not support frequency
> fast switch, this may cause the governor to attempt an
> operation that is not supported by the platform.
> 
> Fix this by correctly retrieve the fast_switch capability
> from the driver which knows if the platform can support
> this feature.
> 
> Suggested-by: Lukasz Luba <lukasz.luba@arm.com>
> Signed-off-by: Nicola Mazzucato <nicola.mazzucato@arm.com>
> ---
>  drivers/cpufreq/scmi-cpufreq.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/cpufreq/scmi-cpufreq.c b/drivers/cpufreq/scmi-cpufreq.c
> index 61623e2ff149..1cf688fcb56b 100644
> --- a/drivers/cpufreq/scmi-cpufreq.c
> +++ b/drivers/cpufreq/scmi-cpufreq.c
> @@ -198,7 +198,8 @@ static int scmi_cpufreq_init(struct cpufreq_policy *policy)
>  
>  	policy->cpuinfo.transition_latency = latency;
>  
> -	policy->fast_switch_possible = true;
> +	policy->fast_switch_possible =
> +		handle->perf_ops->fast_switch_possible(handle, cpu_dev);
>  
>  	em_register_perf_domain(policy->cpus, nr_opp, &em_cb);

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
