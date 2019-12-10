Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D8D5118F8F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 19:15:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ixBmwUj9MNIfFN9nHg+ILOZumVnzj0g9Z5p1pjCN1p8=; b=Pi5XQPCTohfV27DH2yJKQYasej
	S1+GBq5RnmbgNqzvtXj9iUPaI1YZKp7jlFowNA+FXTKaBFVokVzTw2LarvR6MKUDIo+kklG3OmPLx
	FW/D2DwSgd6UeFUwPy3SQbK/MED0Z+JBz0alXNd9zRCv2I4G4E2fSXEF9Yt3tT1PEwE9OndNllqlN
	omasxEinsbZ496JSszXdi5/2qLfy+baVJTU+PpGXyNBnhsC/lUnluX3OKMISRJqXMGF6hQsA8+aU2
	V4N7z3MjLKS/57tHAOE3DIxyWTFhuFFXhfhhu8lSyUG5ttR/b7vjSSP/pWfz5BvSGgBtCrWAmX/xA
	yopKSjFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iek2G-0000ep-Gj; Tue, 10 Dec 2019 18:15:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iek27-0000do-IS
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 18:14:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E79181FB;
 Tue, 10 Dec 2019 10:14:48 -0800 (PST)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 795A93F6CF;
 Tue, 10 Dec 2019 10:14:48 -0800 (PST)
Subject: Re: [PATCH 03/15] firmware: arm_scmi: Skip protocol initialisation
 for additional devices
To: Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20191210145345.11616-1-sudeep.holla@arm.com>
 <20191210145345.11616-4-sudeep.holla@arm.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <944a2d76-a3d3-9238-1960-63c3f29bea05@arm.com>
Date: Tue, 10 Dec 2019 18:14:47 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191210145345.11616-4-sudeep.holla@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_101451_699059_5C2D2E83 
X-CRM114-Status: GOOD (  19.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/12/2019 14:53, Sudeep Holla wrote:
> The scmi bus now supports adding multiple devices per protocol,
> and since scmi_protocol_init is called for each scmi device created,
> we must avoid allocating protocol private data and initialising the
> protocol itself if it is already initialised.
> 
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---

Wouldn't be better to add some kind of per-protocol 'initialized' flag somewhere
in the bus abstraction so that the protocol_id itself could be marked as initialized
once bus::scmi_protocol_init() completes successfully so that we could just skip the
invocation itself of bus::scmi_protocol_init() for all the protocols already detected
as initialized ?

Or, if not a flag, maybe deactivating the registered protocol init function itself
once it has been successfully called once .....something along the lines of:

diff --git a/drivers/firmware/arm_scmi/bus.c b/drivers/firmware/arm_scmi/bus.c
index 7a30952b463d..a551a00586c6 100644
--- a/drivers/firmware/arm_scmi/bus.c
+++ b/drivers/firmware/arm_scmi/bus.c
@@ -73,6 +73,8 @@ static int scmi_dev_probe(struct device *dev)
        ret = scmi_protocol_init(scmi_dev->protocol_id, scmi_dev->handle);
        if (ret)
                return ret;
+       idr_replace(&scmi_protocols, dummy_return_0_callback,
+                       scmi_dev->protocol_id);
 
        return scmi_drv->probe(scmi_dev);

[not really tested eh ... :D]

This way we can drop this patch as a whole and avoid any future needs to remember
to add this same sort of logic in the next XYZ protocol implementation.

Cheers

Cristian

>  drivers/firmware/arm_scmi/clock.c   | 3 +++
>  drivers/firmware/arm_scmi/perf.c    | 3 +++
>  drivers/firmware/arm_scmi/power.c   | 3 +++
>  drivers/firmware/arm_scmi/reset.c   | 3 +++
>  drivers/firmware/arm_scmi/sensors.c | 3 +++
>  5 files changed, 15 insertions(+)
> 
> diff --git a/drivers/firmware/arm_scmi/clock.c b/drivers/firmware/arm_scmi/clock.c
> index 32526a793f3a..922b22aaaf84 100644
> --- a/drivers/firmware/arm_scmi/clock.c
> +++ b/drivers/firmware/arm_scmi/clock.c
> @@ -316,6 +316,9 @@ static int scmi_clock_protocol_init(struct scmi_handle *handle)
>  	int clkid, ret;
>  	struct clock_info *cinfo;
> 
> +	if (handle->clk_ops && handle->clk_priv)
> +		return 0; /* initialised already for the first device */
> +
>  	scmi_version_get(handle, SCMI_PROTOCOL_CLOCK, &version);
> 
>  	dev_dbg(handle->dev, "Clock Version %d.%d\n",
> diff --git a/drivers/firmware/arm_scmi/perf.c b/drivers/firmware/arm_scmi/perf.c
> index 601af4edad5e..55c2a4c21ccb 100644
> --- a/drivers/firmware/arm_scmi/perf.c
> +++ b/drivers/firmware/arm_scmi/perf.c
> @@ -710,6 +710,9 @@ static int scmi_perf_protocol_init(struct scmi_handle *handle)
>  	u32 version;
>  	struct scmi_perf_info *pinfo;
> 
> +	if (handle->perf_ops && handle->perf_priv)
> +		return 0; /* initialised already for the first device */
> +
>  	scmi_version_get(handle, SCMI_PROTOCOL_PERF, &version);
> 
>  	dev_dbg(handle->dev, "Performance Version %d.%d\n",
> diff --git a/drivers/firmware/arm_scmi/power.c b/drivers/firmware/arm_scmi/power.c
> index 5abef7079c0a..9a7593238b8f 100644
> --- a/drivers/firmware/arm_scmi/power.c
> +++ b/drivers/firmware/arm_scmi/power.c
> @@ -185,6 +185,9 @@ static int scmi_power_protocol_init(struct scmi_handle *handle)
>  	u32 version;
>  	struct scmi_power_info *pinfo;
> 
> +	if (handle->power_ops && handle->power_priv)
> +		return 0; /* initialised already for the first device */
> +
>  	scmi_version_get(handle, SCMI_PROTOCOL_POWER, &version);
> 
>  	dev_dbg(handle->dev, "Power Version %d.%d\n",
> diff --git a/drivers/firmware/arm_scmi/reset.c b/drivers/firmware/arm_scmi/reset.c
> index ab42c21c5517..809dc8faee1e 100644
> --- a/drivers/firmware/arm_scmi/reset.c
> +++ b/drivers/firmware/arm_scmi/reset.c
> @@ -195,6 +195,9 @@ static int scmi_reset_protocol_init(struct scmi_handle *handle)
>  	u32 version;
>  	struct scmi_reset_info *pinfo;
> 
> +	if (handle->reset_ops && handle->reset_priv)
> +		return 0; /* initialised already for the first device */
> +
>  	scmi_version_get(handle, SCMI_PROTOCOL_RESET, &version);
> 
>  	dev_dbg(handle->dev, "Reset Version %d.%d\n",
> diff --git a/drivers/firmware/arm_scmi/sensors.c b/drivers/firmware/arm_scmi/sensors.c
> index a400ea805fc2..b7f92c37c8a4 100644
> --- a/drivers/firmware/arm_scmi/sensors.c
> +++ b/drivers/firmware/arm_scmi/sensors.c
> @@ -276,6 +276,9 @@ static int scmi_sensors_protocol_init(struct scmi_handle *handle)
>  	u32 version;
>  	struct sensors_info *sinfo;
> 
> +	if (handle->sensor_ops && handle->sensor_priv)
> +		return 0; /* initialised already for the first device */
> +
>  	scmi_version_get(handle, SCMI_PROTOCOL_SENSOR, &version);
> 
>  	dev_dbg(handle->dev, "Sensor Version %d.%d\n",
> --
> 2.17.1
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
