Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F18811BA64
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 18:34:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AzHs/d3JpMoecsvXLoXTyabrDr1lVMX+OYZIGAH/uV8=; b=A6ynHXKYyZF2d0tsSF9HqTj0LU
	dGy3bNDCk9noLllYRZ3cBtILdIqcpgrgs9gJ+zoTawsN4JB1kMGAZyOFm5ue8r9UMWiwutZd/BxWh
	hJbGj/kLDl99/BZ1sbpiEK+aE9jS5/CNcACd/o8xNjD+3BqfFtCkmjT43CY+mUBsZpvjAcE+K52fg
	xJJagRr1cZx/erl9AAL7SQ+8Uo07Cj0SLTYD0yLZo3l8zHxD+tzY/+VqFIcTNqLDsF95/z1pb/r15
	0Uv+ksrs/PktC/Irk7hMN2C6sLwCpX/uN/9dE+RoJhdHZm6x1ypoaH9yeMMGgneBGo5h9PiFcUD8U
	5yMo6t0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if5sZ-0006F9-4V; Wed, 11 Dec 2019 17:34:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if5sP-0006EO-2V
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 17:34:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9E02231B;
 Wed, 11 Dec 2019 09:34:15 -0800 (PST)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2712F3F52E;
 Wed, 11 Dec 2019 09:34:15 -0800 (PST)
Subject: Re: [PATCH 06/15] firmware: arm_scmi: Update scmi_prot_init_fn_t to
 use device instead of handle
To: Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20191210145345.11616-1-sudeep.holla@arm.com>
 <20191210145345.11616-7-sudeep.holla@arm.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <7e605e8a-b7a6-42de-060e-357634d06d0a@arm.com>
Date: Wed, 11 Dec 2019 17:34:13 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191210145345.11616-7-sudeep.holla@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_093417_205510_678616C8 
X-CRM114-Status: GOOD (  20.82  )
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
> The scmi bus now supports multiple device per protocol. So, in order to
> initialise each device and it's attributes, it's better to pass scmi_device
> pointer to the protocol initialise function rather than scmi_handle.
> scmi_handle can be still fetched from the scmi_device pointer.
> 
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  drivers/firmware/arm_scmi/bus.c     | 6 +++---
>  drivers/firmware/arm_scmi/clock.c   | 3 ++-
>  drivers/firmware/arm_scmi/perf.c    | 3 ++-
>  drivers/firmware/arm_scmi/power.c   | 3 ++-
>  drivers/firmware/arm_scmi/reset.c   | 3 ++-
>  drivers/firmware/arm_scmi/sensors.c | 3 ++-
>  include/linux/scmi_protocol.h       | 2 +-
>  7 files changed, 14 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/firmware/arm_scmi/bus.c b/drivers/firmware/arm_scmi/bus.c
> index 3714e6307b05..f619da2634a6 100644
> --- a/drivers/firmware/arm_scmi/bus.c
> +++ b/drivers/firmware/arm_scmi/bus.c
> @@ -51,13 +51,13 @@ static int scmi_dev_match(struct device *dev, struct device_driver *drv)
>  	return 0;
>  }
> 
> -static int scmi_protocol_init(int protocol_id, struct scmi_handle *handle)
> +static int scmi_protocol_init(int protocol_id, struct scmi_device *dev)
>  {
>  	scmi_prot_init_fn_t fn = idr_find(&scmi_protocols, protocol_id);
> 
>  	if (unlikely(!fn))
>  		return -EINVAL;
> -	return fn(handle);
> +	return fn(dev);
>  }
> 

As talked offline, for the same reasons of comments in 03/15, it seems to me
that here we are slipping device specific initialization stuff into the
protocol_init function which should be called once for all for every protocol.

BTW, scmi_dev is used just to extract the handle here, beside version caching
in following patches.

Cheers

Cristian
>  static int scmi_dev_probe(struct device *dev)
> @@ -74,7 +74,7 @@ static int scmi_dev_probe(struct device *dev)
>  	if (!scmi_dev->handle)
>  		return -EPROBE_DEFER;
> 
> -	ret = scmi_protocol_init(scmi_dev->protocol_id, scmi_dev->handle);
> +	ret = scmi_protocol_init(scmi_dev->protocol_id, scmi_dev);
>  	if (ret)
>  		return ret;
> 
> diff --git a/drivers/firmware/arm_scmi/clock.c b/drivers/firmware/arm_scmi/clock.c
> index 922b22aaaf84..6c24eb8a4e68 100644
> --- a/drivers/firmware/arm_scmi/clock.c
> +++ b/drivers/firmware/arm_scmi/clock.c
> @@ -310,11 +310,12 @@ static struct scmi_clk_ops clk_ops = {
>  	.disable = scmi_clock_disable,
>  };
> 
> -static int scmi_clock_protocol_init(struct scmi_handle *handle)
> +static int scmi_clock_protocol_init(struct scmi_device *dev)
>  {
>  	u32 version;
>  	int clkid, ret;
>  	struct clock_info *cinfo;
> +	struct scmi_handle *handle = dev->handle;
> 
>  	if (handle->clk_ops && handle->clk_priv)
>  		return 0; /* initialised already for the first device */
> diff --git a/drivers/firmware/arm_scmi/perf.c b/drivers/firmware/arm_scmi/perf.c
> index 55c2a4c21ccb..4f02bfba98ba 100644
> --- a/drivers/firmware/arm_scmi/perf.c
> +++ b/drivers/firmware/arm_scmi/perf.c
> @@ -704,11 +704,12 @@ static struct scmi_perf_ops perf_ops = {
>  	.est_power_get = scmi_dvfs_est_power_get,
>  };
> 
> -static int scmi_perf_protocol_init(struct scmi_handle *handle)
> +static int scmi_perf_protocol_init(struct scmi_device *dev)
>  {
>  	int domain;
>  	u32 version;
>  	struct scmi_perf_info *pinfo;
> +	struct scmi_handle *handle = dev->handle;
> 
>  	if (handle->perf_ops && handle->perf_priv)
>  		return 0; /* initialised already for the first device */
> diff --git a/drivers/firmware/arm_scmi/power.c b/drivers/firmware/arm_scmi/power.c
> index 9a7593238b8f..5a8faa369d82 100644
> --- a/drivers/firmware/arm_scmi/power.c
> +++ b/drivers/firmware/arm_scmi/power.c
> @@ -179,11 +179,12 @@ static struct scmi_power_ops power_ops = {
>  	.state_get = scmi_power_state_get,
>  };
> 
> -static int scmi_power_protocol_init(struct scmi_handle *handle)
> +static int scmi_power_protocol_init(struct scmi_device *dev)
>  {
>  	int domain;
>  	u32 version;
>  	struct scmi_power_info *pinfo;
> +	struct scmi_handle *handle = dev->handle;
> 
>  	if (handle->power_ops && handle->power_priv)
>  		return 0; /* initialised already for the first device */
> diff --git a/drivers/firmware/arm_scmi/reset.c b/drivers/firmware/arm_scmi/reset.c
> index 809dc8faee1e..438d74a2c80a 100644
> --- a/drivers/firmware/arm_scmi/reset.c
> +++ b/drivers/firmware/arm_scmi/reset.c
> @@ -189,11 +189,12 @@ static struct scmi_reset_ops reset_ops = {
>  	.deassert = scmi_reset_domain_deassert,
>  };
> 
> -static int scmi_reset_protocol_init(struct scmi_handle *handle)
> +static int scmi_reset_protocol_init(struct scmi_device *dev)
>  {
>  	int domain;
>  	u32 version;
>  	struct scmi_reset_info *pinfo;
> +	struct scmi_handle *handle = dev->handle;
> 
>  	if (handle->reset_ops && handle->reset_priv)
>  		return 0; /* initialised already for the first device */
> diff --git a/drivers/firmware/arm_scmi/sensors.c b/drivers/firmware/arm_scmi/sensors.c
> index b7f92c37c8a4..afa51bedfa5d 100644
> --- a/drivers/firmware/arm_scmi/sensors.c
> +++ b/drivers/firmware/arm_scmi/sensors.c
> @@ -271,10 +271,11 @@ static struct scmi_sensor_ops sensor_ops = {
>  	.reading_get = scmi_sensor_reading_get,
>  };
> 
> -static int scmi_sensors_protocol_init(struct scmi_handle *handle)
> +static int scmi_sensors_protocol_init(struct scmi_device *dev)
>  {
>  	u32 version;
>  	struct sensors_info *sinfo;
> +	struct scmi_handle *handle = dev->handle;
> 
>  	if (handle->sensor_ops && handle->sensor_priv)
>  		return 0; /* initialised already for the first device */
> diff --git a/include/linux/scmi_protocol.h b/include/linux/scmi_protocol.h
> index 5c873a59b387..b676825e6eb0 100644
> --- a/include/linux/scmi_protocol.h
> +++ b/include/linux/scmi_protocol.h
> @@ -316,6 +316,6 @@ static inline void scmi_driver_unregister(struct scmi_driver *driver) {}
>  #define module_scmi_driver(__scmi_driver)	\
>  	module_driver(__scmi_driver, scmi_register, scmi_unregister)
> 
> -typedef int (*scmi_prot_init_fn_t)(struct scmi_handle *);
> +typedef int (*scmi_prot_init_fn_t)(struct scmi_device *);
>  int scmi_protocol_register(int protocol_id, scmi_prot_init_fn_t fn);
>  void scmi_protocol_unregister(int protocol_id);
> --
> 2.17.1
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
