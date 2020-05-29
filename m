Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A8D01E80D3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 16:48:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ziYKiWJYvvivE2ZKFQZiNNcJnCsyJOAFnpFXveVB4jA=; b=aRawcSGr1aHys7
	dXjoYnGyV/hhMTvHWQaLeecYegt7feHfj/YNc0ZKw/bf2+FGgCgTnY7iZJeSyTShArrW4vYCdTQZ1
	6EAqJ9BFxviqv95p2db0yvxjy5nKskY6/cebDAlI1aQ6BYHCftatWYfPk9AUd7K1oM8Ea+nnWq2Sb
	A/KgGIPACJO4p7bAWUb/1LnSSgnV5hQ0Kw1yZW0RdqHGumAXXcPyzZJbjRwDrDkBHZq39PgtoA79b
	bRpQJJb7wlxHl64BGLYKw7sMcmQ76+vFsu2izE6jIU7CRTZ2krwmdEcKN0E36i9AYzYOh9I8uG/CS
	UHFC9m2v3xIbo1tNobaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jegJJ-0001pw-Sd; Fri, 29 May 2020 14:48:37 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jegJ7-0001o1-Ne; Fri, 29 May 2020 14:48:27 +0000
Received: by mail-pf1-x441.google.com with SMTP id d66so1454995pfd.6;
 Fri, 29 May 2020 07:48:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=cO3a3cgUSH7rfKMtdpjcLP1JxlHk9vIs7cTHOKnLkaA=;
 b=SE/O4US4ueCIgLVnMUgPO2R0ai200vqjEkr73pw0iMLAxaQlBn1AD455akbOJhLGFw
 s0e9LFdcWptHf3WO+6HhYXhgns97/WVp4voUyAoGTIQLutOMEINeCI6GXMFY6inZXATs
 LcoYN4i6oSYYuS2UdHIPVMTEDCgbww0ppbniilSaElY2wvL/TABJdcrCnBQqEabwljeJ
 MNiPAkh3PRUmWrjnZKgvjtuSfPql8Kct5UFfQ6ljAkfhVz4IxZSinDvhGT51lVlbZ/0/
 Re2Nmze2SuWdDqURHjRU9fzOI8Ga00Xnb5fMhIJIV9ZcAN+XuJFQ2cGu8mbHV1DfjzKI
 K/0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=cO3a3cgUSH7rfKMtdpjcLP1JxlHk9vIs7cTHOKnLkaA=;
 b=ZszZnlV5MfnOy+E52s63ZyJXLgCpd8SwIB9Y08sIEeDBxNqKY8Pka9CWQYg4JrQyqa
 UHtLWnh9+ZxCEMbW44PWUm6FKLLLzTQvq/FJI5HqOXbPDX78q3LEjAYjwpUQ8pJqzBAu
 j9WZGmc8s2WdNdkVa3wohnInF7U2pKjh3tLibSOa973BSPg/jvC2Lv5nOTWqrsnnKaEz
 ISQywfiDkdXzm5XA99dcZyd4sc7DOXFBHwL5p5nZW7xLhZ9WQIAIsPybxc2k/3W/e/lS
 8LAel20iY6YOKbbgEbqi3OCKwYf+QI1qVUO21quadP0JgJnDq7p0pTtNvcB0+jZ+VjVn
 VnlA==
X-Gm-Message-State: AOAM532FWINn/hSsqKzKAGDRlc59HUlt1DmqiocGjiYukoRudvB0NNuH
 IFdkfTeNPAJzoHCRvM9o5+s=
X-Google-Smtp-Source: ABdhPJzsJ8Jgab8FprNGsq+IiLfPx1J45pSV3Y5EY3lJEXRD49UVOwc5O0C+oEJ2ZsOWPW6z0jLUEw==
X-Received: by 2002:aa7:8f27:: with SMTP id y7mr9299367pfr.19.1590763703583;
 Fri, 29 May 2020 07:48:23 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id 192sm7123644pfz.198.2020.05.29.07.48.22
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 29 May 2020 07:48:22 -0700 (PDT)
Date: Fri, 29 May 2020 07:48:21 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Subject: Re: [PATCH v4 02/11] thermal: Store thermal mode in a dedicated enum
Message-ID: <20200529144821.GA93994@roeck-us.net>
References: <4493c0e4-51aa-3907-810c-74949ff27ca4@samsung.com>
 <20200528192051.28034-1-andrzej.p@collabora.com>
 <20200528192051.28034-3-andrzej.p@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200528192051.28034-3-andrzej.p@collabora.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_074825_802304_6440BC1A 
X-CRM114-Status: GOOD (  20.08  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Emmanuel Grumbach <emmanuel.grumbach@intel.com>,
 Heiko Stuebner <heiko@sntech.de>, Kalle Valo <kvalo@codeaurora.org>,
 linux-wireless@vger.kernel.org, Peter Kaestle <peter@piie.net>,
 platform-driver-x86@vger.kernel.org, Vishal Kulkarni <vishal@chelsio.com>,
 Luca Coelho <luciano.coelho@intel.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, Shawn Guo <shawnguo@kernel.org>,
 kernel@collabora.com, Fabio Estevam <festevam@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 linux-rockchip@lists.infradead.org, Chunyan Zhang <zhang.lyra@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-acpi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Darren Hart <dvhart@infradead.org>,
 Zhang Rui <rui.zhang@intel.com>, Gayatri Kammela <gayatri.kammela@intel.com>,
 NXP Linux Team <linux-imx@nxp.com>, Johannes Berg <johannes.berg@intel.com>,
 linux-pm@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 Intel Linux Wireless <linuxwifi@intel.com>, Ido Schimmel <idosch@mellanox.com>,
 Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund@ragnatech.se>,
 Jiri Pirko <jiri@mellanox.com>, Orson Zhai <orsonzhai@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 Support Opensource <support.opensource@diasemi.com>, netdev@vger.kernel.org,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Sebastian Reichel <sre@kernel.org>,
 linux-renesas-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Baolin Wang <baolin.wang7@gmail.com>, Len Brown <lenb@kernel.org>,
 Enrico Weigelt <info@metux.net>, "David S . Miller" <davem@davemloft.net>,
 Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 28, 2020 at 09:20:42PM +0200, Andrzej Pietrasiewicz wrote:
> Prepare for storing mode in struct thermal_zone_device.
> 
> Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> ---
>  drivers/acpi/thermal.c                        | 27 +++++++++----------
>  drivers/platform/x86/acerhdf.c                |  8 ++++--
>  .../intel/int340x_thermal/int3400_thermal.c   | 18 +++++--------
>  3 files changed, 25 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/acpi/thermal.c b/drivers/acpi/thermal.c
> index 6de8066ca1e7..fb46070c66d8 100644
> --- a/drivers/acpi/thermal.c
> +++ b/drivers/acpi/thermal.c
> @@ -172,7 +172,7 @@ struct acpi_thermal {
>  	struct acpi_thermal_trips trips;
>  	struct acpi_handle_list devices;
>  	struct thermal_zone_device *thermal_zone;
> -	int tz_enabled;
> +	enum thermal_device_mode mode;
>  	int kelvin_offset;	/* in millidegrees */
>  	struct work_struct thermal_check_work;
>  };
> @@ -500,7 +500,7 @@ static void acpi_thermal_check(void *data)
>  {
>  	struct acpi_thermal *tz = data;
>  
> -	if (!tz->tz_enabled)
> +	if (tz->mode != THERMAL_DEVICE_ENABLED)
>  		return;
>  
>  	thermal_zone_device_update(tz->thermal_zone,
> @@ -534,8 +534,7 @@ static int thermal_get_mode(struct thermal_zone_device *thermal,
>  	if (!tz)
>  		return -EINVAL;
>  
> -	*mode = tz->tz_enabled ? THERMAL_DEVICE_ENABLED :
> -		THERMAL_DEVICE_DISABLED;
> +	*mode = tz->mode;
>  
>  	return 0;
>  }
> @@ -544,27 +543,25 @@ static int thermal_set_mode(struct thermal_zone_device *thermal,
>  				enum thermal_device_mode mode)
>  {
>  	struct acpi_thermal *tz = thermal->devdata;
> -	int enable;
>  
>  	if (!tz)
>  		return -EINVAL;
>  
> +	if (mode != THERMAL_DEVICE_DISABLED &&
> +	    mode != THERMAL_DEVICE_ENABLED)
> +		return -EINVAL;

Personally I find this check unnecessary: The enum has no other values,
and it is verifyable that the callers provide the enum and not some other
value.

>  	/*
>  	 * enable/disable thermal management from ACPI thermal driver
>  	 */
> -	if (mode == THERMAL_DEVICE_ENABLED)
> -		enable = 1;
> -	else if (mode == THERMAL_DEVICE_DISABLED) {
> -		enable = 0;
> +	if (mode == THERMAL_DEVICE_DISABLED)
>  		pr_warn("thermal zone will be disabled\n");
> -	} else
> -		return -EINVAL;
>  
> -	if (enable != tz->tz_enabled) {
> -		tz->tz_enabled = enable;
> +	if (mode != tz->mode) {
> +		tz->mode = mode;
>  		ACPI_DEBUG_PRINT((ACPI_DB_INFO,
>  			"%s kernel ACPI thermal control\n",
> -			tz->tz_enabled ? "Enable" : "Disable"));
> +			tz->mode == THERMAL_DEVICE_ENABLED ?
> +			"Enable" : "Disable"));
>  		acpi_thermal_check(tz);
>  	}
>  	return 0;
> @@ -915,7 +912,7 @@ static int acpi_thermal_register_thermal_zone(struct acpi_thermal *tz)
>  		goto remove_dev_link;
>  	}
>  
> -	tz->tz_enabled = 1;
> +	tz->mode = THERMAL_DEVICE_ENABLED;
>  
>  	dev_info(&tz->device->dev, "registered as thermal_zone%d\n",
>  		 tz->thermal_zone->id);
> diff --git a/drivers/platform/x86/acerhdf.c b/drivers/platform/x86/acerhdf.c
> index 8cc86f4e3ac1..830a8b060e74 100644
> --- a/drivers/platform/x86/acerhdf.c
> +++ b/drivers/platform/x86/acerhdf.c
> @@ -68,6 +68,7 @@ static int kernelmode = 1;
>  #else
>  static int kernelmode;
>  #endif
> +static enum thermal_device_mode thermal_mode;
>  
>  static unsigned int interval = 10;
>  static unsigned int fanon = 60000;
> @@ -397,6 +398,7 @@ static inline void acerhdf_revert_to_bios_mode(void)
>  {
>  	acerhdf_change_fanstate(ACERHDF_FAN_AUTO);
>  	kernelmode = 0;
> +	thermal_mode = THERMAL_DEVICE_DISABLED;
>  	if (thz_dev)
>  		thz_dev->polling_delay = 0;
>  	pr_notice("kernel mode fan control OFF\n");
> @@ -404,6 +406,7 @@ static inline void acerhdf_revert_to_bios_mode(void)
>  static inline void acerhdf_enable_kernelmode(void)
>  {
>  	kernelmode = 1;
> +	thermal_mode = THERMAL_DEVICE_ENABLED;
>  
>  	thz_dev->polling_delay = interval*1000;
>  	thermal_zone_device_update(thz_dev, THERMAL_EVENT_UNSPECIFIED);
> @@ -416,8 +419,7 @@ static int acerhdf_get_mode(struct thermal_zone_device *thermal,
>  	if (verbose)
>  		pr_notice("kernel mode fan control %d\n", kernelmode);
>  
> -	*mode = (kernelmode) ? THERMAL_DEVICE_ENABLED
> -			     : THERMAL_DEVICE_DISABLED;
> +	*mode = thermal_mode;
>  
>  	return 0;
>  }
> @@ -739,6 +741,8 @@ static int __init acerhdf_register_thermal(void)
>  	if (IS_ERR(cl_dev))
>  		return -EINVAL;
>  
> +	thermal_mode = kernelmode ?
> +		THERMAL_DEVICE_ENABLED : THERMAL_DEVICE_DISABLED;
>  	thz_dev = thermal_zone_device_register("acerhdf", 2, 0, NULL,
>  					      &acerhdf_dev_ops,
>  					      &acerhdf_zone_params, 0,
> diff --git a/drivers/thermal/intel/int340x_thermal/int3400_thermal.c b/drivers/thermal/intel/int340x_thermal/int3400_thermal.c
> index 0b3a62655843..e84faaadff87 100644
> --- a/drivers/thermal/intel/int340x_thermal/int3400_thermal.c
> +++ b/drivers/thermal/intel/int340x_thermal/int3400_thermal.c
> @@ -48,7 +48,7 @@ struct int3400_thermal_priv {
>  	struct acpi_device *adev;
>  	struct platform_device *pdev;
>  	struct thermal_zone_device *thermal;
> -	int mode;
> +	enum thermal_device_mode mode;
>  	int art_count;
>  	struct art *arts;
>  	int trt_count;
> @@ -395,24 +395,20 @@ static int int3400_thermal_set_mode(struct thermal_zone_device *thermal,
>  				enum thermal_device_mode mode)
>  {
>  	struct int3400_thermal_priv *priv = thermal->devdata;
> -	bool enable;
>  	int result = 0;
>  
>  	if (!priv)
>  		return -EINVAL;
>  
> -	if (mode == THERMAL_DEVICE_ENABLED)
> -		enable = true;
> -	else if (mode == THERMAL_DEVICE_DISABLED)
> -		enable = false;
> -	else
> +	if (mode != THERMAL_DEVICE_ENABLED &&
> +	    mode != THERMAL_DEVICE_DISABLED)
>  		return -EINVAL;

Same as above.

>  
> -	if (enable != priv->mode) {
> -		priv->mode = enable;
> +	if (mode != priv->mode) {
> +		priv->mode = mode;
>  		result = int3400_thermal_run_osc(priv->adev->handle,
> -						 priv->current_uuid_index,
> -						 enable);
> +						priv->current_uuid_index,
> +						mode == THERMAL_DEVICE_ENABLED);
>  	}
>  
>  	evaluate_odvp(priv);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
