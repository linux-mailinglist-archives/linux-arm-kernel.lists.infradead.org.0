Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D70582BA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 14:39:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fKrmSYBd0+OCSOgwf/hGK2u8lUvYTy4v/DIoa6mE4Ls=; b=KMoibD01UU3kYT
	EJzA5H+nZW06ysqPztpqk7FXrBUFvxON3oV8Ok5AvUejTjIUAn92ATr8Db/HmYowypoE/ZOO7HUyC
	RhAoXyziawxu4lXF5bGgug9NlwrYgGm4k9cj4ydmw+OvyUUdJCrZqZxnae7Znh7aTDEJFW7KuJx14
	nizHAbjQxDYfET0fuGGXte2PMT3dYe2n3vGyMqCrZY844NFBA9E9HQ0rI5S92f2ekwE29ru15IbnB
	GQkKn1DVkzS0yrR+Xc2cwZa7wHY5cTz1AIP0gsdSxb2Ez75zOEMkGvN/pjgfLIh9jjW+RTIBGq29P
	2uIlKWanFxGKNTGa1zNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgTgH-0005n9-Ai; Thu, 27 Jun 2019 12:39:13 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgTg1-0005mF-8z
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 12:38:59 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5RCSSMi017826; Thu, 27 Jun 2019 14:38:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=iTvZ7Qy8oIibUwXAe/7zciOjWIyxXJ+MY9nuagG4AsE=;
 b=0L/NQri0TlBpqbJX16cjTEsFo83GNORuGL9CN/N7b8gRVYi/Hff95RmFuw47O6JCulXt
 5THgz0DrChKGm5EBWsS2nUIzpbGwqn0Y9F6npgtR6ggXwNMuWXZzCDU9+/C+nPiKbfQZ
 qti4BV0G/otIl/AFLcADEwVrnWPmzHLyMjf4RYVVHibljUPjfiwJ3eitVRWPc7ef5vfB
 PLA0nKk2kD1WhcF+vuSjus9iQOCJClokzdXdzvo1Y7etgAcLxHmEYHpeoXqt7cl/hs77
 XbRT6Fv0CBJ4fqChW9NIWPM78Tp6pCBRC/HW7kqDlRe0Hg+f4vPhhZtAh1NrMnfqem6w kg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2t9d2gpta0-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 27 Jun 2019 14:38:42 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id DF9AF31;
 Thu, 27 Jun 2019 12:38:41 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag6node3.st.com [10.75.127.18])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 5E49D27AE;
 Thu, 27 Jun 2019 12:38:41 +0000 (GMT)
Received: from SFHDAG5NODE1.st.com (10.75.127.13) by SFHDAG6NODE3.st.com
 (10.75.127.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 27 Jun
 2019 14:38:41 +0200
Received: from SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6]) by
 SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6%20]) with mapi id
 15.00.1347.000; Thu, 27 Jun 2019 14:38:40 +0200
From: Hugues FRUCHET <hugues.fruchet@st.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Sakari Ailus
 <sakari.ailus@linux.intel.com>, Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [PATCH v2 0/3] DCMI bridge support
Thread-Topic: [PATCH v2 0/3] DCMI bridge support
Thread-Index: AQHVJ4OqL2qtYdvbaESId3efmYQAfaaqeW6AgAOeMYCAAUJRAA==
Date: Thu, 27 Jun 2019 12:38:40 +0000
Message-ID: <b21efe64-7762-308b-c2e5-503589041c35@st.com>
References: <1560242912-17138-1-git-send-email-hugues.fruchet@st.com>
 <20190620161721.h3wn4nibomrvriw4@kekkonen.localdomain>
 <ae097d67-58fe-82d7-78d6-2445664f28db@st.com>
 <20190626172503.GB6118@pendragon.ideasonboard.com>
In-Reply-To: <20190626172503.GB6118@pendragon.ideasonboard.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.45]
Content-ID: <9CC95BC9616EAA44ABD50C18309839EF@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-27_07:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_053857_625719_DDE74958 
X-CRM114-Status: GOOD (  37.40  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 KHOP_DYNAMIC           Relay looks like a dynamic address
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
Cc: Alexandre TORGUE <alexandre.torgue@st.com>,
 Mickael GUENE <mickael.guene@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Philippe CORNU <philippe.cornu@st.com>, Yannick FERTRE <yannick.fertre@st.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Laurent,

Thanks for reviewing,

On 6/26/19 7:25 PM, Laurent Pinchart wrote:
> Hi Hugues,
> 
> On Mon, Jun 24, 2019 at 10:10:05AM +0000, Hugues FRUCHET wrote:
>> Hi Sakari,
>>
>>   > - Where's the sub-device representing the bridge itself?
>> This is pointed by [1]: drivers/media/i2c/st-mipid02.c
>>
>>   > - As the driver becomes MC-centric, crop configuration takes place
>> through
>>   >   V4L2 sub-device interface, not through the video device node.
>>   > - Same goes for accessing sensor configuration: it does not take place
>>   >   through video node but through the sub-device nodes.
>>
>> Our objective is to be able to support either a simple parallel sensor
>> or a CSI-2 sensor connected through a bridge without any changes on
>> userspace side because no additional processing or conversion involved,
>> only deserialisation is m.
>> With the proposed set of patches, we succeeded to do so, the same
>> non-regression tests campaign is passed with OV5640 parallel sensor
>> (STM32MP1 evaluation board) or OV5640 CSI-2 sensor (Avenger96 board with
>> D3 mezzanine board).
>>
>> We don't want driver to be MC-centric, media controller support was
>> required only to get access to the set of functions needed to link and
>> walk trough subdevices: media_create_pad_link(),
>> media_entity_remote_pad(), etc...
>>
>> We did a try with the v1 version of this patchset, delegating subdevices
>> handling to userspace, by using media-controller, but this require to
>> configure first the pipeline for each single change of resolution and
>> format before making any capture using v4l2-ctl or GStreamer, quite
>> heavy in fact.
>> Benjamin did another try using new libcamera codebase, but even for a
>> basic capture use-case, negotiation code is quite tricky in order to
>> match the right subdevices bus format to the required V4L2 format.
> 
> Why would it be trickier in userspace than in the kernel ? The V4L2
> subdev operations are more or less expose verbatim through the subdev
> userspace API.
> 
>> Moreover, it was not clear how to call libcamera library prior to any
>> v4l2-ctl or GStreamer calls.
> 
> libcamera isn't meant to be called before v4l2-ctl or GStreamer.
> Applications are supposed to be based directly on libcamera, or, for
> existing userspace APIs such as V4L2 or GStreamer, compatibility layers
> are supposed to be developed. For V4L2 it will take the form of a
> LD_PRELOAD-able .so that will intercept the V4L2 API calls, making most
> V4L2 applications work with libcamera unmodified (I said most as 100%
> compatibility will likely not be achievable). For GStreamer it will take
> the form of a GStreamer libcamera element that will replace the V4L2
> source element.
> 
>> Adding 100 lines of code into DCMI to well configure resolution and
>> formats fixes the point and allows us to keep backward compatibility
>> as per our objective, so it seems far more reasonable to us to do so
>> even if DCMI controls more than the subdevice it is connected to.
>> Moreover we found similar code in other video interfaces code like
>> qcom/camss/camss.c and xilinx/xilinx-dma.c, controlling the whole
>> pipeline, so it seems to us quite natural to go this way.
> 
> I can't comment on the qcom-camss driver as I'm not aware of its
> internals, but where have you found such code in the Xilinx V4L2 drivers
> ?
For ex. in xilinx/xilinx-dma.c, stream on/off is propagated to all 
subdevices within pipeline:
  * Walk the entities chain starting at the pipeline output video node 
static int xvip_pipeline_start_stop(struct xvip_pipeline *pipe, bool start)

Same for qcom/camss/camss-video.c:
static int video_start_streaming(struct vb2_queue *q, unsigned int count)

For resolution/format, in exynos4-is/fimc-capture.c:
static int fimc_pipeline_try_format(struct fimc_ctx *ctx,
...
	while (1) {
...
		/* set format on all pipeline subdevs */
		while (me != &fimc->vid_cap.subdev.entity) {
...
			ret = v4l2_subdev_call(sd, pad, set_fmt, NULL, &sfmt);

> 
>> To summarize, if we cannot do the negotiation within kernel, delegating
>> this to userspace implies far more complexity and breaks compatibility
>> with existing applications without adding new functionalities.
>>
>> Having all that in mind, what should be reconsidered in your opinion
>> Sakari ? Do you have some alternatives ?
> 
> First of all, let's note that your patch series performs to related but
> still independent changes: it enables MC support, *and* enables the V4L2
> subdev userspace API. The former is clearly needed and will allow you to
> use the MC API internally in the kernel, simplifying pipeline traversal.
> The latter then enables the V4L2 subdev userspace API, moving the
> pipeline configuration responsibility to userspace.
> 
> You could in theory move to the MC API inside the kernel, without
> enabling support for the V4L2 subdev userspace API. Configuring the
> pipeline and propagating the formats would then be the responsibility of
> the kernel driver.

Yes this is exactly what we want to do.
If I understand well, to disable the V4L2 subdev userspace API, I just 
have to remove the media device registry:
-	/* Register the media device */
-	ret = media_device_register(&dcmi->mdev);
-	if (ret) {
-		dev_err(dcmi->dev, "Failed to register media device (%d)\n",
-			ret);
-		goto err_media_device_cleanup;
-	}
Do you see any additional things to do ?


> However, this will limit your driver to the
> following:
> 
> - Fully linear pipelines only (single sensor)
> - No support for controls implemented by multiple entities in the
>    pipeline (for instance controls that would exist in both the sensor
>    and the bridge, such as gains)
> - No proper support for scaling configuration if multiple components in
>    the pipeline can scale
> 
> Are you willing to set those limitations in stone and give up on
> supporting those features ?
> 

The involved hardware do not have those features, no need of extra 
functionalities to be exposed to userspace, so this is fine.


I'll push a v3 with this change and the other fixes related to Sakari 
and Hans comments.

Please Sakari & Hans, also comment on that change that we can converge 
on v3.


Best regards,
Hugues.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
