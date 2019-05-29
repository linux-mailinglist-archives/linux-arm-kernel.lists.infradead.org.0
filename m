Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF162D413
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 05:02:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bIJlq69PqYRASgAOk9yDD8QOMpFO8Muxnp84niqfKV8=; b=BsHUP1p6eIDVRX
	u/6uMKIEwwfrRgmstD0jMUDXfF2eLi5xW9k0Wgo0fITN+slnljlGt5H/qGpBGZz7OKr2Z5/RbM+53
	4q89/lVYT+76nYvqlsmgFSHs2ARX2yh6xin505DD0VzYhnjjS8JxEuYcS+3gAkKrlxwrq1zbzqcDG
	1ZcFDStGphzYtLObySufhc5Dki/l03hdjara5hdi3JHcWuyZcqfWHnlRGYTzjtpD6rmrFjlK08P56
	thyUXCk4JJma+/9Dg2+NRZa6SvlyNvaZ9KSDJhdrw5eiCzMxqCwVQ7gsFSlZG/vVchQwnDyHCisVI
	Xa3vuNPMsg04JugHaTaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVorO-0001vc-LB; Wed, 29 May 2019 03:02:38 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVorH-0001vG-St
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 03:02:33 +0000
Received: by mail-pg1-x541.google.com with SMTP id z3so420897pgp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 20:02:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=X6hCgGrg1/EebBkiZczSeiIYTj567ezCT4B+Qvt2s6Q=;
 b=E7MD6iUCYh7UBE8D8v6Tj9XnZ+OUEjLsn2t7PjrybNOo62FmkyX8L6GN+YvLcvreBf
 1K/b9tbQ1rSkY+RJnEpVfTgNzLxYFF6usqJTmHXT+jDAo0jfSt/XLCnXIx70y9IYfxti
 CqvXgmkijrm0NNrTeidIZWiufx4mLZZDvLr3TgD/+VqLGthmsv80JpGVXSNZ7u5UTaKU
 65tp8D8zynwlLPjy4TGsnQgZa3bOZJ8lZb77FNu+9s7Mgu55R77DLLy8AxMfyyM/P8pg
 vc4s/pueNLcGft20cBN2Z2nthMGvUjBkHoSnWgJS8zswD2cBuLQ8XbEUt+lAP0AoGHCB
 hTZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=X6hCgGrg1/EebBkiZczSeiIYTj567ezCT4B+Qvt2s6Q=;
 b=JUULNALkOpKhNU+7tUMHr0q1omUaVQcIL1NWWRP3nH1ycMj+pH/eVbQJ5Lmw+mIQdi
 EfexbTQUwgxYCkIFwkvYGxn5m/I7hpGynZZkk18rBY4B/9DmmHhjlspJjDMEXwtHHaiX
 9kdpeKbKrRc+0HHkXRBrmgNe1S6waONSaGkKDF6QDUXG22oZWIJ49OYCAo+A3J1QnhMf
 WX3HJvyUfaZq1c/YfNVTTgyYYVmvRwhsTKgs9jM9TWjjvPKhOtcdzuGDSrn3LhTgJo98
 b0KlegWsgRfNfmZ17Dsb7eR4IHv1csrIn3psx0jZmLiZ3uY3eagiB0W2EYtKPq++U7Zy
 G32Q==
X-Gm-Message-State: APjAAAXFRg3Pi0zNLFy74/tiyS44JLtRzZIBAiUjqJTXHXnKebf1pVjd
 PM3qYivYLTvPT5tWlWuZUdc=
X-Google-Smtp-Source: APXvYqyPsBpkG44hSDy7mXOJP8h3S5s7ICBOVNki4QTwaMsFGNf1xnTpWdMo6loLPLw8LZJQ9Rgn+A==
X-Received: by 2002:a17:90a:b885:: with SMTP id
 o5mr9397531pjr.52.1559098951071; 
 Tue, 28 May 2019 20:02:31 -0700 (PDT)
Received: from localhost.localdomain ([2601:644:8201:32e0:7256:81ff:febd:926d])
 by smtp.gmail.com with ESMTPSA id d9sm13532565pgl.20.2019.05.28.20.02.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 20:02:30 -0700 (PDT)
Date: Tue, 28 May 2019 20:02:27 -0700
From: Eduardo Valentin <edubezval@gmail.com>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH RESEND V13 2/5] thermal: of-thermal: add API for getting
 sensor ID from DT
Message-ID: <20190529030225.GA2662@localhost.localdomain>
References: <20190528060621.47342-1-Anson.Huang@nxp.com>
 <20190528060621.47342-2-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190528060621.47342-2-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_200231_952963_0F9E0CBE 
X-CRM114-Status: GOOD (  25.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (edubezval[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, ulf.hansson@linaro.org, maxime.ripard@bootlin.com,
 catalin.marinas@arm.com, will.deacon@arm.com, peng.fan@nxp.com,
 bjorn.andersson@linaro.org, leonard.crestez@nxp.com, festevam@gmail.com,
 daniel.lezcano@linaro.org, jagan@amarulasolutions.com, rui.zhang@intel.com,
 Linux-imx@nxp.com, devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 s.hauer@pengutronix.de, olof@lixom.net, robh+dt@kernel.org,
 horms+renesas@verge.net.au, daniel.baluta@nxp.com,
 linux-arm-kernel@lists.infradead.org, aisheng.dong@nxp.com,
 linux-kernel@vger.kernel.org, dinguyen@kernel.org, kernel@pengutronix.de,
 enric.balletbo@collabora.com, shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 02:06:18PM +0800, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> On some platforms like i.MX8QXP, the thermal driver needs a
> real HW sensor ID from DT thermal zone, the HW sensor ID is
> used to get temperature from SCU firmware, and the virtual
> sensor ID starting from 0 to N is NOT used at all, this patch
> adds new API thermal_zone_of_get_sensor_id() to provide the
> feature of getting sensor ID from DT thermal zone's node.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V12:
> 	- adjust the second parameter of thermal_zone_of_get_sensor_id() API, then caller no need
> 	  to pass the of_phandle_args structure and put the sensor_specs.np manually, also putting
> 	  the sensor node device check inside this API to make it easy for usage;

What happened to using nxp,resource-id property in your driver?
Why do we need this as an API in of-thermal? What other drivers may
benefit of this?

Regardless, this patch needs to document the new API under
Documentation/

> ---
>  drivers/thermal/of-thermal.c | 66 +++++++++++++++++++++++++++++++++-----------
>  include/linux/thermal.h      | 10 +++++++
>  2 files changed, 60 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/thermal/of-thermal.c b/drivers/thermal/of-thermal.c
> index dc5093b..a53792b 100644
> --- a/drivers/thermal/of-thermal.c
> +++ b/drivers/thermal/of-thermal.c
> @@ -449,6 +449,54 @@ thermal_zone_of_add_sensor(struct device_node *zone,
>  }
>  
>  /**
> + * thermal_zone_of_get_sensor_id - get sensor ID from a DT thermal zone
> + * @tz_np: a valid thermal zone device node.
> + * @sensor_np: a sensor node of a valid sensor device.
> + * @id: a sensor ID pointer will be passed back.
> + *
> + * This function will get sensor ID from a given thermal zone node, use
> + * "thermal-sensors" as list name, and get sensor ID from first phandle's
> + * argument.
> + *
> + * Return: 0 on success, proper error code otherwise.
> + */
> +
> +int thermal_zone_of_get_sensor_id(struct device_node *tz_np,
> +				  struct device_node *sensor_np,
> +				  u32 *id)
> +{
> +	struct of_phandle_args sensor_specs;
> +	int ret;
> +
> +	ret = of_parse_phandle_with_args(tz_np,
> +					 "thermal-sensors",
> +					 "#thermal-sensor-cells",
> +					 0,
> +					 &sensor_specs);
> +	if (ret)
> +		return ret;
> +
> +	if (sensor_specs.np != sensor_np) {
> +		of_node_put(sensor_specs.np);
> +		return -ENODEV;
> +	}
> +
> +	if (sensor_specs.args_count >= 1) {
> +		*id = sensor_specs.args[0];
> +		WARN(sensor_specs.args_count > 1,
> +		     "%pOFn: too many cells in sensor specifier %d\n",
> +		     sensor_specs.np, sensor_specs.args_count);
> +	} else {
> +		*id = 0;
> +	}
> +
> +	of_node_put(sensor_specs.np);
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(thermal_zone_of_get_sensor_id);
> +
> +/**
>   * thermal_zone_of_sensor_register - registers a sensor to a DT thermal zone
>   * @dev: a valid struct device pointer of a sensor device. Must contain
>   *       a valid .of_node, for the sensor node.
> @@ -499,36 +547,22 @@ thermal_zone_of_sensor_register(struct device *dev, int sensor_id, void *data,
>  	sensor_np = of_node_get(dev->of_node);
>  
>  	for_each_available_child_of_node(np, child) {
> -		struct of_phandle_args sensor_specs;
>  		int ret, id;
>  
>  		/* For now, thermal framework supports only 1 sensor per zone */
> -		ret = of_parse_phandle_with_args(child, "thermal-sensors",
> -						 "#thermal-sensor-cells",
> -						 0, &sensor_specs);
> +		ret = thermal_zone_of_get_sensor_id(child, sensor_np, &id);
>  		if (ret)
>  			continue;
>  
> -		if (sensor_specs.args_count >= 1) {
> -			id = sensor_specs.args[0];
> -			WARN(sensor_specs.args_count > 1,
> -			     "%pOFn: too many cells in sensor specifier %d\n",
> -			     sensor_specs.np, sensor_specs.args_count);
> -		} else {
> -			id = 0;
> -		}
> -
> -		if (sensor_specs.np == sensor_np && id == sensor_id) {
> +		if (id == sensor_id) {
>  			tzd = thermal_zone_of_add_sensor(child, sensor_np,
>  							 data, ops);
>  			if (!IS_ERR(tzd))
>  				tzd->ops->set_mode(tzd, THERMAL_DEVICE_ENABLED);
>  
> -			of_node_put(sensor_specs.np);
>  			of_node_put(child);
>  			goto exit;
>  		}
> -		of_node_put(sensor_specs.np);
>  	}
>  exit:
>  	of_node_put(sensor_np);
> diff --git a/include/linux/thermal.h b/include/linux/thermal.h
> index 15a4ca5..5edffe6 100644
> --- a/include/linux/thermal.h
> +++ b/include/linux/thermal.h
> @@ -375,6 +375,9 @@ struct thermal_trip {
>  
>  /* Function declarations */
>  #ifdef CONFIG_THERMAL_OF
> +int thermal_zone_of_get_sensor_id(struct device_node *tz_np,
> +				  struct device_node *sensor_np,
> +				  u32 *id);
>  struct thermal_zone_device *
>  thermal_zone_of_sensor_register(struct device *dev, int id, void *data,
>  				const struct thermal_zone_of_device_ops *ops);
> @@ -386,6 +389,13 @@ struct thermal_zone_device *devm_thermal_zone_of_sensor_register(
>  void devm_thermal_zone_of_sensor_unregister(struct device *dev,
>  					    struct thermal_zone_device *tz);
>  #else
> +
> +static int thermal_zone_of_get_sensor_id(struct device_node *tz_np,
> +					 struct device_node *sensor_np,
> +					 u32 *id)
> +{
> +	return -ENOENT;
> +}
>  static inline struct thermal_zone_device *
>  thermal_zone_of_sensor_register(struct device *dev, int id, void *data,
>  				const struct thermal_zone_of_device_ops *ops)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
