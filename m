Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 786F41021A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 23:59:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UOhRL4XPmiY/Lr/S8HP+9+h4S4EnLhpX5OOpRj1/DBY=; b=I6VF3BxDCwtKr673MH5ZcyOOV
	7Jc3aPqx6RqeqjopNsvHO3G+OzFQqw++xlT0empVakGnYunMrsZ67bBtnXp5yYyTp4Kb4AI7M9X31
	Q/HQS9Lxvi4w8BLjCePc+FQ0sviIzzHUTWn6JZmz0qYW2xmC2m5yPXqId6QgtCjjPde7cKGuCqOCa
	pOdHzocA2mfY3QoAKWdZ71vii45e1Rum4oADNq6AyRM6b/7tXV5OcwJ2hLoZBrnQQrdowpbka6Zy8
	S4FHokegY/dSGQ2cf6v4k46N2Mi88wtVLOJb2LdRZLsRZjiJHhH0Thz19QjmoP/W0TVH2t/zG39zV
	fFywwRT4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLama-0000nS-IC; Tue, 30 Apr 2019 21:59:24 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLamT-0000n3-0W
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 21:59:18 +0000
Received: by mail-ed1-x541.google.com with SMTP id a8so11555053edx.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 14:59:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=LJjGuRjlqfpGmpPjlCquHx8kcOlygrzBLbFITedv3d0=;
 b=uFwObtZ6pwaI0kZMGhis4CSKl4QPHu3xJ9HCJboLlDvKX9a8Zn70X3fqK6/XxuH4F6
 DvvfdfwU2O+ijVVWImqCXFSmPzLH67y2ODtdTQUWSuagCJOifDcEK377rOJ/pQmZuk/n
 ltAND11Y0EG3vxVEpxtK6WoN31mN+rISlS5nZD/ToymIfnhJCLaj9zXl6lA4kPLxOKnh
 60giF8Wj432AFz3JZgqm4uNsMHt4nhB/psIRgNHZ+H6l/40ge1dblxcbD/34zLx+6w39
 FU/1603Vd88MO+djd5ufYUKtVPAh5WqwECV+5DbxaMVOKdP9LOyqc/v+MxMa704/DXcs
 AMPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=LJjGuRjlqfpGmpPjlCquHx8kcOlygrzBLbFITedv3d0=;
 b=iJEKkVfTKYPKTltOtDw/jKsullJHEpHiyLqyrOJ6KfUWkGAZuqVngAB+rh3wbd3YVI
 oZ4TGyoAlEJQ5Zb/ZowR7Ia0irk47hqApoYuP1/aHD/W06H/oJoRV66GXc2Duzgj5y6y
 +mTemm7qwaNodIuolNNqIXrpaVgnoHzfvdVrKZjL0xSC7rAutvC9Qf53xzPdXAwyxngZ
 VE8vO50ZS0hCvzPvYX1K7kQ+95MFyg6KjYz0Pq1OD9kISp0U0KLsoZbC7C4PSLQmZUtq
 PVv6d65OJ8sMxPbimcOU4yQuTDIbZdhjKJ05/xJzavl36waHRI+Kesuulai2Ejuh16oX
 wawg==
X-Gm-Message-State: APjAAAVmS1N+rDdNRYH/4b+24iRngPlpafMJQKFbeo3oD2lHpCNBm+oI
 HrWStywmwAkcapN+bsB34UQ=
X-Google-Smtp-Source: APXvYqw46cVWQ+ntHFnusosHesUXZioNi+MAuWzAVAQXAwqcBz/IQNDzCyZihW4BySX+ZIBX78G6mg==
X-Received: by 2002:a50:99ca:: with SMTP id n10mr7288099edb.279.1556661554794; 
 Tue, 30 Apr 2019 14:59:14 -0700 (PDT)
Received: from [172.30.89.180] (sjewanfw1-nat.mentorg.com. [139.181.7.34])
 by smtp.gmail.com with ESMTPSA id r2sm2001990ejp.76.2019.04.30.14.59.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Apr 2019 14:59:13 -0700 (PDT)
Subject: Re: [PATCH v2 1/8] media: staging/imx: Switch to sync registration
 for IPU subdevs
To: Rui Miguel Silva <rmfrfs@gmail.com>
References: <20190428190916.26567-1-slongerbeam@gmail.com>
 <20190428190916.26567-2-slongerbeam@gmail.com> <m3a7g7nom1.fsf@gmail.com>
From: Steve Longerbeam <slongerbeam@gmail.com>
Message-ID: <d73e9504-5d4a-14cd-d834-0e21d0ca0d65@gmail.com>
Date: Tue, 30 Apr 2019 14:59:08 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <m3a7g7nom1.fsf@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_145917_053310_24E5306A 
X-CRM114-Status: GOOD (  24.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (slongerbeam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Thanks Rui for catching the bisect problem, I will fix for v3.

Steve


On 4/30/19 2:56 PM, Rui Miguel Silva wrote:
> Hi Steve,
> On Sun 28 Apr 2019 at 20:09, Steve Longerbeam wrote:
>> Because the IPU sub-devices VDIC and IC are not present in the
>> device-tree, platform devices were created for them instead. This
>> allowed these sub-devices to be added to the media device's async
>> notifier and registered asynchronously along with the other
>> sub-devices that do have a device-tree presence (CSI and devices
>> external to the IPU and SoC).
>>
>> But that approach isn't really necessary. The IPU sub-devices don't
>> actually require a backing device (sd->dev is allowed to be NULL).
>> And that approach can't get around the fact that the IPU sub-devices
>> are not part of a device hierarchy, which makes it awkward to retrieve
>> the parent IPU of these devices.
>>
>> By registering them synchronously, they can be registered from the CSI
>> async bound notifier, so the init function for them can be given the CSI
>> subdev, who's dev->parent is the IPU. That is a somewhat cleaner way
>> to retrieve the parent IPU.
>>
>> So convert to synchronous registration for the VDIC and IC task
>> sub-devices, at the time a CSI sub-device is bound. There is no longer
>> a backing device for them (sd->dev is NULL), but that's ok. Also
>> set the VDIC/IC sub-device owner as the IPU, so that a reference can
>> be taken on the IPU module.
>>
>> Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
> I am trying to bisect when my capture starts to fail to work with
> this series, since they are so many changes and reorg that I got
> lost on some of them. But... see below.
>
>> ---
>>   drivers/staging/media/imx/imx-ic-common.c     |  70 ++--
>>   drivers/staging/media/imx/imx-ic-prp.c        |  34 +-
>>   drivers/staging/media/imx/imx-ic-prpencvf.c   |  70 ++--
>>   drivers/staging/media/imx/imx-ic.h            |   7 +-
>>   drivers/staging/media/imx/imx-media-capture.c |   7 +-
>>   drivers/staging/media/imx/imx-media-csi.c     |   2 +-
>>   drivers/staging/media/imx/imx-media-dev.c     | 121 +-----
>>   .../staging/media/imx/imx-media-internal-sd.c | 356 ++++++++----------
>>   drivers/staging/media/imx/imx-media-of.c      |  38 +-
>>   drivers/staging/media/imx/imx-media-vdic.c    |  85 ++---
>>   drivers/staging/media/imx/imx-media.h         |  67 ++--
>>   drivers/staging/media/imx/imx7-media-csi.c    |   3 +-
>>   12 files changed, 325 insertions(+), 535 deletions(-)
>>
>> +	dev_dbg(priv->ipu_dev, "%s: link setup %s -> %s",
> <snip>
>
>> +		sd->name, remote->entity->name, local->entity->name);
>>   
>>   	mutex_lock(&priv->lock);
>>   
>> @@ -864,9 +856,6 @@ static int vdic_registered(struct v4l2_subdev *sd)
>>   	int i, ret;
>>   	u32 code;
>>   
>> -	/* get media device */
>> -	priv->md = dev_get_drvdata(sd->v4l2_dev->dev);
>> -
>>   	for (i = 0; i < VDIC_NUM_PADS; i++) {
>>   		priv->pad[i].flags = (i == VDIC_SRC_PAD_DIRECT) ?
>>   			MEDIA_PAD_FL_SOURCE : MEDIA_PAD_FL_SINK;
>> @@ -938,77 +927,55 @@ static const struct v4l2_subdev_internal_ops vdic_internal_ops = {
>>   	.unregistered = vdic_unregistered,
>>   };
>>   
>> -static int imx_vdic_probe(struct platform_device *pdev)
>> +struct v4l2_subdev *imx_media_vdic_register(struct imx_media_dev *imxmd,
>> +					    struct device *ipu_dev,
>> +					    struct ipu_soc *ipu,
>> +					    u32 grp_id)
>>   {
>> -	struct imx_media_ipu_internal_sd_pdata *pdata;
>> +	struct v4l2_device *v4l2_dev = &imxmd->v4l2_dev;
>>   	struct vdic_priv *priv;
>>   	int ret;
>>   
>> -	priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
>> +	priv = devm_kzalloc(ipu_dev, sizeof(*priv), GFP_KERNEL);
>>   	if (!priv)
>> -		return -ENOMEM;
>> +		return ERR_PTR(-ENOMEM);
>>   
>> -	platform_set_drvdata(pdev, &priv->sd);
>> -	priv->dev = &pdev->dev;
>> -
>> -	pdata = priv->dev->platform_data;
>> -	priv->ipu_id = pdata->ipu_id;
>> +	priv->ipu_dev = ipu_dev;
>> +	priv->ipu = ipu;
>> +	priv->md = imxmd;
>>   
>>   	v4l2_subdev_init(&priv->sd, &vdic_subdev_ops);
>>   	v4l2_set_subdevdata(&priv->sd, priv);
>>   	priv->sd.internal_ops = &vdic_internal_ops;
>>   	priv->sd.entity.ops = &vdic_entity_ops;
>>   	priv->sd.entity.function = MEDIA_ENT_F_PROC_VIDEO_PIXEL_FORMATTER;
>> -	priv->sd.dev = &pdev->dev;
>> -	priv->sd.owner = THIS_MODULE;
>> +	priv->sd.owner = ipu_dev->driver->owner;
>>   	priv->sd.flags = V4L2_SUBDEV_FL_HAS_DEVNODE;
>> -	/* get our group id */
>> -	priv->sd.grp_id = pdata->grp_id;
>> -	strscpy(priv->sd.name, pdata->sd_name, sizeof(priv->sd.name));
>> +	priv->sd.grp_id = grp_id;
>> +	imx_media_grp_id_to_sd_name(priv->sd.name, sizeof(priv->sd.name),
>> +				    priv->sd.grp_id, ipu_get_num(ipu));
>>   
>>   	mutex_init(&priv->lock);
>>   
>> -	ret = v4l2_async_register_subdev(&priv->sd);
>> +	ret = v4l2_device_register_subdev(v4l2_dev, &priv->sd);
>>   	if (ret)
>>   		goto free;
>>   
>> -	return 0;
>> +	return &priv->sd;
>>   free:
>>   	mutex_destroy(&priv->lock);
>> -	return ret;
>> +	return ERR_PTR(ret);
>>   }
>>   
>> -static int imx_vdic_remove(struct platform_device *pdev)
>> +int imx_media_vdic_unregister(struct v4l2_subdev *sd)
>>   {
>> -	struct v4l2_subdev *sd = platform_get_drvdata(pdev);
>>   	struct vdic_priv *priv = v4l2_get_subdevdata(sd);
>>   
>>   	v4l2_info(sd, "Removing\n");
>>   
>> -	v4l2_async_unregister_subdev(sd);
>> +	v4l2_device_unregister_subdev(sd);
>>   	mutex_destroy(&priv->lock);
>>   	media_entity_cleanup(&sd->entity);
>>   
>>   	return 0;
>>   }
>> -
>> -static const struct platform_device_id imx_vdic_ids[] = {
>> -	{ .name = "imx-ipuv3-vdic" },
>> -	{ },
>> -};
>> -MODULE_DEVICE_TABLE(platform, imx_vdic_ids);
>> -
>> -static struct platform_driver imx_vdic_driver = {
>> -	.probe = imx_vdic_probe,
>> -	.remove = imx_vdic_remove,
>> -	.id_table = imx_vdic_ids,
>> -	.driver = {
>> -		.name = "imx-ipuv3-vdic",
>> -	},
>> -};
>> -module_platform_driver(imx_vdic_driver);
>> -
>> -MODULE_DESCRIPTION("i.MX VDIC subdev driver");
>> -MODULE_AUTHOR("Steve Longerbeam <steve_longerbeam@mentor.com>");
>> -MODULE_LICENSE("GPL");
>> -MODULE_ALIAS("platform:imx-ipuv3-vdic");
> This breaks compilation until patch 6/8. I think you need to make
> some makefile changes also in this patch.
>
> WARNING: modpost: missing MODULE_LICENSE() in drivers/staging/media/imx/imx-media-ic.o
> see include/linux/module.h for more information
> WARNING: modpost: missing MODULE_LICENSE() in drivers/staging/media/imx/imx-media-vdic.o
> see include/linux/module.h for more information
> ERROR: "imx_media_ic_register" [drivers/staging/media/imx/imx-media.ko] undefined!
> ERROR: "imx_media_vdic_register" [drivers/staging/media/imx/imx-media.ko] undefined!
> ERROR: "imx_media_vdic_unregister" [drivers/staging/media/imx/imx-media.ko] undefined!
> ERROR: "imx_media_ic_unregister" [drivers/staging/media/imx/imx-media.ko] undefined!
> make[2]: *** [scripts/Makefile.modpost:91: __modpost] Error 1
> make[1]: *** [/dev/shm/linux-git/Makefile:1263: modules] Error 2
> make: *** [Makefile:170: sub-make] Error 2
>
> ---
> Cheers,
> 	Rui
>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
