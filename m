Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEBA219FB45
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 19:20:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v64sgTmE99NZAwdhawpELFRaYa9DguFQSCtmyYxpebA=; b=tCcrUzm0jOM/Os
	mrhnXxsNfrjURsovfQPosg1wrs1f9SF7m6EjKo0dIUyp6B+ugGwiXZp92vBJBjwtFi0kqCzOCP1FO
	ON+PtswATSeB6kUR40nLaXkYzlD/WaBA+qb3gBX6UVIbpzwZEj9SheTiVTb+Ff73DJs4xwOr3zm9B
	gUKMPIFHJLbuWa+aI2sggXLXseAYOIRk10G8WDW7sanY/gsYLJsdzTJg2pqI6wPkaKKQh79MJ8Mfv
	+2HicmUehE9Zcb5NIjOV+K4OvFmxTvzR7r/DSA0xcZJvUtIVJ8A5hViLWX43nLxKG+J5tHbPpGdjX
	fd6/hnBlAKyFw5YpbCEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLVQE-0002f2-43; Mon, 06 Apr 2020 17:20:30 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLVQ6-0002eH-Dp
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 17:20:24 +0000
Received: by mail-pf1-x441.google.com with SMTP id u65so7877499pfb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 10:20:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=9ufQQaWgpQ1ovP51hpWZYakegE3ep+d8csbsVkQT9hw=;
 b=Et3RwsnxoUZxcWoJKthjdlVbl8BWY6TSt1ZTTvJhDPEOAlyjOUKBjPC2+paORR2YZl
 X+pSasZgIQ2s9oegTIX+8ZSJ8QGetfnMJfw+Vz0HI51C/bPHRzI+OdKukXOOMMkqJk2u
 GOZKEiIIaQjY/AxAUBmbf06xYizlv8wkWZwHd9w9sKqIubPJs/XFQqIkDKg6ljIdCiWe
 Ye3zOHnqH77YRPMJrIGGrzvBcbBB837ESdTdAF/VCrZqITdLan1s0Oe1rH6DQsY/+xv2
 k9YMRYaC0z00/I1sUFGIZCF1IW4u0pzBwdTvaRLBvJLinrn+Eg3aAN67aTKoonLrMwtG
 Yk1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9ufQQaWgpQ1ovP51hpWZYakegE3ep+d8csbsVkQT9hw=;
 b=UShBhtqRX3pfJln5lIdzUf4+x/AQmg7KV2zhru/TRZqpA3AHzDzmu08H0oj5kbh/To
 D3K102MMPL1hUF3Em7Bc9jw6zJnbhZlVfqkqlIeCgr9ICB1nS9NqHBvVFN+msZVbboBa
 868RyBrTghf0VAr6OkZ8him5b7L1OxRfLYw4Rfx/8Stk/CjQApy1ivV5pu9zPdJC9GaL
 eaUAqtERTFJcVE+VLKXy18ZeD78EpNyCczEmSfTQMD7c6RLTv5mT+X8BI8sHRltW+fp4
 VPVfhiZuDA6wxRFrQZW1ovb67b8sNn/v4nRVmw2Qo2/KIwQUJRwqF72dFUgQNHuw90cp
 TLhA==
X-Gm-Message-State: AGi0PuYCK2GCUKaPFmj7NVo/64eZnccqToQKAV7RlHW15Kla10ZvlPoK
 fnMqsQgaQH6cg9UH8oC+jzXcmQ==
X-Google-Smtp-Source: APiQypKD14oDwdXQWKCZ1Qi/4No9nWpitsw/lHB15XdP4NiRpWom5ngC86uzh7fy2A17q3MwbegH+A==
X-Received: by 2002:aa7:8f29:: with SMTP id y9mr515086pfr.19.1586193620938;
 Mon, 06 Apr 2020 10:20:20 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id r189sm11456723pgr.31.2020.04.06.10.20.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Apr 2020 10:20:20 -0700 (PDT)
Date: Mon, 6 Apr 2020 11:20:18 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Suman Anna <s-anna@ti.com>
Subject: Re: [PATCH 1/7] remoteproc: add prepare and unprepare ops
Message-ID: <20200406172018.GA11572@xps15>
References: <20200324201819.23095-1-s-anna@ti.com>
 <20200324201819.23095-2-s-anna@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200324201819.23095-2-s-anna@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_102022_634141_EE306CC7 
X-CRM114-Status: GOOD (  23.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Loic Pallardy <loic.pallardy@st.com>,
 Lokesh Vutla <lokeshvutla@ti.com>, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Good morning Suman,

I have started to work on this set - comments will come in over the next few
days...

On Tue, Mar 24, 2020 at 03:18:13PM -0500, Suman Anna wrote:
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

In my patchset on MCU synchronisation I have moved ops->{start/stop} to
remoteproc_internal.h and called them rproc_start/stop_device() (after Loic's
suggestion).  In order to be consistent and remove boiler plate code in the core
we could do the same, i.e have rproc_prepare/unprepare_device() in
remoteproc_internal.h .

With the above:
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

Thanks,
Mathieu

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
