Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB6E816494
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 15:31:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vrKhsyJhpUqwXbOdyQRRq3Cz68WRqe7ZeKCnHTGXwY4=; b=a+rSsKToF0lTCqO4E8tXBjzkQ
	fXUMAOSvDqlvPZoV2esLmfeFnO/CxqeXOP/JF8OVmj5be+U+plm3t0aFY/IptG0OQ2nT7dlq1yUIp
	0fJdc9/U/99jU2ZEYsc9fXWkRwYCFox9V82eLBYnLhZxYc9g3u/kwLUnwdKCuZIkRnXRDS/ughe2Q
	x/bVR6Kisz99NRBfa8AjFlyDYzD3OdKM7uCXYtyEYWLoLis89QXF3yv1PvFEn6rwFtQcXk/99/sil
	BLq+defNgQM4vIHuvXqgG+ZnoEnssadusPAMiFUtYBRS7JeGUvURTOzQGy0FGFiVtUvUYqT22rood
	8APxe4kbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO0Bj-0002bn-9v; Tue, 07 May 2019 13:31:19 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO0Bc-0002b7-EP
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 13:31:13 +0000
Received: by mail-pg1-x541.google.com with SMTP id j26so8328758pgl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 06:31:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=pDfPW38KIL1dpHg7F2t1sYsKkAGlXFceYNzNKtg9UBI=;
 b=cyO3r8SjaSPvRgAnIrHKGrO5McmBXE+WgNeJJg+p7LUXjuglPx0pTYyxK9DRLM7qQL
 X+hnR2TsuMoSzC4XtSsRT4AYHD0Ace+teIBTvnvx+CTZp0a5HCsjLsHHLIMko8qMDNGc
 onbOQHHwLlaF7lk76q1lBaV9YtcJ+vr/Sq2Ittup/KNS/N/f8JchuewoPlD0KOyFraRN
 vUaADbkBjER77QoaMv2SazHjGquXwLSynG0QyGmBp14oyb/FwiPW51cXQMpJOOSPnyBs
 63qr5wtgj3PeIe8g14L4uCkqslg94SEQSzNqPxbwsiqCxZe4pjAqeuGtDWaWlvoeZHqr
 5T4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=pDfPW38KIL1dpHg7F2t1sYsKkAGlXFceYNzNKtg9UBI=;
 b=lKv90+XJZBmZtGee+VWynB0vdtr3PuzoaYJw6PU++Mwj28LXsjBYVx7yhz2GjXs9C0
 rAtoqBgNRV7svXKVEYVKV8AjTHJ08Dp6lemeIkieu+HpHAyrfucmW3YfrFByu0zBEQlY
 O6CAoJEyMJoDhnXJU9/BgBh49NZ2gjjwsAdt6Kc4eT5JBywyJjbrM6luZn3zFyFH7mKR
 cin/rHm3pixVBvQVy8B9SAx3tKE54pooz1rD4dgIKKVczZDapWipu6wx3U+CCaxwZGAu
 dw6rG4ALrYxmpGCJNOWYcHvFbXogMHAGEm+V6cKA+L6P07oyKPLDH/hBEZIiyzri9x5z
 SnOQ==
X-Gm-Message-State: APjAAAW0n6GQHBPX4b3mGdXdaB2xCE5MJ/ezndh9jAaFLSG+yK4i+g2f
 Pfjl4C27vb48PgIwNI8hGtE=
X-Google-Smtp-Source: APXvYqzq+Z/Wj+qUOgwRvo3HHKRynDEDgnsJskGpr7/iplM2VPRNaEbMdqqGJgcNsTpPQurrvC4Eog==
X-Received: by 2002:aa7:8096:: with SMTP id v22mr41241600pff.94.1557235868496; 
 Tue, 07 May 2019 06:31:08 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 o5sm34369209pfa.135.2019.05.07.06.31.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 06:31:07 -0700 (PDT)
Subject: Re: [PATCH 1/2] firmware: arm_scmi: Fetch and store sensor scale
To: Florian Fainelli <f.fainelli@gmail.com>, linux-kernel@vger.kernel.org
References: <20190506224109.9357-1-f.fainelli@gmail.com>
 <20190506224109.9357-2-f.fainelli@gmail.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <84470f47-4e65-80c4-d378-9b83b7f487fb@roeck-us.net>
Date: Tue, 7 May 2019 06:31:06 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190506224109.9357-2-f.fainelli@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_063112_542187_1E55E292 
X-CRM114-Status: GOOD (  21.47  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

On 5/6/19 3:41 PM, Florian Fainelli wrote:
> In preparation for dealing with scales within the SCMI HWMON driver,
> fetch and store the sensor unit scale into the scmi_sensor_info
> structure.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>   drivers/firmware/arm_scmi/sensors.c | 7 ++++++-
>   include/linux/scmi_protocol.h       | 1 +
>   2 files changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/firmware/arm_scmi/sensors.c b/drivers/firmware/arm_scmi/sensors.c
> index b53d5cc9c9f6..f324f0a13ebe 100644
> --- a/drivers/firmware/arm_scmi/sensors.c
> +++ b/drivers/firmware/arm_scmi/sensors.c
> @@ -33,7 +33,8 @@ struct scmi_msg_resp_sensor_description {
>   #define NUM_TRIP_POINTS(x)	(((x) >> 4) & 0xff)
>   		__le32 attributes_high;
>   #define SENSOR_TYPE(x)		((x) & 0xff)
> -#define SENSOR_SCALE(x)		(((x) >> 11) & 0x3f)
> +#define SENSOR_SCALE_MASK	0x3f
> +#define SENSOR_SCALE(x)		(((x) >> 11) & SENSOR_SCALE_MASK)
>   #define SENSOR_UPDATE_SCALE(x)	(((x) >> 22) & 0x1f)
>   #define SENSOR_UPDATE_BASE(x)	(((x) >> 27) & 0x1f)
>   		    u8 name[SCMI_MAX_STR_SIZE];
> @@ -140,6 +141,10 @@ static int scmi_sensor_description_get(const struct scmi_handle *handle,
>   			s = &si->sensors[desc_index + cnt];
>   			s->id = le32_to_cpu(buf->desc[cnt].id);
>   			s->type = SENSOR_TYPE(attrh);
> +			s->scale = SENSOR_SCALE(attrh);
> +			/* Sign extend to a full u8 */
> +			if (s->scale & ((SENSOR_SCALE_MASK + 1) >> 1))

The logic here is quite confusing. I think it would be better to define,
say, SENSOR_SCALE_SIGN and use it.

> +				s->scale |= GENMASK(7, 6);
>   			strlcpy(s->name, buf->desc[cnt].name, SCMI_MAX_STR_SIZE);
>   		}
>   
> diff --git a/include/linux/scmi_protocol.h b/include/linux/scmi_protocol.h
> index 3105055c00a7..7746f171f108 100644
> --- a/include/linux/scmi_protocol.h
> +++ b/include/linux/scmi_protocol.h
> @@ -144,6 +144,7 @@ struct scmi_power_ops {
>   struct scmi_sensor_info {
>   	u32 id;
>   	u8 type;
> +	u8 scale;

Why not s8 if this is a signed value ?

Thanks,
Guenter

>   	char name[SCMI_MAX_STR_SIZE];
>   };
>   
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
