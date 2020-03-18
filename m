Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 451C3189CDA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 14:23:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mOyjz2Ucg2GdeSOJBzbBml9OiQKoB2DOiEdWG5+p4SQ=; b=pljoYwtn/dRDVc
	ktedRTlB3N04uO2zY1Oul7U1EMqDfG675EhUNyWinQJE9AL1T9eVPNYColXqp6NsJY9Xnmbz5g6eU
	U8KYiDCZR7BAdTUS7KnczF+ipIYvgffbup1ZVv4awbmpMj1Fa+jq7TVDj7VDCVFztMDlDx2g9/1h2
	86/FsOjO97B2PBkzGd+Q6A74S5qh60x+RHvJwwakswdElUPg3/XRAgbGH3USV/yW2Q/GPbgoGpSGz
	N/LKvG4o7CkmS8KtCqq1lW4h2lV6vdhVavIG0iPDSgP4cixVGpoMNOvon9WU9sTmySUXjz1W23VDY
	5/yjXqPmlRfzjVCqI0Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEYes-0003nW-OY; Wed, 18 Mar 2020 13:22:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEYeh-0003kc-OO
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 13:22:45 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 00DA32076F;
 Wed, 18 Mar 2020 13:22:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584537763;
 bh=CKEreA8CUxYmEbiSZgNzqX5KgmCpM63Ng+o18LXBl38=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JorCG4C+ZGySiVuSu/z2+zdsj8FFbdzJ/Mp1MEZsbo/dyOHhwA/+Mw/1buc1hJZkx
 lOo2bzLYuiL6RFah4WngRMZW5fEq0OyfOlc8GblgkDZG5603FFUj+eWm4DEUKSAsZi
 joOSh8U3p8fA7Jx9In9dBPuZhzY5YPFNM1LDPeWI=
Date: Wed, 18 Mar 2020 14:22:41 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Mike Leach <mike.leach@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH 01/13] coresight: cti: Initial CoreSight CTI Driver
Message-ID: <20200318132241.GB2789508@kroah.com>
References: <20200309161748.31975-1-mathieu.poirier@linaro.org>
 <20200309161748.31975-2-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200309161748.31975-2-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_062243_812040_B2619B82 
X-CRM114-Status: GOOD (  14.61  )
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

On Mon, Mar 09, 2020 at 10:17:36AM -0600, Mathieu Poirier wrote:
> From: Mike Leach <mike.leach@linaro.org>
> 
> This introduces a baseline CTI driver and associated configuration files.
> 
> Uses the platform agnostic naming standard for CoreSight devices, along
> with a generic platform probing method that currently supports device
> tree descriptions, but allows for the ACPI bindings to be added once these
> have been defined for the CTI devices.
> 
> Driver will probe for the device on the AMBA bus, and load the CTI driver
> on CoreSight ID match to CTI IDs in tables.
> 
> Initial sysfs support for enable / disable provided.
> 
> Default CTI interconnection data is generated based on hardware
> register signal counts, with no additional connection information.
> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>

You didn't cc: all of them to get review comments?  I've added it
above...

And signed-off-by implies reviewed-by.

> +/* basic attributes */
> +static ssize_t enable_show(struct device *dev,
> +			   struct device_attribute *attr,
> +			   char *buf)
> +{
> +	int enable_req;
> +	bool enabled, powered;
> +	struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);
> +	ssize_t size = 0;
> +
> +	enable_req = atomic_read(&drvdata->config.enable_req_count);
> +	spin_lock(&drvdata->spinlock);
> +	powered = drvdata->config.hw_powered;
> +	enabled = drvdata->config.hw_enabled;
> +	spin_unlock(&drvdata->spinlock);
> +
> +	if (powered) {
> +		size = scnprintf(buf, PAGE_SIZE, "cti %s; powered;\n",
> +				 enabled ? "enabled" : "disabled");
> +	} else {
> +		size = scnprintf(buf, PAGE_SIZE, "cti %s; unpowered;\n",
> +				 enable_req ? "enable req" : "disabled");

sysfs files should never need scnprintf() as you "know" a single value
will fit into a PAGE_SIZE.

And shouldn't this just be a single value, this looks like it is 2
values in one line, that then needs to be parsed, is that to be
expected?

Where is the documentation for this new sysfs file?

> +const struct attribute_group *coresight_cti_groups[] = {
> +	&coresight_cti_group,
> +	NULL,
> +};

ATTRIBUTE_GROUPS()?

> +static struct amba_driver cti_driver = {
> +	.drv = {
> +		.name	= "coresight-cti",
> +		.owner = THIS_MODULE,

Aren't amba drivers smart enough to set this properly on their own?
{sigh}

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
