Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5732D17FD2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 20:33:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VNPrIfhSgywdgohfiCYdXPNKRUQEafl1dYaapOh8QQA=; b=cipqvnrV0Xe6vg
	xdXUudsnJITI3hxiCObblE7lnBWMNkRfVuilxJAgM3sEaZBrG2AMiRbM/8Q/BiaffTJNo3BxJaJw4
	tx6YdmMpc3uvAazsDVxBF5aYqYWi8DpuWP5T1XwVfefbTtS4akY4z+fUSw0Vhhf4ou7zirFX5A/in
	/N0pn+FPRO1Y4QDNdMmUzJolykqGOlQh5X4s8Wli/sWzzUJ4YB9wMNjm5aNNNrEslkeGlUjtoyWQx
	GfpHxV1i2ybvyE2WGygTxToxClXMGxbpj6UIyxW8wyp+laaAqRDxjFcPYBBoEPHc6UVmIhpwECNMx
	aVRrohtmTdmA7Xb5e3Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hORNA-00029W-NW; Wed, 08 May 2019 18:32:56 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hORN2-00028S-MZ
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 18:32:50 +0000
Received: by mail-pg1-x544.google.com with SMTP id j26so10514804pgl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 11:32:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=w8iERNhjq4OzlLmPnHYUtIOOz9hjBDMOTj3lfmGbD88=;
 b=csOjKCZWFc7h/tvZm5iqctBGtliiS0aJWn6m4UCGgErAj3BADJf1b/pOoDIi2xbnLk
 IUIQYP6o81N8xJmmjgjWTtJ54UqTLLEO+Q6vJdk0VLZ5+cz3urCOJzaz5bp2Cm9yprNt
 o+2/m/66V1r0iUNn0RS6rP8/24NeN8EPVNbB3egVuSaIuLcmYrtsVy+TxCq0auMO8fqj
 NFie/xcxbkhm05WJn2Imb3IxYvSpU3p5ZIhcCPHwn+6KncdSHWZ/4EPVgsRHetsuW3/S
 Xnuorw9H65DeKNFlp052rMx8UZJSl1ttTHO3LukVYiJhNYSDN7NU+MtEcF1Oqa7nS2mr
 Ednw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=w8iERNhjq4OzlLmPnHYUtIOOz9hjBDMOTj3lfmGbD88=;
 b=pE+PtiGCb3Rjm/aKY8WpvW37EDcibtTKJ1IQQYxPDkThgykq6BVqLwo3nVVENm/IdO
 qV7ej7wBS/h0YhYkZ8fgUFQiDQhNpJLr5QJHeDTP5Cu6BSTdVkIw5EMY0lFwac8Yrwoa
 1v80DoFEQDhXv0HgdccPDtaDVXIsVdx3eO1mArCL+SEHK1ulNdmHS3YrmHvBN3wvKOX2
 Zd0v7OssdVvg5FPkJf1uRJNwqe5jAOyMlB/fTOq9e5INsE1Prg9o/0x5j7VR0F8DwhWO
 wV39OEKkKvGzhvl1CKjsrmmlIjibfbcaGF3EYXYulItiGsIR0q/DgTLNlmd5aCBYMC2w
 fIlg==
X-Gm-Message-State: APjAAAXBVb15EEfGNroVhe/1wDC0Z7+zVwc/CbsLsWvIFe7OJywYWZf9
 zLAromJAtK/haYlaIt+FapQ=
X-Google-Smtp-Source: APXvYqwLYUVaKYkkXyJSAw3vwXScZuxYcOcqIn/p6Q7XM2+c5JUQm0gApMQMJJweVC7xeA+dHN91Sw==
X-Received: by 2002:aa7:8252:: with SMTP id e18mr50800633pfn.105.1557340367126; 
 Wed, 08 May 2019 11:32:47 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id a18sm22025285pff.6.2019.05.08.11.32.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 11:32:45 -0700 (PDT)
Date: Wed, 8 May 2019 11:32:44 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH v4 2/2] hwmon: scmi: Scale values to target desired HWMON
 units
Message-ID: <20190508183244.GA25133@roeck-us.net>
References: <20190508170035.19671-1-f.fainelli@gmail.com>
 <20190508170035.19671-3-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190508170035.19671-3-f.fainelli@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_113248_762412_30E7253E 
X-CRM114-Status: GOOD (  18.70  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.1 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: "open list:HARDWARE MONITORING" <linux-hwmon@vger.kernel.org>,
 Jean Delvare <jdelvare@suse.com>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Florian,

On Wed, May 08, 2019 at 10:00:35AM -0700, Florian Fainelli wrote:
> If the SCMI firmware implementation is reporting values in a scale that
> is different from the HWMON units, we need to scale up or down the value
> according to how far appart they are.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  drivers/hwmon/scmi-hwmon.c | 46 ++++++++++++++++++++++++++++++++++++++
>  1 file changed, 46 insertions(+)
> 
> diff --git a/drivers/hwmon/scmi-hwmon.c b/drivers/hwmon/scmi-hwmon.c
> index a80183a488c5..4399372e2131 100644
> --- a/drivers/hwmon/scmi-hwmon.c
> +++ b/drivers/hwmon/scmi-hwmon.c
> @@ -7,6 +7,7 @@
>   */
>  
>  #include <linux/hwmon.h>
> +#include <linux/limits.h>
>  #include <linux/module.h>
>  #include <linux/scmi_protocol.h>
>  #include <linux/slab.h>
> @@ -18,6 +19,47 @@ struct scmi_sensors {
>  	const struct scmi_sensor_info **info[hwmon_max];
>  };
>  
> +static inline u64 __pow10(u8 x)
> +{
> +	u64 r = 1;
> +
> +	while (x--)
> +		r *= 10;
> +
> +	return r;
> +}
> +
> +static int scmi_hwmon_scale(const struct scmi_sensor_info *sensor, u64 *value)
> +{
> +	s8 scale = sensor->scale;
> +	u64 f;
> +
> +	switch (sensor->type) {
> +	case TEMPERATURE_C:
> +	case VOLTAGE:
> +	case CURRENT:
> +		scale += 3;
> +		break;
> +	case POWER:
> +	case ENERGY:
> +		scale += 6;
> +		break;
> +	default:
> +		break;
> +	}
> +
> +	f = __pow10(abs(scale));
> +	if (f == U64_MAX)
> +		return -E2BIG;

Unfortunately that is not how integer overflows work.

A test program with increasing values of scale reports:

0: 1
...
18: 1000000000000000000
19: 10000000000000000000
20: 7766279631452241920
21: 3875820019684212736
22: 1864712049423024128
23: 200376420520689664
24: 2003764205206896640
...
61: 11529215046068469760
62: 4611686018427387904
63: 9223372036854775808
64: 0
...

You'll have to check for abs(scale) > 19 if you want to report overflows.

Guenter

> +
> +	if (scale > 0)
> +		*value *= f;
> +	else
> +		*value = div64_u64(*value, f);
> +
> +        return 0;
> +}
> +
>  static int scmi_hwmon_read(struct device *dev, enum hwmon_sensor_types type,
>  			   u32 attr, int channel, long *val)
>  {
> @@ -29,6 +71,10 @@ static int scmi_hwmon_read(struct device *dev, enum hwmon_sensor_types type,
>  
>  	sensor = *(scmi_sensors->info[type] + channel);
>  	ret = h->sensor_ops->reading_get(h, sensor->id, false, &value);
> +	if (ret)
> +		return ret;
> +
> +	ret = scmi_hwmon_scale(sensor, value);
>  	if (!ret)
>  		*val = value;
>  
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
