Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA5C159FDB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 05:14:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GZxCPPGSUi6+maXInzv+abSL5/V1FML7JRPe3vRiw+U=; b=mHD5/cC9A157je
	Ravu4/CC3AvIGUZX0qpY0oDPbSZAR6Qn87LLOGv8Jsga/jPBmxIWVMkHP9slXr1MnHBB4LY2fVjuc
	6fq1SKhKiAamYv71/RTgkpcUqiV+gfsKA4eZZ/T3HphrtdNSx1ZaPFT//InNAQep5o9sZe/yh3KNy
	gORAUkuT6ixbaY6jw2OT22k8GOAQtSjMgyIvqhaBhbCxverAu3NhScp+jYgrou20H3cgPPSe5uvib
	9/Je1LrZc2Do8C1VTNcrkRCmQnlk+26xGn43Z5cqN9yWSWbwnG3Xor2QkH9y9Tbv7/ptz/PdIEOGc
	yExYrEBmZa3yr5Zq/ncg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1jQA-00053l-RY; Wed, 12 Feb 2020 04:14:42 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1jQ3-00053L-2D
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 04:14:36 +0000
Received: by mail-pg1-x544.google.com with SMTP id z7so498513pgk.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 20:14:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=XZ3ZYbaVLun1NnfPLPAT22OHZ6g8sxnkwxcv5sKT920=;
 b=vQNupsIMA2yXCaE1orRwVW77FW+9VIa30eWb7zpP19R5c/Aih8ZgTyNQWe/XbON4pp
 ZAGo0WOkutbDdtQLKAzVtyrVRRhxAwGjxr3+mFB3Hv4v1pwuNMx5ki8A/xACtlMQRLQ8
 SLh6uz4/TLXATlp98R1FKlY5R3OrsuTMidbmEsFLMCAhKICB0ecvembRyye8ck/s6nqZ
 6nXjwE9wuBqhdlYLIlMBy0xefSOnrTpW4S7a5bTWkjWxXPp2RKb5H4ScgK+3yHjUZdC3
 ojjGwDcvhic8PndBNnoRpwyull81g/oyxJLqGmiSHapM75PAkbOAJFEwnpH611F80DQ1
 DMzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XZ3ZYbaVLun1NnfPLPAT22OHZ6g8sxnkwxcv5sKT920=;
 b=K8QRy9g6ToS7iGQaJvf5BDKCBNZVngrb8hlwxWf9hHjxE9m56MaWtMoIh46CwY0xRc
 SANx1c/uQoQQIgKQb8gL5+lfN1H5CFOFuNr83/lXaQl7d7BpoD7UGR/Jj7yIhl9r/PB6
 LKxVGb2HG0Mm0lIvVf/+UAqtqnTqpKN8QuZ1ageMaQrJkF9esKep2DEjoPa0DsH4232v
 8Sx9tzLXIIb3FdcDwcCCLKTWt6s017eEInNboIMa2b+TTIHrvDX1eIXP2rWw4w9ClIGp
 rFtiJR/3QDVc4gI+YoPKPCt4AHN/5bciqCyrwK0kw4GBhJUdjEYD83JZ+6gpChP+KL4r
 HWvg==
X-Gm-Message-State: APjAAAVXxXaGlJOZEwduc0/eEaq+TJU3r72uKTVlYYEXI7IrZgrSyIDt
 1clbIR4c9DHJKFBmnOyoglQI7A==
X-Google-Smtp-Source: APXvYqyHSqNTHRqD5NdDHMKHmKYMxDu37PNMyx96YHdVHIep/S7UjgfUEP5hGW8Wmb29BaOidFuxrg==
X-Received: by 2002:a63:36c2:: with SMTP id d185mr10840052pga.59.1581480874044; 
 Tue, 11 Feb 2020 20:14:34 -0800 (PST)
Received: from localhost ([122.167.210.63])
 by smtp.gmail.com with ESMTPSA id h11sm121982pgk.48.2020.02.11.20.14.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Feb 2020 20:14:33 -0800 (PST)
Date: Wed, 12 Feb 2020 09:44:31 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Ionela Voinescu <ionela.voinescu@arm.com>
Subject: Re: [PATCH v3 5/7] cpufreq: add function to get the hardware max
 frequency
Message-ID: <20200212041431.x5ginopepyyqu7wt@vireshk-i7>
References: <20200211184542.29585-1-ionela.voinescu@arm.com>
 <20200211184542.29585-6-ionela.voinescu@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200211184542.29585-6-ionela.voinescu@arm.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_201435_170558_A4716666 
X-CRM114-Status: GOOD (  19.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, maz@kernel.org, suzuki.poulose@arm.com,
 peterz@infradead.org, catalin.marinas@arm.com, linux-pm@vger.kernel.org,
 linux-doc@vger.kernel.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 mingo@redhat.com, linux-arm-kernel@lists.infradead.org, sudeep.holla@arm.com,
 will@kernel.org, valentin.schneider@arm.com, lukasz.luba@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11-02-20, 18:45, Ionela Voinescu wrote:
> Add weak function to return the hardware maximum frequency of a
> CPU, with the default implementation returning cpuinfo.max_freq.
> 
> The default can be overwritten by a strong function in platforms
> that want to provide an alternative implementation.
> 
> Signed-off-by: Ionela Voinescu <ionela.voinescu@arm.com>
> Cc: Rafael J. Wysocki <rjw@rjwysocki.net>
> Cc: Viresh Kumar <viresh.kumar@linaro.org>
> ---
>  drivers/cpufreq/cpufreq.c | 20 ++++++++++++++++++++
>  include/linux/cpufreq.h   |  5 +++++
>  2 files changed, 25 insertions(+)
> 
> diff --git a/drivers/cpufreq/cpufreq.c b/drivers/cpufreq/cpufreq.c
> index 77114a3897fb..d2ff3018861d 100644
> --- a/drivers/cpufreq/cpufreq.c
> +++ b/drivers/cpufreq/cpufreq.c
> @@ -1733,6 +1733,26 @@ unsigned int cpufreq_quick_get_max(unsigned int cpu)
>  }
>  EXPORT_SYMBOL(cpufreq_quick_get_max);
>  
> +/**
> + * cpufreq_get_hw_max_freq - get the max hardware frequency of the CPU
> + * @cpu: CPU number
> + *
> + * The default return value is the max_freq field of cpuinfo.
> + */
> +__weak unsigned int cpufreq_get_hw_max_freq(unsigned int cpu)
> +{
> +	struct cpufreq_policy *policy = cpufreq_cpu_get(cpu);
> +	unsigned int ret_freq = 0;
> +
> +	if (policy) {
> +		ret_freq = policy->cpuinfo.max_freq;
> +		cpufreq_cpu_put(policy);
> +	}
> +
> +	return ret_freq;
> +}
> +EXPORT_SYMBOL(cpufreq_get_hw_max_freq);
> +
>  static unsigned int __cpufreq_get(struct cpufreq_policy *policy)
>  {
>  	if (unlikely(policy_is_inactive(policy)))
> diff --git a/include/linux/cpufreq.h b/include/linux/cpufreq.h
> index 31b1b0e03df8..b4423ff619f4 100644
> --- a/include/linux/cpufreq.h
> +++ b/include/linux/cpufreq.h
> @@ -194,6 +194,7 @@ extern struct kobject *cpufreq_global_kobject;
>  unsigned int cpufreq_get(unsigned int cpu);
>  unsigned int cpufreq_quick_get(unsigned int cpu);
>  unsigned int cpufreq_quick_get_max(unsigned int cpu);
> +unsigned int cpufreq_get_hw_max_freq(unsigned int cpu);
>  void disable_cpufreq(void);
>  
>  u64 get_cpu_idle_time(unsigned int cpu, u64 *wall, int io_busy);
> @@ -223,6 +224,10 @@ static inline unsigned int cpufreq_quick_get_max(unsigned int cpu)
>  {
>  	return 0;
>  }
> +static inline unsigned int cpufreq_get_hw_max_freq(unsigned int cpu)
> +{
> +	return 0;
> +}
>  static inline void disable_cpufreq(void) { }
>  #endif

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
