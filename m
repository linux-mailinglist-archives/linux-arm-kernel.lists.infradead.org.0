Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA86F11BA6B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 18:36:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eRY4P5x3xhKOekmkbh4HndvpPSyrT2O20wHYfJPOMp8=; b=rDu9i4kv9TChJlFJbzPWSno8A5
	A6hdwylrb+QMDVVACQyxGiy/Wo0z51YKZfujSNt/pqw0JNZSPpUPBQsR2s0m7wohDy/0jXvkg7fe/
	y2ZOXjS1cP+mlJ69Y0FtwBfKREXfjGPZBRO+VZBxZ6YjRZDT3AgsIb2VVZtHbkS1fIeBm6Hff2o8c
	zLytv+8wW9Frx888dNCSqPvUwuH8hl2SIllshvijEGaJ1TD6G4Zv/gQ9tFw42QaVzs4munx9EH525
	o8wdLxgtTelfJrUvbqsuMty2mpboB2+OJb7uBVgdv1jao4+BucG3Gleu1wUWKTv4EPwHQsO5Ea+kr
	33cd1OvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if5uH-0007wj-N4; Wed, 11 Dec 2019 17:36:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if5tl-0007lW-RS
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 17:35:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 894E131B;
 Wed, 11 Dec 2019 09:35:40 -0800 (PST)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BED623F52E;
 Wed, 11 Dec 2019 09:35:39 -0800 (PST)
Subject: Re: [PATCH 07/15] firmware: arm_scmi: Stash version in protocol init
 functions
To: Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20191210145345.11616-1-sudeep.holla@arm.com>
 <20191210145345.11616-8-sudeep.holla@arm.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <48ee5468-f068-efb1-5a29-c16099e11618@arm.com>
Date: Wed, 11 Dec 2019 17:35:37 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191210145345.11616-8-sudeep.holla@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_093541_973730_6059452D 
X-CRM114-Status: GOOD (  15.45  )
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
> In order to avoid querying the individual protocol versions multiple
> time with more that one device created for each protocol, we can simple
> store the copy in the protocol specific private data and use them whenever
> required.
> 
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  drivers/firmware/arm_scmi/clock.c   | 2 ++
>  drivers/firmware/arm_scmi/perf.c    | 2 ++
>  drivers/firmware/arm_scmi/power.c   | 2 ++
>  drivers/firmware/arm_scmi/reset.c   | 2 ++
>  drivers/firmware/arm_scmi/sensors.c | 2 ++
>  5 files changed, 10 insertions(+)
> 

LGTM.

Reviewed-by: Cristian Marussi <cristian.marussi@arm.com>


Cristian



> diff --git a/drivers/firmware/arm_scmi/clock.c b/drivers/firmware/arm_scmi/clock.c
> index 6c24eb8a4e68..b567ec03f711 100644
> --- a/drivers/firmware/arm_scmi/clock.c
> +++ b/drivers/firmware/arm_scmi/clock.c
> @@ -65,6 +65,7 @@ struct scmi_clock_set_rate {
>  };
> 
>  struct clock_info {
> +	u32 version;
>  	int num_clocks;
>  	int max_async_req;
>  	atomic_t cur_async_req;
> @@ -344,6 +345,7 @@ static int scmi_clock_protocol_init(struct scmi_device *dev)
>  			scmi_clock_describe_rates_get(handle, clkid, clk);
>  	}
> 
> +	cinfo->version = version;
>  	handle->clk_ops = &clk_ops;
>  	handle->clk_priv = cinfo;
> 
> diff --git a/drivers/firmware/arm_scmi/perf.c b/drivers/firmware/arm_scmi/perf.c
> index 4f02bfba98ba..b1de6197f61c 100644
> --- a/drivers/firmware/arm_scmi/perf.c
> +++ b/drivers/firmware/arm_scmi/perf.c
> @@ -145,6 +145,7 @@ struct perf_dom_info {
>  };
> 
>  struct scmi_perf_info {
> +	u32 version;
>  	int num_domains;
>  	bool power_scale_mw;
>  	u64 stats_addr;
> @@ -740,6 +741,7 @@ static int scmi_perf_protocol_init(struct scmi_device *dev)
>  			scmi_perf_domain_init_fc(handle, domain, &dom->fc_info);
>  	}
> 
> +	pinfo->version = version;
>  	handle->perf_ops = &perf_ops;
>  	handle->perf_priv = pinfo;
> 
> diff --git a/drivers/firmware/arm_scmi/power.c b/drivers/firmware/arm_scmi/power.c
> index 5a8faa369d82..d11c6cd6bbab 100644
> --- a/drivers/firmware/arm_scmi/power.c
> +++ b/drivers/firmware/arm_scmi/power.c
> @@ -50,6 +50,7 @@ struct power_dom_info {
>  };
> 
>  struct scmi_power_info {
> +	u32 version;
>  	int num_domains;
>  	u64 stats_addr;
>  	u32 stats_size;
> @@ -211,6 +212,7 @@ static int scmi_power_protocol_init(struct scmi_device *dev)
>  		scmi_power_domain_attributes_get(handle, domain, dom);
>  	}
> 
> +	pinfo->version = version;
>  	handle->power_ops = &power_ops;
>  	handle->power_priv = pinfo;
> 
> diff --git a/drivers/firmware/arm_scmi/reset.c b/drivers/firmware/arm_scmi/reset.c
> index 438d74a2c80a..dce103781b3f 100644
> --- a/drivers/firmware/arm_scmi/reset.c
> +++ b/drivers/firmware/arm_scmi/reset.c
> @@ -48,6 +48,7 @@ struct reset_dom_info {
>  };
> 
>  struct scmi_reset_info {
> +	u32 version;
>  	int num_domains;
>  	struct reset_dom_info *dom_info;
>  };
> @@ -221,6 +222,7 @@ static int scmi_reset_protocol_init(struct scmi_device *dev)
>  		scmi_reset_domain_attributes_get(handle, domain, dom);
>  	}
> 
> +	pinfo->version = version;
>  	handle->reset_ops = &reset_ops;
>  	handle->reset_priv = pinfo;
> 
> diff --git a/drivers/firmware/arm_scmi/sensors.c b/drivers/firmware/arm_scmi/sensors.c
> index afa51bedfa5d..aac0243e2880 100644
> --- a/drivers/firmware/arm_scmi/sensors.c
> +++ b/drivers/firmware/arm_scmi/sensors.c
> @@ -68,6 +68,7 @@ struct scmi_msg_sensor_reading_get {
>  };
> 
>  struct sensors_info {
> +	u32 version;
>  	int num_sensors;
>  	int max_requests;
>  	u64 reg_addr;
> @@ -298,6 +299,7 @@ static int scmi_sensors_protocol_init(struct scmi_device *dev)
> 
>  	scmi_sensor_description_get(handle, sinfo);
> 
> +	sinfo->version = version;
>  	handle->sensor_ops = &sensor_ops;
>  	handle->sensor_priv = sinfo;
> 
> --
> 2.17.1
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
