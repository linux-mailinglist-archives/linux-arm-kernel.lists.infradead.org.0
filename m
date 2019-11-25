Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 055031095CA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 23:48:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XvDhuzXX9itAk/A/yPR2moV5w9b2zDAUzrGVv4EWR2o=; b=nDMNmPlBC1P12E
	Tu9FlySE/5fbJUVmlEGafp2evDeGYIcB1zFIMRuOAxFSVWm++mClJ8ADpJRx+xyuI+8G00Gbd5m8S
	dD8YidWqNd2zKyFz5ndsZhB+GwbONY7n0n53992V2tkHE2LD1kcxT6K6VjzXnJPhkYxZlC3n87F+e
	2N4kJAXpzsTfMesRjzMQy22fCH9rgvTWZTtlVKyIJv5+GhlIE3ljYyJOGeti8h3AcmNrelxQDpFko
	hXgpJGMJQHror2Kp1u8GqEI8vnKZoUz6YA8AS0VkjziFCKqbp1S3YXSVwYGWysoRLqiHCYLUfs5Ef
	W9WO742IA/pJyIcwNh0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZN9s-0002XW-29; Mon, 25 Nov 2019 22:48:40 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZN6j-0006MB-US
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 22:45:28 +0000
Received: by mail-pf1-x443.google.com with SMTP id p26so8098595pfq.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 Nov 2019 14:45:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=06Swy6F+i2INBlfBU+9qsAi5hjUu04DxjBnV5aXIZMQ=;
 b=gFzejCDEpuBeTCuypR15BzMk0wDWlY6i0QKJ6KsK46m6XvshsUV9rSk+urXSVg7oGa
 5qLUusod3ceUfTC4T0y2ugMHZ0m4g5K+ePpF2AsJhMwPUkafdk4O0FViioTnrZpwad3F
 wJSFQ4Z4ZnVljmuDigv6BZqb23ALnJwmtITLfHu5jUZoHGhZSUbIhwVaTseBklnpCk79
 vdROizcZB6RIG7e/7WK7L7a6UP7kkqX4lm7o5npcy0rVyGQLtNqAWuSI3WG6XIHI0ezX
 pUci48TuRnW8f0nLu43fdRTWZaFjvjGcYF13IVIfRPWTL+A17jtJ6rGj8B+Tr7MB0U/E
 Gh+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=06Swy6F+i2INBlfBU+9qsAi5hjUu04DxjBnV5aXIZMQ=;
 b=Q3W+lcEXdX3bPd7hExjRVzdAqkVqn6YEYF1P7oIYwN4hi146HiVbkYwzEplxxj2vbx
 nTzmXs5+SdR8LAz3UF4OhG/bEAcDdzvmcZ90xZPeXg8wt5A1kDIy+D0H7NR2QgmUyQv+
 MlBgRtJ3tXD56/K1oKCewj96xMJ9sFlb97vBWICFuXf6x6Xc+wBPObHvVu8Kw6He0eCv
 G+StADuVrIW1ao0ZMOIaXUwQeIuDpILcdoN1k8OwWXhR69o9+hkMk865Aq23WBZfxmRk
 fYrZKOF3AcKBmLoswEQzCc9qGOKMkvho6RGyJnMpM4l6mzncu3wHt9cm+ggvV3JN8Mje
 n8fQ==
X-Gm-Message-State: APjAAAVd8lelaMZK7eBhA7CuJ0hBPNa4NNnYMi2tcrsL+aA/mioZN8a2
 nsmuoYEt4xV+mg8PmHtsWKsYjw==
X-Google-Smtp-Source: APXvYqyopVkdpvjKA24JLFffWUHnKtI/WwoWPYJKFQET5PKPQ8E2f+PVADkfratG3ntyf5pNmwnVaA==
X-Received: by 2002:a65:6906:: with SMTP id s6mr18616131pgq.26.1574721924415; 
 Mon, 25 Nov 2019 14:45:24 -0800 (PST)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id h3sm9811164pgr.81.2019.11.25.14.45.23
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 25 Nov 2019 14:45:23 -0800 (PST)
Date: Mon, 25 Nov 2019 15:45:21 -0700
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH v5 08/14] coresight: cti: Enable CTI associated with
 devices.
Message-ID: <20191125224521.GC18542@xps15>
References: <20191119231912.12768-1-mike.leach@linaro.org>
 <20191119231912.12768-9-mike.leach@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191119231912.12768-9-mike.leach@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_144526_225036_BE21EE25 
X-CRM114-Status: GOOD (  38.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, coresight@lists.linaro.org,
 suzuki.poulose@arm.com, linux-arm-kernel@lists.infradead.org,
 linux-doc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 19, 2019 at 11:19:06PM +0000, Mike Leach wrote:
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
>  drivers/hwtracing/coresight/coresight-cti.c   | 87 +++++++++++++++++++
>  .../hwtracing/coresight/coresight-platform.c  | 23 +++++
>  drivers/hwtracing/coresight/coresight-priv.h  |  6 ++
>  drivers/hwtracing/coresight/coresight.c       | 58 +++++++++++--
>  include/linux/coresight.h                     |  5 ++
>  5 files changed, 173 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-cti.c b/drivers/hwtracing/coresight/coresight-cti.c
> index 369488dd7b8e..cf116463149a 100644
> --- a/drivers/hwtracing/coresight/coresight-cti.c
> +++ b/drivers/hwtracing/coresight/coresight-cti.c
> @@ -440,6 +440,90 @@ int cti_channel_setop(struct device *dev, enum cti_chan_set_op op,
>  	return err;
>  }
>  
> +/*
> + * Look for a matching connection device name in the list of
> + * connections. If found then swap in the csdev name and return
> + * found.
> + */
> +static bool
> +cti_match_con_name(struct cti_device *ctidev, const char *node_name,
> +		   const char *csdev_name)
> +{
> +	struct cti_trig_con *trig_con;
> +
> +	list_for_each_entry(trig_con, &ctidev->trig_cons, node) {
> +		if (trig_con->con_dev_name) {
> +			if (!strcmp(node_name, trig_con->con_dev_name)) {
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
> +
> +/*
> + * Search the cti list to add an associated CTI into the supplied CS device
> + * This will set the association if CTI declared before the CS device
> + */
> +void cti_add_assoc_to_csdev(struct coresight_device *csdev)
> +{
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
> +}
> +
>  /** cti ect operations **/
>  int cti_enable(struct coresight_device *csdev)
>  {
> @@ -574,6 +658,9 @@ static int cti_probe(struct amba_device *adev, const struct amba_id *id)
>  	drvdata->csdev_release = drvdata->csdev->dev.release;
>  	drvdata->csdev->dev.release = cti_device_release;
>  
> +	/* set any cross references */
> +	cti_update_conn_xrefs(drvdata);
> +
>  	/* all done - dec pm refcount */
>  	pm_runtime_put(&adev->dev);
>  	dev_info(&drvdata->csdev->dev, "CTI initialized\n");
> diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
> index 3c5bee429105..6721cb1af5fe 100644
> --- a/drivers/hwtracing/coresight/coresight-platform.c
> +++ b/drivers/hwtracing/coresight/coresight-platform.c
> @@ -293,6 +293,12 @@ static int of_get_coresight_platform_data(struct device *dev,
>  
>  	return 0;
>  }
> +
> +static inline const char *of_coresight_get_node_name(struct device *dev)
> +{
> +	return dev->of_node->full_name;
> +}
> +
>  #else
>  static inline int
>  of_get_coresight_platform_data(struct device *dev,
> @@ -305,6 +311,11 @@ static inline int of_coresight_get_cpu(struct device *dev)
>  {
>  	return -ENODEV;
>  }
> +
> +static inline const char *of_coresight_get_node_name(struct device *dev)
> +{
> +	return NULL;
> +}
>  #endif
>  
>  #ifdef CONFIG_ACPI
> @@ -766,6 +777,18 @@ static inline int acpi_coresight_get_cpu(struct device *dev)
>  }
>  #endif
>  
> +const char *coresight_get_fwnode_name(struct device *dev)
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
> +
>  int coresight_get_cpu(struct device *dev)
>  {
>  	if (is_of_node(dev->fwnode))
> diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
> index aba6b789c969..484e5ec593bb 100644
> --- a/drivers/hwtracing/coresight/coresight-priv.h
> +++ b/drivers/hwtracing/coresight/coresight-priv.h
> @@ -162,6 +162,12 @@ static inline int etm_readl_cp14(u32 off, unsigned int *val) { return 0; }
>  static inline int etm_writel_cp14(u32 off, u32 val) { return 0; }
>  #endif
>  
> +#ifdef CONFIG_CORESIGHT_CTI
> +extern void cti_add_assoc_to_csdev(struct coresight_device *csdev);
> +#else
> +static inline void cti_add_assoc_to_csdev(struct coresight_device *csdev) {}
> +#endif
> +
>  /*
>   * Macros and inline functions to handle CoreSight UCI data and driver
>   * private data in AMBA ID table entries, and extract data values.
> diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
> index 1a5fdf2710ff..7657be009246 100644
> --- a/drivers/hwtracing/coresight/coresight.c
> +++ b/drivers/hwtracing/coresight/coresight.c
> @@ -216,6 +216,31 @@ void coresight_disclaim_device(void __iomem *base)
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
> +		 dev_name(&ect_csdev->dev), enable ? "enable" : "disable");

Indentation problem - please replace with:

                dev_info(&csdev->dev, "Associated ECT device (%s) %s failed\n",
                         dev_name(&ect_csdev->dev),
                         enable ? "enable" : "disable");

> +	return ect_ret;
> +}
> +
>  static int coresight_enable_sink(struct coresight_device *csdev,
>  				 u32 mode, void *data)
>  {
> @@ -228,11 +253,15 @@ static int coresight_enable_sink(struct coresight_device *csdev,
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
> -

Unneeded modification.

With the above changes:
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

>  	return 0;
>  }
>  
> @@ -246,6 +275,7 @@ static void coresight_disable_sink(struct coresight_device *csdev)
>  	ret = sink_ops(csdev)->disable(csdev);
>  	if (ret)
>  		return;
> +	coresight_control_assoc_ectdev(csdev, false);
>  	csdev->enable = false;
>  }
>  
> @@ -269,8 +299,15 @@ static int coresight_enable_link(struct coresight_device *csdev,
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
> @@ -300,8 +337,10 @@ static void coresight_disable_link(struct coresight_device *csdev,
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
> @@ -322,9 +361,14 @@ static int coresight_enable_source(struct coresight_device *csdev, u32 mode)
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
> @@ -347,6 +391,7 @@ static bool coresight_disable_source(struct coresight_device *csdev)
>  	if (atomic_dec_return(csdev->refcnt) == 0) {
>  		if (source_ops(csdev)->disable)
>  			source_ops(csdev)->disable(csdev, NULL);
> +		coresight_control_assoc_ectdev(csdev, false);
>  		csdev->enable = false;
>  	}
>  	return !csdev->enable;
> @@ -1252,6 +1297,7 @@ struct coresight_device *coresight_register(struct coresight_desc *desc)
>  
>  	coresight_fixup_device_conns(csdev);
>  	coresight_fixup_orphan_conns(csdev);
> +	cti_add_assoc_to_csdev(csdev);
>  
>  	mutex_unlock(&coresight_mutex);
>  
> diff --git a/include/linux/coresight.h b/include/linux/coresight.h
> index b3e582d96a34..b5dc9baf0c58 100644
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
> @@ -341,5 +345,6 @@ static inline bool coresight_loses_context_with_cpu(struct device *dev)
>  extern int coresight_get_cpu(struct device *dev);
>  
>  struct coresight_platform_data *coresight_get_platform_data(struct device *dev);
> +extern const char *coresight_get_fwnode_name(struct device *dev);
>  
>  #endif
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
