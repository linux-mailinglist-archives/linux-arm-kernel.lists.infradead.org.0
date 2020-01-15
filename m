Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5745413BE8D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 12:34:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4jqm5FSz0sczmFl9vP2qBxIqwPvSvEE2smB84dpI/Iw=; b=DIoSKYnC6eL/SYdi7sbbqnvja
	05ByAMZgANceKQpUxMo0I2F8l3B3HQ9yInmhZrt5zc0E4cgCUZEG8a5e19vZQ7YJCNc0KYYnzujKL
	VRKk03Ptw6rgojq2LtgO3ZkAu46vmOJ0qJhdUD9ZkGamrO6S4Myg8wF89m49B82z2hPwp1GRI6ztW
	+ah85kMbAtdrn231fidICuR8MdRfUIzv0YE6FJRAPs0CHESOuxjRvjSdnAwFbN0sYgXGA3finOnjI
	gYDP2YszHUERl5EpN/ESkeWIIEsOdqflRoEQlJoECsVE3KntIVfo90cfqJRCzwAziXtRt7MjmqiDl
	wNGvLs4ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irgwN-00047v-C4; Wed, 15 Jan 2020 11:34:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irgwB-00046k-O6
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 11:34:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2B12131B;
 Wed, 15 Jan 2020 03:34:15 -0800 (PST)
Received: from [10.1.197.1] (ewhatever.cambridge.arm.com [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7826C3F6C4;
 Wed, 15 Jan 2020 03:34:13 -0800 (PST)
Subject: Re: [PATCH v8 09/15] coresight: cti: Add connection information to
 sysfs
To: Mike Leach <mike.leach@linaro.org>, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, coresight@lists.linaro.org,
 linux-doc@vger.kernel.org
References: <20200113213149.25599-1-mike.leach@linaro.org>
 <20200113213149.25599-10-mike.leach@linaro.org>
From: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Message-ID: <b09888f1-46fc-26af-0c5f-4a071c893397@arm.com>
Date: Wed, 15 Jan 2020 11:34:12 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200113213149.25599-10-mike.leach@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_033415_873238_51D537DD 
X-CRM114-Status: GOOD (  24.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: lorenzo.pieralisi@arm.com, mathieu.poirier@linaro.org, corbet@lwn.net,
 linux-arm-msm@vger.kernel.org, liviu.dudau@arm.com, agross@kernel.org,
 robh+dt@kernel.org, maxime@cerno.tech, sudeep.holla@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/01/2020 21:31, Mike Leach wrote:
> Dynamically adds sysfs attributes for all connections defined in the CTI.
> 
> Each connection has a triggers<N> sub-directory with name, in_signals,
> in_types, out_signals and out_types as read-only parameters in the
> directory. in_ or out_ parameters may be omitted if there are no in or
> out signals for the connection.
> 
> Additionally each device has a nr_cons in the connections sub-directory.
> 
> This allows clients to explore the connection and trigger signal details
> without needing to refer to device tree or specification of the device.
> 
> Standardised type information is provided for certain common functions -
> e.g. snk_full for a trigger from a sink indicating full. Otherwise type
> defaults to genio.
> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> ---
>   .../hwtracing/coresight/coresight-cti-sysfs.c | 333 +++++++++++++++++-
>   drivers/hwtracing/coresight/coresight-cti.c   |  10 +-
>   drivers/hwtracing/coresight/coresight-cti.h   |   8 +
>   3 files changed, 348 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-cti-sysfs.c b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> index 8af1986ed69f..db3395c46f51 100644
> --- a/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> +++ b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> @@ -8,6 +8,67 @@
>   
>   #include "coresight-cti.h"
>   

> +/*
> + * Declare the number of static declared attribute groups
> + * Value includes groups + NULL value at end of table.
> + */
> +#define CORESIGHT_CTI_STATIC_GROUPS_MAX 5
> +

minor nit: see below.

> +static struct attribute_group *
> +cti_create_con_sysfs_group(struct device *dev, struct cti_device *ctidev,
> +			   int con_idx, struct cti_trig_con *tc)
> +{
> +	struct attribute_group *group = NULL;
> +	int grp_idx;
> +
> +	group = devm_kzalloc(dev, sizeof(struct attribute_group), GFP_KERNEL);
> +	if (!group)
> +		return NULL;
> +
> +	group->name = devm_kasprintf(dev, GFP_KERNEL, "triggers%d", con_idx);
> +	if (!group->name)
> +		return NULL;
> +
> +	grp_idx = con_idx + CORESIGHT_CTI_STATIC_GROUPS_MAX - 1;
> +	ctidev->con_groups[grp_idx] = group;
> +	tc->attr_group = group;
> +	return group;
> +}
> +

> +	if (tc->con_out->nr_sigs > 0) {
> +		err = cti_create_con_sysfs_attr(dev, tc,
> +						CTI_CON_ATTR_TRIGOUT_SIG,
> +						attr_idx++);
> +		if (err)
> +			return err;
> +
> +		err = cti_create_con_sysfs_attr(dev, tc,
> +						CTI_CON_ATTR_TRIGOUT_TYPES,
> +						attr_idx++);
> +		if (err)
> +			return err;
> +	}
> +	attr_group->attrs = tc->con_attrs;
> +	return 0;
> +}
> +
> +/* create the array of group pointers for the CTI sysfs groups */
> +int cti_create_cons_groups(struct device *dev, struct cti_device *ctidev)
> +{
> +	int nr_groups;
> +
> +	/* nr groups - dynamic + static + NULL terminator */

nit: nr_groups = ?

> +	nr_groups = ctidev->nr_trig_con + CORESIGHT_CTI_STATIC_GROUPS_MAX;
> +	ctidev->con_groups = devm_kcalloc(dev, nr_groups,
> +					  sizeof(struct attribute_group *),
> +					  GFP_KERNEL);
> +	if (!ctidev->con_groups)
> +		return -ENOMEM;
> +	return 0;
> +}


> +/* attribute and group sysfs tables. */
>   static const struct attribute_group coresight_cti_group = {
>   	.attrs = coresight_cti_attrs,
>   };
> @@ -837,7 +1165,8 @@ static const struct attribute_group coresight_cti_channels_group = {
>   	.name = "channels",
>   };
>   
> -const struct attribute_group *coresight_cti_groups[] = {
> +const struct attribute_group *
> +coresight_cti_groups[CORESIGHT_CTI_STATIC_GROUPS_MAX] = {
>   	&coresight_cti_group,
>   	&coresight_cti_mgmt_group,
>   	&coresight_cti_regs_group,

minor nit: You may as well do :

corsight_cti_groups[] = {
   ...
   ....
}

#define CORESIGHT_CTI_STATIC_GROUPS_MAX 	\
		ARRAY_SIZE(coresight_cti_groups) + 1

To avoid hard coding the number 5. Of course that would involve a
forward declaration, so can ignore it for the time being.


With the comment fixed, above:

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
