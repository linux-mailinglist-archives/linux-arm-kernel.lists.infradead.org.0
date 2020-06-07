Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FE931F0CF9
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  7 Jun 2020 18:29:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZepAE7JEFAHOMMbPtA8BW7Ce8p91nIsSXdFZS5D03aM=; b=Y8pXKII1qTMyAtns5Hw4G7lp9
	5viD+5eJxVzwjIANQx9DJzhN0CbmRCzINBFJ2mDY27gT36MWoOnOpFjlGIgUVjgiW6anV3HGM/zV0
	uPJ/u5HcRlhxzVKxw/HKZnBnEkFuXhBddUUwj+oH/d4ypXV8k+c4i45gOFDzb5rvmRHk+YDarqd5u
	d3MhzpNJdR7kDCafmGiQS0UtnVbanhziOUGmM1/6DPe8QQlnbBe4AbjiEf1HuQZVEWKRpr9M2o0SX
	6TRzPA6iMwYQzfcHcc4U/CjJuH1e6L6DbdGkNN0JPbF4odlwOKH3BJyJjPC6dEWGyBz79TA/H9Yt8
	CgslsdlHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhyAX-0003ti-NG; Sun, 07 Jun 2020 16:29:09 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhyAQ-0003sn-Hz
 for linux-arm-kernel@lists.infradead.org; Sun, 07 Jun 2020 16:29:04 +0000
Received: by mail-lj1-x241.google.com with SMTP id c17so17459201lji.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 07 Jun 2020 09:29:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=SDnYXucB/LSHUufMk2Ofpom5Zz/vAp/Zvuags38mkj0=;
 b=LUXGwL3l/HX8TeZThQeEY+13PnXuHCDIzawEBI6FI/0zIedKDScQO+7/2cJAr9HEg8
 EvixNwHhauJGQ5uCzq5BOCa4l0cTICCsahpSdZwMVkHyGOLlpDEqO0zWM76ITextJ7ls
 f9Jsg5dCQ1m3QB0yTCZjEM82l/x3msou677n0K4af49n2LSBXVASO5JmUsTsmLiyiyRn
 m+YipNV+zGNqiw7APctRfeIxLWbmAwrax5c4B3jGtbs16wBTqb/c7RsjALLHhnsv55DI
 gjs8ms7uFZK3T6dQ1nF836z1SSKP85fZOsq9Vl8T5t3+5gVAAPkwZ5NgWYS8khYQvu3N
 AIJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=SDnYXucB/LSHUufMk2Ofpom5Zz/vAp/Zvuags38mkj0=;
 b=CiPbCPzEWO+Tl9vJ+4sOh+pH2RYgD33YOQeiEVG6THZz3nRCTYgSMKJe6XG387CyQz
 m0QzB5pq58jmPkKH6J7HS/rFtdk03fzWAxcZWm7Vg2+g/CvrDjEY2Me0zSAPSzBh2eiF
 ICnNZsQwvfqiENhKBI/BTRx+7GOOKiBRbTWfwrYQPayBx3uSUkoYO/9W2gjRozoTCfSw
 ZPYP60KU33ezhmmvuTdGqv5qp4UU7db0ag+oLPvzLrQO5kqiIxhHs9BdF9ns38sHUvlN
 OG0BCRowOMF6WqL8lWGYtHwIKXeAZ5XMGJMX5U3Tw2BR2XviUgvvpLZSFFRoLURN4uz/
 6yZA==
X-Gm-Message-State: AOAM531Z4WM+p2VVbBv+jAggI5Uo+CA31pChDPeSqMJ1y1UGuDTvdOSK
 s4RSACJ2UetGo0/MsxXiMdLDFA==
X-Google-Smtp-Source: ABdhPJx+oJFdPJtFNfuI5ow+pcnkgNEOTaUpNnvqEtGllOQlnYFDW1G410GXbhRIGbOisaHH/5tmEA==
X-Received: by 2002:a2e:97d8:: with SMTP id m24mr4215270ljj.166.1591547339856; 
 Sun, 07 Jun 2020 09:28:59 -0700 (PDT)
Received: from [192.168.118.216] (37-144-159-139.broadband.corbina.ru.
 [37.144.159.139])
 by smtp.gmail.com with ESMTPSA id y16sm3046383ljm.19.2020.06.07.09.28.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 07 Jun 2020 09:28:58 -0700 (PDT)
Subject: Re: [PATCH v3 08/10] media: i2c: imx290: Add support to enumerate all
 frame sizes
To: Sakari Ailus <sakari.ailus@iki.fi>
References: <20200524192505.20682-1-andrey.konovalov@linaro.org>
 <20200524192505.20682-9-andrey.konovalov@linaro.org>
 <20200526091716.GJ8214@valkosipuli.retiisi.org.uk>
From: Andrey Konovalov <andrey.konovalov@linaro.org>
Message-ID: <effee6cc-680f-3234-2e56-2f6b24d107cd@linaro.org>
Date: Sun, 7 Jun 2020 19:28:56 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200526091716.GJ8214@valkosipuli.retiisi.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_092902_632030_709F434E 
X-CRM114-Status: GOOD (  20.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-kernel@vger.kernel.org, a.brela@framos.com, peter.griffin@linaro.org,
 manivannan.sadhasivam@linaro.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sakari,

Thank you for the review!

On 26.05.2020 12:17, Sakari Ailus wrote:
> Hi Andrey,
> 
> On Sun, May 24, 2020 at 10:25:03PM +0300, Andrey Konovalov wrote:
>> From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>>
>> Add support to enumerate all frame sizes supported by IMX290. This is
>> required for using with userspace tools such as libcamera.
>>
>> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>> Signed-off-by: Andrey Konovalov <andrey.konovalov@linaro.org>
>> ---
>>   drivers/media/i2c/imx290.c | 20 ++++++++++++++++++++
>>   1 file changed, 20 insertions(+)
>>
>> diff --git a/drivers/media/i2c/imx290.c b/drivers/media/i2c/imx290.c
>> index 6e70ff22bc5f..88850f3b1427 100644
>> --- a/drivers/media/i2c/imx290.c
>> +++ b/drivers/media/i2c/imx290.c
>> @@ -471,6 +471,25 @@ static int imx290_enum_mbus_code(struct v4l2_subdev *sd,
>>   	return 0;
>>   }
>>   
>> +static int imx290_enum_frame_size(struct v4l2_subdev *subdev,
>> +				  struct v4l2_subdev_pad_config *cfg,
>> +				  struct v4l2_subdev_frame_size_enum *fse)
>> +{
>> +	if ((fse->code != imx290_formats[0].code) &&
>> +	    (fse->code != imx290_formats[1].code))
>> +		return -EINVAL;
> 
> Please skip the modes that do not have the code specified by the user. They
> should not be enumerated here.

I've double checked this part of the code, and it doesn't seem to need changes.
The reason is that for the both codes the set of the modes and the frame sizes is
exactly the same. And the fse->code check above just guards against the codes not
supported by the driver at all.

Thanks,
Andrey

>> +
>> +	if (fse->index >= ARRAY_SIZE(imx290_modes))
>> +		return -EINVAL;
>> +
>> +	fse->min_width = imx290_modes[fse->index].width;
>> +	fse->max_width = imx290_modes[fse->index].width;
>> +	fse->min_height = imx290_modes[fse->index].height;
>> +	fse->max_height = imx290_modes[fse->index].height;
>> +
>> +	return 0;
>> +}
>> +
>>   static int imx290_get_fmt(struct v4l2_subdev *sd,
>>   			  struct v4l2_subdev_pad_config *cfg,
>>   			  struct v4l2_subdev_format *fmt)
>> @@ -850,6 +869,7 @@ static const struct v4l2_subdev_video_ops imx290_video_ops = {
>>   static const struct v4l2_subdev_pad_ops imx290_pad_ops = {
>>   	.init_cfg = imx290_entity_init_cfg,
>>   	.enum_mbus_code = imx290_enum_mbus_code,
>> +	.enum_frame_size = imx290_enum_frame_size,
>>   	.get_fmt = imx290_get_fmt,
>>   	.set_fmt = imx290_set_fmt,
>>   };
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
