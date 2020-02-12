Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0487B159FC8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 05:12:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9nOTsEWsi8e874bIy81+DC5nH9woW3TCBdB4Hgrl1/c=; b=c1ucm+yAIsjDEh
	CIx1c55NJb+99HIl7HOUoU9mWRygZRiBWxH400ZR2Hpd0K7GPQYDOhlpPHDZs5EiVE2NM0oI9RL4z
	3Iy0mel3iEVyZL8A6QgSEB5Sg1RfJTj+pMyz8d5lPjRmFqmvyrdzWAi9OKWQtk1gZdPjbUXOfe0dd
	4/7ugtq3hQo2eEDAu/mSQ31X4mO3ELU0ZqIPaSQP6JFks5994LYW5ZVVe+VCaIWzLXD/nFcCvGDZm
	Yoot76Bw3PRTnkjUUwFd5CbyjCAhw4dKpsrKEAwIznSGgVkrOUlkEVlu/XP6o28oBTKHuLNMFd8Ou
	dFUy54vr8RS6TqJoJOPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1jNb-0004GO-F7; Wed, 12 Feb 2020 04:12:03 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1jNS-0004Fl-7h
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 04:11:55 +0000
Received: by mail-pj1-x1043.google.com with SMTP id ep11so293660pjb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 20:11:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=W+QTR48OqykWy5/ehCHMs+7sFSz/xjk3FQlT6pd118Y=;
 b=E+06gfvMBiE1Ks3YH7MaemoT8YRv8WXvpxjrb+QqvFOex+72qLSpkgBl5uG49ETpZf
 bmgnQ7pdpz5fhuaROXGdw1HjsXZKHJRPxTOrjbmi+tTr4pNbMvrW/8/gZbj4qF2TzW5u
 J6qDMIkegCf1SRu1ZVfB5QYgvbZq+aAGFqck6Cej66IOntQeldJnAmwtA6kK2O63tEt7
 Q+UQdvS58idwRCQ8Xy7hRID9idiXwkG+shSqFYLWtC7QEVDZEe9v1qNBePtz84IdwoTV
 m0olzSec61urUmNKEHS1DxqXZewjrqKDfRCWo/dvrWwO+oPwac7OTtgYcRLeSQnbkCkV
 +RhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=W+QTR48OqykWy5/ehCHMs+7sFSz/xjk3FQlT6pd118Y=;
 b=NTLeRKifUc1boQrWjnf9wfYXnq61XJelK/2soDKgWIUlx05H4eKyv5kJK+ZUtNk5Gx
 sykRoiWBRlWKhF1/M0BuaAPtG6mAQJz6bBCevav0S9Z3yrguY5q0awVKDMjSeqMpRZOC
 UP9s+HFGd8KWkn4XVqgTJWdS3Xm8873Mzk9voSyaZJu8vQTaqHbaOORu0ZSTbYQtN/L7
 QqD6tEm+/giJwITjZz5hNiqyg34lCU/xv8dgd4bc7Yl0W61akF0rAH6NOU9DUiuWLQ3q
 2OeT00fwOiwz01277afoQP/x6nLoQag59U1kKxWUhdlIgOmWwUZWzVwD6PoklH4Qk8CH
 RTCw==
X-Gm-Message-State: APjAAAWuctoHq2BUUD6yXtBS2oX7Ra7mewZhQsVyDFOwpK3DUEBx4d+f
 k7BQncO3f9dqeIP0S21aH7YMyA==
X-Google-Smtp-Source: APXvYqw4xtMA6dvfNR7gOlXiS9oB5WsGSZ/+0TAc5So7WwT2pipAfAUhC5o56tc8WfT5SsrQKtzg/Q==
X-Received: by 2002:a17:90a:d80b:: with SMTP id
 a11mr7716068pjv.142.1581480711508; 
 Tue, 11 Feb 2020 20:11:51 -0800 (PST)
Received: from localhost ([122.167.210.63])
 by smtp.gmail.com with ESMTPSA id c3sm6214302pfj.159.2020.02.11.20.11.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Feb 2020 20:11:50 -0800 (PST)
Date: Wed, 12 Feb 2020 09:41:48 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Lokesh Vutla <lokeshvutla@ti.com>
Subject: Re: [PATCH] cpufreq: ti-cpufreq: Add support for OPP_PLUS
Message-ID: <20200212041148.vptopihbts7ummb4@vireshk-i7>
References: <20200211072355.5476-1-lokeshvutla@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200211072355.5476-1-lokeshvutla@ti.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_201154_307435_BE04F9D2 
X-CRM114-Status: GOOD (  15.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Tero Kristo <t-kristo@ti.com>, Dave Gerlach <d-gerlach@ti.com>,
 Sekhar Nori <nsekhar@ti.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11-02-20, 12:53, Lokesh Vutla wrote:
> DRA762 SoC introduces OPP_PLUS which runs at 1.8GHz. Add
> support for this OPP in ti-cpufreq driver.
> 
> Acked-by: Dave Gerlach <d-gerlach@ti.com>
> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
> ---
>  drivers/cpufreq/ti-cpufreq.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/cpufreq/ti-cpufreq.c b/drivers/cpufreq/ti-cpufreq.c
> index 557cb513bf7f..ab0de27539ad 100644
> --- a/drivers/cpufreq/ti-cpufreq.c
> +++ b/drivers/cpufreq/ti-cpufreq.c
> @@ -25,11 +25,14 @@
>  
>  #define DRA7_EFUSE_HAS_OD_MPU_OPP		11
>  #define DRA7_EFUSE_HAS_HIGH_MPU_OPP		15
> +#define DRA76_EFUSE_HAS_PLUS_MPU_OPP		18
>  #define DRA7_EFUSE_HAS_ALL_MPU_OPP		23
> +#define DRA76_EFUSE_HAS_ALL_MPU_OPP		24
>  
>  #define DRA7_EFUSE_NOM_MPU_OPP			BIT(0)
>  #define DRA7_EFUSE_OD_MPU_OPP			BIT(1)
>  #define DRA7_EFUSE_HIGH_MPU_OPP			BIT(2)
> +#define DRA76_EFUSE_PLUS_MPU_OPP		BIT(3)
>  
>  #define OMAP3_CONTROL_DEVICE_STATUS		0x4800244C
>  #define OMAP3_CONTROL_IDCODE			0x4830A204
> @@ -80,6 +83,10 @@ static unsigned long dra7_efuse_xlate(struct ti_cpufreq_data *opp_data,
>  	 */
>  
>  	switch (efuse) {
> +	case DRA76_EFUSE_HAS_PLUS_MPU_OPP:
> +	case DRA76_EFUSE_HAS_ALL_MPU_OPP:
> +		calculated_efuse |= DRA76_EFUSE_PLUS_MPU_OPP;
> +		/* Fall through */
>  	case DRA7_EFUSE_HAS_ALL_MPU_OPP:
>  	case DRA7_EFUSE_HAS_HIGH_MPU_OPP:
>  		calculated_efuse |= DRA7_EFUSE_HIGH_MPU_OPP;

Applied. Thanks.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
