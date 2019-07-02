Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B410D5D296
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 17:19:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MzPm4/z9FETzIl3YqF2CqDTmqH0VWMLMoMygAVgXwCo=; b=Mb1DaIBOnu2ecD
	O7BLJO2yrZmWxTg6FBOuw6p6Nw8IqkPIz6x0pksS0E3GLrD/Mwx7vNe+iVEtCGB8lYc8bZIYB5HQV
	K+TlPQEIJCPbola+hhyWC/XIJKOIkBzKKn1dAdLvArrjRvzTyC9RECy5kMMpJ1TP0OlOL9WGZLqWL
	iJG3wQDc7lwUuSaeSGcGWAN4biD3jmXtNcRsqLxfstfS1C7Ogu5Ud0lkLZtMmbB+y/kmEPFvecxaO
	GZpX2d6TAz8WSWBXX0RQh0wCzTUWPr0jQ9GfJoLxKG/8zeA/CDNuOsEqp9F6+ys/v56m/QFy5FTWs
	MZJRfpwu/Tik4HUzlSkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiKZ1-0004uM-02; Tue, 02 Jul 2019 15:19:23 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiKYm-0004tY-5X
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 15:19:10 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x62F6vS2023247; Tue, 2 Jul 2019 17:18:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=8w4SjA0DZ2W6T+fEVlEuWHyyvofsc45yKJFB1OGSjDQ=;
 b=iLktCy/Dzxwr4cRz36vk2PioowINaJYSxeZjAV9A5xG3R/Ulptoz/0VVp3M7ZGWRI17l
 Gc5aHG6ThwH2jEJz6SSQVBX/kw/+ObzqZyWNXCpsqSWnuZen7cUKq2/na+3ik++EiHE5
 5yhm4seRB8EiRIXKI6SxM3fjNGkhDLl74w0VPY6lLIm1a8vweaI2eTBkbI/6wSQm0HrI
 4bJIASNWzEX9VEw7dS8qR9BJ5p30keCo4WBLkC5echYavI4TwUrCFHxZEoSHsDJr/jsU
 5UokVxoiQQfwQdIVjUxcL+K42DfO3rbwLSZnU4yNIyZQHHRkMcs1aRCmgPDfoHDM3iH+ Ig== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2tdwruvvk8-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 02 Jul 2019 17:18:57 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D0D9434;
 Tue,  2 Jul 2019 15:18:55 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 87F232B39;
 Tue,  2 Jul 2019 15:18:55 +0000 (GMT)
Received: from SFHDAG5NODE1.st.com (10.75.127.13) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 2 Jul
 2019 17:18:55 +0200
Received: from SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6]) by
 SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6%20]) with mapi id
 15.00.1347.000; Tue, 2 Jul 2019 17:18:55 +0200
From: Hugues FRUCHET <hugues.fruchet@st.com>
To: Hans Verkuil <hverkuil@xs4all.nl>, Alexandre TORGUE
 <alexandre.torgue@st.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 "Sakari Ailus" <sakari.ailus@linux.intel.com>
Subject: Re: [PATCH v2 2/3] media: stm32-dcmi: add media controller support
Thread-Topic: [PATCH v2 2/3] media: stm32-dcmi: add media controller support
Thread-Index: AQHVJ1/zX3VDRyykMUmSGPlvZRClvaa3YqQA
Date: Tue, 2 Jul 2019 15:18:55 +0000
Message-ID: <d4d43765-227a-733e-f772-efa4edf89518@st.com>
References: <1560242912-17138-1-git-send-email-hugues.fruchet@st.com>
 <1560242912-17138-3-git-send-email-hugues.fruchet@st.com>
 <0ad39c36-5636-b2a6-8098-a1b38e7f907d@xs4all.nl>
In-Reply-To: <0ad39c36-5636-b2a6-8098-a1b38e7f907d@xs4all.nl>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.51]
Content-ID: <1C73814F2F518F488F70CD1625D9E91D@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-02_08:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_081908_586755_24E8B997 
X-CRM114-Status: GOOD (  25.14  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
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
Cc: Mickael GUENE <mickael.guene@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Philippe CORNU <philippe.cornu@st.com>, Yannick FERTRE <yannick.fertre@st.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Hans,

On 6/20/19 2:01 PM, Hans Verkuil wrote:
> On 6/11/19 10:48 AM, Hugues Fruchet wrote:
>> Add media controller support to dcmi.
>>
>> Signed-off-by: Hugues Fruchet <hugues.fruchet@st.com>
>> ---
>>   drivers/media/platform/Kconfig            |  2 +-
>>   drivers/media/platform/stm32/stm32-dcmi.c | 83 +++++++++++++++++++++++--------
>>   2 files changed, 63 insertions(+), 22 deletions(-)
>>
>> diff --git a/drivers/media/platform/Kconfig b/drivers/media/platform/Kconfig
>> index 8a19654..de7e21f 100644
>> --- a/drivers/media/platform/Kconfig
>> +++ b/drivers/media/platform/Kconfig
>> @@ -121,7 +121,7 @@ config VIDEO_S3C_CAMIF
>>   
>>   config VIDEO_STM32_DCMI
>>   	tristate "STM32 Digital Camera Memory Interface (DCMI) support"
>> -	depends on VIDEO_V4L2 && OF
>> +	depends on VIDEO_V4L2 && OF && MEDIA_CONTROLLER
>>   	depends on ARCH_STM32 || COMPILE_TEST
>>   	select VIDEOBUF2_DMA_CONTIG
>>   	select V4L2_FWNODE
>> diff --git a/drivers/media/platform/stm32/stm32-dcmi.c b/drivers/media/platform/stm32/stm32-dcmi.c
>> index 7a4d559..3a69783 100644
>> --- a/drivers/media/platform/stm32/stm32-dcmi.c
>> +++ b/drivers/media/platform/stm32/stm32-dcmi.c
>> @@ -170,6 +170,9 @@ struct stm32_dcmi {
>>   
>>   	/* Ensure DMA operations atomicity */
>>   	struct mutex			dma_lock;
>> +
>> +	struct media_device		mdev;
>> +	struct media_pad		vid_cap_pad;
>>   };
>>   
>>   static inline struct stm32_dcmi *notifier_to_dcmi(struct v4l2_async_notifier *n)
>> @@ -1545,21 +1548,12 @@ static int dcmi_graph_notify_complete(struct v4l2_async_notifier *notifier)
>>   		dev_err(dcmi->dev, "Could not get sensor bounds\n");
>>   		return ret;
>>   	}
>> -
>>   	ret = dcmi_set_default_fmt(dcmi);
>>   	if (ret) {
>>   		dev_err(dcmi->dev, "Could not set default format\n");
>>   		return ret;
>>   	}
>>   
>> -	ret = video_register_device(dcmi->vdev, VFL_TYPE_GRABBER, -1);
>> -	if (ret) {
>> -		dev_err(dcmi->dev, "Failed to register video device\n");
>> -		return ret;
>> -	}
> 
> Why was this moved to probe()? Off-hand I see no reason for that.
> 
> Regards,
> 
> 	Hans
> 

I need to do that otherwise the dcmi_graph_notify_bound() subdevice pad 
link code crashes:
  +	/*
  +	 * Link this sub-device to DCMI, it could be
  +	 * a parallel camera sensor or a bridge
  +	 */
  +	src_pad = media_entity_get_fwnode_pad(&subdev->entity,
  +					      subdev->fwnode,
  +					      MEDIA_PAD_FL_SOURCE);
  +
  +	ret = media_create_pad_link(&subdev->entity, src_pad,
  +				    &dcmi->vdev->entity, 0,
  +				    MEDIA_LNK_FL_IMMUTABLE |
  +				    MEDIA_LNK_FL_ENABLED);
see https://www.spinics.net/lists/linux-media/msg153120.html.


>> -
>> -	dev_dbg(dcmi->dev, "Device registered as %s\n",
>> -		video_device_node_name(dcmi->vdev));
>>   	return 0;
>>   }
>>   
>> @@ -1648,6 +1642,12 @@ static int dcmi_graph_init(struct stm32_dcmi *dcmi)
>>   	return 0;
>>   }
>>   
>> +static void dcmi_graph_deinit(struct stm32_dcmi *dcmi)
>> +{
>> +	v4l2_async_notifier_unregister(&dcmi->notifier);
>> +	v4l2_async_notifier_cleanup(&dcmi->notifier);
>> +}
>> +
>>   static int dcmi_probe(struct platform_device *pdev)
>>   {
>>   	struct device_node *np = pdev->dev.of_node;
>> @@ -1752,10 +1752,27 @@ static int dcmi_probe(struct platform_device *pdev)
>>   
>>   	q = &dcmi->queue;
>>   
>> +	dcmi->v4l2_dev.mdev = &dcmi->mdev;
>> +
>> +	/* Initialize media device */
>> +	strscpy(dcmi->mdev.model, DRV_NAME, sizeof(dcmi->mdev.model));
>> +	snprintf(dcmi->mdev.bus_info, sizeof(dcmi->mdev.bus_info),
>> +		 "platform:%s", DRV_NAME);
>> +	dcmi->mdev.dev = &pdev->dev;
>> +	media_device_init(&dcmi->mdev);
>> +
>> +	/* Register the media device */
>> +	ret = media_device_register(&dcmi->mdev);
>> +	if (ret) {
>> +		dev_err(dcmi->dev, "Failed to register media device (%d)\n",
>> +			ret);
>> +		goto err_media_device_cleanup;
>> +	}
>> +
>>   	/* Initialize the top-level structure */
>>   	ret = v4l2_device_register(&pdev->dev, &dcmi->v4l2_dev);
>>   	if (ret)
>> -		goto err_dma_release;
>> +		goto err_media_device_unregister;
>>   
>>   	dcmi->vdev = video_device_alloc();
>>   	if (!dcmi->vdev) {
>> @@ -1775,6 +1792,25 @@ static int dcmi_probe(struct platform_device *pdev)
>>   				  V4L2_CAP_READWRITE;
>>   	video_set_drvdata(dcmi->vdev, dcmi);
>>   
>> +	/* Media entity pads */
>> +	dcmi->vid_cap_pad.flags = MEDIA_PAD_FL_SINK;
>> +	ret = media_entity_pads_init(&dcmi->vdev->entity,
>> +				     1, &dcmi->vid_cap_pad);
>> +	if (ret) {
>> +		dev_err(dcmi->dev, "Failed to init media entity pad\n");
>> +		goto err_device_unregister;
>> +	}
>> +	dcmi->vdev->entity.flags |= MEDIA_ENT_FL_DEFAULT;
>> +
>> +	ret = video_register_device(dcmi->vdev, VFL_TYPE_GRABBER, -1);
>> +	if (ret) {
>> +		dev_err(dcmi->dev, "Failed to register video device\n");
>> +		goto err_media_entity_cleanup;
>> +	}
>> +
>> +	dev_dbg(dcmi->dev, "Device registered as %s\n",
>> +		video_device_node_name(dcmi->vdev));
>> +
>>   	/* Buffer queue */
>>   	q->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
>>   	q->io_modes = VB2_MMAP | VB2_READ | VB2_DMABUF;
>> @@ -1790,18 +1826,18 @@ static int dcmi_probe(struct platform_device *pdev)
>>   	ret = vb2_queue_init(q);
>>   	if (ret < 0) {
>>   		dev_err(&pdev->dev, "Failed to initialize vb2 queue\n");
>> -		goto err_device_release;
>> +		goto err_media_entity_cleanup;
>>   	}
>>   
>>   	ret = dcmi_graph_init(dcmi);
>>   	if (ret < 0)
>> -		goto err_device_release;
>> +		goto err_media_entity_cleanup;
>>   
>>   	/* Reset device */
>>   	ret = reset_control_assert(dcmi->rstc);
>>   	if (ret) {
>>   		dev_err(&pdev->dev, "Failed to assert the reset line\n");
>> -		goto err_cleanup;
>> +		goto err_graph_deinit;
>>   	}
>>   
>>   	usleep_range(3000, 5000);
>> @@ -1809,7 +1845,7 @@ static int dcmi_probe(struct platform_device *pdev)
>>   	ret = reset_control_deassert(dcmi->rstc);
>>   	if (ret) {
>>   		dev_err(&pdev->dev, "Failed to deassert the reset line\n");
>> -		goto err_cleanup;
>> +		goto err_graph_deinit;
>>   	}
>>   
>>   	dev_info(&pdev->dev, "Probe done\n");
>> @@ -1820,13 +1856,16 @@ static int dcmi_probe(struct platform_device *pdev)
>>   
>>   	return 0;
>>   
>> -err_cleanup:
>> -	v4l2_async_notifier_cleanup(&dcmi->notifier);
>> -err_device_release:
>> -	video_device_release(dcmi->vdev);
>> +err_graph_deinit:
>> +	dcmi_graph_deinit(dcmi);
>> +err_media_entity_cleanup:
>> +	media_entity_cleanup(&dcmi->vdev->entity);
>>   err_device_unregister:
>>   	v4l2_device_unregister(&dcmi->v4l2_dev);
>> -err_dma_release:
>> +err_media_device_unregister:
>> +	media_device_unregister(&dcmi->mdev);
>> +err_media_device_cleanup:
>> +	media_device_cleanup(&dcmi->mdev);
>>   	dma_release_channel(dcmi->dma_chan);
>>   
>>   	return ret;
>> @@ -1838,9 +1877,11 @@ static int dcmi_remove(struct platform_device *pdev)
>>   
>>   	pm_runtime_disable(&pdev->dev);
>>   
>> -	v4l2_async_notifier_unregister(&dcmi->notifier);
>> -	v4l2_async_notifier_cleanup(&dcmi->notifier);
>> +	dcmi_graph_deinit(dcmi);
>> +	media_entity_cleanup(&dcmi->vdev->entity);
>>   	v4l2_device_unregister(&dcmi->v4l2_dev);
>> +	media_device_unregister(&dcmi->mdev);
>> +	media_device_cleanup(&dcmi->mdev);
>>   
>>   	dma_release_channel(dcmi->dma_chan);
>>   
>>
> 

BR,
Hugues.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
