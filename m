Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F221B15BEB1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 13:51:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/uQX6B9ue0rt1U1YdT4YcDfFONyZeJTNlhwH5Pw5Nnc=; b=iepZzxtKGwqehFaElHfV4rqXj
	ou3ngVhA3Xb6MbkMz+rM41cszEOYL6YmXDS6bV7n3o+S7cjuQO39SUtkVl2SALgxZKm/Wt6D3yn9+
	tWcM6nBfZlQiwdbHN3fq3dJuwZYlZ3z5yX6436cr43xLKqCMuzqHd8laiNsa7HPUISOd3OdC9/92P
	u6pAIsuG4X1luKS5hjTjtTULS65BRxGv1KVpqDHDeKxorTSJV5K+oDAyKtw0ivcvZ+Rie2bA8zacp
	nGTALacW44TRZgBvwOptQmUzlYa1I5C9k9lZ679rHgdpcQzYJh0dtfGtRlfqjahOo/J+2zqnpE/om
	7P7JsvoTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2DxH-0004lU-1I; Thu, 13 Feb 2020 12:50:55 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Dx9-0004kf-A8; Thu, 13 Feb 2020 12:50:48 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 4200629515E
Subject: Re: [PATCH v8 05/14] media: rkisp1: add Rockchip ISP1 subdev driver
To: Sakari Ailus <sakari.ailus@linux.intel.com>
References: <20190730184256.30338-1-helen.koike@collabora.com>
 <20190730184256.30338-6-helen.koike@collabora.com>
 <20190808091406.GQ21370@paasikivi.fi.intel.com>
 <da6c1d01-e3f6-ad73-db55-145d7832a665@collabora.com>
 <20190815082422.GM6133@paasikivi.fi.intel.com>
 <20190815131748.GS6133@paasikivi.fi.intel.com>
 <78856358-1afd-31a7-86dd-22f7d6d7fb05@collabora.com>
 <20200212211317.GD3087@kekkonen.localdomain>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <3bc90001-8ebc-c55f-06b5-bbd6b58fa3cd@collabora.com>
Date: Thu, 13 Feb 2020 13:50:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200212211317.GD3087@kekkonen.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_045047_483459_1A5DF7DE 
X-CRM114-Status: GOOD (  22.41  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, eddie.cai.linux@gmail.com, kernel@collabora.com,
 heiko@sntech.de, jacob2.chen@rock-chips.com,
 Dafna Hirschfeld <dafna3@gmail.com>, jeffy.chen@rock-chips.com,
 zyc@rock-chips.com, linux-kernel@vger.kernel.org, tfiga@chromium.org,
 Allon Huang <allon.huang@rock-chips.com>, linux-rockchip@lists.infradead.org,
 Helen Koike <helen.koike@collabora.com>, Jacob Chen <cc@rock-chips.com>,
 hans.verkuil@cisco.com, laurent.pinchart@ideasonboard.com,
 zhengsq@rock-chips.com, mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 12.02.20 22:13, Sakari Ailus wrote:
> Hi Dafna,
> 
> Apologies for the late reply. I learned the mail had got lost due to mail
> server issues.
> 
np:)

> On Fri, Jan 31, 2020 at 08:38:34PM +0100, Dafna Hirschfeld wrote:
>> Hi,
>> I (Dafna Hirschfeld) will work in following months with Helen Koike to fix the issues
>> in the TODO file of this driver: drivers/staging/media/rkisp1/TODO
>>
>> On 15.08.19 15:17, Sakari Ailus wrote:
>>> On Thu, Aug 15, 2019 at 11:24:22AM +0300, Sakari Ailus wrote:
>>>> Hi Helen,
>>>>
>>>> On Wed, Aug 14, 2019 at 09:58:05PM -0300, Helen Koike wrote:
>>>>
>>>> ...
>>>>
>>>>>>> +static int rkisp1_isp_sd_set_fmt(struct v4l2_subdev *sd,
>>>>>>> +				 struct v4l2_subdev_pad_config *cfg,
>>>>>>> +				 struct v4l2_subdev_format *fmt)
>>>>>>> +{
>>>>>>> +	struct rkisp1_device *isp_dev = sd_to_isp_dev(sd);
>>>>>>> +	struct rkisp1_isp_subdev *isp_sd = &isp_dev->isp_sdev;
>>>>>>> +	struct v4l2_mbus_framefmt *mf = &fmt->format;
>>>>>>> +
>>>>>>
>>>>>> Note that for sub-device nodes, the driver is itself responsible for
>>>>>> serialising the access to its data structures.
>>>>>
>>>>> But looking at subdev_do_ioctl_lock(), it seems that it serializes the
>>>>> ioctl calls for subdevs, no? Or I'm misunderstanding something (which is
>>>>> most probably) ?
>>>>
>>>> Good question. I had missed this change --- subdev_do_ioctl_lock() is
>>>> relatively new. But setting that lock is still not possible as the struct
>>
>> 'the struct' - do you mean the 'vdev' struct allocated in
>> 'v4l2_device_register_subdev_nodes' ?
> 
> Yes.
> 
>>
>>>> is allocated in the framework and the device is registered before the
>>
>>>> driver gets hold of it. It's a good idea to provide the same serialisation
>>>> for subdevs as well.
>>>>
>>>> I'll get back to this later.
>>>
>>> The main reason is actually that these ops are also called through the
>>> sub-device kAPI, not only through the uAPI, and the locks are only taken
>>> through the calls via uAPI.
>>
>> actually it seems that although 'subdev_do_ioctl_lock' exit, I wonder if
>> any subdevice uses that vdev->lock in  subdev_do_ioctl_lock.
>> It is not initialized in v4l2_device_register_subdev_nodes where the vdev is allocated
>> and I wonder if any subdevice actually initialize it somewhere else. For example it is null in this
>> driver and in vimc.
> 
> It needs to be set before the video device is registered, so indeed, it
> seems no driver can make use it.
> 
>>
>>>
>>> So adding the locks to uAPI calls alone would not address the issue.
>>
>> What I can do is add a mutex to every struct of a subdevice and lock it
>> at the beginning of each subdevice operation.
>> Is this an acceptable solution?
> 
> Please do. That's what other drivers do at the moment as well.
> 
I already sent it as the patchset "media: staging: rkisp1: add serialization to the isp and resizer ops"

Thanks,
Dafna

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
