Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A6018181
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 23:10:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=syP1GD1td6cA4LsIn6W3UjBjGqeBI4PUNBCknCFrpSQ=; b=J/qyOExeQb0ZTm
	990R97CESl75JlZO+7qJgpXmV4p13QI1O/ZZ0grkZ/AdmJYUDNvctGc4kJjzVmYI0wq1JbniCKZ2x
	2zZMuw4Onaq+QFEOk/8fSAR6TSSqC+zSsIE8UeB3/RDT+1irnQBCEzVTjMwIvQkKpwYG3+MEYOROx
	KsDE87RkAMJMOFOl05VcD2GLHXo6LXSZrqQwPlIO/l1w2D1nuI518s4g+GekKS/zy/GhEEOFM/oK9
	E12EUDWagGCvf30sS3u3mw5txpmqDVYzUkfaz9xIGOB1A9lIKdm67SJ4yovjfpwNK+cx/e4KK42fA
	a8bk3yDH5igRLyODVaEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOTpd-0007bq-RK; Wed, 08 May 2019 21:10:29 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOTpX-0007b7-1P
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 21:10:24 +0000
Received: by mail-pg1-x544.google.com with SMTP id h17so36472pgv.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 14:10:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=07BOO7U5xcapfXnneDkgQZbWTgcEELbJBQkQs75ET+I=;
 b=f9p94f0yEajnquy6qgPWpbX/r9AqRq8MGMxzjYW+ZKDzIoqzAPhoN23BTCY7E5c0z1
 Jw4WtWkrsEuq8qZuswzE65cW0QgHTaqzYLeL/gb1aBSIpp14pNuAekpKMhJ/oUjIlHwl
 V22C3AgKvmSqePmFLAKjW7KqAJeRx/90sgCY6D7sONo57GkiM1wFsQXZEDMQjLN2NV2l
 zVO7v1kEMX6YUkeixgrZOOdVpduYJHE9+U9sDOXLqbBJHSw2HkmaMBe+X9WB3ARCwDn3
 0bTZEQrwY9yZL9d6c3L2vIpYU9JlYHDho0CXzl+8qU/Rx1rHvwJTjV1RssxdbhMJl6WZ
 At0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=07BOO7U5xcapfXnneDkgQZbWTgcEELbJBQkQs75ET+I=;
 b=OpqB9DY5zj/OPRcEzDoxeHrdFQDtZTULOtMh4phEAfkfj61XkLIb/rhOtIZq0qbW0/
 VWn6hkNvTgwJ2y+gvc6bCCfA7KIz7vz3e9mjQooi1odYLGmBPkylsJE76Cyc0wdU1aLt
 NlGPp6E1iJMMttVEiIdkVWdP/7Q9MfMyy/mcQ/5WKoRHzpF5Ojx9OZSbundCwMMOhQrS
 63USYCQAlZQJ4e+isLe16jjaJajA2f/GFh4Z/hvP1JSSKCh5PUESI3SacnON2w/JcWRv
 sLKCBWbpyMo/GEbK0mW1aikbZX4iQfSk5kSVU5dw2hTn+dc5j6nZe2B48VTIaUBIIyXd
 M4vA==
X-Gm-Message-State: APjAAAUa8C9deoboCNcbXwR+4XXRM54MCdXGzxVPR6m/qdfDATEhmPSb
 jbvow55tOmHJEalqVEHDlaU=
X-Google-Smtp-Source: APXvYqyPzHqkoKsaUvrCiik7J8XYWuRdshAizY9cMBTAAtCyDlW8ZS16ofvebzy7sM2sYQCF0cRBKQ==
X-Received: by 2002:a65:6644:: with SMTP id z4mr417902pgv.300.1557349819400;
 Wed, 08 May 2019 14:10:19 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id d67sm228765pfa.35.2019.05.08.14.10.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 14:10:18 -0700 (PDT)
Date: Wed, 8 May 2019 14:10:17 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH v5 2/2] hwmon: scmi: Scale values to target desired HWMON
 units
Message-ID: <20190508211017.GA29998@roeck-us.net>
References: <20190508184635.5054-1-f.fainelli@gmail.com>
 <20190508184635.5054-3-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190508184635.5054-3-f.fainelli@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_141023_108937_8BDFC959 
X-CRM114-Status: GOOD (  18.06  )
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

On Wed, May 08, 2019 at 11:46:35AM -0700, Florian Fainelli wrote:
> If the SCMI firmware implementation is reporting values in a scale that
> is different from the HWMON units, we need to scale up or down the value
> according to how far appart they are.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

Question is which tree this series should go through. I am fine with arm.

Thanks,
Guenter

> ---
>  drivers/hwmon/scmi-hwmon.c | 45 ++++++++++++++++++++++++++++++++++++++
>  1 file changed, 45 insertions(+)
> 
> diff --git a/drivers/hwmon/scmi-hwmon.c b/drivers/hwmon/scmi-hwmon.c
> index a80183a488c5..2c7b87edf5aa 100644
> --- a/drivers/hwmon/scmi-hwmon.c
> +++ b/drivers/hwmon/scmi-hwmon.c
> @@ -18,6 +18,47 @@ struct scmi_sensors {
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
> +	if (abs(scale) > 19)
> +		return -E2BIG;
> +
> +	f = __pow10(abs(scale));
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
> @@ -29,6 +70,10 @@ static int scmi_hwmon_read(struct device *dev, enum hwmon_sensor_types type,
>  
>  	sensor = *(scmi_sensors->info[type] + channel);
>  	ret = h->sensor_ops->reading_get(h, sensor->id, false, &value);
> +	if (ret)
> +		return ret;
> +
> +	ret = scmi_hwmon_scale(sensor, &value);
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
