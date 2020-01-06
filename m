Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADBA8130D4E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 06:56:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XFN1Er69zkP5QmEtlpvMw6pPyZDNRQOMPVlJ1pQdBQ4=; b=bNd3GbjZnfCXrB
	OeTSCJ7gAyfnmDBdoZRA4nZWBZj2Gzqa5SK6shYKV/kArf3xvg57YIxciEvVh9htm7fVtKwYnBBfS
	lmujz/rz0CrQRhvKR4xU+77wjurb9II5r7KwKK/JpmUWdRxjMT+nHyEqxslaUK6EciOkXCEXcgntB
	t5+POdluzyZwthBg0GBxowHdoHWCAcNq9zkr7fjGlba4pYWwGjMRh0EsapV0vt0i8nXY8+fcpkm83
	YqpD5X1FAxrzXJMn/7IFYfYQnAzcRZGMHVT0EgjkE2fQFXDFgXAsM9etbe9ZFhouBlwNCXV047VI/
	QUN2+ASjJr0EHFDB3iXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioLNj-0003a9-NG; Mon, 06 Jan 2020 05:56:51 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioLNZ-0003Zj-SR
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 05:56:43 +0000
Received: by mail-pg1-x543.google.com with SMTP id z124so26344260pgb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Jan 2020 21:56:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=gVecZrqzeRB7HIKM77tdnNGZDqJ0B+ktTZCrajXniX8=;
 b=RrvvyQudXDmB8aCO+LVQrMNG+Kn2MNd2iw5qp1yJk7/PXl/CGC/mXn21y2i4zYA7Zx
 09yRfFJPe/MGOUdu7Y+lqvCCABG2ozlLAgIkgc+MhBMcinCz6mJPChuDnK3jssiOqEvi
 nIQcjQR/QzJxHc1nNOzWrgh+wL38rlJib3J7Lsz5YpeTUecozsfcLon5EAW0cv1lU/Ni
 YBX0GKcM8/dIjwdK96FzRFpSbRNFJQeFpQv8x5TgrBsZqOh78zXUrTPjb5LDrqVos6c0
 kPAw6DiALD8CI/FMVuoWwThKoTDIUDzgNS572SvhKAEpu4JW75WrqBeJMqWSgIYCAmff
 Ti5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=gVecZrqzeRB7HIKM77tdnNGZDqJ0B+ktTZCrajXniX8=;
 b=cxeKXautpD6axwXWY93Wx+FidUIEH2pX0rPu2isNDwYPqB79eO6N1NxtHevBxZdHdl
 XBqTbK9sJb5/e7BIJZY2d+Vvcsg5hmuAUeCqGG/afOzIeHq8X0rGs9jQtuGpbBmpYIAr
 reicMxyXEEY0XsezcXmQnctTB8lDhQ0tdvWW4qmksYODY38reP+WFXvDCgiEEb1xrG+z
 tB0CA4cZgl2oVn/fruPHDHbAgzly5jYg6I6PtVWQ7nyOUgw5lT8Gk8+wt+eYjGMVkFh4
 d8OJZBZTyHercXijIrRg8Cifdu1AwkEZHp6wJp3zn761LxGh31QdEhE0IajPJSXVlDwR
 HzWw==
X-Gm-Message-State: APjAAAXFyLgXCaNDFczorLXKZRHYlyc6WPlzMDy1xIrob22Qk+5wCAxT
 AoT9+3x/RvHlGdo0rdQ8+veY6Q==
X-Google-Smtp-Source: APXvYqyT6ThGReSu3JCs7Q7kEF0HCqtxFWxtHaK+WRQ+do7hOXLFqHXPEzbgSrcPCDAhrE8AtIoUug==
X-Received: by 2002:a62:a209:: with SMTP id m9mr96885746pff.16.1578290200988; 
 Sun, 05 Jan 2020 21:56:40 -0800 (PST)
Received: from localhost ([122.172.26.121])
 by smtp.gmail.com with ESMTPSA id a17sm23522840pjv.6.2020.01.05.21.56.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 05 Jan 2020 21:56:40 -0800 (PST)
Date: Mon, 6 Jan 2020 11:26:37 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: qiwuchen55@gmail.com
Subject: Re: [PATCH v2] cpufreq: brcmstb-avs-cpufreq: avoid potential stuck
 and UAF risk
Message-ID: <20200106055637.zq4icl5klg4wpvkx@vireshk-i7>
References: <1578228650-17157-1-git-send-email-qiwuchen55@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578228650-17157-1-git-send-email-qiwuchen55@gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_215641_965864_2A8817DC 
X-CRM114-Status: GOOD (  21.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
Cc: f.fainelli@gmail.com, linux-pm@vger.kernel.org, rjw@rjwysocki.net,
 bcm-kernel-feedback-list@broadcom.com, mmayer@broadcom.com,
 chenqiwu <chenqiwu@xiaomi.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05-01-20, 20:50, qiwuchen55@gmail.com wrote:
> From: chenqiwu <chenqiwu@xiaomi.com>
> 
> brcm_avs_cpufreq_get() calls cpufreq_cpu_get() to get cpufreq policy,
> meanwhile, it also increments the kobject reference count of policy to
> mark it busy. However, a corresponding call of cpufreq_cpu_put() is
> ignored to decrement the kobject reference count back, which may lead
> to a potential stuck risk that percpu cpuhp thread deadly waits for
> dropping of kobject refcount when percpu cpufreq policy free.
> 
> The call trace of stuck risk could be:
> cpufreq_online()  //If cpufreq online failed, goto out_free_policy.
>     ->cpufreq_policy_free()     //Do cpufreq_policy free.
>         ->cpufreq_policy_put_kobj()
>             ->kobject_put()       //Skip if policy kfref count is not 1.
>                 ->cpufreq_sysfs_release()
>                     ->complete()  //Complete policy->kobj_unregister.
>                 ->wait_for_completion() //Wait for policy->kobj_unregister.
> 
> A simple way to avoid this stuck risk is use cpufreq_cpu_get_raw()
> instead of cpufreq_cpu_get(), since this can be easily exercised by
> attempting to force an unbind of the CPUfreq driver.
> 
> Signed-off-by: chenqiwu <chenqiwu@xiaomi.com>
> ---
>  drivers/cpufreq/brcmstb-avs-cpufreq.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/cpufreq/brcmstb-avs-cpufreq.c b/drivers/cpufreq/brcmstb-avs-cpufreq.c
> index 77b0e5d..6d2bf5c 100644
> --- a/drivers/cpufreq/brcmstb-avs-cpufreq.c
> +++ b/drivers/cpufreq/brcmstb-avs-cpufreq.c
> @@ -452,8 +452,15 @@ static bool brcm_avs_is_firmware_loaded(struct private_data *priv)
>  
>  static unsigned int brcm_avs_cpufreq_get(unsigned int cpu)
>  {
> -	struct cpufreq_policy *policy = cpufreq_cpu_get(cpu);
> -	struct private_data *priv = policy->driver_data;
> +	struct cpufreq_policy *policy = cpufreq_cpu_get_raw(cpu);
> +	struct private_data *priv;
> +
> +	if (!policy)
> +		return 0;
> +

Since we always reach here after the cpufreq driver is registered, we
may not need to check the policy pointer at all.

> +	priv = policy->driver_data;
> +	if (!priv || !priv->base)
> +		return 0;

Can there be a case where priv or priv->base be set to NULL for this
driver ? I don't think so and so this may not be required.

>  
>  	return brcm_avs_get_frequency(priv->base);
>  }
> -- 
> 1.9.1

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
