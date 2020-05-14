Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DACB31D38BB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 20:01:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B+UYt2phHrD/rL43mCW6WcD/XfyBd45Vjp4ks1pegJ4=; b=DWl3aMGU5B3u8/
	usLvg6mzs0gvvdu5RPDAFhk4BqEfFQV0bGQNjTMC4VY6wsTisqWofLINVrtkiSOsKp4u+xyjL1u/U
	5hG8OevevAYwppGeST9n6EAkLfPYD/d7Mv2Bfv/IybjjjxD3EgzH2W1U4R2ryPMZfjZBAI+IZkpnM
	5Lnj8FHa60wAQ6Os0ebt5jQAkqk2nr6ZtdrS3Duy6+q63RMf6KOu5OJ2Uawj0woWSIQsXklPDunYO
	OnWvEYkkLMo/ejm6WNdzvXBjnnH4u09Vnb1TmOvfw/hle0TECTyF/zhwIuI54/rzrz6Q0Y3F03AI1
	0I8GjaWKE2MAhnJon6pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZIAQ-000853-BH; Thu, 14 May 2020 18:01:10 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZIAF-00082k-E3
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 18:01:03 +0000
Received: by mail-pg1-x543.google.com with SMTP id r10so1559305pgv.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 11:00:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Q+94btJD+GoatLukAXyT7lRAf/KVqdd70Ky4ApajaB4=;
 b=ZCGuNU5TwJwkF/qOaWwTaMbEfGJUVNBlxVt5Ffyrj97GNOAlY9WmxRf3FiwXWz/5sX
 HXTA1sKMNwSSo4SpXSTN2I8xxS4aFwuT/4DputdVW84PpQGDLp2xcwi2X7gdANMgTKzc
 QDDAxNhr5zHAwaIglP9S0WS20paeaPCr8GzyrP9kVF+8l8o0Dqx/M12H9XGx6Lhv9oz9
 CoUOCIdZxNEYNPiRzkv1xq+jzMEx/1rAuiXQy+lysVmeQsW0Xsp4aW/tjqCdHrSe0g6B
 oxMlwgBff+N2GXlYIlIMg5L/YnJfJ28Lc8kSwpl2idhREd6V32rO9I4Z8InED5gVbdWN
 zJ2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Q+94btJD+GoatLukAXyT7lRAf/KVqdd70Ky4ApajaB4=;
 b=FW5Av9EwXir3ZBSZNMlHxNfFQPUO4ud0hANtrVNXUFOWl9oXoNQIVDYw6AAuSE1OQl
 U3wLLEI38mS8rAzEKPtjWvvdCSC5Ez5XE3CB+P4hFuZa8EwFedfJnf7IL+fgvJXsz1F3
 3kdJdjLdIfGf881e1cFueBdsJhovxdzkyn0dxr9kkbao5I1DtlJ+4WhX2Vqk/GWFkM8C
 mRKuGeOHFH0MK+DAnp9pStEudxcgyNLLiXAWEFHa4ZfDt/k1PlLgcFgn53lHPK+B3wk8
 hqIANzr8kfKFAyYA5v709xlDVzfSlAV0MxGhLhYSm3o/81GZKX/sHaFQAJmtFls1ZM6R
 KPxw==
X-Gm-Message-State: AOAM533/VixIhfLJ9p5r5P2Cb0R2kRuIRqSSEInuUBkt2PFTg9LOTNrO
 VCe8XWbtYwXApGMjfsJwURrbVzKV39c=
X-Google-Smtp-Source: ABdhPJwVCSQFVIIffQCmw/NdSgP4/xj9cRLTxkvj99YAZ4LRBiKMEoP+sm/an/Cbf/dUrk1FT5FGcA==
X-Received: by 2002:a63:e550:: with SMTP id z16mr4858799pgj.92.1589479258195; 
 Thu, 14 May 2020 11:00:58 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id y2sm2884597pfq.16.2020.05.14.11.00.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 11:00:57 -0700 (PDT)
Date: Thu, 14 May 2020 12:00:55 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Subject: Re: [PATCH] coresight: etm4x: Add support to disable trace unit
 power up
Message-ID: <20200514180055.GA29384@xps15>
References: <20200514105915.27516-1-saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200514105915.27516-1-saiprakash.ranjan@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_110059_636781_A9C76224 
X-CRM114-Status: GOOD (  26.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, linux-arm-msm@vger.kernel.org,
 coresight@lists.linaro.org, linux-kernel@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>, Tingwei Zhang <tingwei@codeaurora.org>,
 Leo Yan <leo.yan@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Good morning Sai,

On Thu, May 14, 2020 at 04:29:15PM +0530, Sai Prakash Ranjan wrote:
> From: Tingwei Zhang <tingwei@codeaurora.org>
> 
> On some Qualcomm Technologies Inc. SoCs like SC7180, there
> exists a hardware errata where the APSS (Application Processor
> SubSystem)/CPU watchdog counter is stopped when ETM register
> TRCPDCR.PU=1.

Fun stuff...

> Since the ETMs share the same power domain as
> that of respective CPU cores, they are powered on when the
> CPU core is powered on. So we can disable powering up of the
> trace unit after checking for this errata via new property
> called "qcom,tupwr-disable".
> 
> Signed-off-by: Tingwei Zhang <tingwei@codeaurora.org>
> Co-developed-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>

Co-developed-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Signed-off-by: Tingwei Zhang <tingwei@codeaurora.org>

> ---
>  .../devicetree/bindings/arm/coresight.txt     |  6 ++++
>  drivers/hwtracing/coresight/coresight-etm4x.c | 29 ++++++++++++-------

Please split in two patches.

>  2 files changed, 25 insertions(+), 10 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/coresight.txt b/Documentation/devicetree/bindings/arm/coresight.txt
> index 846f6daae71b..d2030128fe46 100644
> --- a/Documentation/devicetree/bindings/arm/coresight.txt
> +++ b/Documentation/devicetree/bindings/arm/coresight.txt
> @@ -108,6 +108,12 @@ its hardware characteristcs.
>  	* arm,cp14: must be present if the system accesses ETM/PTM management
>  	  registers via co-processor 14.
>  
> +	* qcom,tupwr-disable: boolean. Indicates that trace unit power up can
> +	  be disabled on Qualcomm Technologies Inc. systems where ETMs are in
> +	  the same power domain as their CPU cores. This property is required
> +	  to identify such systems with hardware errata where the CPU watchdog
> +	  counter is stopped when TRCPDCR.PU=1.
> +

I think something like "qcom,skip-power-up" would be clearer. 

Also, a better choice of words is that TRCPDCR.PU does not have to be set on
Qualcomm...

>  * Optional property for TMC:
>  
>  	* arm,buffer-size: size of contiguous buffer space for TMC ETR
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
> index fb0f5f4f3a91..6886b44f6947 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x.c
> +++ b/drivers/hwtracing/coresight/coresight-etm4x.c
> @@ -104,6 +104,11 @@ struct etm4_enable_arg {
>  	int rc;
>  };
>  
> +static inline bool etm4_can_disable_tupwr(struct device *dev)
> +{
> +	return fwnode_property_present(dev_fwnode(dev), "qcom,tupwr-disable");
> +}
> +

Please call fwnode_property_present() at initialisation time to set a new
drvdata::skip_power_up variable.  From there just switch on that in
etm4_enable/disable_hw().  

Thanks,
Mathieu

>  static int etm4_enable_hw(struct etmv4_drvdata *drvdata)
>  {
>  	int i, rc;
> @@ -196,12 +201,14 @@ static int etm4_enable_hw(struct etmv4_drvdata *drvdata)
>  	writel_relaxed(config->vmid_mask0, drvdata->base + TRCVMIDCCTLR0);
>  	writel_relaxed(config->vmid_mask1, drvdata->base + TRCVMIDCCTLR1);
>  
> -	/*
> -	 * Request to keep the trace unit powered and also
> -	 * emulation of powerdown
> -	 */
> -	writel_relaxed(readl_relaxed(drvdata->base + TRCPDCR) | TRCPDCR_PU,
> -		       drvdata->base + TRCPDCR);
> +	if (!etm4_can_disable_tupwr(etm_dev)) {
> +		/*
> +		 * Request to keep the trace unit powered and also
> +		 * emulation of powerdown
> +		 */
> +		writel_relaxed(readl_relaxed(drvdata->base + TRCPDCR) | TRCPDCR_PU,
> +			       drvdata->base + TRCPDCR);
> +	}
>  
>  	/* Enable the trace unit */
>  	writel_relaxed(1, drvdata->base + TRCPRGCTLR);
> @@ -476,10 +483,12 @@ static void etm4_disable_hw(void *info)
>  
>  	CS_UNLOCK(drvdata->base);
>  
> -	/* power can be removed from the trace unit now */
> -	control = readl_relaxed(drvdata->base + TRCPDCR);
> -	control &= ~TRCPDCR_PU;
> -	writel_relaxed(control, drvdata->base + TRCPDCR);
> +	if (!etm4_can_disable_tupwr(etm_dev)) {
> +		/* power can be removed from the trace unit now */
> +		control = readl_relaxed(drvdata->base + TRCPDCR);
> +		control &= ~TRCPDCR_PU;
> +		writel_relaxed(control, drvdata->base + TRCPDCR);
> +	}
>  
>  	control = readl_relaxed(drvdata->base + TRCPRGCTLR);
>  
> -- 
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
> of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
