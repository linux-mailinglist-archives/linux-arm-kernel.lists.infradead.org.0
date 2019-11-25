Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C1881093D8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 20:00:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s9NtldA/xP7iczeD44P3zrkbmi29KSggvzf96fALs/M=; b=uEGEABOjrMnpSY
	izyvG1Wxp125rGrUs0gN2zDoK7PMa635Syh9dW8EYdyg+/5qyStkrgmIYLklwVpO7bKN+cuEi08OP
	6tyEWYyQ+/0oljdIuOQawtaUdLQVdUX/Upw0So7zuy6bfJwCIQtl3AAMz0nklGUBmha+fqnlYuTDy
	+u0Sr6QsaQtDWlaNZCwzBH4HjLA6CYhjhRErQFcvlJnBEz8ZJK+pCUlMbbOC/duFPe6qDQUdSFipO
	gR7lyzYgfC9IitN3qu0yIaY+06jrpLZGCxz6a3PoT5fVkHezAa/po7UMlM0YJzaPM7ODOs7lqjOiq
	280Db1qCK9bodlTC6J1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZJb4-000268-Q9; Mon, 25 Nov 2019 19:00:30 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZJav-0001yf-7m
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 19:00:23 +0000
Received: by mail-pf1-x441.google.com with SMTP id x28so7816293pfo.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 Nov 2019 11:00:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=KPssgA4S48btz8HJaAnSGqk/oXymRdeYwGwwByEALcI=;
 b=DpZIj1U6FyHS6LgRTukXeBPkA26CE0OplsEXLcsF/iaHSak56SrceEfK/LW2147v3n
 F4AupVfbrD641I+mGcnll+x3XIIF32xv5FUtiAxuR++Oc+BIcbjZ6RI80VKGHFNNRocp
 iI/NLk4RtDIHNFEMM3KztRpRhV39jZzMwuFhtgh8p/Oom23WrmKkttoqkvHavMjNfMEC
 1yY/kacVk63v/usCXddkkEyBXl1KSa4ldheGMEmThrTduCIWQ/bC5sdmKm0oR5qan9Y3
 UbyilHrH+iaY4TkwgNot8U08xPLwhPl30uhUxVbHFxq+L9ZArB4xe1I/U7cu+laKVAZb
 4jcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=KPssgA4S48btz8HJaAnSGqk/oXymRdeYwGwwByEALcI=;
 b=iJypllaN+TotR1gXwux39XnqC+6wEbi5gwH0s8B9Vqykjru6u6PoxHZ22q6g1OfjRt
 KZUYwBRwOdoOJROfJLGTbw4QVX1+vPsuKL6+ibBelt4o13fFdY55N6biAovelSpSUloo
 KHNdF1+Dw5N6TJLbtoQNQcMMuZKUKPmmFcPwLZgjlgpMyFj4HxkIUBNTYSL7SqGLOEJ0
 OgAwlRB6HWTGeZ4Hz6E6G6JT3pjy7MsaEbBY9rJjPBbAi9ptzEoLnJeOc6wubWA1SPoG
 D8OIrciOCYvp/Lt99LKSDwN/zjuTzztzD/ttJJ5Ux8R7bxfxwIMEeEqF+dmzv+dwfvBe
 fcOA==
X-Gm-Message-State: APjAAAXQ+XnSA/4TWhGvn8oUB/56eOAhCni9/ACwJrrt09VmNAAygAm5
 DApkjteZ72GxzbeMr1Heb8JmZg==
X-Google-Smtp-Source: APXvYqwQPpthhhwEhT5lq8YmGg8qHNOJJBTPy5O+y95LO6jnNMSHW6kOPYH3XUdMgZq8SjBJavTIHg==
X-Received: by 2002:a63:ea17:: with SMTP id c23mr20153755pgi.85.1574708418042; 
 Mon, 25 Nov 2019 11:00:18 -0800 (PST)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id o23sm9609125pgj.90.2019.11.25.11.00.16
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 25 Nov 2019 11:00:17 -0800 (PST)
Date: Mon, 25 Nov 2019 12:00:15 -0700
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH v5 06/14] coresight: cti: Add device tree support for v8
 arch CTI
Message-ID: <20191125190015.GA18542@xps15>
References: <20191119231912.12768-1-mike.leach@linaro.org>
 <20191119231912.12768-7-mike.leach@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191119231912.12768-7-mike.leach@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_110021_312426_4F97FCD9 
X-CRM114-Status: GOOD (  31.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

On Tue, Nov 19, 2019 at 11:19:04PM +0000, Mike Leach wrote:
> The v8 architecture defines the relationship between a PE, its optional ETM
> and a CTI. Unlike non-architectural CTIs which are implementation defined,
> this has a fixed set of connections which can therefore be represented as a
> simple tag in the device tree.
> 
> This patch defines the tags needed to create an entry for this PE/ETM/CTI
> relationship, and provides functionality to implement the connection model
> in the CTI driver.
> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> ---
>  .../coresight/coresight-cti-platform.c        | 205 ++++++++++++++++++
>  1 file changed, 205 insertions(+)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-cti-platform.c b/drivers/hwtracing/coresight/coresight-cti-platform.c
> index 665be86c585d..790dd30b85f5 100644
> --- a/drivers/hwtracing/coresight/coresight-cti-platform.c
> +++ b/drivers/hwtracing/coresight/coresight-cti-platform.c
> @@ -3,10 +3,208 @@
>   * Copyright (c) 2019, The Linaro Limited. All rights reserved.
>   */
>  
> +#include <dt-bindings/arm/coresight-cti-dt.h>
>  #include <linux/of.h>
>  
>  #include "coresight-cti.h"
>  
> +/* Number of CTI signals in the v8 architecturally defined connection */
> +#define NR_V8PE_IN_SIGS		2
> +#define NR_V8PE_OUT_SIGS	3
> +#define NR_V8ETM_INOUT_SIGS	4
> +
> +/* CTI device tree connection property keywords */
> +#define CTI_DT_V8ARCH		"arm,cti-v8-arch"
> +#define CTI_DT_CSDEV_ASSOC	"arm,cs-dev-assoc"
> +
> +/*
> + * Find a registered coresight device from a device fwnode.
> + * The node info is associated with the AMBA parent, but the
> + * csdev keeps a copy so iterate round the coresight bus to
> + * find the device.
> + */
> +static struct coresight_device *
> +cti_get_assoc_csdev_by_fwnode(struct fwnode_handle *r_fwnode)
> +{
> +	struct device *dev;
> +	struct coresight_device *csdev = NULL;
> +
> +	dev = bus_find_device_by_fwnode(&coresight_bustype, r_fwnode);
> +	if (dev) {
> +		csdev = to_coresight_device(dev);
> +		put_device(dev);
> +	}
> +	return csdev;
> +}
> +
> +#ifdef CONFIG_OF
> +/*
> + * CTI can be bound to a CPU, or a system device.
> + * CPU can be declared at the device top level or in a connections node
> + * so need to check relative to node not device.
> + */
> +static int of_cti_get_cpu_at_node(const struct device_node *node)
> +{
> +	int cpu;
> +	struct device_node *dn;
> +
> +	if (node == NULL)
> +		return -1;
> +
> +	dn = of_parse_phandle(node, "cpu", 0);
> +	/* CTI affinity defaults to no cpu */
> +	if (!dn)
> +		return -1;
> +	cpu = of_cpu_node_to_id(dn);
> +	of_node_put(dn);
> +
> +	/* No Affinity  if no cpu nodes are found */
> +	return (cpu < 0) ? -1 : cpu;
> +}
> +
> +static const char *of_cti_get_node_name(const struct device_node *node)
> +{
> +	if (node)
> +		return node->full_name;
> +	return "unknown";
> +}
> +#else
> +static int of_cti_get_cpu_at_node(const struct device_node *node)
> +{
> +	return -1;
> +}
> +
> +static const char *of_cti_get_node_name(const struct device_node *node)
> +{
> +	return "unknown";
> +}
> +#endif
> +
> +static int cti_plat_get_cpu_at_node(struct fwnode_handle *fwnode)
> +{
> +	if (is_of_node(fwnode))
> +		return of_cti_get_cpu_at_node(to_of_node(fwnode));
> +	return -1;
> +}
> +
> +static const char *cti_plat_get_node_name(struct fwnode_handle *fwnode)
> +{
> +	if (is_of_node(fwnode))
> +		return of_cti_get_node_name(to_of_node(fwnode));
> +	return "unknown";
> +}
> +
> +static int cti_plat_create_v8_etm_connection(struct device *dev,
> +					     struct cti_drvdata *drvdata)
> +{
> +	int ret = -ENOMEM, i;
> +	struct fwnode_handle *root_fwnode, *cs_fwnode;
> +	const char *assoc_name = NULL;
> +	struct coresight_device *csdev;
> +	struct cti_trig_con *tc = NULL;
> +
> +	root_fwnode = dev_fwnode(dev);
> +	if (IS_ERR_OR_NULL(root_fwnode))
> +		return -EINVAL;
> +
> +	/* Can optionally have an etm node - return if not  */
> +	cs_fwnode = fwnode_find_reference(root_fwnode, CTI_DT_CSDEV_ASSOC, 0);
> +	if (IS_ERR_OR_NULL(cs_fwnode))
> +		return 0;
> +
> +	/* allocate memory */
> +	tc = cti_allocate_trig_con(dev, NR_V8ETM_INOUT_SIGS,
> +				   NR_V8ETM_INOUT_SIGS);
> +	if (!tc)
> +		goto create_v8_etm_out;
> +
> +	/* build connection data */
> +	tc->con_in->used_mask = 0xF0; /* sigs <4,5,6,7> */
> +	tc->con_out->used_mask = 0xF0; /* sigs <4,5,6,7> */
> +
> +	/*
> +	 * The EXTOUT type signals from the ETM are connected to a set of input
> +	 * triggers on the CTI, the EXTIN being connected to output triggers.
> +	 */
> +	for (i = 0; i < NR_V8ETM_INOUT_SIGS; i++) {
> +		tc->con_in->sig_types[i] = ETM_EXTOUT;
> +		tc->con_out->sig_types[i] = ETM_EXTIN;
> +	}
> +
> +	/*
> +	 * We look to see if the ETM coresight device associated with this
> +	 * handle has been registered with the system - i.e. probed before
> +	 * this CTI. If so csdev will be non NULL and we can use the device
> +	 * name and pass the csdev to the connection entry function where
> +	 * the association will be recorded.
> +	 * If not, then simply record the name in the connection data, the
> +	 * probing of the ETM will call into the CTI driver API to update the
> +	 * association then.
> +	 */
> +	csdev = cti_get_assoc_csdev_by_fwnode(cs_fwnode);
> +	if (csdev)
> +		assoc_name = dev_name(&csdev->dev);
> +	else
> +		assoc_name = cti_plat_get_node_name(cs_fwnode);
> +	ret = cti_add_connection_entry(dev, drvdata, tc, csdev, assoc_name);
> +
> +create_v8_etm_out:
> +	fwnode_handle_put(cs_fwnode);
> +	return ret;
> +}
> +
> +/*
> + * Create an architecturally defined v8 connection
> + * must have a cpu, can have an ETM.
> + */
> +static int cti_plat_create_v8_connections(struct device *dev,
> +					  struct cti_drvdata *drvdata)
> +{
> +	struct cti_device *cti_dev = &drvdata->ctidev;
> +	struct cti_trig_con *tc = NULL;
> +	int cpuid = 0;
> +	char cpu_name_str[16];
> +	int ret = -ENOMEM;
> +
> +	/* Must have a cpu node */
> +	cpuid = cti_plat_get_cpu_at_node(dev_fwnode(dev));
> +	if (cpuid < 0) {
> +		dev_warn(dev, "CTI v8 DT binding no cpu\n");
> +		return -EINVAL;
> +	}
> +	cti_dev->cpu = cpuid;
> +
> +	/* Allocate the v8 cpu connection memory */
> +	tc = cti_allocate_trig_con(dev, NR_V8PE_IN_SIGS, NR_V8PE_OUT_SIGS);
> +	if (!tc)
> +		goto of_create_v8_out;
> +
> +	/* Set the v8 PE CTI connection data */
> +	tc->con_in->used_mask = 0x3; /* sigs <0 1> */
> +	tc->con_in->sig_types[0] = PE_DBGTRIGGER;
> +	tc->con_in->sig_types[1] = PE_PMUIRQ;
> +	tc->con_out->used_mask = 0x7; /* sigs <0 1 2 > */
> +	tc->con_out->sig_types[0] = PE_EDBGREQ;
> +	tc->con_out->sig_types[1] = PE_DBGRESTART;
> +	tc->con_out->sig_types[2] = PE_CTIIRQ;
> +	scnprintf(cpu_name_str, sizeof(cpu_name_str), "cpu%d", cpuid);
> +
> +	ret = cti_add_connection_entry(dev, drvdata, tc, NULL, cpu_name_str);
> +	if (ret)
> +		goto of_create_v8_out;
> +
> +	/* Create the v8 ETM associated connection */
> +	ret = cti_plat_create_v8_etm_connection(dev, drvdata);
> +	if (ret)
> +		goto of_create_v8_out;
> +
> +	/* filter pe_edbgreq - PE trigout sig <0> */
> +	drvdata->config.trig_out_filter |= 0x1;
> +
> +of_create_v8_out:
> +	return ret;
> +}
> +
>  /* get the hardware configuration & connection data. */
>  int cti_plat_get_hw_data(struct device *dev,
>  			 struct cti_drvdata *drvdata)
> @@ -14,6 +212,13 @@ int cti_plat_get_hw_data(struct device *dev,
>  	int rc = 0;
>  	struct cti_device *cti_dev = &drvdata->ctidev;
>  
> +	/* check for a v8 architectural CTI device */
> +	if (device_property_read_bool(dev, CTI_DT_V8ARCH)) {
> +		rc = cti_plat_create_v8_connections(dev, drvdata);
> +		if (rc)
> +			return rc;
> +	}
> +
>  	/* if no connections, just add a single default based on max IN-OUT */
>  	if (cti_dev->nr_trig_con == 0)
>  		rc = cti_add_default_connection(dev, drvdata);

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
