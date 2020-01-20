Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEBAB1422D8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 06:33:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cCt77D345D8EQi97TtAEaQucZ5WrPRJRyWJI7zvhSh0=; b=Di/xk5TpJAwiwl
	zD8rm+8q3ZBS+fyXcaA3eLgXqsIyoVRUCXwidFvXtHJBdDgXuGdCq+ZWI03f/Upz+K/Oz36d6S7GR
	TIzgdcZ1kGariZJSgpYvbTjbVRbE18mVsJL24gJkwnnMGarPxGVwscaB/5gm/afVVi5O1YfgZz6wY
	dDRc0fNigb24Qcx0sKwbyZ8rrcr10gM5m0XBisfCCLhyfsXAfTEqFJAFFIxbX47Aa6yh/4J8FLVMQ
	MQ0b4uxnHkLF/7gDxZ6wl/3nKVjYOG/rzh7EcpA85vHnuvZOe4dJISctM5jpC7FmNLKoifhMM26Nx
	GHN75Z8CdP1wms3fblzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itPgP-0000DA-K2; Mon, 20 Jan 2020 05:33:05 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itPgE-0000CL-7L
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 05:32:55 +0000
Received: by mail-pj1-x1044.google.com with SMTP id kx11so6211560pjb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Jan 2020 21:32:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=2qmd9YWzH6xu5Oj2gVIAaeZHmPEfZ43TMx9sNOsevlQ=;
 b=WdS+IB/WGdpzMpHYEM4F3JWyfLWMh34U4J3B7Qy3FWJHckRCJHasGyLZcijiRAhti9
 TYr8tSAfHilsz/qOFvuCPvFYRNVGri/hhJVpyApRU7cxBU92Ki1fl9GK6xODthE3RRRN
 yPneoXElteqrj2b8TPZMPJ8iyFMWqucSTZJXRVJyBzDE0HsVPrmDVUikgb2yTbgWt9JH
 m+cxYluAuIhVIlm+hvKblhFgU3clfWpxnrrgd9dg4OwMI22xVX46pJt0I1w2n0XDZ7nt
 WP/EILVaGom3bS9uaVwsztIKtAmNiW/bzc5iziM5HT6giGsDqj01WXL+HR3eX6CtjXPk
 x9nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=2qmd9YWzH6xu5Oj2gVIAaeZHmPEfZ43TMx9sNOsevlQ=;
 b=KoLQFvH38aTpJ4nb7kXbwyk5x6+ogfn/xexFHBs8zTWRiGquq52KLk7b/Zk6qVzxNo
 AQ5U2UIH2zsCM6H/n2jHm84i6ar8w6/IneuftDwzFGUFIzZ2454efwjn5BxVz+y4widH
 nYu++fjfmvQbl5/+3TZaw75fLEkT1xdoix7FfwNqtJTRM2fx8A/BwoDT5HlvgeJoBlfb
 CRrXISfh4sP0i0q8i/4ZzBPPSV4YQ+53qzknrFtbULhn3N4OmdPHT4hJR0HX9FDGXOro
 QoU/hbRnm4+SgNtwpXsdXCbciv2viq5zQuPvt7cUQU9M/ePJvSSiNw0hJyMWnDnt0eOg
 C4CQ==
X-Gm-Message-State: APjAAAUUJTL/1AwbK7Vd5hMgiI+zrPFEQ0HR4wbTNEXZ1VgYfczGC+z2
 otIUHjtYGW6QmI/r5/aO5l89Pw==
X-Google-Smtp-Source: APXvYqxEQh0dD7dWdpC/jtMHLtn2aVMV8HFg97xl0O/3IlaQMBlDMq6bfPvKRBHpXikUE39b4UMcSg==
X-Received: by 2002:a17:90a:300b:: with SMTP id
 g11mr21390053pjb.123.1579498372564; 
 Sun, 19 Jan 2020 21:32:52 -0800 (PST)
Received: from localhost ([122.172.71.156])
 by smtp.gmail.com with ESMTPSA id e1sm37678585pfl.98.2020.01.19.21.32.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 19 Jan 2020 21:32:51 -0800 (PST)
Date: Mon, 20 Jan 2020 11:02:50 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: qiwuchen55@gmail.com
Subject: Re: [PATCH v3] cpufreq: brcmstb-avs: fix imbalance of cpufreq policy
 refcount
Message-ID: <20200120053250.igkwofqfzvmqb3c3@vireshk-i7>
References: <1579417750-21984-1-git-send-email-qiwuchen55@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579417750-21984-1-git-send-email-qiwuchen55@gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_213254_267742_D0C7FE86 
X-CRM114-Status: GOOD (  21.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 mmayer@broadcom.com, chenqiwu <chenqiwu@xiaomi.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-01-20, 15:09, qiwuchen55@gmail.com wrote:
> From: chenqiwu <chenqiwu@xiaomi.com>
> 
> brcm_avs_cpufreq_get() calls cpufreq_cpu_get() to get the cpufreq policy,
> meanwhile, it also increments the kobject reference count to mark it busy.
> However, a corresponding call of cpufreq_cpu_put() is ignored to decrement
> the kobject reference count back, which may lead to a potential stuck risk
> that the cpuhp thread deadly waits for dropping of kobject refcount when
> cpufreq policy free.
> 
> For fixing this bug, cpufreq_get_policy() is referenced to do a proper
> cpufreq_cpu_get()/cpufreq_cpu_put() and fill a policy copy for the user.
> If the policy return NULL, we just return 0 to hit the code path of
> cpufreq_driver->get.
> 
> Signed-off-by: chenqiwu <chenqiwu@xiaomi.com>
> ---
>  drivers/cpufreq/brcmstb-avs-cpufreq.c | 12 ++++++++++--
>  1 file changed, 10 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/cpufreq/brcmstb-avs-cpufreq.c b/drivers/cpufreq/brcmstb-avs-cpufreq.c
> index 77b0e5d..ee0d404 100644
> --- a/drivers/cpufreq/brcmstb-avs-cpufreq.c
> +++ b/drivers/cpufreq/brcmstb-avs-cpufreq.c
> @@ -452,8 +452,16 @@ static bool brcm_avs_is_firmware_loaded(struct private_data *priv)
>  
>  static unsigned int brcm_avs_cpufreq_get(unsigned int cpu)
>  {
> -	struct cpufreq_policy *policy = cpufreq_cpu_get(cpu);

Why can't we just add a corresponding cpufreq_cpu_put() instead of all this ?

> -	struct private_data *priv = policy->driver_data;
> +	struct cpufreq_policy policy;
> +	struct private_data *priv;
> +
> +	/*
> +	 * In case cpufreq policy has been released, just return 0.
> +	 */
> +	if (cpufreq_get_policy(&policy, cpu))
> +		return 0;

Why did you move away from the previous implementation of cpufreq_cpu_get() ?

> +
> +	priv = policy.driver_data;
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
