Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0722515FA41
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Feb 2020 00:17:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AV6A36siPFqIhOOURhOBeKqK4a+hk0vCrB8KOOHVa7A=; b=ThFShEZfwXlIPK
	EIRn0qaW33w4MyBvZHH7jcOoJVJvscNoF7mEuc678zxSWidzAAiscppUwg4VLnaMjuxYC9xiZxtPr
	Rg+x4a+X8W0A6AsF602n6Pm1jZ6iYmBDL2PeXBIYx2xD4uiz4TFxMyg2rf1hh8bBITD3kdYSp2+b+
	4XfhvAVvjnJ+qruJmGVMEy6vIXp5bijNqsSIzKBUjke0MKo8dK5WbSMN7MMpuSGtBm9ezN6VXrlnF
	JprAnhCMcbyPfCHbQ/cBiDjYWkmOOqmjYWl4QnIUqWjGdqWqA1j4r8UAFL2qMiEXgpu/1dSEMAFyU
	dhjHv9klSCcw4D+KV/jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2kD3-0006Ia-J7; Fri, 14 Feb 2020 23:17:21 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2kCs-0006IE-Ju
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 23:17:12 +0000
Received: by mail-yw1-xc42.google.com with SMTP id l5so5035018ywd.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Feb 2020 15:17:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=pyTRBMCVp91QtDenhmoQzqMCfGd84Vh8aWQ/JT+Qq5M=;
 b=arZTtfq3IuYFvYo4HsF0usZchn45O4hmIUeyrGFD/a5oAV5Xkt+NDc184e6GsSzXNu
 /3gVxkEfd4dp6kfe+8FkaL+zdU6LWhjf/sAyDl58QJGzHCopc7SzoygYknUGJ6P7d/xR
 S0dNSKpD1PbIebPkxz5NPbfkIVSHhFp8jTe61rUQJmb1RFij/Jjsrso7s7O1V9MLTC++
 n/n/scvbt1Bc+VEKkMc39HOJutbPYGtU4rRl1ol+8euo+PXpDVFo/E76/FUq6NKU9R1P
 NQWmnfNKjCiF9F0XA2q++UvQif8XKWpESlzDdGV6+ZIpfhP7m1Z0cfWyDPxd1CTPx15C
 ZDKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=pyTRBMCVp91QtDenhmoQzqMCfGd84Vh8aWQ/JT+Qq5M=;
 b=qU4v1ZlXeFK4ANWgk71I64B8umN0C3TD/6lfkBSFftxlh3RvSYHNIGCf6Py1781Dp/
 Bb7YoOVC4/8+N8FCG3n3cND62s+4fm2hq2nSNzPmO4r9M+JjThCs4jC4mHAFBuHeckYK
 nInhjgAl1Jv083HEYr0TCpRqD0IuuQ87kM9HVsvoYB4lj61rFMr8rbR6S3esCDQ3U6Im
 0rJJJNNHaXGXPAHwdj2g7jvlAn5ISskVpq4+9JG2+P3jKM2TIR5uoMa/h/OWOqmR11YJ
 a/bRDDHJvT6tJ9DTu1WgDCvkBkanGVWSGJ4my3APkMV6/FK53T/K4nZI9o/OHKY8+a+Q
 XyEA==
X-Gm-Message-State: APjAAAUqQCx/ltv/FrFK0BLbr5A9OUj29PEjnzPLAXUq7LnHYrAaH3Wo
 z+BY0A8fAoxFouHl2Za8tXyXZw==
X-Google-Smtp-Source: APXvYqztSlqL5qyucSaXldZIzGpZYX2jVlDz5jrdS7qSUp8e7UOzwZCvE3AoF5wpajH9JbVUGqBi4Q==
X-Received: by 2002:a81:99c7:: with SMTP id q190mr4725618ywg.480.1581722229050; 
 Fri, 14 Feb 2020 15:17:09 -0800 (PST)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id q130sm3171455ywg.52.2020.02.14.15.17.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 Feb 2020 15:17:08 -0800 (PST)
Date: Fri, 14 Feb 2020 16:17:06 -0700
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH v4 3/6] coresight: Add generic sysfs link creation
 functions.
Message-ID: <20200214231706.GD20024@xps15>
References: <20200211105808.27884-1-mike.leach@linaro.org>
 <20200211105808.27884-4-mike.leach@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200211105808.27884-4-mike.leach@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_151710_688256_85261CE8 
X-CRM114-Status: GOOD (  25.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: coresight@lists.linaro.org, suzuki.poulose@arm.com,
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 11, 2020 at 10:58:05AM +0000, Mike Leach wrote:
> To allow the connections between coresight components to be represented
> in sysfs, generic methods for creating sysfs links between two coresight
> devices are added.
> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> ---
>  drivers/hwtracing/coresight/Makefile          |   3 +-
>  drivers/hwtracing/coresight/coresight-priv.h  |   4 +
>  drivers/hwtracing/coresight/coresight-sysfs.c | 124 ++++++++++++++++++
>  include/linux/coresight.h                     |  20 +++
>  4 files changed, 150 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/hwtracing/coresight/coresight-sysfs.c
> 
> diff --git a/drivers/hwtracing/coresight/Makefile b/drivers/hwtracing/coresight/Makefile
> index 0e3e72f0f510..19497d1d92bf 100644
> --- a/drivers/hwtracing/coresight/Makefile
> +++ b/drivers/hwtracing/coresight/Makefile
> @@ -2,7 +2,8 @@
>  #
>  # Makefile for CoreSight drivers.
>  #
> -obj-$(CONFIG_CORESIGHT) += coresight.o coresight-etm-perf.o coresight-platform.o
> +obj-$(CONFIG_CORESIGHT) += coresight.o coresight-etm-perf.o \
> +			   coresight-platform.o coresight-sysfs.o
>  obj-$(CONFIG_CORESIGHT_LINK_AND_SINK_TMC) += coresight-tmc.o \
>  					     coresight-tmc-etf.o \
>  					     coresight-tmc-etr.o
> diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
> index 1cad642f27aa..a4a658d46045 100644
> --- a/drivers/hwtracing/coresight/coresight-priv.h
> +++ b/drivers/hwtracing/coresight/coresight-priv.h
> @@ -153,6 +153,10 @@ struct coresight_device *coresight_get_sink_by_id(u32 id);
>  struct list_head *coresight_build_path(struct coresight_device *csdev,
>  				       struct coresight_device *sink);
>  void coresight_release_path(struct list_head *path);
> +int coresight_add_sysfs_link(struct coresight_sysfs_link *info);
> +void coresight_remove_sysfs_link(struct coresight_sysfs_link *info);
> +int coresight_create_conns_sysfs_group(struct coresight_device *csdev);
> +void coresight_remove_conns_sysfs_group(struct coresight_device *csdev);
>  
>  #ifdef CONFIG_CORESIGHT_SOURCE_ETM3X
>  extern int etm_readl_cp14(u32 off, unsigned int *val);
> diff --git a/drivers/hwtracing/coresight/coresight-sysfs.c b/drivers/hwtracing/coresight/coresight-sysfs.c
> new file mode 100644
> index 000000000000..17d565941e5e
> --- /dev/null
> +++ b/drivers/hwtracing/coresight/coresight-sysfs.c
> @@ -0,0 +1,124 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2019, Linaro Limited, All rights reserved.
> + * Author: Mike Leach <mike.leach@linaro.org>
> + */
> +
> +#include <linux/device.h>
> +#include <linux/kernel.h>
> +
> +#include "coresight-priv.h"
> +
> +/*
> + * Connections group - links attribute.
> + * Count of created links between coresight components in the group.
> + */
> +static ssize_t nr_links_show(struct device *dev,
> +			     struct device_attribute *attr,
> +			     char *buf)
> +{
> +	struct coresight_device *csdev = to_coresight_device(dev);
> +
> +	return scnprintf(buf, PAGE_SIZE, "%d\n", csdev->nr_links);
> +}
> +static DEVICE_ATTR_RO(nr_links);
> +
> +static struct attribute *coresight_conns_attrs[] = {
> +	&dev_attr_nr_links.attr,
> +	NULL,
> +};
> +
> +static struct attribute_group coresight_conns_group = {
> +	.attrs = coresight_conns_attrs,
> +	.name = "connections",
> +};
> +
> +/*
> + * Create connections group for CoreSight devices.
> + * This group will then be used to collate the sysfs links between
> + * devices.
> + */
> +int coresight_create_conns_sysfs_group(struct coresight_device *csdev)
> +{
> +	int ret = 0;
> +
> +	if (!csdev)
> +		return -EINVAL;
> +
> +	ret = sysfs_create_group(&csdev->dev.kobj, &coresight_conns_group);
> +	if (ret)
> +		return ret;
> +
> +	csdev->has_conns_grp = true;

The only place coresight_create_conns_sysfs_group() is used is in
coresight_register() where an error is returned to driver probe() functions if
an error occurs.  Have you found places where csdev->has_conns_grp is needed?
If not please remove.

> +	return ret;
> +}
> +
> +void coresight_remove_conns_sysfs_group(struct coresight_device *csdev)
> +{
> +	if (!csdev)
> +		return;
> +
> +	if (csdev->has_conns_grp) {
> +		sysfs_remove_group(&csdev->dev.kobj, &coresight_conns_group);
> +		csdev->has_conns_grp = false;
> +	}
> +}
> +
> +int coresight_add_sysfs_link(struct coresight_sysfs_link *info)
> +{
> +	int ret = 0;
> +
> +	if (!info)
> +		return -EINVAL;
> +	if (!info->orig || !info->target ||
> +	    !info->orig_name || !info->target_name)
> +		return -EINVAL;
> +	if (!info->orig->has_conns_grp || !info->target->has_conns_grp)
> +		return -EINVAL;
> +
> +	/* first link orig->target */
> +	ret = sysfs_add_link_to_group(&info->orig->dev.kobj,
> +				      coresight_conns_group.name,
> +				      &info->target->dev.kobj,
> +				      info->orig_name);
> +	if (ret)
> +		return ret;
> +
> +	/* second link target->orig */
> +	ret = sysfs_add_link_to_group(&info->target->dev.kobj,
> +				      coresight_conns_group.name,
> +				      &info->orig->dev.kobj,
> +				      info->target_name);
> +
> +	/* error in second link - remove first - otherwise inc counts */
> +	if (ret) {
> +		sysfs_remove_link_from_group(&info->orig->dev.kobj,
> +					     coresight_conns_group.name,
> +					     info->orig_name);
> +	} else {
> +		info->orig->nr_links++;
> +		info->target->nr_links++;
> +	}
> +
> +	return ret;
> +}
> +
> +void coresight_remove_sysfs_link(struct coresight_sysfs_link *info)
> +{
> +	if (!info)
> +		return;
> +	if (!info->orig || !info->target ||
> +	    !info->orig_name || !info->target_name)
> +		return;
> +
> +	sysfs_remove_link_from_group(&info->orig->dev.kobj,
> +				     coresight_conns_group.name,
> +				     info->orig_name);
> +
> +	sysfs_remove_link_from_group(&info->target->dev.kobj,
> +				     coresight_conns_group.name,
> +				     info->target_name);
> +
> +	info->orig->nr_links--;
> +	info->target->nr_links--;
> +}
> diff --git a/include/linux/coresight.h b/include/linux/coresight.h
> index 193cc9dbf448..a2ec25e02ca9 100644
> --- a/include/linux/coresight.h
> +++ b/include/linux/coresight.h
> @@ -148,6 +148,20 @@ struct coresight_connection {
>  	struct coresight_device *child_dev;
>  };
>  
> +/**
> + * struct coresight_sysfs_link - representation of a connection in sysfs.
> + * @orig:		Originating (master) coresight device for the link.
> + * @orig_name:		Name to use for the link orig->target.
> + * @target:		Target (slave) coresight device for the link.
> + * @target_name:	Name to use for the link target->orig.
> + */
> +struct coresight_sysfs_link {
> +	struct coresight_device *orig;
> +	const char *orig_name;
> +	struct coresight_device *target;
> +	const char *target_name;
> +};
> +
>  /**
>   * struct coresight_device - representation of a device as used by the framework
>   * @pdata:	Platform data with device connections associated to this device.
> @@ -165,6 +179,9 @@ struct coresight_connection {
>   * @ea:		Device attribute for sink representation under PMU directory.
>   * @ect_dev:	Associated cross trigger device. Not part of the trace data
>   *		path or connections.
> + * @nr_links:   number of sysfs links created to other components from this
> + *		device. These will appear in the "connections" group.
> + * @has_conns_grp: Have added a "connections" group for sysfs links.
>   */
>  struct coresight_device {
>  	struct coresight_platform_data *pdata;
> @@ -180,6 +197,9 @@ struct coresight_device {
>  	struct dev_ext_attribute *ea;
>  	/* cross trigger handling */
>  	struct coresight_device *ect_dev;
> +	/* sysfs links between components */
> +	int nr_links;
> +	bool has_conns_grp;
>  };

With the above: 

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

>  
>  /*
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
