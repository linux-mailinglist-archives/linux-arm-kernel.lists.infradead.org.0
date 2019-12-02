Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ECA210E7E8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 10:48:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zPgN6vQDRojKFl/uo0mCwO1PSODcNkjW0m9I0+w+F38=; b=lXCrFZNXfIv8FxF8/c4wDVNqj
	yBE2j9JXx72L5Ea+5nU7geYpA1CYeVHMbGXugvwEPiBDCVx80nSBDYwgFH7sKWopYDCLZXVQYVlED
	qxaaaP1bb/E87qQd8c4IuX0+rvE1kH5YfSjyqIb4y4AOh0m5+o2D787JT7TNntnupvcmX4K1oOyux
	oVdrDPcyuF3bWtb3nP/7YRKQcZcKyesynZUSlvJkUEXuISa1cQY4tpX8f6P1kR67efIOh6gUj1h5/
	nKvQgRcncH/ZWVWboERR8fGOE/Vnvgr9SkaK/FmPd8fdjaubNFploIcfUGExJO3SUhnqcv4f7z1pu
	kTPiR0V7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibiJN-0005cx-KC; Mon, 02 Dec 2019 09:48:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibiJF-0005cO-Th
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 09:48:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0ED68328;
 Mon,  2 Dec 2019 01:47:59 -0800 (PST)
Received: from [10.1.197.1] (ewhatever.cambridge.arm.com [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 271BE3F68E;
 Mon,  2 Dec 2019 01:47:58 -0800 (PST)
Subject: Re: [PATCH v5 09/14] coresight: cti: Add connection information to
 sysfs
To: Mike Leach <mike.leach@linaro.org>, coresight@lists.linaro.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-doc@vger.kernel.org
References: <20191119231912.12768-1-mike.leach@linaro.org>
 <20191119231912.12768-10-mike.leach@linaro.org>
From: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Message-ID: <ad75693c-8c6f-35fd-f9bb-0317c2b4dcd2@arm.com>
Date: Mon, 2 Dec 2019 09:47:57 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191119231912.12768-10-mike.leach@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_014802_046521_D32307A1 
X-CRM114-Status: GOOD (  31.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
> ---
>   .../hwtracing/coresight/coresight-cti-sysfs.c | 376 +++++++++++++++++-
>   drivers/hwtracing/coresight/coresight-cti.c   |  13 +-
>   drivers/hwtracing/coresight/coresight-cti.h   |  11 +-
>   3 files changed, 396 insertions(+), 4 deletions(-)
> 


The patch looks good overall, some minor comments below.


> diff --git a/drivers/hwtracing/coresight/coresight-cti-sysfs.c b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> index f800402f73da..91986732506f 100644
> --- a/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> +++ b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> @@ -8,6 +8,67 @@


> @@ -818,7 +890,306 @@ static struct attribute *coresight_cti_channel_attrs[] = {
>   	NULL,
>   };
>   
> -/* sysfs groups */
> +/* Create the connections trigger groups and attrs dynamically */
> +/*
> + * Each connection has dynamic group triggers<N> + name, trigin/out sigs/types
> + * attributes, + each device has static nr_trigger_cons giving the number
> + * of groups. e.g. in sysfs:-
> + * /cti_<name>/triggers0
> + * /cti_<name>/triggers1
> + * /cti_<name>/nr_trigger_cons
> + * where nr_trigger_cons = 2
> + */
> +static ssize_t con_name_show(struct device *dev,
> +			     struct device_attribute *attr,
> +			     char *buf)
> +{
> +	struct dev_ext_attribute *ext_attr =
> +		container_of(attr, struct dev_ext_attribute, attr);
> +	struct cti_trig_con *con = (struct cti_trig_con *)ext_attr->var;
> +
> +	return scnprintf(buf, PAGE_SIZE, "%s\n", con->con_dev_name);
> +}
> +
> +static ssize_t trigin_sig_show(struct device *dev,
> +			       struct device_attribute *attr,
> +			       char *buf)
> +{
> +	struct dev_ext_attribute *ext_attr =
> +		container_of(attr, struct dev_ext_attribute, attr);
> +	struct cti_trig_con *con = (struct cti_trig_con *)ext_attr->var;
> +	struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);
> +	struct cti_config *cfg = &drvdata->config;
> +	unsigned long mask = con->con_in->used_mask;
> +
> +	return bitmap_print_to_pagebuf(true, buf, &mask, cfg->nr_trig_max);
> +}
> +
> +static ssize_t trigout_sig_show(struct device *dev,
> +				struct device_attribute *attr,
> +				char *buf)
> +{
> +	struct dev_ext_attribute *ext_attr =
> +		container_of(attr, struct dev_ext_attribute, attr);
> +	struct cti_trig_con *con = (struct cti_trig_con *)ext_attr->var;
> +	struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);
> +	struct cti_config *cfg = &drvdata->config;
> +	unsigned long mask = con->con_out->used_mask;
> +
> +	return bitmap_print_to_pagebuf(true, buf, &mask, cfg->nr_trig_max);
> +}
> +
> +/* convert a sig type id to a name */
> +static const char *
> +cti_sig_type_name(struct cti_trig_con *con, int used_count, bool in)
> +{
> +	int idx = 0;
> +	struct cti_trig_grp *grp = in ? con->con_in : con->con_out;
> +
> +	if (grp->sig_types) {
> +		if (used_count < grp->nr_sigs)
> +			idx = grp->sig_types[used_count];
> +	}
> +	return sig_type_names[idx];
> +}
> +
> +static ssize_t trigin_type_show(struct device *dev,
> +				struct device_attribute *attr,
> +				char *buf)
> +{
> +	struct dev_ext_attribute *ext_attr =
> +		container_of(attr, struct dev_ext_attribute, attr);
> +	struct cti_trig_con *con = (struct cti_trig_con *)ext_attr->var;
> +	int sig_idx, used = 0, b_sz = PAGE_SIZE;
> +	const char *name;
> +
> +	for (sig_idx = 0; sig_idx < con->con_in->nr_sigs; sig_idx++) {
> +		name = cti_sig_type_name(con, sig_idx, true);
> +		used += scnprintf(buf + used, b_sz - used, "%s ", name);
> +	}
> +	used += scnprintf(buf + used, b_sz - used, "\n");
> +	return used;
> +}
> +
> +static ssize_t trigout_type_show(struct device *dev,
> +				 struct device_attribute *attr,
> +				 char *buf)
> +{
> +	struct dev_ext_attribute *ext_attr =
> +		container_of(attr, struct dev_ext_attribute, attr);
> +	struct cti_trig_con *con = (struct cti_trig_con *)ext_attr->var;
> +	int sig_idx, used = 0, b_sz = PAGE_SIZE;
> +	const char *name;
> +
> +	for (sig_idx = 0; sig_idx < con->con_out->nr_sigs; sig_idx++) {
> +		name = cti_sig_type_name(con, sig_idx, false);
> +		used += scnprintf(buf + used, b_sz - used, "%s ", name);
> +	}
> +	used += scnprintf(buf + used, b_sz - used, "\n");
> +	return used;
> +}
> +
> +/*
> + * Array of show function names declared above to allow selection
> + * for the connection attributes
> + */
> +static p_show_fn show_fns[CTI_CON_ATTR_MAX] = {
> +	con_name_show,
> +	trigin_sig_show,
> +	trigout_sig_show,
> +	trigin_type_show,
> +	trigout_type_show,
> +};
> +
> +static int cti_create_con_sysfs_attr(struct cti_trig_con *con,
> +				     enum cti_conn_attr_type attr_type,
> +				     int attr_idx)
> +{
> +	struct dev_ext_attribute *dev_ext_attr = 0;

super minor nit: You may use "eattr" instead.


> +	char *name = 0;
> +
> +	dev_ext_attr = kzalloc(sizeof(struct dev_ext_attribute), GFP_KERNEL);


Could we not use devm_* alloc helpers everywhere ?

> +	if (dev_ext_attr) {
> +		name = kstrdup(con_attr_names[attr_type], GFP_KERNEL);
> +		if (name) {
> +			/* fill out the underlying attribute struct */
> +			dev_ext_attr->attr.attr.name = name;
> +			dev_ext_attr->attr.attr.mode = 0444;
> +
> +			/* now the device_attribute struct */
> +			dev_ext_attr->attr.show = show_fns[attr_type];
> +		} else {
> +			kfree(dev_ext_attr);
> +			return -ENOMEM;
> +		}
> +	} else {
> +		return -ENOMEM;
> +	}
> +	dev_ext_attr->var = con;
> +	con->con_attrs[attr_idx] = &dev_ext_attr->attr.attr;
> +	return 0;
> +}
> +
> +static struct attribute_group *
> +cti_create_con_sysfs_group(struct cti_device *ctidev, int con_idx,
> +			   struct cti_trig_con *con)
> +{
> +	struct attribute_group *group = NULL;
> +
> +	group = kzalloc(sizeof(struct attribute_group), GFP_KERNEL);
> +	if (!group)
> +		return NULL;
> +
> +	group->name = kasprintf(GFP_KERNEL, "triggers%d", con_idx);
> +	if (!group->name) {
> +		kfree(group);
> +		return NULL;
> +	}
> +
> +	ctidev->con_groups[con_idx + CORESIGHT_CTI_STATIC_GROUPS_MAX - 1]
> +		= group;

nit:
	con_idx +=  CORESIGHT_CTI_STATIC_GROUPS_MAX - 1;
	ctidev->con_groups[con_idx] = group;


> +	con->attr_group = group;
> +	return group;
> +}
> +
> +/* create a triggers connection group and the attributes for that group */
> +static int cti_create_con_attr_set(int con_idx, struct cti_device *ctidev,
> +				   struct cti_trig_con *con)
> +{
> +	struct attribute_group *attr_group = NULL;
> +	int attr_idx = 0;
> +	int err = -ENOMEM;
> +
> +	attr_group = cti_create_con_sysfs_group(ctidev, con_idx, con);
> +	if (!attr_group)
> +		return -ENOMEM;
> +
> +	/* allocate NULL terminated array of attributes */
> +	con->con_attrs = kcalloc(CTI_CON_ATTR_MAX + 1,
> +				 sizeof(struct attribute *),
> +				 GFP_KERNEL);

Again why not devm_* allocations ? That takes the pain of freeing the
memory away and helps prevent memory leaks.

> +	if (!con->con_attrs)
> +		return -ENOMEM;
> +
> +	err = cti_create_con_sysfs_attr(con, CTI_CON_ATTR_NAME, attr_idx++);
> +	if (err)
> +		return err;
> +
> +	if (con->con_in->nr_sigs > 0) {
> +		err = cti_create_con_sysfs_attr(con, CTI_CON_ATTR_TRIGIN_SIG,
> +						attr_idx++);
> +		if (err)
> +			return err;
> +
> +		err = cti_create_con_sysfs_attr(con, CTI_CON_ATTR_TRIGIN_TYPES,
> +						attr_idx++);
> +		if (err)
> +			return err;
> +	}
> +
> +	if (con->con_in->nr_sigs > 0) {
> +		err = cti_create_con_sysfs_attr(con, CTI_CON_ATTR_TRIGOUT_SIG,
> +						attr_idx++);
> +		if (err)
> +			return err;
> +
> +		err = cti_create_con_sysfs_attr(con, CTI_CON_ATTR_TRIGOUT_TYPES,
> +						attr_idx++);
> +		if (err)
> +			return err;
> +	}
> +	attr_group->attrs = con->con_attrs;
> +	return 0;
> +}
> +
> +/* create the array of group pointers for the CTI sysfs groups */
> +int cti_create_cons_groups(struct cti_device *ctidev)
> +{
> +	int i, nr_groups;
> +
> +	/* nr groups - dynamic + static + NULL terminator */
> +	nr_groups = ctidev->nr_trig_con + CORESIGHT_CTI_STATIC_GROUPS_MAX;
> +	ctidev->con_groups = kcalloc(nr_groups,
> +				     sizeof(struct attribute_group *),
> +				     GFP_KERNEL);
> +	if (!ctidev->con_groups)
> +		return -ENOMEM;
> +
> +	/* populate first locations with the static set of groups */
> +	for (i = 0; i < (CORESIGHT_CTI_STATIC_GROUPS_MAX - 1); i++)
> +		ctidev->con_groups[i] = coresight_cti_groups[i];
> +
> +	return 0;
> +}
> +

To be frank, it doesn't make sense to have this split of populating
the groups.

> +int cti_create_cons_sysfs(struct cti_drvdata *drvdata)
> +{
> +	struct cti_device *ctidev = &drvdata->ctidev;
> +	int err, con_idx = 0;
> +	struct cti_trig_con *tc = NULL;
> +
> +	err = cti_create_cons_groups(ctidev);
> +	if (err)
> +		return err;
> +
> +	/* add dynamic set for each connection */
> +	list_for_each_entry(tc, &ctidev->trig_cons, node) {
> +		err = cti_create_con_attr_set(con_idx++, ctidev, tc);
> +		if (err)
> +			goto cons_sysfs_err;
> +	}
> +	return 0;
> +
> +cons_sysfs_err:
> +	cti_destroy_cons_sysfs(ctidev);
> +	return err;
> +}
> +
> +void cti_free_con_attr(struct attribute *con_attr)
> +{
> +	struct device_attribute *dattr =
> +		container_of(con_attr, struct device_attribute, attr);
> +	struct dev_ext_attribute *dev_ext_attr =
> +		container_of(dattr, struct dev_ext_attribute, attr);
> +	kfree(con_attr->name);
> +	kfree(dev_ext_attr);
> +}
> +
> +void cti_free_con_group(struct attribute_group *attr_group)
> +{
> +	if (attr_group) {
> +		kfree(attr_group->name);
> +		kfree(attr_group);
> +	}
> +}
> +
> +void cti_destroy_cons_attr_set(int con_idx, struct cti_device *ctidev,
> +			       struct cti_trig_con *con)
> +{
> +	int i;
> +
> +	if (con->con_attrs) {
> +		for (i = 0; i < CTI_CON_ATTR_MAX; i++) {
> +			if (con->con_attrs[i])
> +				cti_free_con_attr(con->con_attrs[i]);
> +		}
> +		kfree(con->con_attrs);
> +	}
> +	cti_free_con_group(con->attr_group);
> +}
> +
> +void cti_destroy_cons_sysfs(struct cti_device *ctidev)
> +{
> +	struct cti_trig_con *tc;

minor nit: Please keep the variable name consistent if possible, helps a
lot with the code following. i.e, tc vs con above in 
cti_destroy_cons_attr_set().

> +	int con_idx = 0;
> +
> +	list_for_each_entry(tc, &ctidev->trig_cons, node) {
> +		cti_destroy_cons_attr_set(con_idx++, ctidev, tc);
> +	}
> +	kfree(ctidev->con_groups);
> +}
> +
> +/* attribute and group sysfs tables. */
>   static const struct attribute_group coresight_cti_group = {
>   	.attrs = coresight_cti_attrs,
>   };
> @@ -838,7 +1209,8 @@ static const struct attribute_group coresight_cti_channels_group = {
>   	.name = "channels",
>   };
>   
> -const struct attribute_group *coresight_cti_groups[] = {
> +const struct attribute_group *
> +coresight_cti_groups[CORESIGHT_CTI_STATIC_GROUPS_MAX] = {
>   	&coresight_cti_group,
>   	&coresight_cti_mgmt_group,
>   	&coresight_cti_regs_group,
> diff --git a/drivers/hwtracing/coresight/coresight-cti.c b/drivers/hwtracing/coresight/coresight-cti.c
> index cf116463149a..c3d63cc53bdd 100644
> --- a/drivers/hwtracing/coresight/coresight-cti.c
> +++ b/drivers/hwtracing/coresight/coresight-cti.c
> @@ -561,6 +561,9 @@ static void cti_device_release(struct device *dev)
>   
>   	mutex_lock(&ect_mutex);
>   
> +	/* clear the dynamic sysfs associate with connections */
> +	cti_destroy_cons_sysfs(&drvdata->ctidev);
> +
>   	/* remove from the list */
>   	list_for_each_entry_safe(ect_item, ect_tmp, &ect_net, node) {
>   		if (ect_item == drvdata) {
> @@ -636,12 +639,20 @@ static int cti_probe(struct amba_device *adev, const struct amba_id *id)
>   		goto err_out;
>   	}
>   
> +	/* create dynamic attributes for connections */
> +	ret = cti_create_cons_sysfs(drvdata);
> +	if (ret) {
> +		pr_err("%s: create dynamic sysfs entries failed\n",
> +		       cti_desc.name);

nit: It may be a good idea to include the actual device name (rather 
than just cti_xxx). so may be :

  dev_err(dev, "%s:....", cti_desc.name) ?


> +		goto err_out;
> +	}


Except for the devm_ alloc question, rest are fine.

Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
