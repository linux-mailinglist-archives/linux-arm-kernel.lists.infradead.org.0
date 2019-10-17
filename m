Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5940ADB82E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 22:17:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pkbFe8nu/WdcK1eoKQPxLiE3u3B31a+eRG3rJEa/AqA=; b=YX/rFfrS9OY4kt
	7sM7MdFLau3rrRr6CxC93KvjgkQcidQEZVYl6iXfAC2hZn82l46k4hVwcSv9GaQv63WzhTiD6MqvM
	zUNCL5TQqSsXml0LtH34HafC5MCut5q/XhWB2NItlqFBi2iBkC8puniWIyt8nR9AUeEClvneaWfky
	1mnlL5L8wBazk61o2bnX9sV0FnF+KUuIGqSHNvVq12XHzjESJ3pw1XnBHHCuO2AOnTiKIk17jbQoa
	4obM1S/bBSvaSvlAQl3EHZ/dQNbCGGU0sQIhUnM0wZaVpoepM8iy25lly+JreRAWYrKVLm6E+Pj9Z
	fgSjALxe32QMLu3pcHLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLCD0-0002Kw-Qr; Thu, 17 Oct 2019 20:17:18 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLCCs-0002KV-6a
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 20:17:12 +0000
Received: by mail-pf1-x441.google.com with SMTP id h195so2341707pfe.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 13:17:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ofGJFITzq7+8vbxQSUKGGCUjUrfmHQGStzvLOkyKiXs=;
 b=AAS8hlkY+I6l43Mw/J/dsPGo1XhABdgHfowFi5scReMpiFSY/9Q5OsdOe8kxlvtRU9
 +PlspU1LVUSM2QTjj8YTgdln5gKrv5iJXZhDjQvb5JKmzh5PVR9fX5LL9ApuYcrCGmjl
 oWQnNv8BJnSHKwfSbjRYqpVb2lF6BbnWKLjR3dbLCgIXgjfYaNpWAB2atFD0JMIsWZ26
 HJ6AvdfifoNpw3lAjlKbuHrrMe+6c73SxPXcQlI0rm8RH6AujFuVrWteioiLu0SxNaXm
 uHXwAPP7YFJ2z7HSCqXmEQ7uD/DenqugMpF0FQEUvh9AZsDHYVJ2JqTvR1+CQEsPuyzu
 akfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ofGJFITzq7+8vbxQSUKGGCUjUrfmHQGStzvLOkyKiXs=;
 b=Bf5KieSXGFNCRruAD0SKQQ6ZB20aAe8V+3LWhSgXWb2tIA3czNx8WvzZewBp1mC2s4
 S13YqloTUUfhgMOXaWQlgNDYImUZj3DRt1sESWZJwHJyGuAkM6gms87rJkb8v1HlL+ST
 LYjr3jlVw7p6N9WxppXm5J8noH3y9oxPzO2L9IAYOouUYiPZCn4JBHi3oU3nj4Olay28
 Ji3zV0sdSybXCuMX/t/zFW9LDroWXvNn5w1S3UIlYCSXvm/o35U75trxcJDVrcRqtekY
 0Iz2PHgo3sDXNXFYbgYy91q7mJ/K4QQean1ZD07VauRerDQzWOtPqkvB5TFXhmov4PKm
 KU8Q==
X-Gm-Message-State: APjAAAXkaYvIo9EEL/5Lx5ad11Bee1XoXqQLqaUaSZXUvxXb6QJYNoSw
 v4ae2ABWMev03W+HfRdgWFPR7g==
X-Google-Smtp-Source: APXvYqx5pBJzpC1RW5OFSewc0MGoctOoaocgKQualnPldFL8Ka92ajSC7yt8FyqESkZsZb/5wmFZlA==
X-Received: by 2002:a17:90a:9dc5:: with SMTP id
 x5mr6666738pjv.85.1571343428709; 
 Thu, 17 Oct 2019 13:17:08 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id f6sm3927504pfq.169.2019.10.17.13.17.07
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 17 Oct 2019 13:17:08 -0700 (PDT)
Date: Thu, 17 Oct 2019 14:17:06 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH v3 08/11] coresight: etm4x: Add missing single-shot
 control API to sysfs
Message-ID: <20191017201705.GA16483@xps15>
References: <20191015212004.24748-1-mike.leach@linaro.org>
 <20191015212004.24748-9-mike.leach@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191015212004.24748-9-mike.leach@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_131710_249072_810824DC 
X-CRM114-Status: GOOD (  23.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

On Tue, Oct 15, 2019 at 10:20:01PM +0100, Mike Leach wrote:
> An API to control single-shot comparator operation was missing from sysfs.
> This adds the parameters to sysfs to allow programming of this feature.
> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> ---
>  .../coresight/coresight-etm4x-sysfs.c         | 122 ++++++++++++++++++
>  drivers/hwtracing/coresight/coresight-etm4x.c |  26 +++-
>  drivers/hwtracing/coresight/coresight-etm4x.h |   2 +
>  3 files changed, 149 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> index ca1a54411225..43b3f0976034 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> +++ b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> @@ -239,6 +239,7 @@ static ssize_t reset_store(struct device *dev,
>  	for (i = 0; i < drvdata->nr_resource; i++)
>  		config->res_ctrl[i] = 0x0;
>  
> +	config->ss_idx = 0x0;
>  	for (i = 0; i < drvdata->nr_ss_cmp; i++) {
>  		config->ss_ctrl[i] = 0x0;
>  		config->ss_pe_cmp[i] = 0x0;
> @@ -1717,6 +1718,123 @@ static ssize_t res_ctrl_store(struct device *dev,
>  }
>  static DEVICE_ATTR_RW(res_ctrl);
>  
> +static ssize_t sshot_idx_show(struct device *dev,
> +			      struct device_attribute *attr, char *buf)
> +{
> +	unsigned long val;
> +	struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
> +	struct etmv4_config *config = &drvdata->config;
> +
> +	val = config->ss_idx;
> +	return scnprintf(buf, PAGE_SIZE, "%#lx\n", val);
> +}
> +
> +static ssize_t sshot_idx_store(struct device *dev,
> +			       struct device_attribute *attr,
> +			       const char *buf, size_t size)
> +{
> +	unsigned long val;
> +	struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
> +	struct etmv4_config *config = &drvdata->config;
> +
> +	if (kstrtoul(buf, 16, &val))
> +		return -EINVAL;
> +	if (val >= drvdata->nr_ss_cmp)
> +		return -EINVAL;
> +
> +	spin_lock(&drvdata->spinlock);
> +	config->ss_idx = val;
> +	spin_unlock(&drvdata->spinlock);
> +	return size;
> +}
> +static DEVICE_ATTR_RW(sshot_idx);
> +
> +static ssize_t sshot_ctrl_show(struct device *dev,
> +			       struct device_attribute *attr,
> +			       char *buf)
> +{
> +	unsigned long val;
> +	struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
> +	struct etmv4_config *config = &drvdata->config;
> +
> +	spin_lock(&drvdata->spinlock);
> +	val = config->ss_ctrl[config->ss_idx];
> +	spin_unlock(&drvdata->spinlock);
> +	return scnprintf(buf, PAGE_SIZE, "%#lx\n", val);
> +}
> +
> +static ssize_t sshot_ctrl_store(struct device *dev,
> +				struct device_attribute *attr,
> +				const char *buf, size_t size)
> +{
> +	u8 idx;
> +	unsigned long val;
> +	struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
> +	struct etmv4_config *config = &drvdata->config;
> +
> +	if (kstrtoul(buf, 16, &val))
> +		return -EINVAL;
> +
> +	spin_lock(&drvdata->spinlock);
> +	idx = config->ss_idx;
> +	config->ss_ctrl[idx] = val & GENMASK(24, 0);
> +	/* must clear bit 31 in related status register on programming */
> +	config->ss_status[idx] &= ~BIT(31);
> +	spin_unlock(&drvdata->spinlock);
> +	return size;
> +}
> +static DEVICE_ATTR_RW(sshot_ctrl);
> +
> +static ssize_t sshot_status_show(struct device *dev,
> +				 struct device_attribute *attr, char *buf)
> +{
> +	unsigned long val;
> +	struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
> +	struct etmv4_config *config = &drvdata->config;
> +
> +	spin_lock(&drvdata->spinlock);
> +	val = config->ss_status[config->ss_idx];
> +	spin_unlock(&drvdata->spinlock);
> +	return scnprintf(buf, PAGE_SIZE, "%#lx\n", val);
> +}
> +static DEVICE_ATTR_RO(sshot_status);
> +
> +static ssize_t sshot_pe_ctrl_show(struct device *dev,
> +				  struct device_attribute *attr,
> +				  char *buf)
> +{
> +	unsigned long val;
> +	struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
> +	struct etmv4_config *config = &drvdata->config;
> +
> +	spin_lock(&drvdata->spinlock);
> +	val = config->ss_pe_cmp[config->ss_idx];
> +	spin_unlock(&drvdata->spinlock);
> +	return scnprintf(buf, PAGE_SIZE, "%#lx\n", val);
> +}
> +
> +static ssize_t sshot_pe_ctrl_store(struct device *dev,
> +				   struct device_attribute *attr,
> +				   const char *buf, size_t size)
> +{
> +	u8 idx;
> +	unsigned long val;
> +	struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
> +	struct etmv4_config *config = &drvdata->config;
> +
> +	if (kstrtoul(buf, 16, &val))
> +		return -EINVAL;
> +
> +	spin_lock(&drvdata->spinlock);
> +	idx = config->ss_idx;
> +	config->ss_pe_cmp[idx] = val & GENMASK(7, 0);
> +	/* must clear bit 31 in related status register on programming */
> +	config->ss_status[idx] &= ~BIT(31);
> +	spin_unlock(&drvdata->spinlock);
> +	return size;
> +}
> +static DEVICE_ATTR_RW(sshot_pe_ctrl);
> +
>  static ssize_t ctxid_idx_show(struct device *dev,
>  			      struct device_attribute *attr,
>  			      char *buf)
> @@ -2173,6 +2291,10 @@ static struct attribute *coresight_etmv4_attrs[] = {
>  	&dev_attr_addr_exlevel_s_ns.attr,
>  	&dev_attr_addr_cmp_view.attr,
>  	&dev_attr_vinst_pe_cmp_start_stop.attr,
> +	&dev_attr_sshot_idx.attr,
> +	&dev_attr_sshot_ctrl.attr,
> +	&dev_attr_sshot_pe_ctrl.attr,
> +	&dev_attr_sshot_status.attr,
>  	&dev_attr_seq_idx.attr,
>  	&dev_attr_seq_state.attr,
>  	&dev_attr_seq_event.attr,
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
> index d5148afdbe80..dc3f507e7562 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x.c
> +++ b/drivers/hwtracing/coresight/coresight-etm4x.c
> @@ -168,6 +168,9 @@ static int etm4_enable_hw(struct etmv4_drvdata *drvdata)
>  			       drvdata->base + TRCRSCTLRn(i));
>  
>  	for (i = 0; i < drvdata->nr_ss_cmp; i++) {
> +		/* always clear status bit on restart if using single-shot */
> +		if (config->ss_ctrl[i] || config->ss_pe_cmp[i])
> +			config->ss_status[i] &= ~BIT(31);
>  		writel_relaxed(config->ss_ctrl[i],
>  			       drvdata->base + TRCSSCCRn(i));
>  		writel_relaxed(config->ss_status[i],
> @@ -467,6 +470,9 @@ static void etm4_disable_hw(void *info)
>  {
>  	u32 control;
>  	struct etmv4_drvdata *drvdata = info;
> +	struct etmv4_config *config = &drvdata->config;
> +	struct device *etm_dev = &drvdata->csdev->dev;
> +	int i;
>  
>  	CS_UNLOCK(drvdata->base);
>  
> @@ -489,6 +495,18 @@ static void etm4_disable_hw(void *info)
>  	isb();
>  	writel_relaxed(control, drvdata->base + TRCPRGCTLR);
>  
> +	/* wait for TRCSTATR.PMSTABLE to go to '1' */
> +	if (coresight_timeout(drvdata->base, TRCSTATR,
> +			      TRCSTATR_PMSTABLE_BIT, 1))
> +		dev_err(etm_dev,
> +			"timeout while waiting for PM stable Trace Status\n");
> +
> +	/* read the status of the single shot comparators */
> +	for (i = 0; i < drvdata->nr_ss_cmp; i++) {
> +		config->ss_status[i] =
> +			readl_relaxed(drvdata->base + TRCSSCSRn(i));
> +	}
> +
>  	coresight_disclaim_device_unlocked(drvdata->base);
>  
>  	CS_LOCK(drvdata->base);
> @@ -595,6 +613,7 @@ static void etm4_init_arch_data(void *info)
>  	u32 etmidr4;
>  	u32 etmidr5;
>  	struct etmv4_drvdata *drvdata = info;
> +	int i;
>  
>  	/* Make sure all registers are accessible */
>  	etm4_os_unlock(drvdata);
> @@ -718,9 +737,14 @@ static void etm4_init_arch_data(void *info)
>  	drvdata->nr_resource = BMVAL(etmidr4, 16, 19) + 1;
>  	/*
>  	 * NUMSSCC, bits[23:20] the number of single-shot
> -	 * comparator control for tracing
> +	 * comparator control for tracing. Read any status regs as these
> +	 * also contain RO capability data.
>  	 */
>  	drvdata->nr_ss_cmp = BMVAL(etmidr4, 20, 23);
> +	for (i = 0; i < drvdata->nr_ss_cmp; i++) {
> +		drvdata->config.ss_status[i] =
> +			readl_relaxed(drvdata->base + TRCSSCSRn(i));
> +	}
>  	/* NUMCIDC, bits[27:24] number of Context ID comparators for tracing */
>  	drvdata->numcidc = BMVAL(etmidr4, 24, 27);
>  	/* NUMVMIDC, bits[31:28] number of VMID comparators for tracing */
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x.h b/drivers/hwtracing/coresight/coresight-etm4x.h
> index b873df38e7d8..4a695bf90582 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x.h
> +++ b/drivers/hwtracing/coresight/coresight-etm4x.h
> @@ -227,6 +227,7 @@
>   * @cntr_val:	Sets or returns the value for a counter.
>   * @res_idx:	Resource index selector.
>   * @res_ctrl:	Controls the selection of the resources in the trace unit.
> + * @ss_idx:	Single-shot index selector.
>   * @ss_ctrl:	Controls the corresponding single-shot comparator resource.
>   * @ss_status:	The status of the corresponding single-shot comparator.
>   * @ss_pe_cmp:	Selects the PE comparator inputs for Single-shot control.
> @@ -270,6 +271,7 @@ struct etmv4_config {
>  	u32				cntr_val[ETMv4_MAX_CNTR];
>  	u8				res_idx;
>  	u32				res_ctrl[ETM_MAX_RES_SEL];
> +	u8				ss_idx;
>  	u32				ss_ctrl[ETM_MAX_SS_CMP];
>  	u32				ss_status[ETM_MAX_SS_CMP];
>  	u32				ss_pe_cmp[ETM_MAX_SS_CMP];

I have applied patches 4 to 8.  I will do the remaining patches tomorrow or
early next week.

Thanks,
Mathieu

> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
