Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 923A8E107F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 05:23:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9gwKvdtaUh5Y4mI5R8XgiPseNuKb1GjUDz76IewJG08=; b=Dxx19dMRVocl+F
	ZP81KRfIT6Xd74uxJSIb7uiB+wXBXz5G8YqUz9+GXFPSwksVpHCTZi2539gmo2kP1erSeyIa9cCPM
	4YYiOZY9J3yFQUI7wtJatQyNYdCp4Jh/JuC7VWUxMcnrMO8/7KWQoOyzDz3be0LDqwpCfyQjKnKqm
	3n6TovIZmwiePlQAX6Jvel5hVuLNBBwBcYpJJYC1NjLjBOTwfo9EDT5eEhEW3TC0h8FI0bn2jYYt7
	frj5DexmlwAzRFd6TT7kuTWNisc/ZnlefrroFRMuBpyq0W8lsR1JT5/O5dHM1FVCAokwrw3otbVSb
	DmS6ot+QvqrxASSQLcoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN7Ez-0002D1-PS; Wed, 23 Oct 2019 03:23:17 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN7Eq-0002CO-HK
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 03:23:10 +0000
Received: by mail-pf1-x441.google.com with SMTP id a2so11971061pfo.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 20:23:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=vG1wlSoVjAH3TslkWdryreWfIFyS6PFtkukPqp6iu6k=;
 b=LXsEOBqKOd15Ki+pYR61bVtYMBRigi5yBLP9kWdnCjKN1Swh9GjKCUwx0e3QhP41oi
 f6UJc+sH3LzMZoN5qWZvLMzAjEU16NRk8kTsJPTu7URZghySrGM6OTxY9fqqjuAyt3uB
 HxfziLk4zNdgSGfMY3vn4D+fHbIQTuh2zDQX0+0jzinbdY/BmlbbGmqBiBOcegI/b0tJ
 ojhMWWAwm3fDesTkzWreV/gkOS+mhpjHcAcqoqKZc4aFnm+M4kBRGIj5lV0WwPW/N7Pj
 2xkTKceWyv4TxlJ6s5uVbJ7Pb8+aahzzhlR9yxioAT2pJFcOEdxw0J2tRmXjARLs2pFt
 whlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=vG1wlSoVjAH3TslkWdryreWfIFyS6PFtkukPqp6iu6k=;
 b=kMx4nH0IRvpmvvplDEpaCg1w9ZvikwtiucfdKs+rAYuw9oRIhuF+MQEfiUPxFkbaeB
 41d6P7GflnrzO8Muja3x5Kj3GLBvFXaq/WdstWE5s/rdowpVUFfXdnEcHw/93xiaWuNG
 k627ANNiB8Ta87yGiq7S2Nu+GfdW4CoDMic6TTOGkw1zdTFVELyHXDaJxTlCYtqgFdBy
 mAe3XIjp76F89C9K47ufqK3Awy5puy6OwrOnFgQr50AzOrFv9cd0jF12seZLBn1m5d8D
 K/thIlpDocZWf6GV8zoYr478GSk3Z/WTLOJZM1xUF/9RO6BKoJh2VcuNAI+sEboeuGcT
 +X1Q==
X-Gm-Message-State: APjAAAUOhPRyI/dj/RvlcBKG/xeukj+ypGI1VFfjJ2xC7pdqRMdxCexx
 hb0tkedIuJaVPTHcIIAk0Tf9Qg==
X-Google-Smtp-Source: APXvYqzL207UMotVVbLIBySCNyQniimBEc7wiboiIj6T8IbhYFht01SBvULx1tt1kgQWqReZqGRDrQ==
X-Received: by 2002:a17:90a:ac12:: with SMTP id
 o18mr8782943pjq.93.1571800985488; 
 Tue, 22 Oct 2019 20:23:05 -0700 (PDT)
Received: from localhost ([122.172.151.112])
 by smtp.gmail.com with ESMTPSA id f15sm19700257pfd.141.2019.10.22.20.23.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Oct 2019 20:23:04 -0700 (PDT)
Date: Wed, 23 Oct 2019 08:53:02 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Nathan Chancellor <natechancellor@gmail.com>, broonie@kernel.org
Subject: Re: [PATCH] cpufreq: s3c64xx: Remove pointless NULL check in
 s3c64xx_cpufreq_driver_init
Message-ID: <20191023032302.tu5nkvulo2yoctgr@vireshk-i7>
References: <20191023000906.14374-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191023000906.14374-1-natechancellor@gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_202308_644236_666E2356 
X-CRM114-Status: GOOD (  21.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, clang-built-linux@googlegroups.com,
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22-10-19, 17:09, Nathan Chancellor wrote:
> When building with Clang + -Wtautological-pointer-compare:
> 
> drivers/cpufreq/s3c64xx-cpufreq.c:152:6: warning: comparison of array
> 's3c64xx_freq_table' equal to a null pointer is always false
> [-Wtautological-pointer-compare]
>         if (s3c64xx_freq_table == NULL) {
>             ^~~~~~~~~~~~~~~~~~    ~~~~
> 1 warning generated.
> 
> The definition of s3c64xx_freq_table is surrounded by an ifdef
> directive for CONFIG_CPU_S3C6410, which is always true for this driver
> because it depends on it in drivers/cpufreq/Kconfig.arm (and if it
> weren't, there would be a build error because s3c64xx_freq_table would
> not be a defined symbol).
> 
> Resolve this warning by removing the unnecessary NULL check because it
> is always false as Clang notes. While we are at it, remove the
> unnecessary ifdef conditional because it is always true.
> 
> Fixes: b3748ddd8056 ("[ARM] S3C64XX: Initial support for DVFS")

+broonie, who wrote this patch to see his views on why he kept it like
this.

> Link: https://github.com/ClangBuiltLinux/linux/issues/748
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  drivers/cpufreq/s3c64xx-cpufreq.c | 7 -------
>  1 file changed, 7 deletions(-)
> 
> diff --git a/drivers/cpufreq/s3c64xx-cpufreq.c b/drivers/cpufreq/s3c64xx-cpufreq.c
> index af0c00dabb22..c6bdfc308e99 100644
> --- a/drivers/cpufreq/s3c64xx-cpufreq.c
> +++ b/drivers/cpufreq/s3c64xx-cpufreq.c
> @@ -19,7 +19,6 @@
>  static struct regulator *vddarm;
>  static unsigned long regulator_latency;
>  
> -#ifdef CONFIG_CPU_S3C6410
>  struct s3c64xx_dvfs {
>  	unsigned int vddarm_min;
>  	unsigned int vddarm_max;
> @@ -48,7 +47,6 @@ static struct cpufreq_frequency_table s3c64xx_freq_table[] = {
>  	{ 0, 4, 800000 },
>  	{ 0, 0, CPUFREQ_TABLE_END },
>  };
> -#endif
>  
>  static int s3c64xx_cpufreq_set_target(struct cpufreq_policy *policy,
>  				      unsigned int index)
> @@ -149,11 +147,6 @@ static int s3c64xx_cpufreq_driver_init(struct cpufreq_policy *policy)
>  	if (policy->cpu != 0)
>  		return -EINVAL;
>  
> -	if (s3c64xx_freq_table == NULL) {
> -		pr_err("No frequency information for this CPU\n");
> -		return -ENODEV;
> -	}
> -
>  	policy->clk = clk_get(NULL, "armclk");
>  	if (IS_ERR(policy->clk)) {
>  		pr_err("Unable to obtain ARMCLK: %ld\n",
> -- 
> 2.23.0

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
