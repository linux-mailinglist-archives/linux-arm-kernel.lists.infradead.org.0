Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE8D0118F81
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 19:07:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=klB1A022tXTR2gI4HnqhbJOg32I80oHljrJYY6EWwM4=; b=D1rPcbw/5kjd2N
	fDA3H2Oh8hRXXFULMN1czEac46DEAA9HFThrJTe1jxBuHeVS1+eY18lKhhR+5UNhsfhcqVnbIU/26
	2hQMMQfGZqTBzLC6KTQaLtoYUX6ZS6XyLH7ZzkNLkK/VUQB9kwb9drbsuRO9hX7lgEuPvPOd3v9wC
	CtUV6DQB83RZ6nYD5ZA9/e3k31Cu96ISeRmaBI86QQW3RQ2V1f94ev+dQUKxavRwTUm7glac2vCuV
	+C5GEqaa2/YaLQGiKpkO1AfNAg9Ps6qbsP6hlHk3CtaCZlc02PbhGKe/pPn++8qml3pPQ8WdI1ch7
	KJf4L6eh2kWEMfqtwoGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iejuP-0006Kz-Si; Tue, 10 Dec 2019 18:06:53 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iejuI-0006Js-RS
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 18:06:48 +0000
Received: by mail-pg1-x542.google.com with SMTP id s64so2544235pgb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 10:06:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=x7cIa0Gzn0+ggjSlshOSNWW2DeHmjBusnX3y5xYnnNA=;
 b=mUlhrTXes8jVFg4L6+rLWVW26Lh2269clAptABJVM2oyEg8udRfNi2y73zs4hHISPb
 7Bb/SguG1CqWrG3WJLs6q+xjK4+RIfHiuofgTGhDCvukpoGMmA5eumAtAum/4gibEjyg
 aA0oocBZNx1VzdngLJaVlOzUErI65h1c999OMuHxGdyawbnxg972nEmf4XzSkSB1w4bU
 Gn/gfU00vo0/z98UGEaaCYLFovqPk0vTPX0akm4m11RbNiB8eW+AZ+HdhJtHOJxyfHfz
 THJQ9THOAYmU5lz1BhVweTfx1hV4q8aWQFu/YTs1DdV+XzWeVVKihofX5mwAytXS0BEW
 cSGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=x7cIa0Gzn0+ggjSlshOSNWW2DeHmjBusnX3y5xYnnNA=;
 b=oczttFgPm3tuLsQTJuZVYXFJbrTtwZBmvrPuRv6BClcN7Qp+h8kLmI1NAUtO4CdS60
 KZ/QMBrkeeB/2i1e+juta7ZBQQKVYFFGS16sJ79tKVLXPMrO8ds2BLGPURhjt7Xplzwm
 rPQDnifYOtVhQ4UUTERAdTOXwa7xQ7eX9T1y1qSgb5/LNN9D9gXIVo6AQAuUb5uranP/
 ZIecHvpOJ7DQdIKkS/9YY8LxLxtM+++2leF4oVvl4mJ/jUD08jspKljtLFdx91d3V0KZ
 WP5WEZITK5JS7EGmWx6A5ayZp3UFeksmA9kmgNtvShfTliPPlSM2HFakCzx/jrlo6w8G
 ib2A==
X-Gm-Message-State: APjAAAV/63zD32w7bWOgEpoeXOM6NmRIu6hc4VyKL/eLqkhVmKDrSkEW
 BgPo9CcHUr7wI3NHKS/p0MM=
X-Google-Smtp-Source: APXvYqxzzdfr2oH3/kuV7D4wmhCdZY4HFSokyE6BHuOFh2/Njgmy1jZsyEVBEBDBISMut4upwDfKrQ==
X-Received: by 2002:a63:f814:: with SMTP id n20mr25713115pgh.318.1576001205971; 
 Tue, 10 Dec 2019 10:06:45 -0800 (PST)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id p16sm4068546pgm.8.2019.12.10.10.06.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 10 Dec 2019 10:06:44 -0800 (PST)
Date: Tue, 10 Dec 2019 10:06:43 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH 14/15] hwmon: (scmi-hwmon) Match scmi device by both name
 and protocol id
Message-ID: <20191210180643.GA10944@roeck-us.net>
References: <20191210145345.11616-1-sudeep.holla@arm.com>
 <20191210145345.11616-15-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210145345.11616-15-sudeep.holla@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_100646_913744_1764760A 
X-CRM114-Status: GOOD (  20.56  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-hwmon@vger.kernel.org, Jean Delvare <jdelvare@suse.com>,
 Cristian Marussi <cristian.marussi@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 10, 2019 at 02:53:44PM +0000, Sudeep Holla wrote:
> The scmi bus now has support to match the driver with devices not only
> based on their protocol id but also based on their device name if one is
> available. This was added to cater the need to support multiple devices
> and drivers for the same protocol.
> 
> Let us add the name "hwmon" to scmi_device_id table in the driver so
> that in matches only with device with the same name and protocol id
> SCMI_PROTOCOL_SENSOR. This will help to add IIO support in parallel if
> needed.

If you are planning to re-implement the driver as iio driver, it would
make more sense to drop the hwmon driver entirely and use the iio->hwmon
bridge to access the sensors as hwmon devices if needed.

Guenter

> 
> Cc: Jean Delvare <jdelvare@suse.com>
> Cc: Guenter Roeck <linux@roeck-us.net>
> Cc: linux-hwmon@vger.kernel.org
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  drivers/hwmon/scmi-hwmon.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/hwmon/scmi-hwmon.c b/drivers/hwmon/scmi-hwmon.c
> index 8a7732c0bef3..286d3cfda7de 100644
> --- a/drivers/hwmon/scmi-hwmon.c
> +++ b/drivers/hwmon/scmi-hwmon.c
> @@ -259,7 +259,7 @@ static int scmi_hwmon_probe(struct scmi_device *sdev)
>  }
> 
>  static const struct scmi_device_id scmi_id_table[] = {
> -	{ SCMI_PROTOCOL_SENSOR },
> +	{ SCMI_PROTOCOL_SENSOR, "hwmon" },
>  	{ },
>  };
>  MODULE_DEVICE_TABLE(scmi, scmi_id_table);
> --
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
