Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA6017FD3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 20:33:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NM2gmQm+XvXACl1mIuFAmE1NBIqLC7adJwblmwnTxmE=; b=M0rXLie1NcV9RS
	uwuhIx+Kq5NRg0H+d9C+XGgmySpDWckMP1e6jgl/AGVYhf3FTZtIEgGlm9NC27NY1rFQ4N+HY4hfa
	xgQsMI/2DQ3/bwMECLdoGhGDBf8b+r5x3958L1GtsJWFORPM4O+hVdOcP59Bxsch7ihMJW4AiMRfU
	zthKaiy3AhU2qtfv+i9dBb0ReBiLSEbkwbCkm3rFUaHzhnfExjQeZRK5Ya11RvRBHi/ds/Aq17aJY
	lkAQKoRzaLEtG7I7Yw0MMVSc6viJfHJIZcM6j4Xy36f1/guzev5saLrAd9U+Qqo37xRu6g7HDW6HU
	GHmRtnj3nOJHrHDfyp6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hORNu-0002Xu-7o; Wed, 08 May 2019 18:33:42 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hORNl-0002Wu-2I
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 18:33:34 +0000
Received: by mail-pg1-x544.google.com with SMTP id t22so10501040pgi.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 11:33:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=LXVN51kMKLvBL0dLpkFPlbcwdq5OBL6dF2S+lH8NdUo=;
 b=ZaRMlWlOGVEUY3p5rJSP6iKCWgdPtK0sc4DCqjlykzCgXWTRMXxeNhpUyB4ixEHNB6
 gH4XWt6y/GSRy5WCwTplMPe9wbzxFiqU7Jg1/RawWpNcL0QVzvfpo8B/i1g/2lNF2cRQ
 eMfJ/ofhPMCZg7CaMCTZ1UjlwwE4QGmqeENBMgAtcFkBVRfuzkqCkY/q4OlBjxam9n4W
 oCYdSv4u0w1gsOSxi7Yg0VC0zqxIZw8ztnwlmDcBY/ufYQPeamaJkltZd1t7bwA1SPAg
 ABrGfRd1IQJqYkBqaXTUDO+nvXEYqQccAeJ2p7uP7bRU2aWqqS5gKQfuJZie4OpTUUXy
 GzHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=LXVN51kMKLvBL0dLpkFPlbcwdq5OBL6dF2S+lH8NdUo=;
 b=lQ6wdF9fgOS/yHFuA3OocXNyY4U2b1HKKWl2xefHeqvsbdUIDeC4519EMfjC4x2mW/
 ZG7Tj9gwDkoNNptjlCFp07n2UqbT7F+yLmKxUWfhwm1qutbQCWOs404ip5guioJbaITz
 p2VuxCJ0wb1ZvOiGoLrbJ5gdNyOxfyKx+twUptOocnjwAR5HKmgCf/d1xJ6qqXSq0YGU
 IBUmat5my458srBSugRJgRZROXxSmXM450V8kOVkMG5pu6D3XNwdKDdiTJs19b+QnVK2
 9faxFHT0nEZNZyi90HATudtGnq0M2M93rnYQAaItBOgqdtj+Za1xoDIR4cwPW8izNoEi
 rxug==
X-Gm-Message-State: APjAAAXiB2KJRJuR+izI9ZmgOI/pByI2TvGlAj0MlhCGC/WMbjy0hFkr
 2kA4wv7729/sa1GYgXzo6m0=
X-Google-Smtp-Source: APXvYqyBXVmlCGWEwfHRd1cbvSu1ihTjoAjh6LF5aQaY9Zid88MQ3NlobG8YJzU+ahGXYu1ABzUIGA==
X-Received: by 2002:a63:b1d:: with SMTP id 29mr49249065pgl.103.1557340412681; 
 Wed, 08 May 2019 11:33:32 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id k26sm21005811pfi.136.2019.05.08.11.33.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 11:33:32 -0700 (PDT)
Date: Wed, 8 May 2019 11:33:31 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH v4 1/2] firmware: arm_scmi: Fetch and store sensor scale
Message-ID: <20190508183331.GB25133@roeck-us.net>
References: <20190508170035.19671-1-f.fainelli@gmail.com>
 <20190508170035.19671-2-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190508170035.19671-2-f.fainelli@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_113333_114941_2E6196FE 
X-CRM114-Status: GOOD (  17.27  )
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

On Wed, May 08, 2019 at 10:00:34AM -0700, Florian Fainelli wrote:
> In preparation for dealing with scales within the SCMI HWMON driver,
> fetch and store the sensor unit scale into the scmi_sensor_info
> structure. In order to simplify computations for upper layer, take care
> of sign extending the scale to a full 8-bit signed value.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
>  drivers/firmware/arm_scmi/sensors.c | 6 ++++++
>  include/linux/scmi_protocol.h       | 1 +
>  2 files changed, 7 insertions(+)
> 
> diff --git a/drivers/firmware/arm_scmi/sensors.c b/drivers/firmware/arm_scmi/sensors.c
> index b53d5cc9c9f6..21353470a740 100644
> --- a/drivers/firmware/arm_scmi/sensors.c
> +++ b/drivers/firmware/arm_scmi/sensors.c
> @@ -34,6 +34,8 @@ struct scmi_msg_resp_sensor_description {
>  		__le32 attributes_high;
>  #define SENSOR_TYPE(x)		((x) & 0xff)
>  #define SENSOR_SCALE(x)		(((x) >> 11) & 0x3f)
> +#define SENSOR_SCALE_SIGN	BIT(5)
> +#define SENSOR_SCALE_EXTEND	GENMASK(7, 6)
>  #define SENSOR_UPDATE_SCALE(x)	(((x) >> 22) & 0x1f)
>  #define SENSOR_UPDATE_BASE(x)	(((x) >> 27) & 0x1f)
>  		    u8 name[SCMI_MAX_STR_SIZE];
> @@ -140,6 +142,10 @@ static int scmi_sensor_description_get(const struct scmi_handle *handle,
>  			s = &si->sensors[desc_index + cnt];
>  			s->id = le32_to_cpu(buf->desc[cnt].id);
>  			s->type = SENSOR_TYPE(attrh);
> +			s->scale = SENSOR_SCALE(attrh);
> +			/* Sign extend to a full s8 */
> +			if (s->scale & SENSOR_SCALE_SIGN)
> +				s->scale |= SENSOR_SCALE_EXTEND;
>  			strlcpy(s->name, buf->desc[cnt].name, SCMI_MAX_STR_SIZE);
>  		}
>  
> diff --git a/include/linux/scmi_protocol.h b/include/linux/scmi_protocol.h
> index 3105055c00a7..9ff2e9357e9a 100644
> --- a/include/linux/scmi_protocol.h
> +++ b/include/linux/scmi_protocol.h
> @@ -144,6 +144,7 @@ struct scmi_power_ops {
>  struct scmi_sensor_info {
>  	u32 id;
>  	u8 type;
> +	s8 scale;
>  	char name[SCMI_MAX_STR_SIZE];
>  };
>  
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
