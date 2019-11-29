Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2BBB10D6CF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 15:18:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/GnR26vjGgIca0JHroIMRFjtdEFFyzw1L4WGBQn+qTE=; b=Up3L+G+hL+gzQxu+TNTVjSkj4
	ggZJRP6JOLcFw3fVb2Vr5aYNhE1pYgfRCPbRTQplupDLcR/XWPnasoJjtjG7ayaYfWIMeL54QTAuC
	2SRHnPHXWq3+b1wDko6z6tGNKdbt1XxtPuYiUHZoxEnvZgmnOJzodE3FKoccaMkuoCPpLuCZaeV1v
	r2dwqKGNTDYcrYa91YpjSdIiVyxa+8IT4ye8qMznon42XpI3iEZEX9ZmwaoPwx7N6n99As2Jt1gbL
	flJinN0mEKNhJAgCdhy6nMO3WGpcnmTKv11QmQCq8b5EEJhYmuqghV8EyMlJa3gtYb60qllfLJdOh
	Ppm8ZgOTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iah6V-00016N-KW; Fri, 29 Nov 2019 14:18:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iah6J-000161-CQ
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 14:18:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C536C1FB;
 Fri, 29 Nov 2019 06:18:26 -0800 (PST)
Received: from [10.1.197.1] (ewhatever.cambridge.arm.com [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 052C43F52E;
 Fri, 29 Nov 2019 06:18:25 -0800 (PST)
Subject: Re: [PATCH v5 07/14] coresight: cti: Add device tree support for
 custom CTI.
To: Mike Leach <mike.leach@linaro.org>, coresight@lists.linaro.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-doc@vger.kernel.org
References: <20191119231912.12768-1-mike.leach@linaro.org>
 <20191119231912.12768-8-mike.leach@linaro.org>
From: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Message-ID: <efac03bc-4a38-8f5c-46d5-9ffc58b2d2bb@arm.com>
Date: Fri, 29 Nov 2019 14:18:25 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191119231912.12768-8-mike.leach@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_061827_510484_9303F6D5 
X-CRM114-Status: GOOD (  28.17  )
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
> Adds support for CTIs whose connections are implementation defined at
> hardware design time, and not constrained by v8 architecture.
> 
> These CTIs have no standard connection setup, all the settings have to
> be defined in the device tree files. The patch creates a set of connections
> and trigger signals based on the information provided.
> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> ---
>   .../coresight/coresight-cti-platform.c        | 250 +++++++++++++++++-
>   .../hwtracing/coresight/coresight-cti-sysfs.c |  11 +
>   2 files changed, 257 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-cti-platform.c b/drivers/hwtracing/coresight/coresight-cti-platform.c
> index 790dd30b85f5..9c1ff432b487 100644
> --- a/drivers/hwtracing/coresight/coresight-cti-platform.c
> +++ b/drivers/hwtracing/coresight/coresight-cti-platform.c
> @@ -13,9 +13,19 @@
>   #define NR_V8PE_OUT_SIGS	3
>   #define NR_V8ETM_INOUT_SIGS	4
>   
> +/* CTI device tree trigger connection node keyword */
> +#define CTI_DT_CONNS		"trig-conns"
> +
>   /* CTI device tree connection property keywords */
>   #define CTI_DT_V8ARCH		"arm,cti-v8-arch"
>   #define CTI_DT_CSDEV_ASSOC	"arm,cs-dev-assoc"
> +#define CTI_DT_TRIGIN_SIGS	"arm,trig-in-sigs"
> +#define CTI_DT_TRIGOUT_SIGS	"arm,trig-out-sigs"
> +#define CTI_DT_TRIGIN_TYPES	"arm,trig-in-types"
> +#define CTI_DT_TRIGOUT_TYPES	"arm,trig-out-types"
> +#define CTI_DT_FILTER_OUT_SIGS	"arm,trig-filters"
> +#define CTI_DT_CONN_NAME	"arm,trig-conn-name"
> +#define CTI_DT_CTM_ID		"arm,cti-ctm-id"
>   
>   /*
>    * Find a registered coresight device from a device fwnode.
> @@ -68,6 +78,12 @@ static const char *of_cti_get_node_name(const struct device_node *node)
>   		return node->full_name;
>   	return "unknown";
>   }
> +
> +static bool of_cti_node_name_eq(const struct device_node *node,
> +				const char *name)
> +{
> +	return of_node_name_eq(node, name);
> +}
>   #else
>   static int of_cti_get_cpu_at_node(const struct device_node *node)
>   {
> @@ -78,6 +94,12 @@ static const char *of_cti_get_node_name(const struct device_node *node)
>   {
>   	return "unknown";
>   }
> +
> +static bool of_cti_node_name_eq(const struct device_node *node,
> +				const char *name)
> +{
> +	return false;
> +}
>   #endif

nit: You don't need this wrapper of_node_name_eq() is already defined to
return false for !CONFIG_OF.


>   
>   static int cti_plat_get_cpu_at_node(struct fwnode_handle *fwnode)
> @@ -94,6 +116,14 @@ static const char *cti_plat_get_node_name(struct fwnode_handle *fwnode)
>   	return "unknown";
>   }
>   
> +static bool cti_plat_node_name_eq(struct fwnode_handle *fwnode,
> +				  const char *name)
> +{
> +	if (is_of_node(fwnode))
> +		return of_cti_node_name_eq(to_of_node(fwnode), name);

As mentioned above you could simply use of_node_name_eq() here.

> +	return false;
> +}
> +
>   static int cti_plat_create_v8_etm_connection(struct device *dev,
>   					     struct cti_drvdata *drvdata)
>   {
> @@ -205,6 +235,214 @@ static int cti_plat_create_v8_connections(struct device *dev,
>   	return ret;
>   }
>   
> +static int cti_plat_count_sig_elements(const struct fwnode_handle *fwnode,
> +				       const char *name)
> +{
> +	int nr_elem = fwnode_property_count_u32(fwnode, name);
> +
> +	return (nr_elem < 0 ? 0 : nr_elem);
> +}
> +
> +static int cti_plat_read_trig_group(struct cti_trig_grp *tgrp,
> +				    const struct fwnode_handle *fwnode,
> +				    const char *grp_name)
> +{
> +	int idx, err = 0;
> +	u32 *values;
> +
> +	if (!tgrp->nr_sigs)
> +		return 0;
> +
> +	values = kcalloc(tgrp->nr_sigs, sizeof(u32), GFP_KERNEL);
> +	if (!values)
> +		return -ENOMEM;
> +
> +	err = fwnode_property_read_u32_array(fwnode, grp_name,
> +					     values, tgrp->nr_sigs);
> +
> +	if (!err) {
> +		/* set the signal usage mask */
> +		for (idx = 0; idx < tgrp->nr_sigs; idx++)
> +			tgrp->used_mask |= BIT(values[idx]);
> +	}
> +
> +	kfree(values);
> +	return err;
> +}
> +
> +static int cti_plat_read_trig_types(struct cti_trig_grp *tgrp,
> +				    const struct fwnode_handle *fwnode,
> +				    const char *type_name)
> +{
> +	int items, used = 0, err = 0, nr_sigs;
> +	u32 *values = NULL, i;
> +
> +	/* allocate an array according to number of signals in connection */
> +	nr_sigs = tgrp->nr_sigs;
> +	if (!nr_sigs)
> +		return 0;
> +
> +	/* see if any types have been included in the device description */
> +	items = cti_plat_count_sig_elements(fwnode, type_name);
> +	if (items > nr_sigs)
> +		return -EINVAL;
> +
> +	/* need an array to store the values iff there are any */
> +	if (items) {
> +		values = kcalloc(items, sizeof(u32), GFP_KERNEL);
> +		if (!values)
> +			return -ENOMEM;
> +
> +		err = fwnode_property_read_u32_array(fwnode, type_name,
> +						     values, items);
> +		if (err)
> +			goto read_trig_types_out;
> +	}
> +
> +	/*
> +	 * Match type id to signal index, 1st type to 1st index etc.
> +	 * If fewer types than signals default remainder to GEN_IO.
> +	 */
> +	for (i = 0; i < nr_sigs; i++) {
> +		if (used < items) {
> +			tgrp->sig_types[i] =
> +				values[i] < CTI_TRIG_MAX ? values[i] : GEN_IO;
> +			used++;

Do we really need "used" here ? Couldn't this be :

		if (i < items) {

		}

> +		} else {

   + 	 		/* Mark the undefined connections as GEN_IO */ ?

> +			tgrp->sig_types[i] = GEN_IO;
> +		}
> +	}

...

> +
> +	/* read the connection name if set - may be overridden by later */
> +	fwnode_property_read_string(fwnode, CTI_DT_CONN_NAME, &assoc_name);
> +
> +	/* associated cpu ? */
> +	cpuid = cti_plat_get_cpu_at_node(fwnode);
> +	if (cpuid >= 0) {
> +		drvdata->ctidev.cpu = cpuid;
> +		scnprintf(cpu_name_str, sizeof(cpu_name_str), "cpu%d", cpuid);
> +		assoc_name = cpu_name_str;
> +	} else {
> +		/* associated device ? */
> +		cs_fwnode = fwnode_find_reference(fwnode,
> +						  CTI_DT_CSDEV_ASSOC, 0);

> +		if (!IS_ERR_OR_NULL(cs_fwnode)) {

--- Cut - here --
> +			csdev = cti_get_assoc_csdev_by_fwnode(cs_fwnode);
> +			if (csdev) /* use device name if csdev found */
> +				assoc_name = dev_name(&csdev->dev);
> +			else  /* otherwise node name for later association */
> +				assoc_name = cti_plat_get_node_name(cs_fwnode);

--- end - here --

I believe we do this for arm_v8 architected connections too. May be make
this a helper ?

> +			fwnode_handle_put(cs_fwnode);
> +		}
> +	}
> +	/* set up a connection */
> +	err = cti_add_connection_entry(dev, drvdata, tc, csdev, assoc_name);
> +
> +create_con_err:
> +	return err;
> +}
> +
> +static int cti_plat_create_impdef_connections(struct device *dev,
> +					      struct cti_drvdata *drvdata)
> +{
> +	int rc = 0;
> +	struct fwnode_handle *fwnode = dev_fwnode(dev);
> +	struct fwnode_handle *child = NULL;
> +
> +	if (IS_ERR_OR_NULL(fwnode))
> +		return -EINVAL;
> +
> +	fwnode_for_each_child_node(fwnode, child) {
> +		if (cti_plat_node_name_eq(child, CTI_DT_CONNS))
> +			rc = cti_plat_create_connection(dev, drvdata, child);
> +		if (rc != 0)
> +			break;

minor nit: To make it more obvious :

		if (cti_plat_node_name_eq(child, CTI_DT_CONNS)) {
			rc = cti_plat_create_connection(dev, drvdata,
							child);
			if (rc)
				break;
		}

Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
