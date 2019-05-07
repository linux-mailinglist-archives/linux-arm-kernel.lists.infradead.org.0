Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 328B616CF1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 23:14:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YALL3PyGJieEfJsCxqI9uQXbSqyiOLTbT2h6XuxIJ7E=; b=Myqq+uC9zjbYKH
	3O3+qZNgUSIvogqWlZatZqE+g7ovz7CR3CjjGoiMaT3RIOtzpEHRipT0tGrYPNDewclmPPt4zogts
	yCQMadhhHqRLQQZl/Z5ybZcVeKiigBs9ylXpNv0g7ah4UnjVI/14bVCLry9M78Q8OJ8auUw0q5SzH
	UJou0eB4k0v7uZmrVz00VS7L+F+a0isvge7y03Z6G3YqC1jtDhT0KgKtyoqOe7Nl0CPfCQpuiHsgE
	/nbgCH2gm22/w51mT4wAjZ9Bk7ONxJBMk7EIHP49C8wyauw2x6huWmpoqkecw/yNQNitgBNQ7zzx6
	w6UT/AmnHjJ9UbwVsIiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO7QF-0000oc-0C; Tue, 07 May 2019 21:14:47 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO7Q8-0000oJ-ED
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 21:14:41 +0000
Received: by mail-pl1-x644.google.com with SMTP id d3so4766526plj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 14:14:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=jnh3OyB3pg4krglKKAZTgjWeTb51Mu7a+nGj/rrHdZU=;
 b=TGP+20CMVev4R/LFl07QzMVxWxt0d/zOI9TOl1yKaVPsRfcbEQde4vZelOCJ90Kw8/
 fzcKpW7H7ORKJgRfpHe41rGiWIa+rZ8/mvLmAREoCVxVhTmUzxwmN7B+Dp79ryCx9Ngt
 GMdcpOJL9gE6WNS1HY4/Ll1BjGLDlKDD5ciIlbUZ4KNnh8NEZC/hERuJALvddUgjdIN7
 KTQAEsACZeznHS3p2oCKXOy4WSp5bQetblpTLRpQWV4sxnVzHyhfWUCPoaMt0h1Sw6mA
 udtv1DnEzo2iJ8HIUTej0mfIiAnWg+9VlPykxFZmEPLuMZ5myJB1GtjOqPTyga4M+t6E
 fadw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=jnh3OyB3pg4krglKKAZTgjWeTb51Mu7a+nGj/rrHdZU=;
 b=EzrV8Y/gKTxVNkIHxCo1aOVDptSZDQu6Fx2aRYbgHnajsr1Jyb0zoMg1U/UVb5TMPF
 81e6vnlcunmn93WdTUFb87qI3l2PsHtr+1Te1XvaB5wTDPrSh3B6w/lyAUVQptI6m60s
 xTn/wivfprsv1OfVvJ4echJRe0aU0ONVegogghIRgTraseMQwI7Rd+D1fUZsNHKLrcnh
 3Q4neREaRTsp+pJ4IFWmyiA4d1rJ/tQx92XHyj3SXZczOIIVnFBXbc3sI+q7D++5eADR
 V14pZMvYsLWAd1LUUM4UAd1Qj2pDz87SZD3Jh/1uzjO+5qMCNQeLXzXRJ4ova//ISFCM
 lBqQ==
X-Gm-Message-State: APjAAAUAdGt4F+aZc0+28QuFIIetxYmiZVgetdaORU460/7aWssUlpZb
 Y7z/MadQdqgwmEVGBeKOcPg=
X-Google-Smtp-Source: APXvYqyyPSuo9mZZGgAtdJCo3Lx/KJweX4opkpet3eADhTkNs1WvpjzxIGgUqufpu5tKZ6oFrhiLbA==
X-Received: by 2002:a17:902:9686:: with SMTP id
 n6mr43464175plp.282.1557263679684; 
 Tue, 07 May 2019 14:14:39 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id v40sm7925116pgn.17.2019.05.07.14.14.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 14:14:38 -0700 (PDT)
Date: Tue, 7 May 2019 14:14:37 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH v2 3/3] hwmon: scmi: Scale values to target desired HWMON
 units
Message-ID: <20190507211437.GB4951@roeck-us.net>
References: <20190507193504.28248-1-f.fainelli@gmail.com>
 <20190507193504.28248-4-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190507193504.28248-4-f.fainelli@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_141440_497415_975BFB32 
X-CRM114-Status: GOOD (  19.16  )
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
 Jean Delvare <jdelvare@suse.com>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 07, 2019 at 12:35:04PM -0700, Florian Fainelli wrote:
> If the SCMI firmware implementation is reporting values in a scale that
> is different from the HWMON units, we need to scale up or down the value
> according to how far appart they are.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  drivers/hwmon/scmi-hwmon.c | 30 +++++++++++++++++++++++++++++-
>  1 file changed, 29 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/hwmon/scmi-hwmon.c b/drivers/hwmon/scmi-hwmon.c
> index a80183a488c5..5c244053efc8 100644
> --- a/drivers/hwmon/scmi-hwmon.c
> +++ b/drivers/hwmon/scmi-hwmon.c
> @@ -18,6 +18,34 @@ struct scmi_sensors {
>  	const struct scmi_sensor_info **info[hwmon_max];
>  };
>  
> +static u64 scmi_hwmon_scale(const struct scmi_sensor_info *sensor, u64 value)
> +{
> +	s8 scale = sensor->scale;
> +	unsigned long long f;

do_div() takes either an uint32 or an unsigned long as second parameter,
so this doesn't really help. If you want to be able to handle scales
outside the 32-bit range, you would have to use u64 and div64_u64().

Guenter

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
> +	__pow10(abs(scale), f);
> +	if (scale > 0)
> +		value *= f;
> +	else
> +		do_div(value, f);
> +
> +        return value;
> +}
> +
>  static int scmi_hwmon_read(struct device *dev, enum hwmon_sensor_types type,
>  			   u32 attr, int channel, long *val)
>  {
> @@ -30,7 +58,7 @@ static int scmi_hwmon_read(struct device *dev, enum hwmon_sensor_types type,
>  	sensor = *(scmi_sensors->info[type] + channel);
>  	ret = h->sensor_ops->reading_get(h, sensor->id, false, &value);
>  	if (!ret)
> -		*val = value;
> +		*val = scmi_hwmon_scale(sensor, value);
>  
>  	return ret;
>  }
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
