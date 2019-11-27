Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E424D10B5E1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 19:40:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UnpTZs8vX3AW9JVCnmMdT3n1tUvDGd0oA+f8nZM/sAY=; b=gWvMtuHhczPfSKfJqrXSzbWsk
	PpYJbrStn9OTzqThh2nWDlT6l4BiEq2Hvhc4qXIQ+pn+NAdEbrE4hDcXjqMHvyze+sYU9+TgcM9hv
	Jc5HXn5GroQA7omv5g2M4ZQ9QLvaAS42NGqmfWv94xSiFhZm+XCHAAzCzvGJ0wYUhSQePe3ijwmeC
	JPF9L7KZky6GYZopaGvQrZJzshXzwbFE9RRa1bJprg0B8pEnemVMVmwwZl+gZqc0Qu7s4GqQWpN8x
	cjmiurfRnbhP3YsJaaP0XcG9SLlFB74uj3AIofC5m4WlkHKPrmCP49m1ay9aVngMFwe40+nSXEF4g
	fUSrdYO7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia2En-0000GH-PU; Wed, 27 Nov 2019 18:40:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia2Ee-0000Fo-B4
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 18:40:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 72E0F31B;
 Wed, 27 Nov 2019 10:40:19 -0800 (PST)
Received: from [10.1.197.1] (ewhatever.cambridge.arm.com [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A46543F6C4;
 Wed, 27 Nov 2019 10:40:18 -0800 (PST)
Subject: Re: [PATCH v5 04/14] coresight: cti: Add sysfs trigger / channel
 programming API
To: Mike Leach <mike.leach@linaro.org>, coresight@lists.linaro.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-doc@vger.kernel.org
References: <20191119231912.12768-1-mike.leach@linaro.org>
 <20191119231912.12768-5-mike.leach@linaro.org>
From: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Message-ID: <ce6d3334-2baf-0528-33a1-0157a8ad0c57@arm.com>
Date: Wed, 27 Nov 2019 18:40:17 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191119231912.12768-5-mike.leach@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_104020_424088_43156DDF 
X-CRM114-Status: GOOD (  13.31  )
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
> Adds a user API to allow programming of CTI by trigger ID and
> channel number. This will take the channel and trigger ID supplied
> by the user and program the appropriate register values.
> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> ---

> +
> +static ssize_t chan_xtrigs_view_show(struct device *dev,
> +				     struct device_attribute *attr,
> +				     char *buf)
> +{
> +	struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);
> +	struct cti_config *cfg = &drvdata->config;
> +	int used = 0, reg_idx;
> +	int buf_sz = PAGE_SIZE;
> +	u32 chan_mask = BIT(cfg->xtrig_rchan_sel);
> +
> +	used += scnprintf(buf, buf_sz, "[%d] IN: ", cfg->xtrig_rchan_sel);
> +	for (reg_idx = 0;
> +	     reg_idx < drvdata->config.nr_trig_max;
> +	     reg_idx++) {
> +		if (chan_mask & cfg->ctiinen[reg_idx]) {
> +			used += scnprintf(buf + used, buf_sz - used, "%d ",
> +					  reg_idx);
> +		}
> +	}

As a security measure, we must make sure that we have space left in the
buffer. We could end up passing "negative" numbers for the size
argument, in the worst case.

> +
> +	used += scnprintf(buf + used, buf_sz - used, "OUT: ");
> +	for (reg_idx = 0;
> +	     reg_idx < drvdata->config.nr_trig_max;
> +	     reg_idx++) {
> +		if (chan_mask & cfg->ctiouten[reg_idx]) {
> +			used += scnprintf(buf + used, buf_sz - used, "%d ",
> +					  reg_idx);
> +		}
> +	}
> +	used += scnprintf(buf + used, buf_sz - used, "\n");
> +	return used;
> +}
> +static DEVICE_ATTR_RW(chan_xtrigs_view);


The rest looks fine to me.

Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
