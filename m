Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C15716259E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 18:05:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b7BAeA6Gtd1qu1RbOIqRPi3SoXkiep+JrpGBHB1plho=; b=L/mow24MOXXqL+
	fplOAd2tQDmEMdgHeEzKWcpl8GawcCTgT8uOQ/b1rbs5RisjbFA/ycov24ZJRqnjUIXYAP5cFW0Co
	Lg2NDzOMuPTRrFyEKVjx1iMpZtYEWJu7GpAXax0NkJDOlrcZK6UvNtV8etpAJKIuETeotlfkn/Efq
	I6q4JgeAM3M5mf6PnHrTc2hLzeoKDVpNW/etkUhmc5laHqAFrxpVXUs58er1Q5GLC98TnosJ8aagA
	M7RPd8iEdYU14eJYJ2C6yLuxN56+b/3Myw6UYcJa0HvBCJsmuUY6U8K+dMHVW/kddN9vWQsPEYaby
	PTI+zIbHtSHgqhKHcubg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkW93-0006C7-2f; Mon, 08 Jul 2019 16:05:37 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkW8p-0006BT-KR
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 16:05:25 +0000
Received: by mail-pl1-x641.google.com with SMTP id b7so8517580pls.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jul 2019 09:05:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=zj4h3LPFwWX/eUpF2K+qOBGx59jHvRg14Pyk3N6ZIj8=;
 b=Cs2Ah93rCf/JmPqAEHCi8TaA0qrOFhqaE5hmqN67kLV2wG8IVxSv1FOCkToM6klGMS
 /YaIg8vFcv6FWh8xwVfD2FPUtzykQLsLETpwwG4c9R3BEmTTtAwRaAzGdgtlHlXkImAI
 F1WzTwlRb//4YarU/QOUUEE2M2AK69iu2ItsTGuvNxVRVa3H+URF6XKHKZ7fQ+aWbFaI
 ky91CHbsurW0JSNx0/t2jawrFN/MXPdK/dBRD9asRGleMS2N7pzNupOMnonuoWMHVLbz
 qdjAWbE7b5bexbDBctTCFMFncQsO+0e2GUGsA4xAU7ElAt6IsCr24C4OC0GKUknqGEen
 6PBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=zj4h3LPFwWX/eUpF2K+qOBGx59jHvRg14Pyk3N6ZIj8=;
 b=Pck+161EHCNAvOKMTzvcNVXPUWN0vb1hytcVg6nrk2QEb8pVZDLdW1IkKqf1j65LRR
 csotnU057xPx8PnsrG+LOV+3PW5AX7MnplJ0HLL65+c2WnbfG1lw9mlGVT89sNuwgmn3
 T1z5HZuL2C6OX64tiiEpkn5CzIf/hjNqeTyXw58sXckBCB+GM8BqkDgmwSmTbp9Ol8cg
 sz1pntKkPhj4x8arI1iGZBH4GpMYZEE2okMpPywOici8XdvePlDJQfP2fiPy19C0qR+Y
 //oKwmyTvjm4hLFv0VokVMt19Yv5CI1ClQCTnbJPA56BPBUnoUE63lZRFAXOn4CgESYx
 Q+lg==
X-Gm-Message-State: APjAAAXni4pjiVl+clr1mlAW3YmiU/m5GyCL2xKHw/tm+qngLK5GbASz
 lKZggDaNUOEHMZ/ms+0gRPI=
X-Google-Smtp-Source: APXvYqyTXYeYdUKJVxZlIQ1sQYegDbAsQ25fSAznBmuferVZ1DpzRqW+HYMbh+MGvB0mQxyasDEQeQ==
X-Received: by 2002:a17:902:5998:: with SMTP id
 p24mr25814533pli.110.1562601922829; 
 Mon, 08 Jul 2019 09:05:22 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id t2sm15708380pgo.61.2019.07.08.09.05.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 08 Jul 2019 09:05:21 -0700 (PDT)
Date: Mon, 8 Jul 2019 09:05:20 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH 08/11] firmware: arm_scmi: Drop async flag in
 sensor_ops->reading_get
Message-ID: <20190708160520.GA6741@roeck-us.net>
References: <20190708154730.16643-1-sudeep.holla@arm.com>
 <20190708154730.16643-9-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190708154730.16643-9-sudeep.holla@arm.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_090523_672262_20D47085 
X-CRM114-Status: GOOD (  19.11  )
X-Spam-Score: 2.0 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: linux-hwmon@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 linux-kernel@vger.kernel.org, Bo Zhang <bozhang.zhang@broadcom.com>,
 Jim Quinlan <james.quinlan@broadcom.com>,
 Volodymyr Babchuk <volodymyr_babchuk@epam.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 08, 2019 at 04:47:27PM +0100, Sudeep Holla wrote:
> SENSOR_DESCRIPTION_GET provides attributes to indicate if the sensor
> supports asynchronous read. Ideally we should be able to read that flag
> and use asynchronous reads for any sensors with that attribute set.
> 
> In order to add that support, let's drop the async flag passed to
> sensor_ops->reading_get and dynamically switch between sync and async
> flags based on the attributes as provided by the firmware.
> 
> Cc: Guenter Roeck <linux@roeck-us.net>
> Cc: linux-hwmon@vger.kernel.org
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>

For hwmon:

Acked-by: Guenter Roeck <linux@roeck-us.net>

Guenter

> ---
>  drivers/firmware/arm_scmi/sensors.c | 4 ++--
>  drivers/hwmon/scmi-hwmon.c          | 2 +-
>  include/linux/scmi_protocol.h       | 2 +-
>  3 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/firmware/arm_scmi/sensors.c b/drivers/firmware/arm_scmi/sensors.c
> index 17dbabd8a94a..1b5757c77a35 100644
> --- a/drivers/firmware/arm_scmi/sensors.c
> +++ b/drivers/firmware/arm_scmi/sensors.c
> @@ -211,7 +211,7 @@ scmi_sensor_trip_point_config(const struct scmi_handle *handle, u32 sensor_id,
>  }
>  
>  static int scmi_sensor_reading_get(const struct scmi_handle *handle,
> -				   u32 sensor_id, bool async, u64 *value)
> +				   u32 sensor_id, u64 *value)
>  {
>  	int ret;
>  	struct scmi_xfer *t;
> @@ -225,7 +225,7 @@ static int scmi_sensor_reading_get(const struct scmi_handle *handle,
>  
>  	sensor = t->tx.buf;
>  	sensor->id = cpu_to_le32(sensor_id);
> -	sensor->flags = cpu_to_le32(async ? SENSOR_READ_ASYNC : 0);
> +	sensor->flags = cpu_to_le32(0);
>  
>  	ret = scmi_do_xfer(handle, t);
>  	if (!ret) {
> diff --git a/drivers/hwmon/scmi-hwmon.c b/drivers/hwmon/scmi-hwmon.c
> index 0c93fc5ca762..8a7732c0bef3 100644
> --- a/drivers/hwmon/scmi-hwmon.c
> +++ b/drivers/hwmon/scmi-hwmon.c
> @@ -72,7 +72,7 @@ static int scmi_hwmon_read(struct device *dev, enum hwmon_sensor_types type,
>  	const struct scmi_handle *h = scmi_sensors->handle;
>  
>  	sensor = *(scmi_sensors->info[type] + channel);
> -	ret = h->sensor_ops->reading_get(h, sensor->id, false, &value);
> +	ret = h->sensor_ops->reading_get(h, sensor->id, &value);
>  	if (ret)
>  		return ret;
>  
> diff --git a/include/linux/scmi_protocol.h b/include/linux/scmi_protocol.h
> index ea6b72018752..697e30fb9004 100644
> --- a/include/linux/scmi_protocol.h
> +++ b/include/linux/scmi_protocol.h
> @@ -182,7 +182,7 @@ struct scmi_sensor_ops {
>  	int (*trip_point_config)(const struct scmi_handle *handle,
>  				 u32 sensor_id, u8 trip_id, u64 trip_value);
>  	int (*reading_get)(const struct scmi_handle *handle, u32 sensor_id,
> -			   bool async, u64 *value);
> +			   u64 *value);
>  };
>  
>  /**
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
