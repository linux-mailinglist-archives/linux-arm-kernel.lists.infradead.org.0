Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA761947E5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 20:51:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ai1owd7U9yxZUo0BnzFDZS915jhIjnXPZaB+6GQaRmc=; b=qZ37l2hzKoAqVW
	M9AWsG8X+ptxW5KfJ45IexMLR+CLQlNK0K0g9+Mr0bue4hOnmm8UcnSlSE8ZhDltoxrh0CiLx1X8I
	xzBp4bzaUYilyS4eDV84SSyC5VJUs6HQoOQnQhZLDPUXBeWLX9bmGvNnAcWzFG2sqVpGlKNhILjHf
	NYkynYuLOLWB5a0L4DY9ZgFxxHMdnqGCavKkHtRbwhQqWEOnZYpgrRN4fYjHwkoKu3tPnBG19V8hE
	i5edl8/JXJ2wDX9S6O7OSTZa5nd/PUJdwYCp5xY/G7WDqnF55Z5h2UPqaEIh02SHIU68W2GD4Ee2T
	rpMWpAhYzECPNaqOznxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHYX1-000588-V0; Thu, 26 Mar 2020 19:51:11 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHYWq-00057f-NN
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 19:51:03 +0000
Received: by mail-pg1-x541.google.com with SMTP id 142so3422269pgf.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 12:51:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=WNlM17wU13V4C2Q82cbPsO90RUOYDip+1HB0oBZcydk=;
 b=Ku00JDgAcccYNbI1uZUctsOQld+eet5Omx+ff0Cvy3YjfYUgT8Ul9wVIslnrn03YMh
 4zePPAIWKAGJsJ2snn8TFLwVN1+6R5VTe0MJT0CV09SzOOZjeXDy2wuYiSvVGWo5yBHG
 +0kqWcHWvgrFziwr3K07NdsRNIT8IsX9fz7K3IQggjJML5zHKGawVHWcvrLttDSmQG+K
 lNWvIIaE4Ko8i76CPIKmW4hHLOw8UlXKx+SvHG2UWMD4BhfECGZEU5+lxZgR35HyuLXY
 WL5bkoNGSnDUYxtQ999hS4mvdUXqcDnoLXr9WnNKAyIf+ZSQk3wPz43if7ri/zhClL+z
 mx3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WNlM17wU13V4C2Q82cbPsO90RUOYDip+1HB0oBZcydk=;
 b=gE24POELFwiI0/VabX9BhJelrH8i4aeCx5qfODL9CyrX5Hq7I2b8cNuDzXZ3RsO9Za
 VkCG7V3avdmo8jLE5/8MqF6+DmBzqkarMsMS0oAAWBEF55JdyFCFJ71bta2M40yrVNq1
 0L0SC2pbxOTnzDZiVtBovfzwn1aprrcmkH1BuXydaoxYuAaDxPelu6k6EHkN3oitgAD+
 l7773mmgyljRvSpqsXHc0YaOSlKms1W2DBIEvEmdGhXSPAxGOSdYFVjOKeIre5HjaOCZ
 KkIWBpRlFCJLJR5uUvb+3CJ8Fqr4EUXLQympvjfq2YqlaT3bHcsH0f2gSZnhPS75I+yY
 WauA==
X-Gm-Message-State: ANhLgQ3ikCQjscL95Dkkw87eFNMV42Flprmr4d/lHIRtdbo1vbfWb4Ai
 7bTewwKUcjbCAzG6rDq+nUHdrffPeFw=
X-Google-Smtp-Source: ADFU+vtzP9lVP4j9byE0r6N4bVzAiTyE4ric+6ZCDq/jLYLVUz8dO/kaQvref43Lu+xQ9E7J1QiiqQ==
X-Received: by 2002:a62:fc12:: with SMTP id e18mr11054224pfh.45.1585252260035; 
 Thu, 26 Mar 2020 12:51:00 -0700 (PDT)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id m14sm2252235pje.19.2020.03.26.12.50.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 12:50:59 -0700 (PDT)
Date: Thu, 26 Mar 2020 12:50:57 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Suman Anna <s-anna@ti.com>
Subject: Re: [PATCH 1/7] remoteproc: add prepare and unprepare ops
Message-ID: <20200326195057.GC59436@builder>
References: <20200324201819.23095-1-s-anna@ti.com>
 <20200324201819.23095-2-s-anna@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200324201819.23095-2-s-anna@ti.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_125101_303365_3D8EB846 
X-CRM114-Status: GOOD (  20.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Loic Pallardy <loic.pallardy@st.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Lokesh Vutla <lokeshvutla@ti.com>, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 24 Mar 13:18 PDT 2020, Suman Anna wrote:

> From: Loic Pallardy <loic.pallardy@st.com>
> 
> On some SoC architecture, it is needed to enable HW like
> clock, bus, regulator, memory region... before loading
> co-processor firmware.
> 
> This patch introduces prepare and unprepare ops to execute
> platform specific function before firmware loading and after
> stop execution.
> 

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> Signed-off-by: Loic Pallardy <loic.pallardy@st.com>
> Signed-off-by: Suman Anna <s-anna@ti.com>
> ---
>  drivers/remoteproc/remoteproc_core.c | 20 +++++++++++++++++++-
>  include/linux/remoteproc.h           |  4 ++++
>  2 files changed, 23 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
> index 26f6947267d2..aca6d022901a 100644
> --- a/drivers/remoteproc/remoteproc_core.c
> +++ b/drivers/remoteproc/remoteproc_core.c
> @@ -1394,12 +1394,22 @@ static int rproc_fw_boot(struct rproc *rproc, const struct firmware *fw)
>  		return ret;
>  	}
>  
> +	/* Prepare rproc for firmware loading if needed */
> +	if (rproc->ops->prepare) {
> +		ret = rproc->ops->prepare(rproc);
> +		if (ret) {
> +			dev_err(dev, "can't prepare rproc %s: %d\n",
> +				rproc->name, ret);
> +			goto disable_iommu;
> +		}
> +	}
> +
>  	rproc->bootaddr = rproc_get_boot_addr(rproc, fw);
>  
>  	/* Load resource table, core dump segment list etc from the firmware */
>  	ret = rproc_parse_fw(rproc, fw);
>  	if (ret)
> -		goto disable_iommu;
> +		goto unprepare_rproc;
>  
>  	/* reset max_notifyid */
>  	rproc->max_notifyid = -1;
> @@ -1433,6 +1443,10 @@ static int rproc_fw_boot(struct rproc *rproc, const struct firmware *fw)
>  	kfree(rproc->cached_table);
>  	rproc->cached_table = NULL;
>  	rproc->table_ptr = NULL;
> +unprepare_rproc:
> +	/* release HW resources if needed */
> +	if (rproc->ops->unprepare)
> +		rproc->ops->unprepare(rproc);
>  disable_iommu:
>  	rproc_disable_iommu(rproc);
>  	return ret;
> @@ -1838,6 +1852,10 @@ void rproc_shutdown(struct rproc *rproc)
>  	/* clean up all acquired resources */
>  	rproc_resource_cleanup(rproc);
>  
> +	/* release HW resources if needed */
> +	if (rproc->ops->unprepare)
> +		rproc->ops->unprepare(rproc);
> +
>  	rproc_disable_iommu(rproc);
>  
>  	/* Free the copy of the resource table */
> diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
> index 07bd73a6d72a..ddce7a7775d1 100644
> --- a/include/linux/remoteproc.h
> +++ b/include/linux/remoteproc.h
> @@ -355,6 +355,8 @@ enum rsc_handling_status {
>  
>  /**
>   * struct rproc_ops - platform-specific device handlers
> + * @prepare:	prepare device for code loading
> + * @unprepare:	unprepare device after stop
>   * @start:	power on the device and boot it
>   * @stop:	power off the device
>   * @kick:	kick a virtqueue (virtqueue id given as a parameter)
> @@ -371,6 +373,8 @@ enum rsc_handling_status {
>   * @get_boot_addr:	get boot address to entry point specified in firmware
>   */
>  struct rproc_ops {
> +	int (*prepare)(struct rproc *rproc);
> +	int (*unprepare)(struct rproc *rproc);
>  	int (*start)(struct rproc *rproc);
>  	int (*stop)(struct rproc *rproc);
>  	void (*kick)(struct rproc *rproc, int vqid);
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
