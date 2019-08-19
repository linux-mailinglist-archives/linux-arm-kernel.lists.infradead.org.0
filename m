Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9230920B2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 11:50:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8dBTQytMUxqoIn3q/srhoug4U+pgy+3w3fdoTpbjyys=; b=AO4x2BAx8UkHev
	oDnodLmH1sfkmJnAzXB7qk0V3nP6morm8kwoeqUW4Ae+xU+Hrbmjr59urX6h/4B4JqyTHpfxHqbPW
	isUWfJLwPYCDxIj4BfgEyBlcNQMd9RsclpZh0tLECqQNOG5P1BSfVrs8+2zbhu09CMeBFeGzGrPrh
	Li8ad6fSNs0ZxGDsoKFO+jwPbJq1jd9SlPbjD/SMQ4RkFOvkv0K2yBznTB4l/LuqQcUGgCru6JKUX
	g7DM3B5t7YaE4X6x9cfojIMKl0eQBrF1m2YBalclRrdhozznQKAHblw0avaOh1NUiKvgNA5bjUsFy
	5Nu4vdJ4YzljzbRqHzBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzeJ5-00034l-3V; Mon, 19 Aug 2019 09:50:31 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzeIf-0002aI-9t
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 09:50:07 +0000
Received: by mail-pf1-x444.google.com with SMTP id v12so864849pfn.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 02:50:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=GwxTKfEAgdYinZ1pQ0qUdgZm8MLLK/a050DZxr6TIIA=;
 b=E5QuFSKe3zCu6j5dp7nU++ADdVgtHyQte4iITIu6YTh4OdZRKxRmfrT64Fvnsff5Ji
 cEhhwOIbqR4CTkTOMNuUhBeIC2P9XRFwxBURIQz1Jq+2ro3StIV0vN/jL2YIgLbT8Gfr
 U/vIELNamnuLogvXmPQEFrWff8FYxY4fcPsEpZfeLP5f+24Xqj7WUQfiEHyntro3l8w+
 vjZT4ohjF4OWDcGS5auUBZ4WePwk20Nbo93S2DD3safgibkoEgynTTtO3mzHbHp4xhaV
 ZyHX+FH2WNDbIwnUlbfe9Vij6y1rgljSS1WutnAscTU9K6TnV6RXbKxmv6q3yyNb8tWc
 S1dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=GwxTKfEAgdYinZ1pQ0qUdgZm8MLLK/a050DZxr6TIIA=;
 b=WPZ6LDjjGDwudtwiG17SSMx09ETAZf5g6qD/b0fopKKpkrw3GyfDnSRFIj53kIrKAp
 MCiqVnu6D+8PDBZx+PB2EWh/p1pX8kixl1pS5AVdr+18igm0OdYpmWwbtNhNC/IEnjLx
 aoW916esBfmeCJwzP5bRreZsbT+hAjBaYtgjuKBuga+ehxbGOBg6t84cjy+/5wkH8Ymg
 y7d+8Xunmu74VFMfQDz+MxLyrfdpPlwkN+12/JGQADvQvrnAI3fwI6biPiPyXgTfUEj+
 SrkCLp6lk7BtzuJOjPr0VmuhFz1SrfnmhQNl2YWlSe/mPJfPv0NpGxKd9aLUdWu+jFZA
 qKtA==
X-Gm-Message-State: APjAAAXfEppcO04mm+HgfdfKHWh/D5aY2F1YXhAKs4Ozj4vgycj0rc0I
 LWCp/D0e6ysU+Sp4yp2ji8hBYg==
X-Google-Smtp-Source: APXvYqztyBlcXrsfuYCccymx2QeJyImR1KtB/92fHFvsu4CmhBvOr2ya1KA4fBmG+LhnG94tJ7THOw==
X-Received: by 2002:a17:90a:35a7:: with SMTP id
 r36mr20029074pjb.17.1566208204653; 
 Mon, 19 Aug 2019 02:50:04 -0700 (PDT)
Received: from localhost ([122.172.76.219])
 by smtp.gmail.com with ESMTPSA id w9sm15258821pfn.19.2019.08.19.02.50.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 19 Aug 2019 02:50:03 -0700 (PDT)
Date: Mon, 19 Aug 2019 15:20:02 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>
Subject: Re: [v4, 2/8] cpufreq: mediatek: add clock enable for intermediate
 clock
Message-ID: <20190819095002.ncpzxzahzqfvsjba@vireshk-i7>
References: <1565703113-31479-1-git-send-email-andrew-sh.cheng@mediatek.com>
 <1565703113-31479-3-git-send-email-andrew-sh.cheng@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1565703113-31479-3-git-send-email-andrew-sh.cheng@mediatek.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_025005_498354_FA0EEA40 
X-CRM114-Status: GOOD (  20.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 srv_heupstream@mediatek.com, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, fan.chen@mediatek.com,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13-08-19, 21:31, Andrew-sh.Cheng wrote:
> From: "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>
> 
> Intermediate clock is not always enabled by ccf in different projects,
> so cpufreq should always enable it by itself.
> 
> Signed-off-by: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
> ---
>  drivers/cpufreq/mediatek-cpufreq.c | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/cpufreq/mediatek-cpufreq.c b/drivers/cpufreq/mediatek-cpufreq.c
> index a370577ffc73..acd9539e95de 100644
> --- a/drivers/cpufreq/mediatek-cpufreq.c
> +++ b/drivers/cpufreq/mediatek-cpufreq.c
> @@ -368,13 +368,17 @@ static int mtk_cpu_dvfs_info_init(struct mtk_cpu_dvfs_info *info, int cpu)
>  		goto out_free_resources;
>  	}
>  
> +	ret = clk_prepare_enable(inter_clk);
> +	if (ret)
> +		goto out_free_opp_table;
> +
>  	/* Search a safe voltage for intermediate frequency. */
>  	rate = clk_get_rate(inter_clk);
>  	opp = dev_pm_opp_find_freq_ceil(cpu_dev, &rate);
>  	if (IS_ERR(opp)) {
>  		pr_err("failed to get intermediate opp for cpu%d\n", cpu);
>  		ret = PTR_ERR(opp);
> -		goto out_free_opp_table;
> +		goto out_disable_clock;
>  	}
>  	info->intermediate_voltage = dev_pm_opp_get_voltage(opp);
>  	dev_pm_opp_put(opp);
> @@ -393,6 +397,9 @@ static int mtk_cpu_dvfs_info_init(struct mtk_cpu_dvfs_info *info, int cpu)
>  
>  	return 0;
>  
> +out_disable_clock:
> +	clk_disable_unprepare(inter_clk);
> +
>  out_free_opp_table:
>  	dev_pm_opp_of_cpumask_remove_table(&info->cpus);
>  
> @@ -419,6 +426,10 @@ static void mtk_cpu_dvfs_info_release(struct mtk_cpu_dvfs_info *info)
>  		clk_put(info->cpu_clk);
>  	if (!IS_ERR(info->inter_clk))
>  		clk_put(info->inter_clk);

Shouldn't you remove this part now ?

> +	if (!IS_ERR(info->inter_clk)) {
> +		clk_disable_unprepare(info->inter_clk);
> +		clk_put(info->inter_clk);
> +	}
>  
>  	dev_pm_opp_of_cpumask_remove_table(&info->cpus);
>  }
> -- 
> 2.12.5

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
