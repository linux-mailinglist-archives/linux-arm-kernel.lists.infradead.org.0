Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61119E1D0B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 15:44:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xfI2Qc6duetDJ9teXT74gwfQRbYc/fmUg4KSyB2nCeQ=; b=AQNDTMVHAfy+4l
	UOYJ5RbvfZNlO6mRbV1y/MU0sbx8la7N85CMkeY30sJ6+DdzN0uY7Gi6HqgEQPEaBGi5whVU69FzO
	6QZ//nl6xsHrzSIAO7BysKP58hf87X6wtEVQVKLXmXF9Fdk4Z1OwoGEwgwCkJJoREWENqdeXMwSe5
	TxwFkAqLTcG9JyN2J+r92hWvTjn24Df1YX9MfJvVGXDJTLhzIPjZix3XYl7wrVfVnuSWjLqSGkInc
	gziC7om+3RexiZwF94ZuxlFBQ96EeYUjH2cydowNsyhQB17A4X6b0nVQVyGfluCY9zwvebw0ioatb
	vItmARXAc5eVDyRwT+mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNGwG-0001yT-JQ; Wed, 23 Oct 2019 13:44:36 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNGw7-0001xJ-8O
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 13:44:28 +0000
Received: by mail-ed1-f66.google.com with SMTP id f20so15795692edv.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 06:44:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hBKYE+zy7+DFfvyH7A7knU3GB9ufsS1mx+vP5bbzBP0=;
 b=awLNY+mLbDNoq4+PCP4sXcTAJJFlMDkYV9O5N1cdhPcJ+jACu40bqLGmeH6pgxa8tZ
 0KWx3kW5DuoleALUULP8Qj2s2/5aBEcZErvO/iXE7uvxO4riqZensIRXdYQhZT06MHh/
 hbBT4hlyWk6SMMePxcI3qdAWGJHoOX1FLg69VLwCxEponKs+a37soNQT525Zs9EsmRfT
 ryVbgeQi3Oo9bSui9ZjCg5WQ92M2MvDd24fss/gJOpr/CSEON5+XxnE8sm6ypCj61Yp5
 hgDkZqMT/agA9oNj2UU9FFpYm2OLu6XJldz6XdCikc+3KL2C49gaUsrO3q3BpWbDV8Wp
 EE2A==
X-Gm-Message-State: APjAAAVioS45Xb8fjKZTKl0UQTVCbK7DV+beASFq98TFuTn2znvP8/X1
 5gT6rXkGHu7yEc0E3/hNGGU=
X-Google-Smtp-Source: APXvYqw1ctMopj1G34EABDvNktzYOL72/P1RYQagEEVZr6sIwqcab9NGrf4osslw7kr0sYn6k43JVw==
X-Received: by 2002:a17:906:c801:: with SMTP id
 cx1mr33598956ejb.266.1571838263609; 
 Wed, 23 Oct 2019 06:44:23 -0700 (PDT)
Received: from pi3 ([194.230.155.217])
 by smtp.googlemail.com with ESMTPSA id z65sm848736ede.86.2019.10.23.06.44.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 06:44:22 -0700 (PDT)
Date: Wed, 23 Oct 2019 15:44:20 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 31/36] ARM: s3c: cpufreq: use global
 s3c2412_cpufreq_setrefresh
Message-ID: <20191023134420.GJ11048@pi3>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
 <20191010203043.1241612-31-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010203043.1241612-31-arnd@arndb.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_064427_303561_30E8CE86 
X-CRM114-Status: GOOD (  20.73  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Viresh Kumar <viresh.kumar@linaro.org>, linus.walleij@linaro.org,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 10:30:15PM +0200, Arnd Bergmann wrote:
> There are two identical copies of the s3c2412_cpufreq_setrefresh
> function: a static one in the cpufreq driver and a global
> version in iotiming-s3c2412.c.
> 
> As the function requires the use of a hardcoded register address
> from a header that we want to not be visible to drivers, just
> move the existing global function and add a declaration in
> one of the cpufreq header files.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/cpufreq/s3c2412-cpufreq.c            | 23 --------------------
>  include/linux/soc/samsung/s3c-cpufreq-core.h |  1 +
>  2 files changed, 1 insertion(+), 23 deletions(-)
> 
> diff --git a/drivers/cpufreq/s3c2412-cpufreq.c b/drivers/cpufreq/s3c2412-cpufreq.c
> index 38dc9e6db633..a77c63e92e1a 100644
> --- a/drivers/cpufreq/s3c2412-cpufreq.c
> +++ b/drivers/cpufreq/s3c2412-cpufreq.c
> @@ -25,8 +25,6 @@
>  #include <asm/mach/arch.h>
>  #include <asm/mach/map.h>
>  
> -#include <mach/s3c2412.h>
> -
>  #include <mach/map.h>
>  
>  #define S3C2410_CLKREG(x) ((x) + S3C24XX_VA_CLKPWR)
> @@ -156,27 +154,6 @@ static void s3c2412_cpufreq_setdivs(struct s3c_cpufreq_config *cfg)
>  	clk_set_parent(armclk, cfg->divs.dvs ? hclk : fclk);
>  }
>  
> -static void s3c2412_cpufreq_setrefresh(struct s3c_cpufreq_config *cfg)
> -{
> -	struct s3c_cpufreq_board *board = cfg->board;
> -	unsigned long refresh;
> -
> -	s3c_freq_dbg("%s: refresh %u ns, hclk %lu\n", __func__,
> -		     board->refresh, cfg->freq.hclk);
> -
> -	/* Reduce both the refresh time (in ns) and the frequency (in MHz)
> -	 * by 10 each to ensure that we do not overflow 32 bit numbers. This
> -	 * should work for HCLK up to 133MHz and refresh period up to 30usec.
> -	 */
> -
> -	refresh = (board->refresh / 10);
> -	refresh *= (cfg->freq.hclk / 100);
> -	refresh /= (1 * 1000 * 1000);	/* 10^6 */
> -
> -	s3c_freq_dbg("%s: setting refresh 0x%08lx\n", __func__, refresh);
> -	__raw_writel(refresh, S3C2412_REFRESH);
> -}
> -
>  /* set the default cpu frequency information, based on an 200MHz part
>   * as we have no other way of detecting the speed rating in software.
>   */
> diff --git a/include/linux/soc/samsung/s3c-cpufreq-core.h b/include/linux/soc/samsung/s3c-cpufreq-core.h
> index 4d22be1031b9..eca942559014 100644
> --- a/include/linux/soc/samsung/s3c-cpufreq-core.h
> +++ b/include/linux/soc/samsung/s3c-cpufreq-core.h
> @@ -246,6 +246,7 @@ extern int s3c2412_iotiming_calc(struct s3c_cpufreq_config *cfg,
>  
>  extern void s3c2412_iotiming_set(struct s3c_cpufreq_config *cfg,
>  				 struct s3c_iotimings *iot);
> +extern void s3c2412_cpufreq_setrefresh(struct s3c_cpufreq_config *cfg);

I think that it does not cover the !CONFIG_S3C2412_IOTIMING case.
Either you need to provide also the empty stub or add default=y to
S3C2412_IOTIMING. Otherwise cpufreq driver might end up without this.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
