Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EED54166B69
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 01:16:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GCYALErd6XoXr9OpVz95KA/na0tJ4V/dRYKgj2EMfQU=; b=vDVg6tjuvQLEcX0MllPodKDJ7
	TIeRFlc1AQ7FG4IajWfThs84vBivYis3gASjpKVYuqW6mRa3PLpyYI17CoxQyZJQbcvXs8/Ay58WT
	qTn/yqTGaG5totoMY6m/PIO/Ffb+B6p57Kohl0vDOZDj7Oc1QexrYsdRLaWmtBZNhefD6mFJ0s6SR
	/N9CVNZ4lwVq3TmwhEjk56WQa9JkN9pHNNeIoho6pR0mdLszUC0qvX1tSUQd30Mez82TiaOWNqZ8I
	zCJ6hQbeL+lqyeTBafer4ZixXcQoMlknjnwdKa384vwYIhRb8tRElpCFTvu/i2CLJKcSr9N6OkIZz
	kREa1qJaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4vzA-00013E-BN; Fri, 21 Feb 2020 00:16:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4vz2-00012Z-LK
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 00:15:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AC99531B;
 Thu, 20 Feb 2020 16:15:52 -0800 (PST)
Received: from [10.37.12.72] (unknown [10.37.12.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 27B4B3F6CF;
 Thu, 20 Feb 2020 16:15:49 -0800 (PST)
Subject: Re: [PATCH v9 08/15] coresight: cti: Enable CTI associated with
 devices.
To: mike.leach@linaro.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, coresight@lists.linaro.org,
 linux-doc@vger.kernel.org
References: <20200210213924.20037-1-mike.leach@linaro.org>
 <20200210213924.20037-9-mike.leach@linaro.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <04b739fd-7bb3-bd28-8013-918e7d4dfcb7@arm.com>
Date: Fri, 21 Feb 2020 00:20:17 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <20200210213924.20037-9-mike.leach@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_161556_789018_16CABFA4 
X-CRM114-Status: GOOD (  23.98  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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

Hi Mike

Sorry for the delay. one minor comment below.

On 02/10/2020 09:39 PM, Mike Leach wrote:
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
>   drivers/hwtracing/coresight/coresight-cti.c  | 129 +++++++++++++++++++
>   drivers/hwtracing/coresight/coresight-cti.h  |   1 +
>   drivers/hwtracing/coresight/coresight-priv.h |  12 ++
>   drivers/hwtracing/coresight/coresight.c      |  71 +++++++++-
>   include/linux/coresight.h                    |   4 +
>   5 files changed, 212 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-cti.c b/drivers/hwtracing/coresight/coresight-cti.c
> index 77c2af247917..c4494923d030 100644
> --- a/drivers/hwtracing/coresight/coresight-cti.c
> +++ b/drivers/hwtracing/coresight/coresight-cti.c
> @@ -4,6 +4,7 @@
>    * Author: Mike Leach <mike.leach@linaro.org>
>    */
>   
> +#include <linux/property.h>
>   #include "coresight-cti.h"
>   
>   /**
> @@ -440,6 +441,131 @@ int cti_channel_setop(struct device *dev, enum cti_chan_set_op op,
>   	return err;
>   }
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

In the extreme rare case of an allocation failure, we may want to
check if the allocation was successful or not, rather than silently
ignoring it. With that fixed,

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
