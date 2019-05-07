Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2409816530
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 15:55:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=U9JOATEEZWT8ZSSt8UA9uwZGn28BsMceQadH4BIWQO8=; b=SbFm4X9SqTmU/4RcS7toJZAtW
	KsnH0FBPAtSc7FB2Xgibjk85Vmu83Yw1KmYo6xFlsRqC9umWPG/bsLAXOoDJ07mf3rTMxDtLdKJV+
	V78GAh4UMgj0tVcu2V7Cq+l2jIs5mLwG4V2WqjwajqaHHjL0MYkdIqqsRyaYjq+c7pQKmktWQxAoQ
	yjaUI+QBCdktKErNMBtFaADxyLlk91ZbO8xolrXiMdN0fNa317dpRP2xdQJlFZL3inUep21F6jLdY
	WAGMWUzrCRNiMwhO86YNcQ4TdJZ2ppzyjPOvnABiR4Y7pOAsj6Ua8Y5jxMXJhlbTtHm34mHBo7Aea
	sCFCDJc0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO0ZT-0005x5-4Y; Tue, 07 May 2019 13:55:51 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO0ZM-0005wg-Ki
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 13:55:46 +0000
Received: by mail-pl1-x644.google.com with SMTP id bi2so8229241plb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 06:55:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=W9mmQAVmk1/1WRGRy8uFuq4PJRvCk5WRbIKsqF6QNjM=;
 b=P6ybAWNQyD1YpEGOcJiN5tx6vzTMqtcdSSwpC5VGv2sLVtDQjlpFqlB/UyjWAGbIS3
 QqqTZjJ+rXRg8xHgpgWaBiGnlTSPjmTD2x6Wl8rzL/QJJm9DLlNZovO2J27QSCXZ6vaf
 W6eL6mA9KD0MNSdHxWTchPpnEWfbNE0WPQSNrURfG1ECr31fNfaUEL/DDv0wIDFdiYOK
 Bv9kJs5EtZ6LYGeYtnkvmdy8r1BQDZETrkP9TEPrpka7I4Gv4hDbjdiliTi26uOJyB3i
 hUWfKcryJFZCqW+OutKd3L+/2N/d39FAb/0PBKuzKfD/fs0MpZsA4uB1OjDp3pGDayua
 XApA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=W9mmQAVmk1/1WRGRy8uFuq4PJRvCk5WRbIKsqF6QNjM=;
 b=F9C6mB6TqFkXo23c/UZalhy5cbWsMHrubYNsNXzT1Gn+9xWAgQd1MNUtLyLMWmS3Ng
 XiN4etGdaqms29iL1U2/ecwDPtP6A28WgBAbbaT54a8FD81dJbmyJTHvdJi29iZCaV52
 kSwd8oSnPAcAIoCbunTXeEWlKA3fDfaGCl1BDyc04GbMBig7BVmd/XyV9XdG0ZoWM8BC
 m5AraEVQl05VALhXzOzF2ylrd7p+n22SCBv7dIAcuAYcXVVs5yVAXupF1fW9GhDjNwjO
 In3fyZThQE1ULLH0PtL0SMefAKQFsiFZmnQ8o/vainee+CpTbyCuk0Kia8pyCcqVcDpo
 wbLw==
X-Gm-Message-State: APjAAAWiaDi4LGSHzIwwo4LJjuMQn9jiMVz3ESS/Hc41Xnx60DqzVZ/q
 sj6gSBgHZZk6TsCf6NIzjhM=
X-Google-Smtp-Source: APXvYqz/Zkrl14vnslnQR8IBibK0hvVcuftBry4tRHN1LUOlfPu5i8kFvuS53+UxvCxZ2gPSRkKVkw==
X-Received: by 2002:a17:902:5c6:: with SMTP id
 f64mr26385253plf.208.1557237343851; 
 Tue, 07 May 2019 06:55:43 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 i75sm24693400pfj.80.2019.05.07.06.55.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 06:55:42 -0700 (PDT)
Subject: Re: [PATCH 2/2] hwmon: scmi: Scale values to target desired HWMON
 units
To: Florian Fainelli <f.fainelli@gmail.com>, linux-kernel@vger.kernel.org
References: <20190506224109.9357-1-f.fainelli@gmail.com>
 <20190506224109.9357-3-f.fainelli@gmail.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <a4dd5f4f-af12-8783-c612-cf3e88a9b94f@roeck-us.net>
Date: Tue, 7 May 2019 06:55:41 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190506224109.9357-3-f.fainelli@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_065544_720907_3DC212BD 
X-CRM114-Status: GOOD (  26.31  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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

Hi Florian,

On 5/6/19 3:41 PM, Florian Fainelli wrote:
> If the SCMI firmware implementation is reporting values in a scale that
> is different from the HWMON units, we need to scale up or down the value
> according to how far appart they are.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>   drivers/hwmon/scmi-hwmon.c | 55 +++++++++++++++++++++++++++++++-------
>   1 file changed, 46 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/hwmon/scmi-hwmon.c b/drivers/hwmon/scmi-hwmon.c
> index a80183a488c5..e9913509cb88 100644
> --- a/drivers/hwmon/scmi-hwmon.c
> +++ b/drivers/hwmon/scmi-hwmon.c
> @@ -18,6 +18,51 @@ struct scmi_sensors {
>   	const struct scmi_sensor_info **info[hwmon_max];
>   };
>   
> +static enum hwmon_sensor_types scmi_types[] = {
> +	[TEMPERATURE_C] = hwmon_temp,
> +	[VOLTAGE] = hwmon_in,
> +	[CURRENT] = hwmon_curr,
> +	[POWER] = hwmon_power,
> +	[ENERGY] = hwmon_energy,
> +};
> +
> +static u64 scmi_hwmon_scale(const struct scmi_sensor_info *sensor, u64 value)
> +{
> +	u64 scaled_value = value;

I don't think that variable is necessary.

> +	s8 desired_scale;

Just scale ? Also, you could assign scale here directly, and subtract
the offset below. Then "n" would not be necessary.
Such as
	s8 scale = sensor->scale;	// assuming scale is s8
	...
	case CURRENT:
		scale += 3;
	...

That would also be less confusing, since it would avoid the double
negation.

> +	int n, p;

> +
> +	switch (sensor->type) {
> +	case TEMPERATURE_C:
> +	case VOLTAGE:
> +	case CURRENT:
> +		/* fall through */
Unnecessary comment

> +		desired_scale = -3;
> +		break;
> +	case POWER:
> +	case ENERGY:
> +		/* fall through */
Unnecessary comment.

> +		desired_scale = -6;
> +		break;
> +	default:
> +		return scaled_value;

Here we presumably want a scale of 0. However, if the scale passed
from SCMI is, say, -5 or +5, we return the original (unadjusted)
value. Seems to me we would still want to adjust the value to match
hwmon expectations. Am I missing something ?

> +	}
> +
> +	n = (s8)sensor->scale - desired_scale;
> +        if (n == 0)

Indentation seems off here.

> +                return scaled_value;
> +
> +	for (p = 0; p < abs(n); p++) {
> +		/* Need to scale up from sensor to HWMON */
> +		if (n > 0)
> +			scaled_value *= 10;
> +		else
> +			do_div(scaled_value, 10);
> +	}

Something like

	factor = pow10(abs(scale));
	if (scale > 0)
		value *= factor;
	else
		do_div(value, factor);

would avoid the repeated abs() and do_div(). Unfortunately there is
no pow10() helper, so you would have to write that. Still, I think
that would be much more efficient.

Thanks,
Guenter

> +
> +        return scaled_value;
> +}
> +
>   static int scmi_hwmon_read(struct device *dev, enum hwmon_sensor_types type,
>   			   u32 attr, int channel, long *val)
>   {
> @@ -30,7 +75,7 @@ static int scmi_hwmon_read(struct device *dev, enum hwmon_sensor_types type,
>   	sensor = *(scmi_sensors->info[type] + channel);
>   	ret = h->sensor_ops->reading_get(h, sensor->id, false, &value);
>   	if (!ret)
> -		*val = value;
> +		*val = scmi_hwmon_scale(sensor, value);
>   
>   	return ret;
>   }
> @@ -91,14 +136,6 @@ static int scmi_hwmon_add_chan_info(struct hwmon_channel_info *scmi_hwmon_chan,
>   	return 0;
>   }
>   
> -static enum hwmon_sensor_types scmi_types[] = {
> -	[TEMPERATURE_C] = hwmon_temp,
> -	[VOLTAGE] = hwmon_in,
> -	[CURRENT] = hwmon_curr,
> -	[POWER] = hwmon_power,
> -	[ENERGY] = hwmon_energy,
> -};
> -
>   static u32 hwmon_attributes[] = {
>   	[hwmon_chip] = HWMON_C_REGISTER_TZ,
>   	[hwmon_temp] = HWMON_T_INPUT | HWMON_T_LABEL,
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
