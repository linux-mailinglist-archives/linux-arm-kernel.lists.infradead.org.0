Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A53C11C78DB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 20:02:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V1gY8Z2HYL9OKYdzn+iDt8XXRKukUjIUp11Rt8Xy94E=; b=NOACx1LohWOeyo
	J96J3NOYwQj85l2JV/DfM0MmvZJ7IkrVd9nvjEnQ0a0c6uyNldKW3YCTtJ/p13Gb4hsU/2ZusEaP6
	iW8ApVzBwalkx0BYTTKF5yVKBLsuieWW0spgRyT8W0rYK/nvrFh8+v8IuHMaEOvvVAyFx5k+UeSWX
	AOebN3ttG8qF2X9ZnCkqXgn64+BghQoqPRHwPkC1o7rKMbc2yoI/7FT1+yJ4iryXMWxv7XkjLGsWQ
	tKhg+8dMlChkIPhVHXS0G0/iwZXE+Jbwhin8dOmeTKb5J/pyufvi5+caYlCnh0CXTWJ+BsFjOYypT
	MoXdcNoGNSaHybpyk8kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWONR-0003kH-3j; Wed, 06 May 2020 18:02:37 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWONJ-0003jm-Ak
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 18:02:31 +0000
Received: by mail-pg1-x542.google.com with SMTP id r4so1457905pgg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 11:02:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=WbBkk3P8pazAzXE1vtdVGaNbm39cU1oKB2RsQimj4T0=;
 b=x6VM4tIrDmxe3FtMLEztGPnLGL7sklIfIsQUnRTYkZUkKiIuAUjP7uxhtiI0DdPdeV
 R9gY+i7tAv8ej4b4P4133qcTh21zVtwvtjocGqLol2iAZ8XIcKLFSRW8jRJEHe0nJWTz
 leQ7S+2n8AnglcjzMsoL15BXw0gZvm6lzEdPz2TNvO3VRnwUPMmi4zHP1r2J1+WKkaKQ
 Rw6V2wqqJqDKVERc/e4QPKeuQ4o6eegykbL6WOQQybEEtdk2sUcQ4euq8VdS/hvkpGMk
 9WSqcr8j4IWQeDezMJhPhxv3cvJpND7iO7sJ2Cc4mi+oiAQGn6OqazYmzEtHrhlt5M82
 xgKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WbBkk3P8pazAzXE1vtdVGaNbm39cU1oKB2RsQimj4T0=;
 b=fjFwczCUdW/twPQh+9RU6BIm5DTCHk10UVzHgBI8C7LXwLHn4/48efW8IjCHLy+A5F
 Chxf4TdCCBz+abygwshKLuMyye+uaz27DZf0TVOH1drC3H6XFLM82PHe0aDHuOxq/6Rg
 BTpELqRHQCn3oueXfPRkSw97VijIeQkyCn0CfaGKz4lGZar6w5I4ICyw+iIPe+8BI2RL
 R3t+1cQC+sKEHgGJXHrywkEBQPoby/ZNgl59RT9dV2svwJMgqCw/OefVkaQN2Td8a6oH
 J9qScf79eoSAEmuaEpGLycCJxIiV/abI3CPwiICQKii7EMQZy/V7n14Y5XxIdv+jOMbt
 K9rw==
X-Gm-Message-State: AGi0PuZgfv72fwDub09uc7QMtEyYYoGdq+6zW8HlzK9n59PiRDFjnqbr
 XL+GEy+gUUoXVeEvzoK/w5ZGug==
X-Google-Smtp-Source: APiQypJPBIxt7QHhR7nCuGydkOU0L8CbbdwpUumqja9P3o5krF//U/nCQ1Xi4clwgkJoo25iyISxgQ==
X-Received: by 2002:a62:dd4e:: with SMTP id w75mr9810029pff.221.1588788148378; 
 Wed, 06 May 2020 11:02:28 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id y3sm2397280pfb.132.2020.05.06.11.02.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 May 2020 11:02:27 -0700 (PDT)
Date: Wed, 6 May 2020 12:02:24 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH v2 2/2] coresight: cti: Add CPU idle pm notifer to CTI
 devices.
Message-ID: <20200506180224.GC29826@xps15>
References: <20200504161530.9284-1-mike.leach@linaro.org>
 <20200504161530.9284-3-mike.leach@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200504161530.9284-3-mike.leach@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_110229_375477_2E33E01B 
X-CRM114-Status: GOOD (  19.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
 suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 04, 2020 at 05:15:30PM +0100, Mike Leach wrote:
> Adds a notify callback for CPU PM events to the CTI driver - for
> CPU bound CTI devices.
> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> ---
>  drivers/hwtracing/coresight/coresight-cti.c | 82 +++++++++++++++++++++
>  1 file changed, 82 insertions(+)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-cti.c b/drivers/hwtracing/coresight/coresight-cti.c
> index 9af66719ae5b..0f0c14528701 100644
> --- a/drivers/hwtracing/coresight/coresight-cti.c
> +++ b/drivers/hwtracing/coresight/coresight-cti.c
> @@ -8,6 +8,7 @@
>  #include <linux/atomic.h>
>  #include <linux/bits.h>
>  #include <linux/coresight.h>
> +#include <linux/cpu_pm.h>
>  #include <linux/device.h>
>  #include <linux/io.h>
>  #include <linux/kernel.h>
> @@ -655,6 +656,84 @@ static void cti_remove_conn_xrefs(struct cti_drvdata *drvdata)
>  	}
>  }
>  
> +/** cti PM callbacks **/
> +static int cti_cpu_pm_notify(struct notifier_block *nb, unsigned long cmd,
> +			     void *v)
> +{
> +	struct cti_drvdata *drvdata;
> +	unsigned int cpu = smp_processor_id();
> +	int notify_res = NOTIFY_OK;
> +
> +	if (!cti_cpu_drvdata[cpu])
> +		return NOTIFY_OK;
> +
> +	drvdata = cti_cpu_drvdata[cpu];
> +
> +	if (WARN_ON_ONCE(drvdata->ctidev.cpu != cpu))
> +		return NOTIFY_BAD;
> +
> +	spin_lock(&drvdata->spinlock);
> +
> +	switch (cmd) {
> +	case CPU_PM_ENTER:
> +		/* CTI regs all static - we have a copy & nothing to save */
> +		drvdata->config.hw_powered = false;
> +		if (drvdata->config.hw_enabled)
> +			coresight_disclaim_device(drvdata->base);
> +		break;
> +
> +	case CPU_PM_ENTER_FAILED:
> +		drvdata->config.hw_powered = true;
> +		if (drvdata->config.hw_enabled) {
> +			if (coresight_claim_device(drvdata->base))
> +				drvdata->config.hw_enabled = false;
> +		}
> +		break;
> +
> +	case CPU_PM_EXIT:
> +		/* write hardware registers to re-enable. */
> +		drvdata->config.hw_powered = true;
> +		drvdata->config.hw_enabled = false;
> +
> +		/* check enable reference count to enable HW */
> +		if (atomic_read(&drvdata->config.enable_req_count)) {
> +			/* check we can claim the device as we re-power */
> +			if (coresight_claim_device(drvdata->base))
> +				goto cti_notify_exit;
> +
> +			drvdata->config.hw_enabled = true;
> +			cti_write_all_hw_regs(drvdata);
> +		}
> +		break;
> +
> +	default:
> +		notify_res = NOTIFY_DONE;
> +		break;
> +	}
> +
> +cti_notify_exit:
> +	spin_unlock(&drvdata->spinlock);
> +	return notify_res;
> +}
> +
> +static struct notifier_block cti_cpu_pm_nb = {
> +	.notifier_call = cti_cpu_pm_notify,
> +};
> +
> +static int cti_cpu_pm_register(void)
> +{
> +	if (IS_ENABLED(CONFIG_CPU_PM))
> +		return cpu_pm_register_notifier(&cti_cpu_pm_nb);

Looking further into function cpu_pm_register_notifier(), it simply returns '0'
if CONFIG_CPU_PM is not defined.  As such cpu_pm_register_notifier() can be
called directly from cti_probe().  The same applies to
cpu_pm_unregister_notifier().

> +
> +	return 0;
> +}
> +
> +static void cti_cpu_pm_unregister(void)
> +{
> +	if (IS_ENABLED(CONFIG_CPU_PM))
> +		cpu_pm_unregister_notifier(&cti_cpu_pm_nb);
> +}
> +
>  /* CPU HP handlers */
>  static int cti_starting_cpu(unsigned int cpu)
>  {
> @@ -686,6 +765,8 @@ static void cti_pm_release(struct cti_drvdata *drvdata)
>  {
>  	if (drvdata->ctidev.cpu >= 0) {
>  		if (--nr_cti_cpu == 0) {
> +			cti_cpu_pm_unregister();
> +
>  			cpuhp_remove_state_nocalls(
>  				CPUHP_AP_ARM_CORESIGHT_CTI_STARTING);
>  		}
> @@ -814,6 +895,7 @@ static int cti_probe(struct amba_device *adev, const struct amba_id *id)
>  				"arm/coresight_cti:starting",
>  				cti_starting_cpu, cti_dying_cpu);
>  
> +			ret = cti_cpu_pm_register();

This should be one only if cpuhp_remove_state_nocalls() hasn't returned an
error.

Otherwise this looks good.

Thanks,
Mathieu

>  			cpus_read_unlock();
>  			if (ret)
>  				goto err_out;
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
