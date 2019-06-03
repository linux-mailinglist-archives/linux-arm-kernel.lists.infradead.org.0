Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0D973282E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 07:57:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FaVDn4EC/Cl1YzBY5RwHaoGUngbMYWRUaHBCnrXWhJQ=; b=aDYgCZURpylKgc
	GtzM95uzjRC8yDzQnfaMPQcu/EFWrhEJ8OK38GjnRyEJbKCF8B8qfs9LlS6/14KIA1x0nqkfGF6DG
	WeJUFt1ivwxY16e5P5+yGQjeMLEnna0gJ9foslGtoCtxfZTZlMSNGiLnTDsvRfpagrywEyoG1PYsj
	r551cGQeZp3HQTv3G1wo+AVsvbTIzIG3V7fnh0ReB2EY0rYPo/PhiHdRNhFrdRxr/N98zOZue8KXe
	YqOY/UM3qoupny9115QhWt5ercQ1XT8ffwbyh0BUdyaySDKSnXe74pwENJkl1jpwwWSkKzKybIbFL
	oNYJ+5dGK6qrBXlD7uZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXfy5-000504-L1; Mon, 03 Jun 2019 05:57:13 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXfxy-0004zb-JO
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 05:57:07 +0000
Received: by mail-pf1-x442.google.com with SMTP id y11so9909533pfm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 02 Jun 2019 22:57:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=zCVkve2M1JFNC36HFwV7VaJz6MYidoQvY09V4Dotmhs=;
 b=V8jrh86cjCL32w4Tzw0n6Miqz2LZfT2LMhtp0fxasBP5KpPCc/baTt59nbUzabGM8+
 TzqOBX7mqbuDRBjtLx++QnVVYWty947udQGmsF35jbOEYAPLrC6z1y+12hLBzJIl2My/
 0wyCGR6Uc/W9DZGa/sky6cknZx6pExyufkFgCc2A2l7/HzYX9Zg++DFjXJDEzhVcBppG
 XC6L6M9Kb9YIRryD7ybHJOt6DbM3tYXlmYI9x7RPRjFIroJKdLCJO8dl5LA5bx887B9q
 h3fXAK8yy41keON/b2FtLa+IgXvkwl0LGNyyD1Pzl1iTekC42g1VsOF5xpmb9ZDsKsBO
 WH+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zCVkve2M1JFNC36HFwV7VaJz6MYidoQvY09V4Dotmhs=;
 b=Blt3imMGJH4BLVou6JiK9H1a0M3YBN39kWLr6rczkXAzpJoiyocoqMXSV8zKjlEYH3
 zaFj8MhoDLQ8sHKwJSz2LHbibzbVLA3blsb4PwMtXYlZM2pfDO16qttaXKVRdtCfc3qg
 Kw/SEfhGAS8KVeSBjN+aiS6KUsMQ08fwR+xCzCNsPbkm+PjhP6ns1mmXP9v5rAy9+TEY
 NA5il/AKb4zEGb6rpsIP5GE21SJj/rEp6VgGfDIXW/E4juIJgsbeF5JbBX/fqXuLT8Ef
 PvHS9AYql59gRJt2cG3ZKwTf4V38lZ1KHaD4LzjaUHlRq0JfemRltExF7R88PbDuyAO4
 Wd/g==
X-Gm-Message-State: APjAAAXFPdRaaJu2zT8IxgAEOuYO20t+4Z2nkfgQrmVD+y2HaDp9remH
 2BUxeKUlVuF+L+bmVBlshvNJuFvwJr8=
X-Google-Smtp-Source: APXvYqxpNVebNIRrfQYo00U/X6UMvFYJBMC94A84BEV3vcQFHqnhGlBex5c/vWJYgikWpd14iShJJA==
X-Received: by 2002:a65:44c8:: with SMTP id g8mr26175730pgs.443.1559541425059; 
 Sun, 02 Jun 2019 22:57:05 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id j14sm13675062pfe.10.2019.06.02.22.57.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 02 Jun 2019 22:57:04 -0700 (PDT)
Date: Mon, 3 Jun 2019 11:27:02 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next] cpufreq: armada-37xx: Remove set but not used
 variable 'freq'
Message-ID: <20190603055702.thhlyazwqmekdvyd@vireshk-i7>
References: <20190601074338.64187-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190601074338.64187-1-yuehaibing@huawei.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_225706_643962_7A156F9A 
X-CRM114-Status: GOOD (  14.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 linux-pm@vger.kernel.org, kernel-janitors@vger.kernel.org,
 Gregory Clement <gregory.clement@bootlin.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 01-06-19, 07:43, YueHaibing wrote:
> Fixes gcc '-Wunused-but-set-variable' warning:
> 
> drivers/cpufreq/armada-37xx-cpufreq.c: In function 'armada37xx_cpufreq_avs_setup':
> drivers/cpufreq/armada-37xx-cpufreq.c:260:28: warning:
>  variable 'freq' set but not used [-Wunused-but-set-variable]
> 
> It's never used since introduction in commit 1c3528232f4b ("cpufreq:
> armada-37xx: Add AVS support")
> 
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>  drivers/cpufreq/armada-37xx-cpufreq.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/cpufreq/armada-37xx-cpufreq.c b/drivers/cpufreq/armada-37xx-cpufreq.c
> index 0df16eb1eb3c..aa0f06dec959 100644
> --- a/drivers/cpufreq/armada-37xx-cpufreq.c
> +++ b/drivers/cpufreq/armada-37xx-cpufreq.c
> @@ -257,7 +257,7 @@ static void __init armada37xx_cpufreq_avs_configure(struct regmap *base,
>  static void __init armada37xx_cpufreq_avs_setup(struct regmap *base,
>  						struct armada_37xx_dvfs *dvfs)
>  {
> -	unsigned int avs_val = 0, freq;
> +	unsigned int avs_val = 0;
>  	int load_level = 0;
>  
>  	if (base == NULL)
> @@ -275,8 +275,6 @@ static void __init armada37xx_cpufreq_avs_setup(struct regmap *base,
>  
>  
>  	for (load_level = 1; load_level < LOAD_LEVEL_NR; load_level++) {
> -		freq = dvfs->cpu_freq_max / dvfs->divider[load_level];
> -
>  		avs_val = dvfs->avs[load_level];
>  		regmap_update_bits(base, ARMADA_37XX_AVS_VSET(load_level-1),
>  		    ARMADA_37XX_AVS_VDD_MASK << ARMADA_37XX_AVS_HIGH_VDD_LIMIT |
> 

Applied. Thanks.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
