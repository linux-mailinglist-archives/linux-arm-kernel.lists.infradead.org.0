Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5EEB9F9C2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 07:19:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SPwylteenb4uOe3aPaDh+cR21t821uTTia6BD8op1eg=; b=dp7ls4hqNiVjLR
	17VRQeYSVT0BIqM0ZI6tPkqgZjA6wHyEihA6jDCzvnd8BevKigOaoTe+UsQFZNZUQZTOYtnKkcIcy
	+aDJ2PDClMgsKXGlwhgBP1FcZZUm/SeZSzSWr3Bcl/66rl5TUoFkccAyseT8O7OP1AX/kuBt7sfR7
	0zEdX3qd+0QGP+riyabznEjJHZulGeAbMbEpx2X9cZ3h6JLpMpp3JOo3nlf1bj1+3WfGu9Z90TE69
	rVpEmP4XiAKYJNh+H90CtOE++Y6qDGn7WLUIiv+PcHdyYWos8dFtZztjCzBGsBpjjfKsYaTNhMh38
	2BaLL8JCegST5dTAUGAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2qMO-0005dg-HH; Wed, 28 Aug 2019 05:19:08 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2qME-0005dK-2m
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 05:18:59 +0000
Received: by mail-yw1-xc41.google.com with SMTP id u141so374651ywe.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 22:18:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=EpYB4aPhJ5oT+5ka21kmdhpVMEi1g4MEVlfpWKW0+3Y=;
 b=om1PSpSez8RAhunBVenjwTK8562MtbZKQgp/1wULB/xWLREUSx3n71FwljkgL3whWq
 KyEbbYFGUZTAz4a0+CxKkVoXwe5t93kyet8jGKTzMtTL32D3g0hOWKek+L2p5WjmBbAQ
 w254bd4hs5jxdtY7aKAd2h/GJGhRpr9FONkdFAmwSCD9JMaO81IVz+1/aRQoBy37DNzd
 cCzHvYlyKfGhD0K5TpYTzjlkfWYyW3m/KoVimklAQcxU17KO3FwUvF8+JiqmiOx+0qjz
 FzTz22ga8eVmvqZZZDbKAkVxEMe583UGs8hmNT4mz0Kk8zSi7+Am+7lEd8V9W08ceiha
 Hp5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=EpYB4aPhJ5oT+5ka21kmdhpVMEi1g4MEVlfpWKW0+3Y=;
 b=WDD+Z9GC/0iYkCNWDoI7oPBjT6e34R8ua0zGBRPwm2LkbYbEaQscgrrkTm9WGLBTmO
 si8zo3Kg/ajUhrPa2OXZ1AjtDwCEpGj10U7tz978phYKW4M3UG+OlvzaN6AOhKVvHxEx
 Afg+pt8XQSW4ZY9nTMG06QIuKzBtcHTefVdnils0pwACwXJaSUt6X+VVT8JE0w70XEQ2
 L2k6211cEeFB/8JZf7hLEC6BtKoMtyEE3DKkn2EG475NzkuE8dTo60BnwEUIJfBJ/xsC
 YdGLe7JN7Ct9Res+bB+rYdLcWH9Oajbnp5t2QR8Eju75emoBuzajoP7QrQ8/yli2uguT
 6dVg==
X-Gm-Message-State: APjAAAWXZgR46wbwcvtfg8mHLO6tjPtktQaPl2KcMQSnFTEdxwcqegvV
 ZGxBomMezqkz6jsy3dvFlGkFdrO4q2HL7A==
X-Google-Smtp-Source: APXvYqwyZOw6og95L0Mo7OpWR4bMtOjIMlesFXm6jwPPzZbbx1UWoPMMJpQBEdXPsd7U+jJI6IBj9Q==
X-Received: by 2002:a81:a6c1:: with SMTP id d184mr1627315ywh.468.1566969536700; 
 Tue, 27 Aug 2019 22:18:56 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li1320-244.members.linode.com.
 [45.79.221.244])
 by smtp.gmail.com with ESMTPSA id b67sm474286ywb.102.2019.08.27.22.18.52
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 27 Aug 2019 22:18:55 -0700 (PDT)
Date: Wed, 28 Aug 2019 13:18:47 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH 7/8] coresight: etm4x: Add missing single-shot control
 API to sysfs
Message-ID: <20190828051847.GG26133@leoy-ThinkPad-X240s>
References: <20190819205720.24457-1-mike.leach@linaro.org>
 <20190819205720.24457-8-mike.leach@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819205720.24457-8-mike.leach@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_221858_133131_C78406BE 
X-CRM114-Status: GOOD (  24.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
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
 mathieu.poirier@linaro.org
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

Since function etm4_enable_hw() will clear ss_status's bit 31 when
program TRCSSCSRn, so is here redundant to clear bit 31?

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
> +	/* must clear bit 31 in related status register on programming */
> +	config->ss_status[idx] &= ~BIT(31);

Same question for if it's redundant to clear bit 31?

Thanks,
Leo Yan

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
> _______________________________________________
> CoreSight mailing list
> CoreSight@lists.linaro.org
> https://lists.linaro.org/mailman/listinfo/coresight

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
