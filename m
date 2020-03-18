Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FDF6189CDD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 14:23:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bl28nasenN8u35OAlHtwA+B/HNcw4iCjmLYtSTAaGJU=; b=gIY+8bN1pmg9Zu
	EzLdd7OyP0yfvof4sAG0kwQL9CLuIu1sDLfXPnjgrcdRA6+vlUbVvQ3/KoV8LgPguUFmLYiS4Lsxu
	WbApqpXAhEWYAuXIkDE/FChb2h452JQIxYVQmbCP+n3UsxEiN6dLzUv1b6Pv5DzpGcpjrZ5kpHUnH
	7+TEa3ICg7dTzaMJn0GOWkHJZQ4jYnVrJOHIwsU4cty0KYjrjPQ2ZFrEUjyVqbkhX4rnG53GWa+Wd
	UGruMkn4diwn41rGkrwqRs/md/UaYLsk/dkOvducjD5hOYl1uI+Tn4KDBcYLlcnG9fcOrIamqdewu
	bVLqVSUM/MJppd8p8owA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEYfY-00047N-Lu; Wed, 18 Mar 2020 13:23:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEYfO-00046L-Bl
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 13:23:27 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 58F372076F;
 Wed, 18 Mar 2020 13:23:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584537805;
 bh=MS122+MI8HvaX7QgTFw/2hADw9MT/NgSAmlg4rviq4Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GpMwXcj8lqA4iW5RxQBBrJVd+qMgBVPfjSNN4WJBRjsMU7d8Yk1aMNAv8JOXZCoNN
 YNv1YD14IL/Pz+Dy5gs1Wdoc3pKe5v/9E+NQWPwpvjgve8Ok22jkKnZUeuiXyo1cr/
 cgOv8pXsr6CD1wNmMGyIJxKcDtQAr4r3Jtp0FjWQ=
Date: Wed, 18 Mar 2020 14:23:22 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH 03/13] coresight: cti: Add sysfs access to program
 function registers
Message-ID: <20200318132322.GC2789508@kroah.com>
References: <20200309161748.31975-1-mathieu.poirier@linaro.org>
 <20200309161748.31975-4-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200309161748.31975-4-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_062326_446572_9E55E449 
X-CRM114-Status: GOOD (  21.82  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 09, 2020 at 10:17:38AM -0600, Mathieu Poirier wrote:
> From: Mike Leach <mike.leach@linaro.org>
> 
> Adds in sysfs programming support for the CTI function register sets.
> Allows direct manipulation of channel / trigger association registers.
> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> [Fixed abbreviation in title]
> Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> ---
>  drivers/hwtracing/coresight/Kconfig           |   9 +
>  .../hwtracing/coresight/coresight-cti-sysfs.c | 361 ++++++++++++++++++
>  drivers/hwtracing/coresight/coresight-cti.c   |  19 +
>  drivers/hwtracing/coresight/coresight-cti.h   |   8 +
>  4 files changed, 397 insertions(+)
> 
> diff --git a/drivers/hwtracing/coresight/Kconfig b/drivers/hwtracing/coresight/Kconfig
> index 45d3822c8c8c..83e841be1081 100644
> --- a/drivers/hwtracing/coresight/Kconfig
> +++ b/drivers/hwtracing/coresight/Kconfig
> @@ -122,4 +122,13 @@ config CORESIGHT_CTI
>  	  halt compared to disabling sources and sinks normally in driver
>  	  software.
>  
> +config CORESIGHT_CTI_INTEGRATION_REGS
> +	bool "Access CTI CoreSight Integration Registers"
> +	depends on CORESIGHT_CTI
> +	help
> +	  This option adds support for the CoreSight integration registers on
> +	  this device. The integration registers allow the exploration of the
> +	  CTI trigger connections between this and other devices.These
> +	  registers are not used in normal operation and can leave devices in
> +	  an inconsistent state.
>  endif
> diff --git a/drivers/hwtracing/coresight/coresight-cti-sysfs.c b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> index 507f8eb487fe..f687e07b68b0 100644
> --- a/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> +++ b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> @@ -109,6 +109,361 @@ static struct attribute *coresight_cti_mgmt_attrs[] = {
>  	NULL,
>  };
>  
> +/* CTI low level programming registers */
> +
> +/*
> + * Show a simple 32 bit value if enabled and powered.
> + * If inaccessible & pcached_val not NULL then show cached value.
> + */
> +static ssize_t cti_reg32_show(struct device *dev, char *buf,
> +			      u32 *pcached_val, int reg_offset)
> +{
> +	u32 val = 0;
> +	struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);
> +	struct cti_config *config = &drvdata->config;
> +
> +	spin_lock(&drvdata->spinlock);
> +	if ((reg_offset >= 0) && cti_active(config)) {
> +		CS_UNLOCK(drvdata->base);
> +		val = readl_relaxed(drvdata->base + reg_offset);
> +		if (pcached_val)
> +			*pcached_val = val;
> +		CS_LOCK(drvdata->base);
> +	} else if (pcached_val) {
> +		val = *pcached_val;
> +	}
> +	spin_unlock(&drvdata->spinlock);
> +	return scnprintf(buf, PAGE_SIZE, "%#x\n", val);

Fix all of the scnprintf() calls.

And again, no documentation?

I'll stop here on this series, as much the same comments belong on the
other patches in here.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
