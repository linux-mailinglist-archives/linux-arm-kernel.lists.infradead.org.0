Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73C9B1A92B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 May 2019 21:04:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m9RV2OF+wJJSI7ebpBABUuJohvicn7s8aR7vn1czSyw=; b=bUYNMoEKcvhgrK
	H9ZEzWvZnXTGSxL1e3JYcCxUp2BQODghUlqJsSn9m6NowzJDI1EV+MUR078VrvmXzWQ5qXIG4Gl8q
	A4AwSR4tB28W0lDCqfwOqm2tuB7Yhg9DyazX9qzprfEU6KLJaT3KNzbaLkT4S14VHpzQskDLriotO
	FLgaAPebyVSVUWmoiwUk518nGT9MPdRjKDZ8AMRKZIvTPjKkguUJ1fqR0ECOra8AMXZVhabeXIVpV
	twsR2cH8lAp0AO/fkRLQTA6M0CcjvXSjI7Ip6i1F8Usvg3qeQgQmJ8vcLI+MNVyYxkEGgoSlEHOgT
	it5ey8jvoJSGiu32mEJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPXIO-0000L1-44; Sat, 11 May 2019 19:04:32 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPXIF-0000KQ-Qx
 for linux-arm-kernel@lists.infradead.org; Sat, 11 May 2019 19:04:25 +0000
Received: by mail-pl1-x643.google.com with SMTP id d3so4368905plj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 11 May 2019 12:04:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=mGaRnqVCoyCZOIBZ9izPfSHfOocCoIwti//LG4qze0c=;
 b=MI8w5cGx0btx5xiSYFrJJoCJwkyQlKKgVznkYSIQQyeEo51cg4O3QncAEZ2yQ7qAEk
 ClKCFyKB1BtyCtfMJwqORCb+mHsBhx7bTBh5eO8Jp3JnAfuRr3yXyhzH2FdDTyChiPFY
 PE2ibBHBRZGKjU7qWeRcDtASrk8YyzIvVIvPuVYmqf0YuDwlA0xS+6nOJ8q+ejqY5zDc
 9ia25Yc+pKfzsShQKYxWWvitFtb498YlRPX0Hh1mT2kH4erY8pugknQ/Uh8aTUBOkGHQ
 HKxxl0UPHcS5VYEdyxZmQD10jgPJWiCP2rgMNouweQ6cXUE/bgDzk0G/U3cbc4n20Xgp
 savA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mGaRnqVCoyCZOIBZ9izPfSHfOocCoIwti//LG4qze0c=;
 b=ND8mel8RqUv5OtAjSJ7ynLe1AjuPUoK25h6MFjGFz2R52ZK1lortmGvYM1Oo+WqA1L
 dhVb0mv/ZTvpDQtu2EPBaBTS1/iXSc3rZt9Qc4Cuywj/rmoqNOekM0T61F3UFH7TjFOw
 Lwc+5ffhofEID18Cig7jqKcCHiv1OnAC3Ef+V6WjMo379b/c8SZ/q4bsdPbgdgnvyDUx
 bTrCq+7o3V9tOjOOQQHtcBezaIThveTx061kKHEOvQ6fQ7vKID1q9Z6wsk8j5MwwoJfw
 8O/kLk4VGRF2fFgUGXO7HD2ZBGjSdFbLdK3Mhjbr8n7pSbBdz4mQHzZYuUlYYvYqYBT1
 cUIw==
X-Gm-Message-State: APjAAAX1fzivqPlogI2jQ1iPvKiMn2Sq5gNuFyTYR5Y9EA9BtPbLWGTO
 ruNMYHGZDs/+XRCdz7rcR5WfVu9AqeY=
X-Google-Smtp-Source: APXvYqyt/eaU9d15W8IfOa5xOEidfRGbLhiHRr2EdYIRq+a25FXzjyRxhMHBQ2aiAInKd+bzRgMYIg==
X-Received: by 2002:a17:902:20e2:: with SMTP id
 v31mr21870303plg.138.1557601462677; 
 Sat, 11 May 2019 12:04:22 -0700 (PDT)
Received: from localhost.localdomain
 ([2607:fb90:4a55:a659:7256:81ff:febd:926d])
 by smtp.gmail.com with ESMTPSA id u38sm9494634pgn.73.2019.05.11.12.04.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 11 May 2019 12:04:22 -0700 (PDT)
Date: Sat, 11 May 2019 12:04:18 -0700
From: Eduardo Valentin <edubezval@gmail.com>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH 1/6] thermal: Introduce
 devm_thermal_of_cooling_device_register
Message-ID: <20190511190415.GA22816@localhost.localdomain>
References: <1555617500-10862-1-git-send-email-linux@roeck-us.net>
 <1555617500-10862-2-git-send-email-linux@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1555617500-10862-2-git-send-email-linux@roeck-us.net>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_120423_902593_9AF034D2 
X-CRM114-Status: GOOD (  25.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (edubezval[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-hwmon@vger.kernel.org, Jean Delvare <jdelvare@suse.com>,
 Kamil Debski <kamil@wypas.org>, Tomer Maimon <tmaimon77@gmail.com>,
 linux-aspeed@lists.ozlabs.org, linux-pm@vger.kernel.org,
 Andrew Jeffery <andrew@aj.id.au>, Patrick Venture <venture@google.com>,
 openbmc@lists.ozlabs.org, Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 linux-kernel@vger.kernel.org, Tali Perry <tali.perry1@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Avi Fishman <avifishman70@gmail.com>, Joel Stanley <joel@jms.id.au>,
 Zhang Rui <rui.zhang@intel.com>, Nancy Yuen <yuenn@google.com>,
 linux-arm-kernel@lists.infradead.org, Benjamin Fair <benjaminfair@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Guenter,

On Thu, Apr 18, 2019 at 12:58:15PM -0700, Guenter Roeck wrote:
> thermal_of_cooling_device_register() and thermal_cooling_device_register()
> are typically called from driver probe functions, and
> thermal_cooling_device_unregister() is called from remove functions. This
> makes both a perfect candidate for device managed functions.
> 
> Introduce devm_thermal_of_cooling_device_register(). This function can
> also be used to replace thermal_cooling_device_register() by passing a NULL
> pointer as device node. The new function requires both struct device *
> and struct device_node * as parameters since the struct device_node *
> parameter is not always identical to dev->of_node.
> 
> Don't introduce a device managed remove function since it is not needed
> at this point.

I don't have any objection on adding this API. Only a minor thing below:


> 
> Signed-off-by: Guenter Roeck <linux@roeck-us.net>
> ---
>  drivers/thermal/thermal_core.c | 49 ++++++++++++++++++++++++++++++++++++++++++
>  include/linux/thermal.h        |  5 +++++
>  2 files changed, 54 insertions(+)
> 
> diff --git a/drivers/thermal/thermal_core.c b/drivers/thermal/thermal_core.c
> index 6590bb5cb688..e0b530603db6 100644
> --- a/drivers/thermal/thermal_core.c
> +++ b/drivers/thermal/thermal_core.c
> @@ -1046,6 +1046,55 @@ thermal_of_cooling_device_register(struct device_node *np,
>  }
>  EXPORT_SYMBOL_GPL(thermal_of_cooling_device_register);
>  
> +static void thermal_cooling_device_release(struct device *dev, void *res)
> +{
> +	thermal_cooling_device_unregister(
> +				*(struct thermal_cooling_device **)res);
> +}
> +
> +/**
> + * devm_thermal_of_cooling_device_register() - register an OF thermal cooling
> + *					       device
> + * @dev:	a valid struct device pointer of a sensor device.
> + * @np:		a pointer to a device tree node.
> + * @type:	the thermal cooling device type.
> + * @devdata:	device private data.
> + * @ops:	standard thermal cooling devices callbacks.
> + *
> + * This function will register a cooling device with device tree node reference.
> + * This interface function adds a new thermal cooling device (fan/processor/...)
> + * to /sys/class/thermal/ folder as cooling_device[0-*]. It tries to bind itself
> + * to all the thermal zone devices registered at the same time.
> + *
> + * Return: a pointer to the created struct thermal_cooling_device or an
> + * ERR_PTR. Caller must check return value with IS_ERR*() helpers.
> + */
> +struct thermal_cooling_device *
> +devm_thermal_of_cooling_device_register(struct device *dev,
> +				struct device_node *np,
> +				char *type, void *devdata,
> +				const struct thermal_cooling_device_ops *ops)
> +{
> +	struct thermal_cooling_device **ptr, *tcd;
> +
> +	ptr = devres_alloc(thermal_cooling_device_release, sizeof(*ptr),
> +			   GFP_KERNEL);
> +	if (!ptr)
> +		return ERR_PTR(-ENOMEM);
> +
> +	tcd = __thermal_cooling_device_register(np, type, devdata, ops);
> +	if (IS_ERR(tcd)) {
> +		devres_free(ptr);
> +		return tcd;
> +	}
> +
> +	*ptr = tcd;
> +	devres_add(dev, ptr);
> +
> +	return tcd;
> +}
> +EXPORT_SYMBOL_GPL(devm_thermal_of_cooling_device_register);
> +
>  static void __unbind(struct thermal_zone_device *tz, int mask,
>  		     struct thermal_cooling_device *cdev)
>  {
> diff --git a/include/linux/thermal.h b/include/linux/thermal.h
> index 5f4705f46c2f..43cf4fdd71d4 100644
> --- a/include/linux/thermal.h
> +++ b/include/linux/thermal.h
> @@ -447,6 +447,11 @@ struct thermal_cooling_device *thermal_cooling_device_register(char *, void *,
>  struct thermal_cooling_device *
>  thermal_of_cooling_device_register(struct device_node *np, char *, void *,
>  				   const struct thermal_cooling_device_ops *);
> +struct thermal_cooling_device *
> +devm_thermal_of_cooling_device_register(struct device *dev,
> +				struct device_node *np,
> +				char *type, void *devdata,
> +				const struct thermal_cooling_device_ops *ops);

We need to stub this in case thermal is not selected.

>  void thermal_cooling_device_unregister(struct thermal_cooling_device *);
>  struct thermal_zone_device *thermal_zone_get_zone_by_name(const char *name);
>  int thermal_zone_get_temp(struct thermal_zone_device *tz, int *temp);

Something like:


diff --git a/include/linux/thermal.h b/include/linux/thermal.h
index 43cf4fd..9b1b365 100644
--- a/include/linux/thermal.h
+++ b/include/linux/thermal.h
@@ -508,6 +508,14 @@ static inline struct thermal_cooling_device *
 thermal_of_cooling_device_register(struct device_node *np,
        char *type, void *devdata, const struct thermal_cooling_device_ops *ops)
 { return ERR_PTR(-ENODEV); }
+struct thermal_cooling_device *
+devm_thermal_of_cooling_device_register(struct device *dev,
+                               struct device_node *np,
+                               char *type, void *devdata,
+                               const struct thermal_cooling_device_ops *ops)
+{
+       return ERR_PTR(-ENODEV);
+}
 static inline void thermal_cooling_device_unregister(
        struct thermal_cooling_device *cdev)
 { }
~


If you want I can amend this to your patch and apply it.

Also, do you prefer me to collect only this patch and you would collect hwmon changes,
or are you ok if I collect all the series?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
