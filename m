Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9831CA5D9A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 23:38:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9ebazo2BNwfjanyHS4mVmONDPmeZaaPokVliZk23ndU=; b=eHh68iGWCiX3SevteWRti/29H
	kJfIaqFHLvw8h99rErBs5gJNqNQ8GXzsslkNGrRt9VQsShTWuETSmMuuDFIMokUmzVtrCOG1VjqX5
	97TTnj7K6kuBdBYG+qwFRG2xbNiB/ug4dzBlrU3VwjSAHBggEmnmzfYdcj8Ar4BUZf3T66gIr+vqQ
	roXfF6vSgztKI/xIRRoTGMH/tC6D8Nx5CYAU03gamq7a9TDJeRY0JA70d5RQWVVHajRHenCObapbO
	P48/hoTIoBFyqScec9iSPwpCyHbOgFv0UYXtknbNt7AwMQI8ocnzVQ3rkIxduurV7ba7H9n3PQQr4
	0FG7R9uRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4u1S-0003Np-0C; Mon, 02 Sep 2019 21:38:02 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4u1E-0003NE-P7
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 21:37:50 +0000
Received: by mail-wr1-x442.google.com with SMTP id g7so15298310wrx.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 14:37:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=AzTuyC2UsbNpm6l7U9X8UINePV0sxSWA4lyUt5FUF8I=;
 b=ACOXOZftMzxnBXf7Mn8TNUGkt5tTRL0PxYAd9HIEyOmhxpyBC2Xs0YAiO2WCsQGZuM
 2RyyEMVjxsUXBfHRnbvsgdAJ0Soi7FTywBM7MiTPh/31uIqySyseSdQZ2X+ucXc/NAmB
 zzx7xB9CHW0AQlMugYjiOAr6J2CMaC4T4CTvmSNc4o6Gmrs3GUD3qiHcaceT2XEampVQ
 uv3DSFPyxEaoUQHtQj+MFFif6DI37sQ3URILMUTlkVDslod+EUX47nfEHhue5U0gMKpM
 4xjaCMmwR/X6+Pc/5og0XwtV56aBpEjjx+8JUbqJ613u7EsgbM4A4Bz6vFeED2fmwLm0
 PEmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=AzTuyC2UsbNpm6l7U9X8UINePV0sxSWA4lyUt5FUF8I=;
 b=KiewoUB9TaIYNkLwHqsEH9CA4Q48bFqyjbJOby3VLK69VQW2jAbmQUYx3j7Gn2e6IF
 eH5AZWeeRu7/UVgqZRx7Uk3xZjSRQG3hEn7R5jr3Mp82tuv1x0ffJhvf37ZVAjODdIqI
 6ukMqr6jNs6KEkJOOYYbSVIOySMMHQbKtMGDdQecm4v+d75KJ5x4hnfMsl4EuqaHHHWX
 KGExYDN0LwjtJfo4ZrsAyWSe/ZVazn9F1cUft6gSxbS6vAmtojVSd0e5KGFiz776cpQs
 41Vjzdwt7zPlfpL4Owhsrj6sPOqYbfNvqQL7/nTcPtOVer96Tn9fnEgUmvIZCx7PWfv5
 6akg==
X-Gm-Message-State: APjAAAXYig+QfHXvIkCwh+m1EdncOrLJBwmXWVnSPIaNQaXi9eQEKEDF
 s4gpKNYF+YUFSRS6fRzXdQg=
X-Google-Smtp-Source: APXvYqziqzBEOwGLRmlaO0Yb8EPO9joHZ7A7//D5mVWpDB+g5EX3APsttrwr1cYJsIvfbbQRjE3bKg==
X-Received: by 2002:adf:f30e:: with SMTP id i14mr24352349wro.288.1567460265983; 
 Mon, 02 Sep 2019 14:37:45 -0700 (PDT)
Received: from [172.30.89.46] (sjewanfw1-nat.mentorg.com. [139.181.7.34])
 by smtp.gmail.com with ESMTPSA id q24sm23219092wmc.3.2019.09.02.14.37.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 02 Sep 2019 14:37:45 -0700 (PDT)
Subject: Re: [PATCH 15/22] media: imx7-media-csi: Create media links in bound
 notifier
To: Rui Miguel Silva <rmfrfs@gmail.com>
References: <20190805233505.21167-1-slongerbeam@gmail.com>
 <20190805233505.21167-16-slongerbeam@gmail.com> <m3blw35970.fsf@gmail.com>
From: Steve Longerbeam <slongerbeam@gmail.com>
Message-ID: <b648b587-110d-8e6a-8b9c-10e8dbb9561e@gmail.com>
Date: Mon, 2 Sep 2019 14:37:38 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <m3blw35970.fsf@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_143748_848214_34C55057 
X-CRM114-Status: GOOD (  18.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (slongerbeam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rui,

On 9/2/19 2:38 AM, Rui Miguel Silva wrote:
> Hi Steve,
> On Tue 06 Aug 2019 at 00:34, Steve Longerbeam wrote:
>> Implement a notifier bound op to register media links from the remote
>> sub-device's source pad(s) to the CSI sink pad.
>>
>> Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
>> ---
>>   drivers/staging/media/imx/imx7-media-csi.c | 24 ++++++++++++++++++++++
>>   1 file changed, 24 insertions(+)
>>
>> diff --git a/drivers/staging/media/imx/imx7-media-csi.c b/drivers/staging/media/imx/imx7-media-csi.c
>> index a1c96c52a606..f71ac485f780 100644
>> --- a/drivers/staging/media/imx/imx7-media-csi.c
>> +++ b/drivers/staging/media/imx/imx7-media-csi.c
>> @@ -196,6 +196,11 @@ struct imx7_csi {
>>   	struct completion last_eof_completion;
>>   };
>>
>> +static inline struct imx7_csi *notifier_to_dev(struct v4l2_async_notifier *n)
>>
> As the other one add the namespace for the function name:
> imx7_csi_notifier_to_dev
>
> other than this, looks good to me.

Thanks for the review. I will make those changes in next rev.

Steve

>
>
>> +{
>> +	return container_of(n, struct imx7_csi, notifier);
>> +}
>> +
>>   static u32 imx7_csi_reg_read(struct imx7_csi *csi, unsigned int offset)
>>   {
>>   	return readl(csi->regbase + offset);
>> @@ -1173,6 +1178,23 @@ static int imx7_csi_parse_endpoint(struct device *dev,
>>   	return fwnode_device_is_available(asd->match.fwnode) ? 0 : -EINVAL;
>>   }
>>
>> +static int imx7_csi_notify_bound(struct v4l2_async_notifier *notifier,
>> +				 struct v4l2_subdev *sd,
>> +				 struct v4l2_async_subdev *asd)
>> +{
>> +	struct imx7_csi *csi = notifier_to_dev(notifier);
>> +	struct media_pad *sink = &csi->sd.entity.pads[IMX7_CSI_PAD_SINK];
>> +
>> +	return media_create_fwnode_pad_links(sink,
>> +					     dev_fwnode(csi->sd.dev),
>> +					     &sd->entity,
>> +					     dev_fwnode(sd->dev), 0);
>> +}
>> +
>> +static const struct v4l2_async_notifier_operations imx7_csi_notify_ops = {
>> +	.bound = imx7_csi_notify_bound,
>> +};
>> +
>>   static int imx7_csi_probe(struct platform_device *pdev)
>>   {
>>   	struct device *dev = &pdev->dev;
>> @@ -1253,6 +1275,8 @@ static int imx7_csi_probe(struct platform_device *pdev)
>>
>>   	v4l2_async_notifier_init(&csi->notifier);
>>
>> +	csi->notifier.ops = &imx7_csi_notify_ops;
>> +
>>   	ret = v4l2_async_register_fwnode_subdev(&csi->sd, &csi->notifier,
>>   						sizeof(struct v4l2_async_subdev),
>>   						NULL, 0,


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
