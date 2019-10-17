Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC83DB561
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 20:01:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rfc4lNx52mOL+p1xJwQ0GF7kO2sDCCR3FGinCRKGsfM=; b=sZNreohjVuR94W
	WZWqUtpS0+cKwyRS4prIfeXnmUQbNjvZ8uNDGiQNrj+0LqE2gPUlgwIF9PF0wO3pioOmbUSXlBS6P
	8RPK7t/uOoorySMNvMhfQ95OlkeK8M4fVVz+g6/7xYhLwaqEwWq0KxOd70n1vz8JvO3lxvDoYo7Ga
	OTcMQl2NtvSgwm6XtcUt4jjcuJ0jGiJG5cN8llsPi34Kpuax/kcaLfyn4rF+IFSsiyU1+9uEjUS0x
	fDaR1kuuVm06VqejZqvPgUb3cHasjNY4wZOzzkR8tycEKPiJkya3BlZKhRTAGTfXUUOxMrjJ3nOu9
	zCsyqqE6ZoAkumSHTD+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLA5v-0006vW-7Y; Thu, 17 Oct 2019 18:01:51 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL9zU-0007a5-Pu
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 17:55:20 +0000
Received: by mail-pg1-x542.google.com with SMTP id k20so1795264pgi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 10:55:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=xMgNa2J6ls/HD5ayqGJcA+YAUgf8k0JYvaclXJ7zCwI=;
 b=QI6kGDRkARPKQR/ErDbRYxcKV+DHgK5LPrYvrEnmPzjZm7O0gVd0TuaYBe8ZzKxCQa
 K1cB05AJbmv5MyyNu/xCocJ9EWT58H7/qKp1LTMAlKzzkbSVw8lMB3+6y8IT7IIcy6E2
 45w6BwFy2O1mYlNKZIYBbdvRNHVL++K9IS9vNd8orcDP7ic2kcuv+CZXnsUl1IHo/IZY
 rxCU8wPrqp741TTcwHmmPHPkTzrCD9h7nWjA3IUAtoJo69vCaGlEGhLTEe+Xs66Z/hwf
 SGQzgVESI4AsJ4J4kUmT1ONGIaoyrpInCy9PntgYp1e1D0erCSiRXrF+JxkHDp6raQAV
 pzaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xMgNa2J6ls/HD5ayqGJcA+YAUgf8k0JYvaclXJ7zCwI=;
 b=k5JSgSQbcZOIZ9Vt09o6cVHqg80wu5S4WPkLPW3iuN+R3dlllkNH5EIKO5OvfuKkA7
 P764KkMc1g64hNKNruUs+XYo2HZIc8C6iJ6BgBqsCkYMA42/+KHYbkpee+FJK3IK4sz1
 b+yIkWIiqbKbIjSxNCG8AgI8zYRcfSO8UZkrJIQvwKI+5kCG57ybb/mOc/yLwD9/rFOt
 npVEZzL11AtaRzBrS2Sq1C/qgT1AGxDmo2fyAce6J9SmbY6qXoZfiEbSS20QDQBB7eMB
 H/y8ukIQTlt8eRCzJd0a42OZ+sZZGH3iKAqoTHS7CCsAPPEOAP5UyX43zRSYiUAXEqHQ
 bTfw==
X-Gm-Message-State: APjAAAUw7a+Npl6vRHbNwOzYmGm+L4gCY/aolC1T6cbLLzkss6ZTJMBo
 g8oWallNP/mWX+aV5+2e1B9n5o36bnc=
X-Google-Smtp-Source: APXvYqytRKs044Y0qrtLrIYszwSdvByHnqImd00Ux1wjxvpJfnDsPMGI8argRmHnrWK18d+c1rzdHg==
X-Received: by 2002:aa7:8a84:: with SMTP id a4mr1490876pfc.99.1571334911350;
 Thu, 17 Oct 2019 10:55:11 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id k66sm3348801pjb.11.2019.10.17.10.55.10
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 17 Oct 2019 10:55:10 -0700 (PDT)
Date: Thu, 17 Oct 2019 11:55:08 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH v3 01/11] coresight: etm4x: Fixes for ETM v4.4
 architecture updates.
Message-ID: <20191017175508.GA17991@xps15>
References: <20191015212004.24748-1-mike.leach@linaro.org>
 <20191015212004.24748-2-mike.leach@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191015212004.24748-2-mike.leach@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_105512_930112_D5B5364E 
X-CRM114-Status: GOOD (  20.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: corbet@lwn.net, gregkh@linuxfoundation.org, coresight@lists.linaro.org,
 suzuki.poulose@arm.com, linux-doc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mike,

On Tue, Oct 15, 2019 at 10:19:54PM +0100, Mike Leach wrote:
> ETMv4.4 adds in support for tracing secure EL2 (per arch 8.x updates).
> Patch accounts for this new capability.
> 
> Reviewed-by: Leo Yan <leo.yan@linaro.org>
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> ---
>  .../hwtracing/coresight/coresight-etm4x-sysfs.c   | 12 ++++++------
>  drivers/hwtracing/coresight/coresight-etm4x.c     |  5 ++++-
>  drivers/hwtracing/coresight/coresight-etm4x.h     | 15 +++++++++++----
>  3 files changed, 21 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> index 219c10eb752c..b6984be0c515 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> +++ b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> @@ -738,7 +738,7 @@ static ssize_t s_exlevel_vinst_show(struct device *dev,
>  	struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
>  	struct etmv4_config *config = &drvdata->config;
>  
> -	val = BMVAL(config->vinst_ctrl, 16, 19);
> +	val = (config->vinst_ctrl & ETM_EXLEVEL_S_VICTLR_MASK) >> 16;
>  	return scnprintf(buf, PAGE_SIZE, "%#lx\n", val);
>  }
>  
> @@ -754,8 +754,8 @@ static ssize_t s_exlevel_vinst_store(struct device *dev,
>  		return -EINVAL;
>  
>  	spin_lock(&drvdata->spinlock);
> -	/* clear all EXLEVEL_S bits (bit[18] is never implemented) */
> -	config->vinst_ctrl &= ~(BIT(16) | BIT(17) | BIT(19));
> +	/* clear all EXLEVEL_S bits  */
> +	config->vinst_ctrl &= ~(ETM_EXLEVEL_S_VICTLR_MASK);
>  	/* enable instruction tracing for corresponding exception level */
>  	val &= drvdata->s_ex_level;
>  	config->vinst_ctrl |= (val << 16);
> @@ -773,7 +773,7 @@ static ssize_t ns_exlevel_vinst_show(struct device *dev,
>  	struct etmv4_config *config = &drvdata->config;
>  
>  	/* EXLEVEL_NS, bits[23:20] */
> -	val = BMVAL(config->vinst_ctrl, 20, 23);
> +	val = (config->vinst_ctrl & ETM_EXLEVEL_NS_VICTLR_MASK) >> 20;
>  	return scnprintf(buf, PAGE_SIZE, "%#lx\n", val);
>  }
>  
> @@ -789,8 +789,8 @@ static ssize_t ns_exlevel_vinst_store(struct device *dev,
>  		return -EINVAL;
>  
>  	spin_lock(&drvdata->spinlock);
> -	/* clear EXLEVEL_NS bits (bit[23] is never implemented */
> -	config->vinst_ctrl &= ~(BIT(20) | BIT(21) | BIT(22));
> +	/* clear EXLEVEL_NS bits  */
> +	config->vinst_ctrl &= ~(ETM_EXLEVEL_NS_VICTLR_MASK);
>  	/* enable instruction tracing for corresponding exception level */
>  	val &= drvdata->ns_ex_level;
>  	config->vinst_ctrl |= (val << 20);
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
> index 8f98701cadc5..efe120925f9d 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x.c
> +++ b/drivers/hwtracing/coresight/coresight-etm4x.c
> @@ -648,6 +648,7 @@ static void etm4_init_arch_data(void *info)
>  	 * TRCARCHMAJ, bits[11:8] architecture major versin number
>  	 */
>  	drvdata->arch = BMVAL(etmidr1, 4, 11);
> +	drvdata->config.arch = drvdata->arch;
>  
>  	/* maximum size of resources */
>  	etmidr2 = readl_relaxed(drvdata->base + TRCIDR2);
> @@ -799,6 +800,7 @@ static u64 etm4_get_ns_access_type(struct etmv4_config *config)
>  static u64 etm4_get_access_type(struct etmv4_config *config)
>  {
>  	u64 access_type = etm4_get_ns_access_type(config);
> +	u64 s_hyp = (config->arch & 0x0f) >= 0x4 ? ETM_EXLEVEL_S_HYP : 0;
>  
>  	/*
>  	 * EXLEVEL_S, bits[11:8], don't trace anything happening
> @@ -806,7 +808,8 @@ static u64 etm4_get_access_type(struct etmv4_config *config)
>  	 */
>  	access_type |= (ETM_EXLEVEL_S_APP	|
>  			ETM_EXLEVEL_S_OS	|
> -			ETM_EXLEVEL_S_HYP);
> +			s_hyp			|
> +			ETM_EXLEVEL_S_MON);
>  
>  	return access_type;
>  }
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x.h b/drivers/hwtracing/coresight/coresight-etm4x.h
> index 546d790cb01b..b873df38e7d8 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x.h
> +++ b/drivers/hwtracing/coresight/coresight-etm4x.h
> @@ -181,17 +181,22 @@
>  /* PowerDown Control Register bits */
>  #define TRCPDCR_PU			BIT(3)
>  
> -/* secure state access levels */
> +/* secure state access levels - TRCACATRn */
>  #define ETM_EXLEVEL_S_APP		BIT(8)
>  #define ETM_EXLEVEL_S_OS		BIT(9)
> -#define ETM_EXLEVEL_S_NA		BIT(10)
> -#define ETM_EXLEVEL_S_HYP		BIT(11)
> -/* non-secure state access levels */
> +#define ETM_EXLEVEL_S_HYP		BIT(10)
> +#define ETM_EXLEVEL_S_MON		BIT(11)
> +/* non-secure state access levels - TRCACATRn */
>  #define ETM_EXLEVEL_NS_APP		BIT(12)
>  #define ETM_EXLEVEL_NS_OS		BIT(13)
>  #define ETM_EXLEVEL_NS_HYP		BIT(14)
>  #define ETM_EXLEVEL_NS_NA		BIT(15)
>  
> +/* secure / non secure masks - TRCVICTLR, IDR3 */
> +#define ETM_EXLEVEL_S_VICTLR_MASK	GENMASK(19, 16)
> +/* NS MON (EL3) mode never implemented */
> +#define ETM_EXLEVEL_NS_VICTLR_MASK	GENMASK(22, 20)
> +
>  /**
>   * struct etmv4_config - configuration information related to an ETMv4
>   * @mode:	Controls various modes supported by this ETM.
> @@ -238,6 +243,7 @@
>   * @vmid_mask0:	VM ID comparator mask for comparator 0-3.
>   * @vmid_mask1:	VM ID comparator mask for comparator 4-7.
>   * @ext_inp:	External input selection.
> + * @arch:	ETM architecture version (for arch dependent config).
>   */
>  struct etmv4_config {
>  	u32				mode;
> @@ -280,6 +286,7 @@ struct etmv4_config {
>  	u32				vmid_mask0;
>  	u32				vmid_mask1;
>  	u32				ext_inp;
> +	u8				arch;
>  };

I am applying this patch, no need to send it again.

>  
>  /**
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
