Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A569F8D0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 05:37:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=39u0NQ4F9/mZSSVp05jwLAdkHh/XZJrcawC0rORxpY0=; b=phpObPf0/2wS++
	5ObvYPl2Sq3/wz60YLlGczIdik3y8bOmv1QIFlJbGtyD0NZ4WP+oID7J6L8Ho3CF/cB05aDArK0gA
	+9qJapVpVL7HhM8tnUOGHyN+G4LIor1V8omZ04yJu6G+MUhGW6j3f8LuP4VeJZUXV3JZkBxycNaM2
	RVy4TpGSNGNRkSeG6yjLivX/OfKrZas2JNQ7oOZ27QbQbz4HcLg99bcwoBmEU5YIKlCcVpLKPUM7H
	jSnMzbsU8VPk497GWaKftL6fV+kgL8WCg+0wTOJ2ZoKp6n3MLisGXAJ8KxPvdfpX7pW8d8JXj47Zo
	clr8JkX6DTI+SgUwmvDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2oly-0007xg-VO; Wed, 28 Aug 2019 03:37:26 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2olg-0007xM-Gr
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 03:37:10 +0000
Received: by mail-yb1-xb43.google.com with SMTP id z2so325233ybp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 20:37:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=AuJa5Vfg5EQI1i/shse/hmsosaU5AWNPjfUsK2HfU8U=;
 b=lww9sAT1cPIbiFjJnKB020O9MDa0cMSskw+7VOQDt8vA2KCEZLe8zVkDIcB4msA+X5
 aaoVU1WgbWaPvIjwpNkyGuzDgVtRSFeBSrEKFtyDkQttL6v5cctO4WPnY4Xo+wqOGiHT
 pg0Pq+xUcX+YPqm9PaG7GThcbMxQK/agsjv+KgqJiEqzEoYr8nyBV/3lcl0Zp7ZFtfSQ
 oazIVIFW2eXIUr5H5qCOJZcEvM0KVAtYnxyUrHegOfHTFCdS+OhlqDfwiriLv6r6hDrz
 yazy5Xj9kshqSr/Q7SBj9RX0kZ7IfsN1QS0LnWWS3P/54nnNJFpwjHpLQLVQr0Lf+to3
 +v8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=AuJa5Vfg5EQI1i/shse/hmsosaU5AWNPjfUsK2HfU8U=;
 b=TKTUHeTrOizridC1LM+mfgy6/dn4U5YdljiO4WTI+w+pOZ9D5avTPSRRDA7RFFr7Zn
 NKHSOt/u4fEMwMwFw7Nr+BBX2sJsyW4o9MokmRgqWfn4tdSs5TncuFq6bAh8KvTwgObX
 PO+cwn+ZOp3ymHR1h+urYd+SlFyHq5FOlLfHkomf6n4anChQnB5wC2B4jskhIm+ONiUe
 Jj7UPJVK6dbOmF2LF58brnWkmhYAhi82uySrAuyi53vqPx6L/nDVGUIfg1AdHI8BQgfq
 h9aLlc++B2yYO2dLVW/tVvB3+GazQ8fTjBufNqyAZr6vAIlp8yCAP+K31xk6bit+z0d5
 v5vg==
X-Gm-Message-State: APjAAAWbTLe89D5k9JNPRxiiFpCnp5YVUjXdmPm8DXM8LUuANB9iDomS
 FzdQC/wkzECDH5Tz3tc8GgYwuGpIRhNgIw==
X-Google-Smtp-Source: APXvYqwD6I4ymP9yLEEsuQ4T3BvWg7BzCR6IB4oIbyPZGoKW4/zSmpjR1Ga4xy2Uakc99wsWBe64ug==
X-Received: by 2002:a5b:401:: with SMTP id m1mr1465226ybp.189.1566963427660;
 Tue, 27 Aug 2019 20:37:07 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li1320-244.members.linode.com.
 [45.79.221.244])
 by smtp.gmail.com with ESMTPSA id w206sm276464ywc.51.2019.08.27.20.37.00
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 27 Aug 2019 20:37:06 -0700 (PDT)
Date: Wed, 28 Aug 2019 11:36:54 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH 5/8] coresight: etm4x: Improve usability of sysfs API.
Message-ID: <20190828033654.GE26133@leoy-ThinkPad-X240s>
References: <20190819205720.24457-1-mike.leach@linaro.org>
 <20190819205720.24457-6-mike.leach@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819205720.24457-6-mike.leach@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_203708_622848_E1054AD4 
X-CRM114-Status: GOOD (  25.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
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

On Mon, Aug 19, 2019 at 09:57:17PM +0100, Mike Leach wrote:
> Some changes to make the sysfs programming more intuitive.
> 
> 1) Setting include / exclude on a range had to be done by setting
> the bit in 'mode' before setting the range. However, setting this
> bit also had the effect of altering the current range as well.
> 
> Changed to only set include / exclude setting of a range at the point of
> setting that range. Either use a 3rd input parameter as the include exclude
> value, or if not present use the current value of 'mode'. Do not change
> current range when 'mode' changes.
> 
> 2) Context ID and VM ID masks required 2 value inputs, even when the
> second value is ignored as insufficient CID / VMID comparators are
> implemented.
> Permit a single value to be used if that is sufficient to cover all
> implemented comparators.
> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> ---
>  .../coresight/coresight-etm4x-sysfs.c         | 24 +++++++++++++------
>  1 file changed, 17 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> index 3bcc260c9e55..baac5b48b7ac 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> +++ b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> @@ -297,8 +297,6 @@ static ssize_t mode_store(struct device *dev,
>  
>  	spin_lock(&drvdata->spinlock);
>  	config->mode = val & ETMv4_MODE_ALL;
> -	etm4_set_mode_exclude(drvdata,
> -			      config->mode & ETM_MODE_EXCLUDE ? true : false);
>  
>  	if (drvdata->instrp0 == true) {
>  		/* start by clearing instruction P0 field */
> @@ -972,8 +970,12 @@ static ssize_t addr_range_store(struct device *dev,
>  	unsigned long val1, val2;
>  	struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
>  	struct etmv4_config *config = &drvdata->config;
> +	int elements, exclude;
>  
> -	if (sscanf(buf, "%lx %lx", &val1, &val2) != 2)
> +	elements = sscanf(buf, "%lx %lx %x", &val1, &val2, &exclude);
> +
> +	/*  exclude is optional, but need at least two parameter */
> +	if (elements < 2)
>  		return -EINVAL;
>  	/* lower address comparator cannot have a higher address value */
>  	if (val1 > val2)
> @@ -1001,9 +1003,11 @@ static ssize_t addr_range_store(struct device *dev,
>  	/*
>  	 * Program include or exclude control bits for vinst or vdata
>  	 * whenever we change addr comparators to ETM_ADDR_TYPE_RANGE
> +	 * use supplied value, or default to bit set in 'mode'
>  	 */
> -	etm4_set_mode_exclude(drvdata,
> -			      config->mode & ETM_MODE_EXCLUDE ? true : false);
> +	if (elements != 3)
> +		exclude = config->mode & ETM_MODE_EXCLUDE;
> +	etm4_set_mode_exclude(drvdata, exclude ? true : false);
>  
>  	spin_unlock(&drvdata->spinlock);
>  	return size;
> @@ -1787,6 +1791,7 @@ static ssize_t ctxid_masks_store(struct device *dev,
>  	unsigned long val1, val2, mask;
>  	struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
>  	struct etmv4_config *config = &drvdata->config;
> +	int nr_inputs;
>  
>  	/*
>  	 * Don't use contextID tracing if coming from a PID namespace.  See
> @@ -1802,7 +1807,9 @@ static ssize_t ctxid_masks_store(struct device *dev,
>  	 */
>  	if (!drvdata->ctxid_size || !drvdata->numcidc)
>  		return -EINVAL;
> -	if (sscanf(buf, "%lx %lx", &val1, &val2) != 2)
> +	/* one mask if < 4 comparators, two for up to 8 */

One maks is <= 4 comparators.

> +	nr_inputs = sscanf(buf, "%lx %lx", &val1, &val2);
> +	if ((drvdata->numcidc > 4) && (nr_inputs != 2))
>  		return -EINVAL;
>  
>  	spin_lock(&drvdata->spinlock);
> @@ -1976,6 +1983,7 @@ static ssize_t vmid_masks_store(struct device *dev,
>  	unsigned long val1, val2, mask;
>  	struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
>  	struct etmv4_config *config = &drvdata->config;
> +	int nr_inputs;
>  
>  	/*
>  	 * only implemented when vmid tracing is enabled, i.e. at least one
> @@ -1983,7 +1991,9 @@ static ssize_t vmid_masks_store(struct device *dev,
>  	 */
>  	if (!drvdata->vmid_size || !drvdata->numvmidc)
>  		return -EINVAL;
> -	if (sscanf(buf, "%lx %lx", &val1, &val2) != 2)
> +	/* one mask if < 4 comparators, two for up to 8 */

One maks is <= 4 comparators.

> +	nr_inputs = sscanf(buf, "%lx %lx", &val1, &val2);
> +	if ((drvdata->numvmidc > 4) && (nr_inputs != 2))
>  		return -EINVAL;
>  
>  	spin_lock(&drvdata->spinlock);
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
