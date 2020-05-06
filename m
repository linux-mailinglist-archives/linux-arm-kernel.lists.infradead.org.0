Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 111701C7823
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 19:40:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PutHZR/RWliNLarw61GMvyKQpM8PSu33OYC6tnAsZrI=; b=LDgMFUAgAYOPEJ
	u9UlENvGrqaEbQ2CbMLM805MfsO0vv/jI22gZ/XRutAqiNwzm9riUxuOsgYQl3fkRUekypFANPlqQ
	BUeNRSevnCG3iWabDS0jibCV44W5NAxW2pL5b3GrrDsZD4Abl9kKRbXplqdxGF/rbWs6sbhFvG944
	SYSHMdd+0UKpLHwKWBSi5+iZMJUS3AFDezOeNzS7mJZ7PIDxsK71SKnfBWLF9K/mlKBnxIy4WizHK
	J3JO7ERnirclpS85MQpW3DKPfnLrvfeYrJNuzpZxFMu6zXEchlNoRuusPgCyQceWp1Z2ZcBmHOHk5
	2IRdE+H0jjZuhvMBaicw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWO1q-0002uj-57; Wed, 06 May 2020 17:40:18 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWO1Y-0002YW-9W
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 17:40:01 +0000
Received: by mail-pg1-x544.google.com with SMTP id q124so1104655pgq.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 10:39:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=kNgid64Z8J8OSXFaPoP7oLjlQHqHGDbD++ltkI1IK6Y=;
 b=G6bfsrWGcAS7+j7kxaGRlMZcRFqS1EDZqZBiFhHs275pBEqVU76lg9d/2gV/gpjXk5
 UHeD55aizevE0nr+DdQT0bZpEa4NssGaAdv3TJBAk4/VaBNXPqSrImHP0vf5hVOvXejd
 SJHLQrz9Caz7IO75yYSzb3PdK3ZLM3v++CwCS+aZ8MlyGIj6ONJ4rs/ATWVNHLuy895n
 +QLSInWWjst9l3RYlqO1SrQXe6fONmdAQM2PpBDdiB2B2T1Yw3HEDrO1crmUdVrTmOM1
 GoFEs7fu/c8JPp5a2qtBs3gQS5psdaNDWa4YA6mrLhTuFuWsww2uNBTeV/sRik9vsIBq
 glfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=kNgid64Z8J8OSXFaPoP7oLjlQHqHGDbD++ltkI1IK6Y=;
 b=R3fMJXzJ90Mz/LBQeXT0+t5S1W439grmaItKu+/JFw3sCZb3nzYbvDA4jEyLFHDTAe
 85QyBeuC8CyCbd8xxwuF1AydWj/nk+iKPWVWlAmVmFOfpJ6Xe0Sb7R1CzFM21TR++EVR
 qrPvtmlr/Tpf6T2rTcANf15cQ2PRu5p6way8wmwtA1hb+gCBhT+EgSb1MFgVEfxSVQ4S
 tRqZA0GNp+D77b5CToOImBsPSqdYVanWpYUoEuaHwOq2wTsAde+007IfDBVxlk5QgGhJ
 NISLQlEwhVm3jLnQ5XHY7GI/sYPq6Frdu/815sPAux+I7trFGFZe2+FzzVA2q0/nl3eu
 GNbQ==
X-Gm-Message-State: AGi0PuZPAJmwedwnXq8ivySAMeaWcRI1GGEBDt4Vgbe+I/EmpwwhngiX
 TiKFa4P/ZEuH8YMqtdpQiUlvWp74whc=
X-Google-Smtp-Source: APiQypLNLujkEh1u6LyZm8eLBvdZue77yFzYkC7G5bTcXZ1W8UbGX8t9N8aSPW0fe3BfUxac1lxn+g==
X-Received: by 2002:a62:2cd7:: with SMTP id s206mr9078570pfs.183.1588786798620; 
 Wed, 06 May 2020 10:39:58 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id g184sm2340807pfb.80.2020.05.06.10.39.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 May 2020 10:39:58 -0700 (PDT)
Date: Wed, 6 May 2020 11:39:56 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH v2 1/2] coresight: cti: Add CPU Hotplug handling to CTI
 driver.
Message-ID: <20200506173956.GB29826@xps15>
References: <20200504161530.9284-1-mike.leach@linaro.org>
 <20200504161530.9284-2-mike.leach@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200504161530.9284-2-mike.leach@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_104000_362729_99641585 
X-CRM114-Status: GOOD (  23.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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

Hi Mike,

On Mon, May 04, 2020 at 05:15:29PM +0100, Mike Leach wrote:
> Adds registration of CPU start and stop functions to CPU hotplug
> mechanisms - for any CPU bound CTI.
> 
> Sets CTI powered flag according to state.
> Will enable CTI on CPU start if there are existing enable requests.
> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> ---
>  drivers/hwtracing/coresight/coresight-cti.c | 91 +++++++++++++++++++++
>  include/linux/cpuhotplug.h                  |  1 +
>  2 files changed, 92 insertions(+)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-cti.c b/drivers/hwtracing/coresight/coresight-cti.c
> index be61c1705916..9af66719ae5b 100644
> --- a/drivers/hwtracing/coresight/coresight-cti.c
> +++ b/drivers/hwtracing/coresight/coresight-cti.c
> @@ -40,6 +40,12 @@ static DEFINE_MUTEX(ect_mutex);
>  #define csdev_to_cti_drvdata(csdev)	\
>  	dev_get_drvdata(csdev->dev.parent)
>  
> +/* power management handling */
> +static int nr_cti_cpu;
> +
> +/* quick lookup list for CPU bound CTIs when power handling */
> +static struct cti_drvdata *cti_cpu_drvdata[NR_CPUS];
> +
>  /*
>   * CTI naming. CTI bound to cores will have the name cti_cpu<N> where
>   * N is the CPU ID. System CTIs will have the name cti_sys<I> where I
> @@ -129,6 +135,35 @@ static int cti_enable_hw(struct cti_drvdata *drvdata)
>  	return rc;
>  }
>  
> +/* re-enable CTI on CPU when using CPU hotplug */
> +static void cti_cpuhp_enable_hw(struct cti_drvdata *drvdata)
> +{
> +	struct cti_config *config = &drvdata->config;
> +	struct device *dev = &drvdata->csdev->dev;
> +
> +	pm_runtime_get_sync(dev->parent);
> +	spin_lock(&drvdata->spinlock);
> +	config->hw_powered = true;
> +
> +	/* no need to do anything if no enable request */
> +	if (!atomic_read(&drvdata->config.enable_req_count))
> +		goto cti_hp_not_enabled;
> +
> +	/* try to claim the device */
> +	if (coresight_claim_device(drvdata->base))
> +		goto cti_hp_not_enabled;
> +
> +	cti_write_all_hw_regs(drvdata);
> +	config->hw_enabled = true;
> +	spin_unlock(&drvdata->spinlock);
> +	return;
> +
> +	/* did not re-enable due to no claim / no request */
> +cti_hp_not_enabled:
> +	spin_unlock(&drvdata->spinlock);
> +	pm_runtime_put(dev->parent);
> +}
> +
>  /* disable hardware */
>  static int cti_disable_hw(struct cti_drvdata *drvdata)
>  {
> @@ -620,6 +655,44 @@ static void cti_remove_conn_xrefs(struct cti_drvdata *drvdata)
>  	}
>  }
>  
> +/* CPU HP handlers */
> +static int cti_starting_cpu(unsigned int cpu)
> +{
> +	struct cti_drvdata *drvdata = cti_cpu_drvdata[cpu];
> +
> +	if (!drvdata)
> +		return 0;
> +
> +	cti_cpuhp_enable_hw(drvdata);
> +	return 0;
> +}
> +
> +static int cti_dying_cpu(unsigned int cpu)
> +{
> +	struct cti_drvdata *drvdata = cti_cpu_drvdata[cpu];
> +
> +	if (!drvdata)
> +		return 0;
> +
> +	spin_lock(&drvdata->spinlock);
> +	drvdata->config.hw_powered = false;
> +	coresight_disclaim_device(drvdata->base);
> +	spin_unlock(&drvdata->spinlock);
> +	return 0;
> +}
> +
> +/* release PM registrations */
> +static void cti_pm_release(struct cti_drvdata *drvdata)
> +{
> +	if (drvdata->ctidev.cpu >= 0) {
> +		if (--nr_cti_cpu == 0) {
> +			cpuhp_remove_state_nocalls(
> +				CPUHP_AP_ARM_CORESIGHT_CTI_STARTING);
> +		}
> +		cti_cpu_drvdata[drvdata->ctidev.cpu] = NULL;
> +	}
> +}
> +
>  /** cti ect operations **/
>  int cti_enable(struct coresight_device *csdev)
>  {
> @@ -655,6 +728,7 @@ static void cti_device_release(struct device *dev)
>  
>  	mutex_lock(&ect_mutex);
>  	cti_remove_conn_xrefs(drvdata);
> +	cti_pm_release(drvdata);
>  
>  	/* remove from the list */
>  	list_for_each_entry_safe(ect_item, ect_tmp, &ect_net, node) {
> @@ -730,6 +804,22 @@ static int cti_probe(struct amba_device *adev, const struct amba_id *id)
>  		goto err_out;
>  	}
>  
> +	/* setup CPU power management handling for CPU bound CTI devices. */
> +	if (drvdata->ctidev.cpu >= 0) {
> +		cti_cpu_drvdata[drvdata->ctidev.cpu] = drvdata;
> +		if (!nr_cti_cpu++) {
> +			cpus_read_lock();
> +			cpuhp_setup_state_nocalls_cpuslocked(

                        ret = cpuhp_setup_state_nocalls_cpuslocked(

Otherwise this patch looks good to me (many thanks for splitting).  On your next
revision please CC Thomas Gleixner as suggested by the get_maintainer.pl script.

Mathieu

> +				CPUHP_AP_ARM_CORESIGHT_CTI_STARTING,
> +				"arm/coresight_cti:starting",
> +				cti_starting_cpu, cti_dying_cpu);
> +
> +			cpus_read_unlock();
> +			if (ret)
> +				goto err_out;
> +		}
> +	}
> +
>  	/* create dynamic attributes for connections */
>  	ret = cti_create_cons_sysfs(dev, drvdata);
>  	if (ret) {
> @@ -768,6 +858,7 @@ static int cti_probe(struct amba_device *adev, const struct amba_id *id)
>  	return 0;
>  
>  err_out:
> +	cti_pm_release(drvdata);
>  	return ret;
>  }
>  
> diff --git a/include/linux/cpuhotplug.h b/include/linux/cpuhotplug.h
> index 77d70b633531..6dc7332307ca 100644
> --- a/include/linux/cpuhotplug.h
> +++ b/include/linux/cpuhotplug.h
> @@ -142,6 +142,7 @@ enum cpuhp_state {
>  	CPUHP_AP_ARM_XEN_STARTING,
>  	CPUHP_AP_ARM_KVMPV_STARTING,
>  	CPUHP_AP_ARM_CORESIGHT_STARTING,
> +	CPUHP_AP_ARM_CORESIGHT_CTI_STARTING,
>  	CPUHP_AP_ARM64_ISNDEP_STARTING,
>  	CPUHP_AP_SMPCFD_DYING,
>  	CPUHP_AP_X86_TBOOT_DYING,
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
