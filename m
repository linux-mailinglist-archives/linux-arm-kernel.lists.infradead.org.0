Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3B9B9D8A6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 23:47:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jMrQmvxNw3ENPH8uYNzpSZzUI3j8eDplay7QZjiN4ZU=; b=iWmW/1MoU8ourM
	lDHqrkkBFkJvYrXdRhVfNzWTdYtK7sCssB1y0Pb04tYRuT7jDB+fmyVcWk2S7ylc9JUSUFF8kwq7h
	TDb92Cxz/wHuO+LYDu7el489GRfYkAi1aZp8SIF33FxbJDr/cmF7/VDd6UeM85ZfNcTWm92gDUWkH
	MlLuaYafNWgiKV8Dv00Qb7IDYRJi3Tvpl7zvrL6gmttwKefDeZZv9tkjEan2L+fLF5o6j4I9OmYJV
	l3d/K8RZ1zi8CnfrNYM/errnUmE6ZNLlxepWCh0xMEyVHvTKl91dw9Z7TMnB3H+CucJVJFxUiDvJ7
	tHKlhi1i4ZhkhtTSqj+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Mpn-00012Q-7p; Mon, 26 Aug 2019 21:47:31 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Mpa-00011p-PM
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 21:47:20 +0000
Received: by mail-pl1-x644.google.com with SMTP id y8so10687407plr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 14:47:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=2rI7EyqN6fzwzpT/EaAV/hxOydzmgr1ECr1kzQwB91M=;
 b=frkYrhZVwDwZYC9Tggp55X2bo6YlWujFgCcGoTCV81UplzeP7+HOYFqWYaSa/F2WRt
 q9LpmN/f8qbqzGYf/xrwuJ1YTO/9MlOUVo4Hh9DOQ82W5lcHg09IqJX9GqLPC/hpCpgP
 C3fPI5Ur6w3J5T1/vVCvqTo9ksy7oWWphmgwFZlaL/dqh+CRPkuE3fYAENXjWLDQXX5K
 Kt8yz8kQGJMoBlWH5Go5E3c7CFPWVJomqGwDUPB2TGguYijtKvMu82bEqfGSp4Iwr62+
 K7v8VoUgt/oWbLELNNn/reSJElHw8iBysy0HIqdjUylmUijhiCDO42dYF8dsfO+/wXse
 8H5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=2rI7EyqN6fzwzpT/EaAV/hxOydzmgr1ECr1kzQwB91M=;
 b=Ge8pm4dIdbm327bYUqvlqJzJSGVmh04tXbWndrJkc+aNB3WKD0ikKk2EnPdpbbY4+B
 1ucXJO8J+CL/spzE2/Vp0Rj0UTsEzPBuKl/VHZr7Hg2cJZGdY+JvOn1mXvQTLLjU6h0I
 Hf7fClRB98d2FVC+R3nEYysO95gxhdbfaeefBCSRY3ByUIv/Ak56CxGd1jmOq8mAjDVm
 AtuxllG4tGTzs86Q8CPLKpCok2OK17wEvtY5tIIygZRfXGD2uYKVovVr5g87PmoWE9sT
 Z5iysv6+xk/NyXh6jKGMl2l8ZWro9TMwERXNMXu5/NpkVozltwOqWGRMJ0rET4OSn/r9
 hYlw==
X-Gm-Message-State: APjAAAVeYelB21dzgTWqCmkFyeuQvG+hEaicfhqpJZUGEQAlwMU5g5YI
 7Toz4j8QDqJI6jJm1pbxRL18Sg==
X-Google-Smtp-Source: APXvYqxWsdtoqr689w5ut3H66tHUBVgupsOHNNJkXJjITGN03VNoNVgcNDwJU7ApO2iGPn3g/eJHXg==
X-Received: by 2002:a17:902:6b88:: with SMTP id
 p8mr19468456plk.95.1566856036215; 
 Mon, 26 Aug 2019 14:47:16 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id br18sm364767pjb.20.2019.08.26.14.47.15
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 26 Aug 2019 14:47:15 -0700 (PDT)
Date: Mon, 26 Aug 2019 15:47:13 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH 1/8] coresight: etm4x: Fixes for ETM v4.4 architecture
 updates.
Message-ID: <20190826214713.GA24690@xps15>
References: <20190819205720.24457-1-mike.leach@linaro.org>
 <20190819205720.24457-2-mike.leach@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819205720.24457-2-mike.leach@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_144718_856927_3FC9F953 
X-CRM114-Status: GOOD (  21.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
 suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mike,


On Mon, Aug 19, 2019 at 09:57:13PM +0100, Mike Leach wrote:
> ETMv4.4 adds in support for tracing secure EL2 (per arch 8.x updates).

What is the name of the ETMv4.4 document?  I can only find up to 4.2 on line.

> Patch accounts for this new capability.
> 
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
> index a128b5063f46..52b8876de157 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x.c
> +++ b/drivers/hwtracing/coresight/coresight-etm4x.c
> @@ -629,6 +629,7 @@ static void etm4_init_arch_data(void *info)
>  	 * TRCARCHMAJ, bits[11:8] architecture major versin number
>  	 */
>  	drvdata->arch = BMVAL(etmidr1, 4, 11);
> +	drvdata->config.arch = drvdata->arch;
>  
>  	/* maximum size of resources */
>  	etmidr2 = readl_relaxed(drvdata->base + TRCIDR2);
> @@ -780,6 +781,7 @@ static u64 etm4_get_ns_access_type(struct etmv4_config *config)
>  static u64 etm4_get_access_type(struct etmv4_config *config)
>  {
>  	u64 access_type = etm4_get_ns_access_type(config);
> +	u64 s_hyp = (config->arch & 0x0f) >= 0x4 ? ETM_EXLEVEL_S_HYP : 0;
>  
>  	/*
>  	 * EXLEVEL_S, bits[11:8], don't trace anything happening
> @@ -787,7 +789,8 @@ static u64 etm4_get_access_type(struct etmv4_config *config)
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
> index 4523f10ddd0f..60bc2fb5159b 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x.h
> +++ b/drivers/hwtracing/coresight/coresight-etm4x.h
> @@ -180,17 +180,22 @@
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

It is hard to say without documentation but shouldn't this be GENMASK(23, 20)?  

> +
>  /**
>   * struct etmv4_config - configuration information related to an ETMv4
>   * @mode:	Controls various modes supported by this ETM.
> @@ -237,6 +242,7 @@
>   * @vmid_mask0:	VM ID comparator mask for comparator 0-3.
>   * @vmid_mask1:	VM ID comparator mask for comparator 4-7.
>   * @ext_inp:	External input selection.
> + * @arch:	ETM architecture version (for arch dependent config).
>   */
>  struct etmv4_config {
>  	u32				mode;
> @@ -279,6 +285,7 @@ struct etmv4_config {
>  	u32				vmid_mask0;
>  	u32				vmid_mask1;
>  	u32				ext_inp;
> +	u8				arch;
>  };
>  
>  /**
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
