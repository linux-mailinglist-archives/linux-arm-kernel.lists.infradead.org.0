Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA9D130373
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Jan 2020 17:20:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hNb0oYdcvER0zlR5wN41TVraOFOVSucXMR7XxQWZFhU=; b=lYgSGV9J+Rt0Py
	2eH2idrxlTI7nIArm8cruOT5lAtOSZK9q1NuQ9or852cbeTGut/em6adSicj20SQAaPsd3ascyYf7
	KCU+2YyPolibM/4MSPNeeXRdRFQZND0O78raP77D22mk6g3nwPb+I2KvmDkZ4yi8e31qlBSGTZT0z
	u4Vo6D+SNiYgZeAxRqNkHGsVk6gxRqydue/MwOISXqKe4ILujPKLUHPDhnjl7JzRQXISemNoaPt7b
	sVjinZlk+576TTzrxgUvPeqSIW2g/MA+Ga3yL3eqfgkEXAJTbRRxNvabGb80pVRtHGjFelQrzdSPl
	pKrUW4rJOqBLlsUBXcMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inm9b-0006W8-O9; Sat, 04 Jan 2020 16:19:55 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inm9V-0006Vl-2Y
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Jan 2020 16:19:51 +0000
Received: by mail-pj1-x1043.google.com with SMTP id s94so3465253pjc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 04 Jan 2020 08:19:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Hr6gRku33sKOdBDlVVDjuwq72fwx5PUhef2D4L3tjhk=;
 b=fHyNKqPId2hcNHM00cM3J/5Hw40VdqRg4zE09e2VypJvRMvD88lA5LCQGTcv21ap5L
 F1fY2eHj6girziJI6+YWCHWbQgHcD4l4NZ18VsufHnFrk13F+aYyh4J8hxVWHml0aACC
 bajiabLvqkRLpc6f99xuYRyemBFly+o2UwVN/N98r1JoYL2fZQlS3RjDvjgWXjV8vKqs
 4PnyYwxECU8nhhVn0uYYudiVAcAzSmK/rRs6GXAOjVrLdCJn9U8GuV6KfMD2JutngGyX
 8Svj9VjCibTPJ3pO5nFU2r2oNFvHFXKkFj554TcT6ANDpHGaAZkPF3XBTFyJImLVo7CQ
 AoHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=Hr6gRku33sKOdBDlVVDjuwq72fwx5PUhef2D4L3tjhk=;
 b=j8TwxCW+gruOLGx5BtnMQ0TUdufA7PuwG4Bd05YkT/Na4fRlWrVuy7ma9NVyOkpI/A
 5ZFMDeyC70/CkoYutf4zeserHefuMuOShYGcSMmPWs9NGZIDE1gV9iqlEu7Iht3bJKHF
 DjcHm7NZgpO5AKUchFP3DTxgU7DQA7do3KPy3CEs1ww04Fa4b3+9z1B5+FL/Zy/3CZtm
 E2uP2kSYAB8+AIgWZ076NCElyAEmo7YiBFGaLNdZ8mQSl/Ygqyzr5qDhL2nyn/TtVwSZ
 F9/Zww2gMSpoyIGXfjrTypRPdzUwcSG6XHAGATTVZknq5drBhHh8dTCLwqcr03fOmNjl
 gtGA==
X-Gm-Message-State: APjAAAWXNDl1bFs/kR1rt84uX3HDZLYk01K88V2gQxMZagMcCJ4e6q9m
 HgfxySLguP9TM82XsWsycUoYTlu/
X-Google-Smtp-Source: APXvYqy0JK3Q1yiH23rq1SeMoTgC8TBAei5Hnplpb4RKxhXr+8F817ZikIeiJACCMAPjwmWXOyAp+Q==
X-Received: by 2002:a17:902:6b8c:: with SMTP id
 p12mr81709530plk.290.1578154788174; 
 Sat, 04 Jan 2020 08:19:48 -0800 (PST)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id t65sm73026931pfd.178.2020.01.04.08.19.47
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 04 Jan 2020 08:19:47 -0800 (PST)
Date: Sat, 4 Jan 2020 08:19:46 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH v2 10/11] hwmon: (scmi-hwmon) Match scmi device by both
 name and protocol id
Message-ID: <20200104161946.GA2974@roeck-us.net>
References: <20191218111742.29731-1-sudeep.holla@arm.com>
 <20191218111742.29731-11-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191218111742.29731-11-sudeep.holla@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_081949_118726_F8C4DB71 
X-CRM114-Status: GOOD (  21.14  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: linux-hwmon@vger.kernel.org, Cristian Marussi <cristian.marussi@arm.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 18, 2019 at 11:17:41AM +0000, Sudeep Holla wrote:
> The scmi bus now has support to match the driver with devices not only
> based on their protocol id but also based on their device name if one is
> available. This was added to cater the need to support multiple devices
> and drivers for the same protocol.
> 
> Let us add the name "hwmon" to scmi_device_id table in the driver so
> that in matches only with device with the same name and protocol id
> SCMI_PROTOCOL_SENSOR. This is just for sake of completion and must
> not be used to add IIO support in parallel. Instead, if IIO support is
> added ever in future, we need to drop this hwmon driver entirely and
> use the iio->hwmon bridge to access the sensors as hwmon devices if
> needed.
> 

Acked-by: Guenter Roeck <linux@roeck-us.net>

[ assuming the series will be pushed into the kernel together ]

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

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
