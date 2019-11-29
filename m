Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1786810D99E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 19:28:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YILoxw9Gb4Lpv7bNaPGBpuM+RSe9ipMzPkbADg+dOWo=; b=WaEay6iJAz47YInNy13j/mBNQ
	fEUbr9K5xi6gPTNFE6L0mGr03lFbl05QWr1gWxRxMsqfmwfa04CByp8/FAtW+UgphTU89aQm2HNVO
	ntKd+wUB6vPvzuEILZJ3in4ClE3FcRqHHeLIg0K3W2H6CJNULEqgw9YHGtPvOOPrrhpph5PT4Tytd
	dsr6udiQdB7XjgurTM6e9I/ITgrcbYzeCJpN1UZKmgZLcQlUIifLTStqRsphGyyfeSAJgNA/vxSzb
	E5ZJdYdL5WLqTEqU9+cKFy1cb+yWZdVdth1lAOkHpjQCJSnSu5O6mkiOd/E/InXC49QCT8e5UpGGc
	GgTrrqY6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ial0K-0002sP-KR; Fri, 29 Nov 2019 18:28:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ial09-0002ri-8C
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 18:28:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A2AFE31B;
 Fri, 29 Nov 2019 10:28:18 -0800 (PST)
Received: from [10.1.197.1] (ewhatever.cambridge.arm.com [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D3DD23F68E;
 Fri, 29 Nov 2019 10:28:17 -0800 (PST)
Subject: Re: [PATCH v5 08/14] coresight: cti: Enable CTI associated with
 devices.
To: Mike Leach <mike.leach@linaro.org>, coresight@lists.linaro.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-doc@vger.kernel.org
References: <20191119231912.12768-1-mike.leach@linaro.org>
 <20191119231912.12768-9-mike.leach@linaro.org>
From: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Message-ID: <c48fe3ee-335b-3dfb-33c1-a2cd7d5a00e6@arm.com>
Date: Fri, 29 Nov 2019 18:28:16 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191119231912.12768-9-mike.leach@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_102821_379941_FBE6BEEA 
X-CRM114-Status: GOOD (  35.57  )
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
> The CoreSight subsystem enables a path of devices from source to sink.
> Any CTI devices associated with the path devices must be enabled at the
> same time.
> 
> This patch adds an associated coresight_device element to the main
> coresight device structure, and uses this to create associations between
> the CTI and other devices based on the device tree data. The associated
> device element is used to enable CTI in conjunction with the path elements.
> 
> CTI devices are reference counted so where a single CTI is associated with
> multiple elements on the path, it will be enabled on the first associated
> device enable, and disabled with the last associated device disable.
> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> ---
>   drivers/hwtracing/coresight/coresight-cti.c   | 87 +++++++++++++++++++
>   .../hwtracing/coresight/coresight-platform.c  | 23 +++++
>   drivers/hwtracing/coresight/coresight-priv.h  |  6 ++
>   drivers/hwtracing/coresight/coresight.c       | 58 +++++++++++--
>   include/linux/coresight.h                     |  5 ++
>   5 files changed, 173 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-cti.c b/drivers/hwtracing/coresight/coresight-cti.c
> index 369488dd7b8e..cf116463149a 100644
> --- a/drivers/hwtracing/coresight/coresight-cti.c
> +++ b/drivers/hwtracing/coresight/coresight-cti.c
> @@ -440,6 +440,90 @@ int cti_channel_setop(struct device *dev, enum cti_chan_set_op op,
>   	return err;
>   }
>   
> +/*
> + * Look for a matching connection device name in the list of
> + * connections. If found then swap in the csdev name and return
> + * found.
> + */
> +static bool
> +cti_match_con_name(struct cti_device *ctidev, const char *node_name,
> +		   const char *csdev_name)

Here we actually fixup the name of the connection, rather than simply 
matching it. So it may be apt to rename this to cti_match_fixup_name()

> +{
> +	struct cti_trig_con *trig_con;
> +
> +	list_for_each_entry(trig_con, &ctidev->trig_cons, node) {
> +		if (trig_con->con_dev_name) {
> +			if (!strcmp(node_name, trig_con->con_dev_name)) {

Can there be duplicate node_name's ? Does it make sense to store the 
fwhandle along with the "temporary node_name" to match it later while
fixing up ?

> +				/* match: so swap in csdev name */
> +				kfree(trig_con->con_dev_name);
> +				trig_con->con_dev_name =
> +					kstrdup(csdev_name, GFP_KERNEL);
> +				return true;
> +			}
> +		}
> +	}
> +	return false;
> +}


> +/*
> + * Search the cti list to add an associated CTI into the supplied CS device
> + * This will set the association if CTI declared before the CS device
> + */
> +void cti_add_assoc_to_csdev(struct coresight_device *csdev)
> +{

..

 > +	struct cti_drvdata *ect_item;
 > +	struct cti_device *ctidev;
 > +	const char *node_name = NULL, *csdev_name;
 > +
 > +	/* protect the list */
 > +	mutex_lock(&ect_mutex);
 > +
 > +	/* exit if current is an ECT device.*/
 > +	if ((csdev->type == CORESIGHT_DEV_TYPE_ECT) || list_empty(&ect_net))
 > +		goto cti_add_done;
 > +
 > +	/* if we didn't find the csdev previously we used the fwnode name */
 > +	node_name = coresight_get_fwnode_name(csdev->dev.parent);

We used "cti_plat_get_node_name()" when we added the name in the
absence of csdev in patch 7, could we not reuse the function here ?

 > +
 > +	if (!node_name)
 > +		goto cti_add_done;
 > +
 > +	/* this is the name we want to use for the association */
 > +	csdev_name = dev_name(&csdev->dev);


> +
> +	/* for each CTI in list... */
> +	list_for_each_entry(ect_item, &ect_net, node) {
> +		ctidev = &ect_item->ctidev;
> +		if (cti_match_con_name(ctidev, node_name, csdev_name)) {
> +			/*
> +			 * if we found a matching name then update the
> +			 * association pointers.
> +			 */
> +			csdev->ect_dev = ect_item->csdev;
> +			goto cti_add_done;

			break; instead ?

> +		}
> +	}
> +cti_add_done:
> +	mutex_unlock(&ect_mutex);
> +}
> +EXPORT_SYMBOL_GPL(cti_add_assoc_to_csdev);
> +
> +/*
> + * Update the cross references where the associated device was found
> + * while we were building the connection info. This will occur if the
> + * assoc device was registered before the CTI.
> + */
> +static void cti_update_conn_xrefs(struct cti_drvdata *drvdata)
> +{
> +	struct cti_trig_con *tc;
> +	struct cti_device *ctidev = &drvdata->ctidev;
> +
> +	list_for_each_entry(tc, &ctidev->trig_cons, node) {
> +		if (tc->con_dev)
> +			tc->con_dev->ect_dev = drvdata->csdev;
> +	}

Does this need to take the coresight_mutex to avoid racing against
a coresight_enable_path() ? Though this may be fine as long as the
CTI driver detects that that device was not enabled.

Also, it looks like we have a potential issue with perf vs sysfs mode.
The perf mode doesn't seem to take the coresight_mutex, for
build_path/enable_path operations. This is outside the scope of this
series though.

> +}
> +
>   /** cti ect operations **/
>   int cti_enable(struct coresight_device *csdev)
>   {
> @@ -574,6 +658,9 @@ static int cti_probe(struct amba_device *adev, const struct amba_id *id)
>   	drvdata->csdev_release = drvdata->csdev->dev.release;
>   	drvdata->csdev->dev.release = cti_device_release;
>   
> +	/* set any cross references */
> +	cti_update_conn_xrefs(drvdata);
> +
    	/* all done - dec pm refcount */
>   	pm_runtime_put(&adev->dev);
>   	dev_info(&drvdata->csdev->dev, "CTI initialized\n");
> diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
> index 3c5bee429105..6721cb1af5fe 100644
> --- a/drivers/hwtracing/coresight/coresight-platform.c
> +++ b/drivers/hwtracing/coresight/coresight-platform.c
> @@ -293,6 +293,12 @@ static int of_get_coresight_platform_data(struct device *dev,
>   
>   	return 0;
>   }
> +
> +static inline const char *of_coresight_get_node_name(struct device *dev)
> +{
> +	return dev->of_node->full_name;
> +}
> +
>   #else
>   static inline int
>   of_get_coresight_platform_data(struct device *dev,
> @@ -305,6 +311,11 @@ static inline int of_coresight_get_cpu(struct device *dev)
>   {
>   	return -ENODEV;
>   }
> +
> +static inline const char *of_coresight_get_node_name(struct device *dev)
> +{
> +	return NULL;
> +}
>   #endif
>   
>   #ifdef CONFIG_ACPI
> @@ -766,6 +777,18 @@ static inline int acpi_coresight_get_cpu(struct device *dev)
>   }
>   #endif
>   
> +const char *coresight_get_fwnode_name(struct device *dev)

As mentioned above, please could we reuse the name helper we used
during the insertion rather than introducing a new wrapper which
effectively does the same thing ?

> +{
> +	const char *node_name = NULL;
> +	struct fwnode_handle *fwnode = dev_fwnode(dev);
> +
> +	if (is_of_node(fwnode))
> +		node_name = of_coresight_get_node_name(dev);
> +
> +	return node_name;
> +}
> +EXPORT_SYMBOL_GPL(coresight_get_fwnode_name);

Why does this get exported ? If a following patch needs it, you may
always do that when you need it.


Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
