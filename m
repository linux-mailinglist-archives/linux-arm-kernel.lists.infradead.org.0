Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B29C811BB18
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 19:09:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3kxXeSZh6XOY7/vfc2+EIkhn7M7PimSU2io3F7BT9iQ=; b=ig3XgipX6kd2RlMzmdCoQib279
	866Ud2wR+m40IEeb0ssDdiqpLthFYycFD0ibZ1bsooMwfYk9294ENASuKEW2P/DVNV0kiZGVOJYGm
	2TAwAdFbkgL5eLVP4yihye7aVfvPXz8xif3Bv8mGdMAQOyh3OTwFTKUh4m7fQI48rz3E61Ec7XUsK
	ibQE2B9EnPkY9idmaCBLzpNipVKc7CcHwQFoX0S6VvYJdjY6Z9Akit3L95E7ZKc/ZOXHIoraTxsly
	2zRI4bJUj11LRuNK5jpGtN5krzWEi/et5PcLohvt7P4/hqpPV/f0lxj/G0pK+JMDYiQjemWBlwN7v
	+zCqGH1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if6Qi-0004zQ-WA; Wed, 11 Dec 2019 18:09:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if6QZ-0004yR-R5
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 18:09:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7208C31B;
 Wed, 11 Dec 2019 10:09:35 -0800 (PST)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E72FF3F6CF;
 Wed, 11 Dec 2019 10:09:34 -0800 (PST)
Subject: Re: [PATCH 10/15] firmware: arm_scmi: Drop logging individual scmi
 protocol version
To: Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20191210145345.11616-1-sudeep.holla@arm.com>
 <20191210145345.11616-11-sudeep.holla@arm.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <a5116e8e-d667-a7d5-fbb3-7f8bd19573b8@arm.com>
Date: Wed, 11 Dec 2019 18:09:33 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191210145345.11616-11-sudeep.holla@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_100935_961266_C6F39325 
X-CRM114-Status: GOOD (  12.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/12/2019 14:53, Sudeep Holla wrote:
> SCMI firmware and individual protocol versions and other attributes are
> now exposed as device attributes through sysfs entries. These debug logs
> can be dropped as the same information is available through sysfs.
> 
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  drivers/firmware/arm_scmi/clock.c   | 3 ---
>  drivers/firmware/arm_scmi/perf.c    | 3 ---
>  drivers/firmware/arm_scmi/power.c   | 3 ---
>  drivers/firmware/arm_scmi/reset.c   | 3 ---
>  drivers/firmware/arm_scmi/sensors.c | 3 ---
>  5 files changed, 15 deletions(-)
> 

LGTM.

Reviewed-by: Cristian Marussi <cristian.marussi@arm.com>


Cristian


> diff --git a/drivers/firmware/arm_scmi/clock.c b/drivers/firmware/arm_scmi/clock.c
> index b68736ae7f88..ce8cbefb0aa6 100644
> --- a/drivers/firmware/arm_scmi/clock.c
> +++ b/drivers/firmware/arm_scmi/clock.c
> @@ -326,9 +326,6 @@ static int scmi_clock_protocol_init(struct scmi_device *dev)
> 
>  	scmi_version_get(handle, SCMI_PROTOCOL_CLOCK, &version);
> 
> -	dev_dbg(handle->dev, "Clock Version %d.%d\n",
> -		PROTOCOL_REV_MAJOR(version), PROTOCOL_REV_MINOR(version));
> -
>  	cinfo = devm_kzalloc(handle->dev, sizeof(*cinfo), GFP_KERNEL);
>  	if (!cinfo)
>  		return -ENOMEM;
> diff --git a/drivers/firmware/arm_scmi/perf.c b/drivers/firmware/arm_scmi/perf.c
> index 8a02dc453894..2ad3bc792692 100644
> --- a/drivers/firmware/arm_scmi/perf.c
> +++ b/drivers/firmware/arm_scmi/perf.c
> @@ -720,9 +720,6 @@ static int scmi_perf_protocol_init(struct scmi_device *dev)
> 
>  	scmi_version_get(handle, SCMI_PROTOCOL_PERF, &version);
> 
> -	dev_dbg(handle->dev, "Performance Version %d.%d\n",
> -		PROTOCOL_REV_MAJOR(version), PROTOCOL_REV_MINOR(version));
> -
>  	pinfo = devm_kzalloc(handle->dev, sizeof(*pinfo), GFP_KERNEL);
>  	if (!pinfo)
>  		return -ENOMEM;
> diff --git a/drivers/firmware/arm_scmi/power.c b/drivers/firmware/arm_scmi/power.c
> index 6267111e38e6..29d72fa7d085 100644
> --- a/drivers/firmware/arm_scmi/power.c
> +++ b/drivers/firmware/arm_scmi/power.c
> @@ -195,9 +195,6 @@ static int scmi_power_protocol_init(struct scmi_device *dev)
> 
>  	scmi_version_get(handle, SCMI_PROTOCOL_POWER, &version);
> 
> -	dev_dbg(handle->dev, "Power Version %d.%d\n",
> -		PROTOCOL_REV_MAJOR(version), PROTOCOL_REV_MINOR(version));
> -
>  	pinfo = devm_kzalloc(handle->dev, sizeof(*pinfo), GFP_KERNEL);
>  	if (!pinfo)
>  		return -ENOMEM;
> diff --git a/drivers/firmware/arm_scmi/reset.c b/drivers/firmware/arm_scmi/reset.c
> index 76f1cee85a06..a49155628ccf 100644
> --- a/drivers/firmware/arm_scmi/reset.c
> +++ b/drivers/firmware/arm_scmi/reset.c
> @@ -205,9 +205,6 @@ static int scmi_reset_protocol_init(struct scmi_device *dev)
> 
>  	scmi_version_get(handle, SCMI_PROTOCOL_RESET, &version);
> 
> -	dev_dbg(handle->dev, "Reset Version %d.%d\n",
> -		PROTOCOL_REV_MAJOR(version), PROTOCOL_REV_MINOR(version));
> -
>  	pinfo = devm_kzalloc(handle->dev, sizeof(*pinfo), GFP_KERNEL);
>  	if (!pinfo)
>  		return -ENOMEM;
> diff --git a/drivers/firmware/arm_scmi/sensors.c b/drivers/firmware/arm_scmi/sensors.c
> index fb3bed4cb171..61e12f2fb587 100644
> --- a/drivers/firmware/arm_scmi/sensors.c
> +++ b/drivers/firmware/arm_scmi/sensors.c
> @@ -286,9 +286,6 @@ static int scmi_sensors_protocol_init(struct scmi_device *dev)
> 
>  	scmi_version_get(handle, SCMI_PROTOCOL_SENSOR, &version);
> 
> -	dev_dbg(handle->dev, "Sensor Version %d.%d\n",
> -		PROTOCOL_REV_MAJOR(version), PROTOCOL_REV_MINOR(version));
> -
>  	sinfo = devm_kzalloc(handle->dev, sizeof(*sinfo), GFP_KERNEL);
>  	if (!sinfo)
>  		return -ENOMEM;
> --
> 2.17.1
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
