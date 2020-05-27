Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46EA11E3C57
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 10:43:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lZax0hvZXEhVUR1NhNZBuyHyLwX2fH53qru8jMvedAY=; b=ne22445F/D6H6Ynv5zubHVlZB
	Js+wLHlKkPzQa1xaCS9BiJEhV4wuN4+Ra5QGp9rYrDw2s62C8szTWKW12rreqbgHLm111Nu+TSl8N
	QMoEcVUxTVRJHt3nJC1Yfgxl98x5O1gDkTXw5qQ/AVw+MYxckG8dSETtRfJ3fvuQJ8SgnK7n8Uk3y
	XBl6Qez1bK17UAQWzPYUZqUHUGIlpRoA44uEAKU+urYWjH3l1AXQZLBN0QciaAik/3IoODNKqF58A
	f1SyG0CWG15PfZpOva19NKZlAHVcKYaga3I1mNw2v682u/kaO+MY6N+xQHepHUmU216HPMU0sHYen
	M0zIWWqPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdrf2-0007pn-OD; Wed, 27 May 2020 08:43:40 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdrdq-0006y0-Ia
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 08:42:30 +0000
Received: by mail-lf1-x144.google.com with SMTP id c21so13986572lfb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 01:42:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=0cVbaBKHPFRHFgLj7eTRo1bAadVyagSGQGQWcN/OrRE=;
 b=oJxUyzIVgZq7u4vhV2WTxYtWXGyQmwh7FnwZ8aW0G3ACHvkdtdA5Vg8o7/V1sOarON
 yNJdUef2IB0O73wQevzC4PCIMlKH3IWiY6zcax+lX2CmWdkv8j2+pjwlJkLtYIpsWFgp
 SuQ5IhYNHlfCZxc8AijCOMtBvTka3/7rbhfY3Nc6zRHthYsIW9Ia5YXmDFUO15q7K9hn
 gv0TJ0vBP1RCF2fErFoKvNPuVJOLNxLkd0zU42psapjDni5JhYPlHuSrQgTT1TsaksnW
 bLzX4DiKNHL6Hr18kFZRWSRt4TTWKotEOD6xkTw9O+WJMFFWo3KHfgwwU34C3KRgL8N2
 oZ1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=0cVbaBKHPFRHFgLj7eTRo1bAadVyagSGQGQWcN/OrRE=;
 b=l9iYBsgIpE95UWbAM3+mzNztGJYFu96OsgpFw7kR+XsDxyl229IAj2T5wX4rQvBNfG
 l+lCbY8UM6+QsuoLv9PicYQ+273GHY7PJSK3HdW7P2VXSaLvRhX51859sPo2yb041CSW
 wz7wGUpj2sYqq8U7JIuK+eT/2SG+SYMDadfVbArE4FdT1IY6R0J9T5EdsySE1ruWI19/
 ivX8evMQVHyFSFsuscb/bB4Zt0lsLQ6BuyfauEi6Mj2zC9rLmdCvSbOdpZ1ymi16kisS
 dbzF3kA/rynoT5/3zDxjcBrsCFA04tj/SfluF4HeTJmvcg9py4cNwKTJfv5wHSyBPd+4
 etGQ==
X-Gm-Message-State: AOAM530ua8lptrGj6PZROaypREcwM2oLmYFnBLdly8bguNDRRePpMgx1
 IEV16dyPwyklLpsuHAKAxSWQOw==
X-Google-Smtp-Source: ABdhPJyNlPGUsdKFIc4nPUUBfYBG9iP9HgT7+hNyJKOoA+mEZpSqes4qfc2yvtAB8gm2VZvscTPBfw==
X-Received: by 2002:a19:550e:: with SMTP id n14mr2628879lfe.81.1590568943796; 
 Wed, 27 May 2020 01:42:23 -0700 (PDT)
Received: from [192.168.118.216] (37-144-159-139.broadband.corbina.ru.
 [37.144.159.139])
 by smtp.gmail.com with ESMTPSA id f2sm543541ljf.113.2020.05.27.01.42.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 27 May 2020 01:42:23 -0700 (PDT)
Subject: Re: [PATCH v3 07/10] media: i2c: imx290: Add RAW12 mode support
To: Dave Stevenson <dave.stevenson@raspberrypi.com>
References: <20200524192505.20682-1-andrey.konovalov@linaro.org>
 <20200524192505.20682-8-andrey.konovalov@linaro.org>
 <CAPY8ntAW+yfxw0NTDi3yEwoZ+AqUuXD__pqB977bXgJr=jnNXg@mail.gmail.com>
From: Andrey Konovalov <andrey.konovalov@linaro.org>
Message-ID: <3597b850-5ce6-0e88-8f1f-e16bad5f75ef@linaro.org>
Date: Wed, 27 May 2020 11:42:22 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CAPY8ntAW+yfxw0NTDi3yEwoZ+AqUuXD__pqB977bXgJr=jnNXg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_014226_628811_97DAD432 
X-CRM114-Status: GOOD (  22.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 LKML <linux-kernel@vger.kernel.org>, a.brela@framos.com,
 Peter Griffin <peter.griffin@linaro.org>, Sakari Ailus <sakari.ailus@iki.fi>,
 manivannan.sadhasivam@linaro.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dave,

On 26.05.2020 19:05, Dave Stevenson wrote:
> Hi Andrey
> 
> Thanks for the patch.
> 
> On Sun, 24 May 2020 at 20:26, Andrey Konovalov
> <andrey.konovalov@linaro.org> wrote:
>>
>> From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>>
>> IMX290 is capable of outputting frames in both Raw Bayer (packed) 10 and
>> 12 bit formats. Since the driver already supports RAW10 mode, let's add
>> the missing RAW12 mode as well.
>>
>> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>> Signed-off-by: Andrey Konovalov <andrey.konovalov@linaro.org>
>> ---
>>   drivers/media/i2c/imx290.c | 36 +++++++++++++++++++++++++++++++++---
>>   1 file changed, 33 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/media/i2c/imx290.c b/drivers/media/i2c/imx290.c
>> index 162c345fffac..6e70ff22bc5f 100644
>> --- a/drivers/media/i2c/imx290.c
>> +++ b/drivers/media/i2c/imx290.c
>> @@ -71,6 +71,7 @@ struct imx290 {
>>          struct clk *xclk;
>>          struct regmap *regmap;
>>          u8 nlanes;
>> +       u8 bpp;
>>
>>          struct v4l2_subdev sd;
>>          struct v4l2_fwnode_endpoint ep;
>> @@ -90,10 +91,12 @@ struct imx290 {
>>
>>   struct imx290_pixfmt {
>>          u32 code;
>> +       u8 bpp;
>>   };
>>
>>   static const struct imx290_pixfmt imx290_formats[] = {
>> -       { MEDIA_BUS_FMT_SRGGB10_1X10 },
>> +       { MEDIA_BUS_FMT_SRGGB10_1X10, 10 },
>> +       { MEDIA_BUS_FMT_SRGGB12_1X12, 12 },
>>   };
>>
>>   static const struct regmap_config imx290_regmap_config = {
>> @@ -261,6 +264,18 @@ static const struct imx290_regval imx290_10bit_settings[] = {
>>          { 0x300b, 0x00},
>>   };
>>
>> +static const struct imx290_regval imx290_12bit_settings[] = {
>> +       { 0x3005, 0x01 },
>> +       { 0x3046, 0x01 },
>> +       { 0x3129, 0x00 },
>> +       { 0x317c, 0x00 },
>> +       { 0x31ec, 0x0e },
>> +       { 0x3441, 0x0c },
>> +       { 0x3442, 0x0c },
>> +       { 0x300a, 0xf0 },
>> +       { 0x300b, 0x00 },
>> +};
>> +
>>   /* supported link frequencies */
>>   static const s64 imx290_link_freq_2lanes[] = {
>>          891000000, /* 1920x1080 -  2 lane */
>> @@ -421,7 +436,12 @@ static int imx290_set_ctrl(struct v4l2_ctrl *ctrl)
>>                  } else {
>>                          imx290_write_reg(imx290, IMX290_PGCTRL, 0x00);
>>                          msleep(10);
>> -                       imx290_write_reg(imx290, IMX290_BLKLEVEL_LOW, 0x3c);
>> +                       if (imx290->bpp == 10)
>> +                               imx290_write_reg(imx290, IMX290_BLKLEVEL_LOW,
>> +                                                0x3c);
>> +                       else /* 12 bits per pixel */
>> +                               imx290_write_reg(imx290, IMX290_BLKLEVEL_LOW,
>> +                                                0xf0);
>>                          imx290_write_reg(imx290, IMX290_BLKLEVEL_HIGH, 0x00);
>>                  }
>>                  break;
>> @@ -496,7 +516,7 @@ static u64 imx290_calc_pixel_rate(struct imx290 *imx290)
>>          u8 nlanes = imx290->nlanes;
>>
>>          /* pixel rate = link_freq * 2 * nr_of_lanes / bits_per_sample */
>> -       return (link_freq * 2 * nlanes / 10);
>> +       return (link_freq * 2 * nlanes / imx290->bpp);
> 
> This doesn't link on a 32bit system as it's a 64bit divide:
> ERROR: "__aeabi_ldivmod" [drivers/media/i2c/imx290.ko] undefined!
> It ought to be using do_div().

Nice catch, thanks!
I'll fix this in the next version of the patchset.

Thanks,
Andrey

> Admittedly it didn't compile before as you still had a s64 divide by
> 10, but I hadn't tried that :-)
> 
>    Dave
> 
>>   }
>>
>>   static int imx290_set_fmt(struct v4l2_subdev *sd,
>> @@ -533,6 +553,7 @@ static int imx290_set_fmt(struct v4l2_subdev *sd,
>>          } else {
>>                  format = &imx290->current_format;
>>                  imx290->current_mode = mode;
>> +               imx290->bpp = imx290_formats[i].bpp;
>>
>>                  if (imx290->link_freq)
>>                          __v4l2_ctrl_s_ctrl(imx290->link_freq,
>> @@ -577,6 +598,15 @@ static int imx290_write_current_format(struct imx290 *imx290)
>>                          return ret;
>>                  }
>>                  break;
>> +       case MEDIA_BUS_FMT_SRGGB12_1X12:
>> +               ret = imx290_set_register_array(imx290, imx290_12bit_settings,
>> +                                               ARRAY_SIZE(
>> +                                                       imx290_12bit_settings));
>> +               if (ret < 0) {
>> +                       dev_err(imx290->dev, "Could not set format registers\n");
>> +                       return ret;
>> +               }
>> +               break;
>>          default:
>>                  dev_err(imx290->dev, "Unknown pixel format\n");
>>                  return -EINVAL;
>> --
>> 2.17.1
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
