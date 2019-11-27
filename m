Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB8D410B5B7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 19:27:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9roBFJDpAdp239YmcRHV0a155qEuYcQoMvi7pfcV5PY=; b=g51kS1nSdgRxbOM5TCUqPK6F3
	5WxLiaRRESj+pLX8orPAqcMvLRDfEQmc0xtaIhwf0bn0d5OxDHazE5PAHVExsI972fUGWbv+53BQP
	/VPwGGncBne9yiSwKH0ZBqArdkLbHiGzgxQ4+cD55xjN0RodhXioaxtx027ALyiwYs72hHbLrSt9J
	DiQmvP6ZkOsBPWDsQmM3cliTn70wekqY003fMPBpzglEooiFqeiT1ZlOau0UdVaA7gp+TxrMHFULn
	W+ZcBKsR3mAlxNqIbMQTyiura/d18gSjEGE6bTh4IQ4NEZo1gXCwCDg0fiX6MKgqyzcRoUHntlPWm
	XXyB3rNVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia21v-0003kC-KO; Wed, 27 Nov 2019 18:27:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia21g-0003jO-UD
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 18:26:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 38F4831B;
 Wed, 27 Nov 2019 10:26:54 -0800 (PST)
Received: from [10.1.197.1] (ewhatever.cambridge.arm.com [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6DEC83F6C4;
 Wed, 27 Nov 2019 10:26:53 -0800 (PST)
Subject: Re: [PATCH v5 03/14] coresight: cti: Add sysfs access to program
 function regs
To: Mike Leach <mike.leach@linaro.org>, coresight@lists.linaro.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-doc@vger.kernel.org
References: <20191119231912.12768-1-mike.leach@linaro.org>
 <20191119231912.12768-4-mike.leach@linaro.org>
From: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Message-ID: <df1f3912-4096-bc96-e65a-5db1593ad8f4@arm.com>
Date: Wed, 27 Nov 2019 18:26:52 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191119231912.12768-4-mike.leach@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_102657_067833_53FEB388 
X-CRM114-Status: GOOD (  21.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mathieu.poirier@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19/11/2019 23:19, Mike Leach wrote:
> Adds in sysfs programming support for the CTI function register sets.
> Allows direct manipulation of channel / trigger association registers.
> 
> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> ---
>   .../hwtracing/coresight/coresight-cti-sysfs.c | 362 ++++++++++++++++++
>   drivers/hwtracing/coresight/coresight-cti.c   |  19 +
>   drivers/hwtracing/coresight/coresight-cti.h   |   5 +
>   3 files changed, 386 insertions(+)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-cti-sysfs.c b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> index 507f8eb487fe..02d3ee0c1278 100644
> --- a/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> +++ b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> @@ -109,6 +109,362 @@ static struct attribute *coresight_cti_mgmt_attrs[] = {
>   	NULL,
>   };
>   
> +/* CTI low level programming registers */
> +
> +/*
> + * Show a simple 32 bit value if enabled and powered.
> + * If inaccessible & pcached_val not NULL then show cached value.
> + */

Also I am not sure if it makes sense to mention that the value is cached.

> +static ssize_t cti_reg32_show(struct device *dev, char *buf,
> +			      u32 *pcached_val, int reg_offset)
> +{
> +	u32 val = 0;
   +	char *state = "";

> +	struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);
> +	struct cti_config *config = &drvdata->config;
> +
> +	spin_lock(&drvdata->spinlock);
> +	if ((reg_offset >= 0) && CTI_PWR_ENA(config)) {

minor nit: Personally I don't like the naming here. This could simply 
be: cti_accessible(config) , may be defined as a static inline function
instead of a macro:

static inline bool cti_accessible(struct cti_drvdata *drvdata)
{
	struct cti_config *cfg = &drvdata->config;

	return cfg->hw_powered && cfg->hw_enabled;
}


> +		CS_UNLOCK(drvdata->base);
> +		val = readl_relaxed(drvdata->base + reg_offset);
> +		if (pcached_val)
> +			*pcached_val = val;
> +		CS_LOCK(drvdata->base);
> +	} else if (pcached_val) {
> +		val = *pcached_val;

   +		state = " (cached)";
> +	}
> +	spin_unlock(&drvdata->spinlock);
> +	return scnprintf(buf, PAGE_SIZE, "%#x\n", val);
   +	return scnprintf(buf, PAGE_SIZE, "%#x%s\n", val, state);

> +}
> +
> +/*
> + * Store a simple 32 bit value.
> + * If pcached_val not NULL, then copy to here too,
> + * if reg_offset >= 0 then write through if enabled.
> + */
> +static ssize_t cti_reg32_store(struct device *dev, const char *buf,
> +			       size_t size, u32 *pcached_val, int reg_offset)


> +static ssize_t appclear_store(struct device *dev,
> +			      struct device_attribute *attr,
> +			      const char *buf, size_t size)
> +{
> +	unsigned long val;
> +	struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);
> +	struct cti_config *config = &drvdata->config;
> +
> +	if (kstrtoul(buf, 0, &val))
> +		return -EINVAL;
> +
> +	spin_lock(&drvdata->spinlock);
> +
> +	/* a 1'b1 in appclr clears down the same bit in appset*/

nit: a 0b1 ?

> +	config->ctiappset &= ~val;
> +
> +	/* write through if enabled */
> +	if (CTI_PWR_ENA(config))
> +		cti_write_single_reg(drvdata, CTIAPPCLEAR, val);
> +	spin_unlock(&drvdata->spinlock);
> +	return size;
> +}
> +static DEVICE_ATTR_WO(appclear);
> +

Otherwise looks good to me.

Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
