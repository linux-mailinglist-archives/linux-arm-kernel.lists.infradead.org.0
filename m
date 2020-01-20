Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC87614248B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 08:55:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MC5irHSkQP/eIFydVGONbNdnY7r3E+ydMOn0JX+ibxM=; b=Iz4Jcr02KZUhJU
	8Of6veWHajXj8f0fRLNb62uOUHrmbTJp8HJFCgQnHHgVA1gsOpB2C6jF/xAqVdt6G4U/pWyyM2pXx
	k7NlQ3OHRbum8vKKdQPgbwx+0xlQ5Fk3R7a1pXpgGrIeZ/xpOL9MJ8pawAL5aeLYehd4Go08TUEej
	U5qKWvVYUbfbvLe/rpgW0RMgbrJ63ce/cA7QE289jPSySiCrJBJ83gemJX1HF4ClQC4TeYOawFcUz
	BieQQ5JIcmCFPg5APAqTFggRMeArlnINXjLRu+YJxv3/fMOy6vLwtzH4viqUw1aHeC1rKCY4Vvn4P
	xtjNMRl2eiqppLYZe86g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itRtd-0005Ws-Tm; Mon, 20 Jan 2020 07:54:53 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itRtR-0005WK-E0
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 07:54:45 +0000
Received: by mail-pf1-x443.google.com with SMTP id x184so15447831pfb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Jan 2020 23:54:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=CYF/yMkazN9ohF5HZpnUVmWUgzjjynUM6B5AyQbQ8DI=;
 b=kMzHT4itIyuiyHK4KucdNwb5BjZ/PBbwK1c/kCgSQCMGcBggTbo32cDHbcBOvdfO5j
 nKzWGPlunjzanj6kEoeBXsowUHJ9ddDOQKyXqK1jlUzruiof9Cf9gNurbsrsvI8CRM7N
 rfNdvVJZk3TNLWQ04X37lKXtdDlbk8Gu/858sfS2ekEUn33RB/C0LH1rnxvCelKyzhU4
 x8gTdW0PMOnT0yvJqs/mv1LWqWKRnC5goN9L/LOUzt7lVLORdOiMkH/cdZzQpSEPuW6y
 meWHZNqLBsEMDf0MGxRKzBVb5B6xvtMSyvAjDgj4F0Zq3+19Hmc0jXE5zCkcqLhDnze4
 I9qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CYF/yMkazN9ohF5HZpnUVmWUgzjjynUM6B5AyQbQ8DI=;
 b=byYU48PoxCa3J1pVscQuatD6SXO0nQ3rfTJminQHSJyPfP38uQiKyQzdosH5Z9YccP
 wkZ5O44LfEzr5yB11cunOTWt+IAxZr57Th2yOkb7wNjMXLXKO4GLcmF7YzeDLfAiz6qH
 R0MYffDI+P8PkjvIlflXqAZmiHbgK0JLpmSS/fzt+QZymoOoUWo0vakCh2nTu81op4yJ
 kdqP7lmiK0d5Opqjq5vMXFk8LlHAuViWB+RkGtsTUwqjXxm5YyTUvofBgs8Cgm9OCx56
 HR+CFiorsaTKkj1VWAbGkyX/ysVqidYAR/6Bv/NZ7WU+q7KZoFVVb/uPlSom0E0BTjOV
 2Uyw==
X-Gm-Message-State: APjAAAWLmwr0D89ZU1Qy3Xk/R+QJN8CW+yqJ6B83VRTs+JEBgNkPRcs/
 blw3DtGD77Dh8DmlFfheIhs+JQ==
X-Google-Smtp-Source: APXvYqx4SGtEY07w4qJsswx2A9cg0+WMOfmB+F+8W25rXwbomSSyhlIueXer3aOIFxvjWZHU2MzFLw==
X-Received: by 2002:a63:5d03:: with SMTP id r3mr58649765pgb.306.1579506880543; 
 Sun, 19 Jan 2020 23:54:40 -0800 (PST)
Received: from localhost ([122.172.71.156])
 by smtp.gmail.com with ESMTPSA id h3sm38524824pfr.15.2020.01.19.23.54.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 19 Jan 2020 23:54:39 -0800 (PST)
Date: Mon, 20 Jan 2020 13:24:38 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: qiwuchen55@gmail.com
Subject: Re: [PATCH v4] cpufreq: brcmstb-avs: fix imbalance of cpufreq policy
 refcount
Message-ID: <20200120075438.pxscoeluf4qwblag@vireshk-i7>
References: <1579506088-6736-1-git-send-email-qiwuchen55@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579506088-6736-1-git-send-email-qiwuchen55@gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_235441_476703_FAB96CF6 
X-CRM114-Status: GOOD (  19.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: f.fainelli@gmail.com, linux-pm@vger.kernel.org, rjw@rjwysocki.net,
 bcm-kernel-feedback-list@broadcom.com, mmayer@broadcom.com,
 chenqiwu <chenqiwu@xiaomi.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20-01-20, 15:41, qiwuchen55@gmail.com wrote:
> From: chenqiwu <chenqiwu@xiaomi.com>
> 
> brcm_avs_cpufreq_get() calls cpufreq_cpu_get() to get the cpufreq
> policy, meanwhile, it also increments the kobject reference count
> to mark it busy. However, a corresponding call of cpufreq_cpu_put()
> is ignored to decrement the kobject reference count back, which may
> lead to a potential stuck risk that the cpuhp thread deadly waits
> for dropping of kobject refcount when cpufreq policy free.
> 
> With this patch, the cpuhp thread can be easily exercised by
> attempting to force an unbind of the CPUfreq driver.
> 
> Signed-off-by: chenqiwu <chenqiwu@xiaomi.com>
> ---
> changes in v4:
>  - Rewrit commit message.
>  - Use cpufreq_cpu_get() and a corresponding cpufreq_cpu_put()
>    instead of cpufreq_get_policy() for promoting efficiency.
> ---
>  drivers/cpufreq/brcmstb-avs-cpufreq.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/cpufreq/brcmstb-avs-cpufreq.c b/drivers/cpufreq/brcmstb-avs-cpufreq.c
> index 77b0e5d..0767206 100644
> --- a/drivers/cpufreq/brcmstb-avs-cpufreq.c
> +++ b/drivers/cpufreq/brcmstb-avs-cpufreq.c
> @@ -453,7 +453,13 @@ static bool brcm_avs_is_firmware_loaded(struct private_data *priv)
>  static unsigned int brcm_avs_cpufreq_get(unsigned int cpu)
>  {
>  	struct cpufreq_policy *policy = cpufreq_cpu_get(cpu);
> -	struct private_data *priv = policy->driver_data;
> +	struct private_data *priv;
> +
> +	if (!policy)
> +		return 0;
> +

As I told you earlier, this isn't required as policy can't be NULL here.

> +	priv = policy->driver_data;
> +	cpufreq_cpu_put(policy);
>  
>  	return brcm_avs_get_frequency(priv->base);
>  }

Applied the patch with following diff:

req/brcmstb-avs-cpufreq.c b/drivers/cpufreq/brcmstb-avs-cpufreq.c
index 77b0e5d0fb13..4f86ce2db34f 100644
--- a/drivers/cpufreq/brcmstb-avs-cpufreq.c
+++ b/drivers/cpufreq/brcmstb-avs-cpufreq.c
@@ -455,6 +455,8 @@ static unsigned int brcm_avs_cpufreq_get(unsigned int cpu)
        struct cpufreq_policy *policy = cpufreq_cpu_get(cpu);
        struct private_data *priv = policy->driver_data;
 
+       cpufreq_cpu_put(policy);
+
        return brcm_avs_get_frequency(priv->base);
 }
 

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
