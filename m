Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5DEE161DC0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 00:13:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZYriemegm+ymjTtlCzAamfG8fS0eYUTSDl/gwY8fDq4=; b=MesWbQp9u5ci5r
	cYJo56ud1cw85Gtx/jSJxpHTTco7s5eJzJSeWUCPZO1DQwFa3MD2AlaeKmUz6K55ZtlPGo63isDJH
	XZdLeZmWyM3jrj5ZpIwVbPVdraTmuyW0ktl1jcwRFiQ7ZNE1O5JHMHWX3KKtjSFSnC6FHRP21pLM2
	9kbH8YA8Fbt/yaixLJx/lTv/mtNUP0QImQ3Ddv3H3vjgzcJb1dTnUzPP4wRPIuQQUKJRkpD5NRvkQ
	kAZDZ3afLQeuZWGKpFAHWI5jUqELV3rK1BGk8SdPuug+RX/jAkviOdDABEIAX/t80tRIebA9ty67O
	b6NYmo+S9jUcDFgpzjig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3pZC-0004C8-LY; Mon, 17 Feb 2020 23:12:42 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3pZ3-0004BE-NT
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 23:12:35 +0000
Received: by mail-yw1-xc43.google.com with SMTP id t141so8572627ywc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 15:12:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=plKxY5Yio5Jr2AlQMtIcW1+8DGCQP8/Yf1rGtBPXYN0=;
 b=elGw1bxgIPOvCrRYpZD8P+MqZLdG0DZxVPG09tSOFlHUgn9Ii5kAooZWC0je2FuvIA
 I3lhDCfyk5cvzbUrqUzYFWw9axGfHioPJ6nS4Pv2aMdHkPOyQN6gBDZIxD0hKy99ZCWE
 wwE9aj2qcpFGsdxKn3Rv8Fhkxj1frnMwYXIo4wXQ2cxzponL8aqF0JQ1RC+pxlxQ3pTB
 qhcs/XLtPrFRQKrLpRLQmskBp39xkIIUY1MgXKmXIASW4OU/pPCEDEad++c648rz3KjC
 eEO1aidKUFTocTuej/Vz/6fR+Fl4WG3+R0CTEeWTIeJ6WiDmSLaz5RzWIM5AIHvqbd/o
 J4RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=plKxY5Yio5Jr2AlQMtIcW1+8DGCQP8/Yf1rGtBPXYN0=;
 b=hQG1VacNuVY53tXEXre15RNpH88XmfsuficwYzA98Iq/jcfoPUnZNW8b+Etda4WPjE
 XQTIxxNWO1RkDjU31I5D2dfWIWe74AF40kkq27NlEDSAihYxAxgtgX/KIVBcHywx46GY
 2hoKWpBOqpvRSCdA2bJfdM1/ZFOiySjk4s2mD+N+rFP/f0CoyoCtHBjWxksLXt23+7B6
 mHG/1hwnlniHC+PBzddz9ewJRRYX+5Q6sHnTOxmpcxkgxrA1sA8iiHIvNbJSoG0BQ26m
 T5/Jhi3O0iR3wAoi3kUfvui+hdnltQJCfa+RZrzkd7b38wAfzHsauhdSdvbLveKa7+TP
 Mmzw==
X-Gm-Message-State: APjAAAWJr3aEc5Eg92x7H1w+fUHjSPqswKDQ0Oiv5ju5mytPH6Wvbvbj
 q2qdUjBa7ryaup+g8d6Af5ncyg==
X-Google-Smtp-Source: APXvYqybOyo5T72803m8N9/kyqXf3ZGTN/S6DdEQUwHTJnuPtt9FBux9ts8bd4jQuSy/58It3yYJHA==
X-Received: by 2002:a81:8606:: with SMTP id w6mr14036304ywf.137.1581981151700; 
 Mon, 17 Feb 2020 15:12:31 -0800 (PST)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id t15sm775877ywg.67.2020.02.17.15.12.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Feb 2020 15:12:31 -0800 (PST)
Date: Mon, 17 Feb 2020 16:12:28 -0700
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH v9 08/15] coresight: cti: Enable CTI associated with
 devices.
Message-ID: <20200217231228.GA28357@xps15>
References: <20200210213924.20037-1-mike.leach@linaro.org>
 <20200210213924.20037-9-mike.leach@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200210213924.20037-9-mike.leach@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_151233_807380_6364E95A 
X-CRM114-Status: GOOD (  37.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 suzuki.poulose@arm.com, linux-arm-msm@vger.kernel.org,
 coresight@lists.linaro.org, linux-doc@vger.kernel.org, liviu.dudau@arm.com,
 agross@kernel.org, robh+dt@kernel.org, maxime@cerno.tech, sudeep.holla@arm.com,
 corbet@lwn.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Suzuki,

As far as I can tell Mike made the modifications you have requested.  Please
have a look to make sure it is the case before I add this to my next tree.

Thanks,
Mathieu

On Mon, Feb 10, 2020 at 09:39:17PM +0000, Mike Leach wrote:
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
> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> ---
>  drivers/hwtracing/coresight/coresight-cti.c  | 129 +++++++++++++++++++
>  drivers/hwtracing/coresight/coresight-cti.h  |   1 +
>  drivers/hwtracing/coresight/coresight-priv.h |  12 ++
>  drivers/hwtracing/coresight/coresight.c      |  71 +++++++++-
>  include/linux/coresight.h                    |   4 +
>  5 files changed, 212 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-cti.c b/drivers/hwtracing/coresight/coresight-cti.c
> index 77c2af247917..c4494923d030 100644
> --- a/drivers/hwtracing/coresight/coresight-cti.c
> +++ b/drivers/hwtracing/coresight/coresight-cti.c
> @@ -4,6 +4,7 @@
>   * Author: Mike Leach <mike.leach@linaro.org>
>   */
>  
> +#include <linux/property.h>
>  #include "coresight-cti.h"
>  
>  /**
> @@ -440,6 +441,131 @@ int cti_channel_setop(struct device *dev, enum cti_chan_set_op op,
>  	return err;
>  }
>  
> +/*
> + * Look for a matching connection device name in the list of connections.
> + * If found then swap in the csdev name, set trig con association pointer
> + * and return found.
> + */
> +static bool
> +cti_match_fixup_csdev(struct cti_device *ctidev, const char *node_name,
> +		      struct coresight_device *csdev)
> +{
> +	struct cti_trig_con *tc;
> +	const char *csdev_name;
> +
> +	list_for_each_entry(tc, &ctidev->trig_cons, node) {
> +		if (tc->con_dev_name) {
> +			if (!strcmp(node_name, tc->con_dev_name)) {
> +				/* match: so swap in csdev name & dev */
> +				csdev_name = dev_name(&csdev->dev);
> +				tc->con_dev_name =
> +					devm_kstrdup(&csdev->dev, csdev_name,
> +						     GFP_KERNEL);
> +				tc->con_dev = csdev;
> +				return true;
> +			}
> +		}
> +	}
> +	return false;
> +}
> +
> +/*
> + * Search the cti list to add an associated CTI into the supplied CS device
> + * This will set the association if CTI declared before the CS device.
> + * (called from coresight_register() with coresight_mutex locked).
> + */
> +void cti_add_assoc_to_csdev(struct coresight_device *csdev)
> +{
> +	struct cti_drvdata *ect_item;
> +	struct cti_device *ctidev;
> +	const char *node_name = NULL;
> +
> +	/* protect the list */
> +	mutex_lock(&ect_mutex);
> +
> +	/* exit if current is an ECT device.*/
> +	if ((csdev->type == CORESIGHT_DEV_TYPE_ECT) || list_empty(&ect_net))
> +		goto cti_add_done;
> +
> +	/* if we didn't find the csdev previously we used the fwnode name */
> +	node_name = cti_plat_get_node_name(dev_fwnode(csdev->dev.parent));
> +	if (!node_name)
> +		goto cti_add_done;
> +
> +	/* for each CTI in list... */
> +	list_for_each_entry(ect_item, &ect_net, node) {
> +		ctidev = &ect_item->ctidev;
> +		if (cti_match_fixup_csdev(ctidev, node_name, csdev)) {
> +			/*
> +			 * if we found a matching csdev then update the ECT
> +			 * association pointer for the device with this CTI.
> +			 */
> +			csdev->ect_dev = ect_item->csdev;
> +			break;
> +		}
> +	}
> +cti_add_done:
> +	mutex_unlock(&ect_mutex);
> +}
> +EXPORT_SYMBOL_GPL(cti_add_assoc_to_csdev);
> +
> +/*
> + * Removing the associated devices is easier.
> + * A CTI will not have a value for csdev->ect_dev.
> + */
> +void cti_remove_assoc_from_csdev(struct coresight_device *csdev)
> +{
> +	struct cti_drvdata *ctidrv;
> +	struct cti_trig_con *tc;
> +	struct cti_device *ctidev;
> +
> +	mutex_lock(&ect_mutex);
> +	if (csdev->ect_dev) {
> +		ctidrv = csdev_to_cti_drvdata(csdev->ect_dev);
> +		ctidev = &ctidrv->ctidev;
> +		list_for_each_entry(tc, &ctidev->trig_cons, node) {
> +			if (tc->con_dev == csdev->ect_dev) {
> +				tc->con_dev = NULL;
> +				break;
> +			}
> +		}
> +		csdev->ect_dev = NULL;
> +	}
> +	mutex_unlock(&ect_mutex);
> +}
> +EXPORT_SYMBOL_GPL(cti_remove_assoc_from_csdev);
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
> +			/* set tc->con_dev->ect_dev */
> +			coresight_set_assoc_ectdev_mutex(tc->con_dev,
> +							 drvdata->csdev);
> +	}
> +}
> +
> +static void cti_remove_conn_xrefs(struct cti_drvdata *drvdata)
> +{
> +	struct cti_trig_con *tc;
> +	struct cti_device *ctidev = &drvdata->ctidev;
> +
> +	list_for_each_entry(tc, &ctidev->trig_cons, node) {
> +		if (tc->con_dev) {
> +			coresight_set_assoc_ectdev_mutex(tc->con_dev,
> +							 NULL);
> +		}
> +	}
> +}
> +
>  /** cti ect operations **/
>  int cti_enable(struct coresight_device *csdev)
>  {
> @@ -474,6 +600,7 @@ static void cti_device_release(struct device *dev)
>  	struct cti_drvdata *ect_item, *ect_tmp;
>  
>  	mutex_lock(&ect_mutex);
> +	cti_remove_conn_xrefs(drvdata);
>  
>  	/* remove from the list */
>  	list_for_each_entry_safe(ect_item, ect_tmp, &ect_net, node) {
> @@ -565,6 +692,8 @@ static int cti_probe(struct amba_device *adev, const struct amba_id *id)
>  	/* add to list of CTI devices */
>  	mutex_lock(&ect_mutex);
>  	list_add(&drvdata->node, &ect_net);
> +	/* set any cross references */
> +	cti_update_conn_xrefs(drvdata);
>  	mutex_unlock(&ect_mutex);
>  
>  	/* set up release chain */
> diff --git a/drivers/hwtracing/coresight/coresight-cti.h b/drivers/hwtracing/coresight/coresight-cti.h
> index 469a06a1bb78..578d7e9ac67e 100644
> --- a/drivers/hwtracing/coresight/coresight-cti.h
> +++ b/drivers/hwtracing/coresight/coresight-cti.h
> @@ -216,6 +216,7 @@ int cti_channel_setop(struct device *dev, enum cti_chan_set_op op,
>  		      u32 channel_idx);
>  struct coresight_platform_data *
>  coresight_cti_get_platform_data(struct device *dev);
> +const char *cti_plat_get_node_name(struct fwnode_handle *fwnode);
>  
>  /* cti powered and enabled */
>  static inline bool cti_active(struct cti_config *cfg)
> diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
> index 357ffef7b825..890f9a5c97c6 100644
> --- a/drivers/hwtracing/coresight/coresight-priv.h
> +++ b/drivers/hwtracing/coresight/coresight-priv.h
> @@ -162,6 +162,16 @@ static inline int etm_readl_cp14(u32 off, unsigned int *val) { return 0; }
>  static inline int etm_writel_cp14(u32 off, u32 val) { return 0; }
>  #endif
>  
> +#ifdef CONFIG_CORESIGHT_CTI
> +extern void cti_add_assoc_to_csdev(struct coresight_device *csdev);
> +extern void cti_remove_assoc_from_csdev(struct coresight_device *csdev);
> +
> +#else
> +static inline void cti_add_assoc_to_csdev(struct coresight_device *csdev) {}
> +static inline void
> +cti_remove_assoc_from_csdev(struct coresight_device *csdev) {}
> +#endif
> +
>  /*
>   * Macros and inline functions to handle CoreSight UCI data and driver
>   * private data in AMBA ID table entries, and extract data values.
> @@ -204,5 +214,7 @@ static inline void *coresight_get_uci_data(const struct amba_id *id)
>  void coresight_release_platform_data(struct coresight_platform_data *pdata);
>  struct coresight_device *
>  coresight_find_csdev_by_fwnode(struct fwnode_handle *r_fwnode);
> +void coresight_set_assoc_ectdev_mutex(struct coresight_device *csdev,
> +				      struct coresight_device *ect_csdev);
>  
>  #endif
> diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
> index 39a5d9f7a395..c71553c09f8e 100644
> --- a/drivers/hwtracing/coresight/coresight.c
> +++ b/drivers/hwtracing/coresight/coresight.c
> @@ -216,6 +216,44 @@ void coresight_disclaim_device(void __iomem *base)
>  	CS_LOCK(base);
>  }
>  
> +/* enable or disable an associated CTI device of the supplied CS device */
> +static int
> +coresight_control_assoc_ectdev(struct coresight_device *csdev, bool enable)
> +{
> +	int ect_ret = 0;
> +	struct coresight_device *ect_csdev = csdev->ect_dev;
> +
> +	if (!ect_csdev)
> +		return 0;
> +
> +	if (enable) {
> +		if (ect_ops(ect_csdev)->enable)
> +			ect_ret = ect_ops(ect_csdev)->enable(ect_csdev);
> +	} else {
> +		if (ect_ops(ect_csdev)->disable)
> +			ect_ret = ect_ops(ect_csdev)->disable(ect_csdev);
> +	}
> +
> +	/* output warning if ECT enable is preventing trace operation */
> +	if (ect_ret)
> +		dev_info(&csdev->dev, "Associated ECT device (%s) %s failed\n",
> +			 dev_name(&ect_csdev->dev),
> +			 enable ? "enable" : "disable");
> +	return ect_ret;
> +}
> +
> +/*
> + * Set the associated ect / cti device while holding the coresight_mutex
> + * to avoid a race with coresight_enable that may try to use this value.
> + */
> +void coresight_set_assoc_ectdev_mutex(struct coresight_device *csdev,
> +				      struct coresight_device *ect_csdev)
> +{
> +	mutex_lock(&coresight_mutex);
> +	csdev->ect_dev = ect_csdev;
> +	mutex_unlock(&coresight_mutex);
> +}
> +
>  static int coresight_enable_sink(struct coresight_device *csdev,
>  				 u32 mode, void *data)
>  {
> @@ -228,9 +266,14 @@ static int coresight_enable_sink(struct coresight_device *csdev,
>  	if (!sink_ops(csdev)->enable)
>  		return -EINVAL;
>  
> -	ret = sink_ops(csdev)->enable(csdev, mode, data);
> +	ret = coresight_control_assoc_ectdev(csdev, true);
>  	if (ret)
>  		return ret;
> +	ret = sink_ops(csdev)->enable(csdev, mode, data);
> +	if (ret) {
> +		coresight_control_assoc_ectdev(csdev, false);
> +		return ret;
> +	}
>  	csdev->enable = true;
>  
>  	return 0;
> @@ -246,6 +289,7 @@ static void coresight_disable_sink(struct coresight_device *csdev)
>  	ret = sink_ops(csdev)->disable(csdev);
>  	if (ret)
>  		return;
> +	coresight_control_assoc_ectdev(csdev, false);
>  	csdev->enable = false;
>  }
>  
> @@ -269,8 +313,15 @@ static int coresight_enable_link(struct coresight_device *csdev,
>  	if (link_subtype == CORESIGHT_DEV_SUBTYPE_LINK_SPLIT && outport < 0)
>  		return outport;
>  
> -	if (link_ops(csdev)->enable)
> -		ret = link_ops(csdev)->enable(csdev, inport, outport);
> +	if (link_ops(csdev)->enable) {
> +		ret = coresight_control_assoc_ectdev(csdev, true);
> +		if (!ret) {
> +			ret = link_ops(csdev)->enable(csdev, inport, outport);
> +			if (ret)
> +				coresight_control_assoc_ectdev(csdev, false);
> +		}
> +	}
> +
>  	if (!ret)
>  		csdev->enable = true;
>  
> @@ -300,8 +351,10 @@ static void coresight_disable_link(struct coresight_device *csdev,
>  		nr_conns = 1;
>  	}
>  
> -	if (link_ops(csdev)->disable)
> +	if (link_ops(csdev)->disable) {
>  		link_ops(csdev)->disable(csdev, inport, outport);
> +		coresight_control_assoc_ectdev(csdev, false);
> +	}
>  
>  	for (i = 0; i < nr_conns; i++)
>  		if (atomic_read(&csdev->refcnt[i]) != 0)
> @@ -322,9 +375,14 @@ static int coresight_enable_source(struct coresight_device *csdev, u32 mode)
>  
>  	if (!csdev->enable) {
>  		if (source_ops(csdev)->enable) {
> -			ret = source_ops(csdev)->enable(csdev, NULL, mode);
> +			ret = coresight_control_assoc_ectdev(csdev, true);
>  			if (ret)
>  				return ret;
> +			ret = source_ops(csdev)->enable(csdev, NULL, mode);
> +			if (ret) {
> +				coresight_control_assoc_ectdev(csdev, false);
> +				return ret;
> +			};
>  		}
>  		csdev->enable = true;
>  	}
> @@ -347,6 +405,7 @@ static bool coresight_disable_source(struct coresight_device *csdev)
>  	if (atomic_dec_return(csdev->refcnt) == 0) {
>  		if (source_ops(csdev)->disable)
>  			source_ops(csdev)->disable(csdev, NULL);
> +		coresight_control_assoc_ectdev(csdev, false);
>  		csdev->enable = false;
>  	}
>  	return !csdev->enable;
> @@ -964,6 +1023,7 @@ static void coresight_device_release(struct device *dev)
>  {
>  	struct coresight_device *csdev = to_coresight_device(dev);
>  
> +	cti_remove_assoc_from_csdev(csdev);
>  	fwnode_handle_put(csdev->dev.fwnode);
>  	kfree(csdev->refcnt);
>  	kfree(csdev);
> @@ -1246,6 +1306,7 @@ struct coresight_device *coresight_register(struct coresight_desc *desc)
>  
>  	coresight_fixup_device_conns(csdev);
>  	coresight_fixup_orphan_conns(csdev);
> +	cti_add_assoc_to_csdev(csdev);
>  
>  	mutex_unlock(&coresight_mutex);
>  
> diff --git a/include/linux/coresight.h b/include/linux/coresight.h
> index b3e582d96a34..193cc9dbf448 100644
> --- a/include/linux/coresight.h
> +++ b/include/linux/coresight.h
> @@ -163,6 +163,8 @@ struct coresight_connection {
>   *		activated but not yet enabled.  Enabling for a _sink_
>   *		appens when a source has been selected for that it.
>   * @ea:		Device attribute for sink representation under PMU directory.
> + * @ect_dev:	Associated cross trigger device. Not part of the trace data
> + *		path or connections.
>   */
>  struct coresight_device {
>  	struct coresight_platform_data *pdata;
> @@ -176,6 +178,8 @@ struct coresight_device {
>  	/* sink specific fields */
>  	bool activated;	/* true only if a sink is part of a path */
>  	struct dev_ext_attribute *ea;
> +	/* cross trigger handling */
> +	struct coresight_device *ect_dev;
>  };
>  
>  /*
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
