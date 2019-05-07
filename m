Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7280016DE8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 01:42:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=h53FSNbeD6QIHWr1/mDRPainkQ0cWKnZd8H6M2+oaWk=; b=MIZvA+Ow8D/oti/BkDFl9r9dq
	RaUAO9yqpUGEz5Q3tvU7Z+BUh6gQ7em/RycaKcyc6LdvG4y082vdAJOHcQ3kSLycCLVg8PRx23HAq
	EXWsX+Y7n4SF9eo2VsHqkXQ06YKJY/Etnfm2rxhu9KmWQxRWTL7clBUhWHsi+lvAiNlomYZjpxB7M
	fZKdhqRgLKzlDpKRK7LSqtKYFqCBE9E/FBtK80XdZBIT4W0jQebtqPBmjgk/P1+IOJeUr7xF47nhN
	HjjkgHAfrGx66jcfuZNCvTf2fAbVy8JiGpcp+LPnoFSGqVgPxdcDQsy5974thdenNHy+7DtWY8Jjo
	n4L2N+/Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO9io-0008Oz-4p; Tue, 07 May 2019 23:42:06 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO9ig-0008OK-KF
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 23:42:00 +0000
Received: by mail-pl1-x642.google.com with SMTP id p15so1746668pll.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 16:41:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=6S43puIWlKpo3l0ctTYo9CwnfuvXVXnPWjkU3LnYrYE=;
 b=GjZeETvJT+eTWZ1uhPcJw7Bco8Ytbnq5Ktg3NTxlpUZBqTga93GcdN2/9ngvD/6dcR
 wSdJarS82zLEtv+15PpZwSzBaLZNI5NgBVmRGnYwfukvjjO+sPldzkBKeHcZl1499w8y
 FUxjc27cnAM2BwgvaxkDFedwHnI9x91/xkIfk2jgFMp48c9c95ZrVGtTRRdUsDRe0as/
 EiVWzqVG1BXnHnI1xyQhCDkeBV650Esz+Em4N2UsfBTuv9qku+0E2m3gCLfyTQFGZpIU
 gTUArMIb28nXA5QKC2GfnyXDKGNSqjtdqDRQwinPl51JXDJrc7BncgukshFwUma73Knj
 n1/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=6S43puIWlKpo3l0ctTYo9CwnfuvXVXnPWjkU3LnYrYE=;
 b=gulghxAaCz2FLYSQqyuwwK9f3U0cutoQVC9+PIdoqFgXeQk1kCTn8rab/OroYZOUV7
 XBYymyrslIYfnRqawYwHCXvU+Rc++T4oUXRv9O7sd3cDuSUyLj+50WbKned0t9OxC5Cv
 di8jmx0flzz5dCUXpAomp5PYuLNjQgI/e5nbnJkBJps2yBHbvA0NRjVkNQFzcmlzRbCp
 dF4MORn/6h8DeuZJVZTXZEVlpdmy8LxJheddMJj53IVsup+9SEjD+3RdM/NP9ky20ufe
 RzmhSgF2AYkKLkt3tVmDZD7TKipMsDH2U6IvC8vTKkj8UE7hQ1c2uDm+ys2b1j3efFhf
 /kLw==
X-Gm-Message-State: APjAAAULo5/LPYOVHhDPwA/yRy6xZYok9PuCj69p7pTIxmGIK50F51Yx
 bBot128RqdmizWZqFwlzb/E=
X-Google-Smtp-Source: APXvYqxccXn8zrgvQZyT7s/F9BOzQU9Kx3XQQw3HZ0E/XS1FVv/mBe9nJlyrYN/apNwFQfaXSQNwUA==
X-Received: by 2002:a17:902:bc83:: with SMTP id
 bb3mr41252727plb.303.1557272517350; 
 Tue, 07 May 2019 16:41:57 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 h189sm24700224pfc.125.2019.05.07.16.41.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 16:41:55 -0700 (PDT)
Subject: Re: [PATCH v3 2/2] hwmon: scmi: Scale values to target desired HWMON
 units
To: Florian Fainelli <f.fainelli@gmail.com>, linux-kernel@vger.kernel.org
References: <20190507230917.21659-1-f.fainelli@gmail.com>
 <20190507230917.21659-3-f.fainelli@gmail.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <690aff21-d68c-7d62-071f-ba1c9502e5ac@roeck-us.net>
Date: Tue, 7 May 2019 16:41:54 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190507230917.21659-3-f.fainelli@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_164158_668420_14C3FDC8 
X-CRM114-Status: GOOD (  22.35  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.1 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Jean Delvare <jdelvare@suse.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org, Sudeep Holla <sudeep.holla@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/7/19 4:09 PM, Florian Fainelli wrote:
> If the SCMI firmware implementation is reporting values in a scale that
> is different from the HWMON units, we need to scale up or down the value
> according to how far appart they are.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>   drivers/hwmon/scmi-hwmon.c | 43 +++++++++++++++++++++++++++++++++++++-
>   1 file changed, 42 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/hwmon/scmi-hwmon.c b/drivers/hwmon/scmi-hwmon.c
> index a80183a488c5..7820854e5954 100644
> --- a/drivers/hwmon/scmi-hwmon.c
> +++ b/drivers/hwmon/scmi-hwmon.c
> @@ -18,6 +18,47 @@ struct scmi_sensors {
>   	const struct scmi_sensor_info **info[hwmon_max];
>   };
>   
> +static inline u64 __pow10(u8 x)
> +{
> +	u64 r = 1;
> +
> +	if (unlikely(x > 18))
> +		return r;
> +

Strictly speaking that would be 19 (10^19=0x8AC7230489E80000),
and I am not sure if returning 1 in that case is such a good idea.
If you really want to handle over/underflow situations, it should
be in the calling code.

Thanks,
Guenter

> +	while (x--)
> +		r *= 10;
> +
> +	return r;
> +}
> +
> +static u64 scmi_hwmon_scale(const struct scmi_sensor_info *sensor, u64 value)
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
> +	if (scale > 0)
> +		value *= f;
> +	else
> +		value = div64_u64(value, f);
> +
> +        return value;
> +}
> +
>   static int scmi_hwmon_read(struct device *dev, enum hwmon_sensor_types type,
>   			   u32 attr, int channel, long *val)
>   {
> @@ -30,7 +71,7 @@ static int scmi_hwmon_read(struct device *dev, enum hwmon_sensor_types type,
>   	sensor = *(scmi_sensors->info[type] + channel);
>   	ret = h->sensor_ops->reading_get(h, sensor->id, false, &value);
>   	if (!ret)
> -		*val = value;
> +		*val = scmi_hwmon_scale(sensor, value);
>   
>   	return ret;
>   }
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
