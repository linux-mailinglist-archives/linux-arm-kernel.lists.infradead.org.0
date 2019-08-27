Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08D299F624
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 00:27:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1GYaX3comrGxdC8AF3ReDG2pHeUtS+gGyEPnc1Qtm74=; b=iWcavTLTNcVZz1
	sjoDxyTHr8fpMkPBL0tIuW0ihONJbYeRclnk6zRBhpTwxdpvPGHiPCrYuAUayF07Lz1avPfbd4qDo
	zBYst5A7nohjnAq34A360ZeSUuRTLl5pNX6APeMs/LFbLPjlDDPsdp08PapERS9yZ5icz78AKD40o
	rGuNz62pYqBRr1dzf1w0GwL8ENZgPkVIuwlIzVGUKoSqUt2zaFu5eWKXjtrDIv5O6vDdPCaj9Ro7v
	HU7mFqnl6KbEjy2Hk901Zw7LW7F2TwsA153aNi3ZakuMCGoTDfphiHZcBP4VYJYFA0DFgLBE+nYkG
	ftwgbVEYaVX8n1zejyOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2jwI-0002eZ-ND; Tue, 27 Aug 2019 22:27:46 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2jvu-0002XD-1E
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 22:27:24 +0000
Received: by mail-pl1-x643.google.com with SMTP id o3so3579plb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 15:27:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=9yCc08Qo+ytpKFDhNt03Z07qf15fYsxmhSiGYU9xbtc=;
 b=FW7AMinXPdpBsAWn5gL3VL7LzNjIPLnsvb1aGE1m75WeFjJwnQ2tBAWE8/TLbqmxvP
 A1lpeq57MfGLIUAGvZZI3C07CUC+RjIvTovoB74WSkj9CIfr4sHSmxQCb3kRGcsx07Kj
 voxbOGVQo65Etg/e6pKmYaLDGvevw8INzzlonUdA1ZXiY/x/a46YVAIeCkMRJETS4kBU
 daqyiWT1me8tEOfnWoOfH48jGw3XDGI1ARL2Qn5SV6BTyy+Gr907YE6ruWQDhc1pprrH
 i7epxUEN+nHDgO0XVaCVOqqymRv/k+bixoZikR8T4XWLg7RdYv+tqqUky1GpgFcEPGoY
 X6eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9yCc08Qo+ytpKFDhNt03Z07qf15fYsxmhSiGYU9xbtc=;
 b=szxkAFdzaWOg+aERYCnnD8Fv4kSzL6p51hl5/2XAHwtprjhTVoAiWKks86I9y2oIQI
 WbA6JGpvr1ATUfagTTggdCa4467odoxYf8nv8rDO+v3/FstNGR/MqBSZiG/r4gf2Ri3w
 W4dPQhAtP2ixZFPUam+Lr5c2rPI6yiHQ4Q7KcKrTOA5HZXQY4dNXJc41zAvT9xQ0sfdt
 TSaacjExK4fUKCCNCFAVQcUE6CJXaIVjf2lCelx87WpY492ZiaKzf3Dz+9lV9rFM0iAL
 yxQutitOcO2WmKI19+UqDXSBgROp93DVrNeTg3jpXnvenMpCoQPWYazUJDPtQxbtfP7u
 XlSg==
X-Gm-Message-State: APjAAAWwaSym/L0nvE4VovoLMMuzaNXgldNon6d9sYSLquIzqS65ui68
 eU+3Qn1drmZ3UVMjLfpJ+qW+Pw==
X-Google-Smtp-Source: APXvYqxYBg7LsqAUIZEJ3wmiMf8WZ68UDgCACVHEJ9KEfzw9QktpA5rw6819Ql0eN/K3HL/CUa4H0g==
X-Received: by 2002:a17:902:f095:: with SMTP id
 go21mr1247419plb.216.1566944841231; 
 Tue, 27 Aug 2019 15:27:21 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id a1sm333631pgh.61.2019.08.27.15.27.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 27 Aug 2019 15:27:20 -0700 (PDT)
Date: Tue, 27 Aug 2019 16:27:18 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH 7/8] coresight: etm4x: Add missing single-shot control
 API to sysfs
Message-ID: <20190827222718.GC14958@xps15>
References: <20190819205720.24457-1-mike.leach@linaro.org>
 <20190819205720.24457-8-mike.leach@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819205720.24457-8-mike.leach@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_152722_259340_BCC3F241 
X-CRM114-Status: GOOD (  23.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Mon, Aug 19, 2019 at 09:57:19PM +0100, Mike Leach wrote:
> An API to control single-shot comparator operation was missing from sysfs.
> This adds the parameters to sysfs to allow programming of this feature.
> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> ---
>  .../coresight/coresight-etm4x-sysfs.c         | 122 ++++++++++++++++++
>  drivers/hwtracing/coresight/coresight-etm4x.c |  26 +++-
>  drivers/hwtracing/coresight/coresight-etm4x.h |   3 +
>  3 files changed, 150 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> index 483976074779..7c019dda1236 100644
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
> @@ -1713,6 +1714,123 @@ static ssize_t res_ctrl_store(struct device *dev,
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
> +	config->ss_ctrl[idx] = val & GENMASK(7, 0);

        config->ss_pe_cmp[idx] = val & GENMASK(7, 0);

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
> @@ -2169,6 +2287,10 @@ static struct attribute *coresight_etmv4_attrs[] = {
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
> index d8b078d0cc7f..fb7083218410 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x.c
> +++ b/drivers/hwtracing/coresight/coresight-etm4x.c
> @@ -149,6 +149,9 @@ static int etm4_enable_hw(struct etmv4_drvdata *drvdata)
>  			       drvdata->base + TRCRSCTLRn(i));
>  
>  	for (i = 0; i < drvdata->nr_ss_cmp; i++) {
> +		/* always clear status bit on restart if using single-shot */
> +		if (config->ss_ctrl[i] || config->ss_pe_cmp[i])
> +			config->ss_status[i] &= ~BIT(31);
>  		writel_relaxed(config->ss_ctrl[i],
>  			       drvdata->base + TRCSSCCRn(i));
>  		writel_relaxed(config->ss_status[i],
> @@ -448,6 +451,9 @@ static void etm4_disable_hw(void *info)
>  {
>  	u32 control;
>  	struct etmv4_drvdata *drvdata = info;
> +	struct etmv4_config *config = &drvdata->config;
> +	struct device *etm_dev = &drvdata->csdev->dev;
> +	int i;
>  
>  	CS_UNLOCK(drvdata->base);
>  
> @@ -470,6 +476,18 @@ static void etm4_disable_hw(void *info)
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
> @@ -576,6 +594,7 @@ static void etm4_init_arch_data(void *info)
>  	u32 etmidr4;
>  	u32 etmidr5;
>  	struct etmv4_drvdata *drvdata = info;
> +	int i;
>  
>  	/* Make sure all registers are accessible */
>  	etm4_os_unlock(drvdata);
> @@ -699,9 +718,14 @@ static void etm4_init_arch_data(void *info)
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
> index 60bc2fb5159b..be8b32ea1654 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x.h
> +++ b/drivers/hwtracing/coresight/coresight-etm4x.h
> @@ -175,6 +175,7 @@
>  					 ETM_MODE_EXCL_USER)
>  
>  #define TRCSTATR_IDLE_BIT		0
> +#define TRCSTATR_PMSTABLE_BIT		1
>  #define ETM_DEFAULT_ADDR_COMP		0
>  
>  /* PowerDown Control Register bits */
> @@ -226,6 +227,7 @@
>   * @cntr_val:	Sets or returns the value for a counter.
>   * @res_idx:	Resource index selector.
>   * @res_ctrl:	Controls the selection of the resources in the trace unit.
> + * @ss_idx:	Single-shot index selector.
>   * @ss_ctrl:	Controls the corresponding single-shot comparator resource.
>   * @ss_status:	The status of the corresponding single-shot comparator.
>   * @ss_pe_cmp:	Selects the PE comparator inputs for Single-shot control.
> @@ -269,6 +271,7 @@ struct etmv4_config {
>  	u32				cntr_val[ETMv4_MAX_CNTR];
>  	u8				res_idx;
>  	u32				res_ctrl[ETM_MAX_RES_SEL];
> +	u8				ss_idx;
>  	u32				ss_ctrl[ETM_MAX_SS_CMP];
>  	u32				ss_status[ETM_MAX_SS_CMP];
>  	u32				ss_pe_cmp[ETM_MAX_SS_CMP];
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
