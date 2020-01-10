Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DE29136FF9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 15:50:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ss6sb1Bd2BaGe4xgVMkaK9zj5cpEVmL/AYCjzz/5YNk=; b=oiZ9mgjE1xFVFr
	ScN5y51NGf1AmTJKPnmnkmIyJi8NGfVyr3kV+5Id49255PKon+K9Is1txEP0LNt0bOCkU8XncI6KI
	xYlp9zrahRUaNOSV1LfF8TdQqlb4SRPib/f2nrv6nfhpgbaK4RVMRDh2tmc+ZahdgeYj5zgHddckf
	LsxWjNIKdxbvLxb5fCROMQpsS9PlFHf3dx97SBYicENcM98RhNN4PQddpMR0a78kTLMHmUfx0UkFb
	/FH4SCZD0Y2gH/nAgJBdbmwBxjkcAeDLALWCjxLYgleYfQo2tjZ1MgtPAk2fKEw6Tmw11tswZGqPB
	sV89vNZyQvzPcj38Ubow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipvcH-0001it-UF; Fri, 10 Jan 2020 14:50:25 +0000
Received: from lb2-smtp-cloud8.xs4all.net ([194.109.24.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipvby-0000No-F0; Fri, 10 Jan 2020 14:50:08 +0000
Received: from [IPv6:2001:420:44c1:2577:c967:e1d3:183a:b8ef]
 ([IPv6:2001:420:44c1:2577:c967:e1d3:183a:b8ef])
 by smtp-cloud8.xs4all.net with ESMTPA
 id pvboinhX3pLtbpvbsiR9LC; Fri, 10 Jan 2020 15:50:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1578667801; bh=tN86OgQCReKdsD5kIAkd7q9v8iG4Zay6Euw8wXF3a4I=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=dqSvoopp9XSdwUgN2FpoEKIIsnFUdefbz568utV49M467BjvCNEm4s3YaqD2s3kLV
 tNwz6dEV+PuawO8fZs/xp/TzQzXSC6OjMev5bRhKnya5AlR87uNCSIiClHuY2nXeli
 hCpcqux51WVrNL3/pGRqcFt98ZbdjfPhzqzux2F0nhsAmNT+ieNrsPLfjQpy1g2rBo
 rK25zmBJtOFgn6Ku1AyeQHVt2A6I1A73p8bEdHjijpITjyCqGVZLHeH00lX7naSzWn
 3Fg0Hmq8odJU/k2kZm+TeGUmU0ZeNwloEQ06+5bvpcFe1g0pJCXK90z3vfK2zSCUYE
 LL1BxdapJU8Fg==
Subject: Re: [PATCH] staging/vc04_services/bcm2835-camera: distinct numeration
 and names for devices
To: Dave Stevenson <dave.stevenson@raspberrypi.com>
References: <20191206085432.19962-1-michael.kupfer@fau.de>
 <3db2350b-0a6d-0693-258c-9d47f71c0627@xs4all.nl>
 <CAPY8ntALS7Em42457fsHmUuQLD5vokKLc0RHn3a-T7amgS1Kvg@mail.gmail.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <da5ca5da-ca15-4545-0df0-27e27c72bac9@xs4all.nl>
Date: Fri, 10 Jan 2020 15:49:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAPY8ntALS7Em42457fsHmUuQLD5vokKLc0RHn3a-T7amgS1Kvg@mail.gmail.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfOXaGGwQ2xYr/57NxHzV+/My3su5ufZRpmW/rZR2ZXLhbDoiMhPyN1X0j7aT+iXMb9Cm6PkVr0UoLtr5zNWyQhz6D9EY9PcmvvWW4MvKfZeKQdyywOUu
 JuKLFKBz1NRllCTcMhzgw9s5Y6L4BNSbmGnDE/1fjwmzxuPf76lGlxNGwnPqs3NL5Xrro4Wj2FR8nA6fov7JiEuwBxorKZY4bO42qSn4h0m6jKuC8FOfVlfs
 VmMQoKPoKdzsYo45SR3UyalSexbnfc+PBherVVP/ARUubBC9ynkmFkhWs7Tt5Iihtz1KZ27RfNBjHfg9SGly8/iiodq6wZEJh6am7CINN8g0s7l5Vo7M5fV5
 dfrlestdAKZFkXNjb+5AA+MOjNpX28oVyIuwCj0oOhVAq3mr6MJrF4L58mNpGra/GIqKpdYngE8QS8BLHYLksdkWg2yBC/KH4D5VSGm5C2UALq/Y7F5UBbWS
 WhENvu1lV4fiyJqQqi2K2CtSfj+Qvf8kcPa9DUQHqFQHrZGUg7JOZc+DUk+b7h88NkaDCU8Vz5Cb0lVWdm9cplFy5PNV35MEvgO9f3qmsCVPp3og0AU+hGuq
 QS6GcfUfSfrFiaVHd5OfTLVZLl0+junyofkq0DQ8qK5yU2glhyD82blxdJ6sIYnGt2uMzG9zOmv5DUiYW6T9kOq5Odp6U1jt6pRHafwIMbOlfMVJ8MwuCwQG
 phGv/vAAOuWgbtKAig2t/JAkjYafZXj91DISBUGSUnQT6nSN9IbxRwYWRkXo6Ss4vwR47sHAqHtwrB7lUaVPYf/2IiPiTohjECpUjoADnvctEjK6GNLBUTY2
 lclKTdoNJKAxWmk1tK4XpKD8ArDA+kNWZ3RjuxZQTw0AuIzeguBp/MNYGQUAcP3S5Uyw0L9YJkeYHOtZfwqeT1XvVIkWEQ37I/3ywGl/gi3TXKAhZOBo1/Q9
 hA0s2GCEP26jFmCof7woduVxLklsUR+CCb4bLqGyTFs07DdO
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_065007_047905_31FF1EBB 
X-CRM114-Status: GOOD (  22.62  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.25 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [194.109.24.25 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devel@driverdev.osuosl.org, f.fainelli@gmail.com, sbranden@broadcom.com,
 Michael Kupfer <michael.kupfer@fau.de>, linux-kernel@i4.cs.fau.de,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, eric@anholt.net,
 daniela.mormocea@gmail.com, bcm-kernel-feedback-list@broadcom.com,
 wahrenst@gmx.net, Dave Stevenson <dave.stevenson@raspberrypi.org>,
 rjui@broadcom.com, mchehab+samsung@kernel.org, linux-media@vger.kernel.org,
 Kay Friedrich <kay.friedrich@fau.de>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/10/20 3:35 PM, Dave Stevenson wrote:
> Hi Hans
> 
> On Fri, 10 Jan 2020 at 13:25, Hans Verkuil <hverkuil-cisco@xs4all.nl> wrote:
>>
>> Hi Michael, Kay,
>>
>> On 12/6/19 9:54 AM, Michael Kupfer wrote:
>>> Create a static atomic counter for numerating cameras.
>>> Use the Media Subsystem Kernel Internal API to create distinct
>>> device-names, so that the camera-number (given by the counter)
>>> matches the camera-name.
>>>
>>> Co-developed-by: Kay Friedrich <kay.friedrich@fau.de>
>>> Signed-off-by: Kay Friedrich <kay.friedrich@fau.de>
>>> Signed-off-by: Michael Kupfer <michael.kupfer@fau.de>
>>> ---
>>>  .../vc04_services/bcm2835-camera/bcm2835-camera.c        | 9 ++++++---
>>>  1 file changed, 6 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
>>> index beb6a0063bb8..be5f90a8b49d 100644
>>> --- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
>>> +++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
>>> @@ -60,6 +60,9 @@ MODULE_PARM_DESC(max_video_width, "Threshold for video mode");
>>>  module_param(max_video_height, int, 0644);
>>>  MODULE_PARM_DESC(max_video_height, "Threshold for video mode");
>>>
>>> +/* camera instance counter */
>>> +static atomic_t camera_instance = ATOMIC_INIT(0);
>>> +
>>>  /* global device data array */
>>>  static struct bm2835_mmal_dev *gdev[MAX_BCM2835_CAMERAS];
>>>
>>> @@ -1870,7 +1873,6 @@ static int bcm2835_mmal_probe(struct platform_device *pdev)
>>>
>>>               /* v4l2 core mutex used to protect all fops and v4l2 ioctls. */
>>>               mutex_init(&dev->mutex);
>>> -             dev->camera_num = camera;
>>>               dev->max_width = resolutions[camera][0];
>>>               dev->max_height = resolutions[camera][1];
>>>
>>> @@ -1886,8 +1888,9 @@ static int bcm2835_mmal_probe(struct platform_device *pdev)
>>>               dev->capture.fmt = &formats[3]; /* JPEG */
>>>
>>>               /* v4l device registration */
>>> -             snprintf(dev->v4l2_dev.name, sizeof(dev->v4l2_dev.name),
>>> -                      "%s", BM2835_MMAL_MODULE_NAME);
>>> +             dev->camera_num = v4l2_device_set_name(&dev->v4l2_dev,
>>> +                                                    BM2835_MMAL_MODULE_NAME,
>>> +                                                    &camera_instance);
>>>               ret = v4l2_device_register(NULL, &dev->v4l2_dev);
>>>               if (ret) {
>>>                       dev_err(&pdev->dev, "%s: could not register V4L2 device: %d\n",
>>>
>>
>> Actually, in this specific case I would not use v4l2_device_set_name().
>>
>> Instead just use:
>>
>>                 snprintf(dev->v4l2_dev.name, sizeof(dev->v4l2_dev.name),
>>                          "%s-%u", BM2835_MMAL_MODULE_NAME, camera);
>>
>> It would be even better if there would be just one top-level v4l2_device used
>> for all the camera instances. After all, there really is just one platform
>> device for all of the cameras, and I would expect to see just a single
>> v4l2_device as well.
>>
>> It doesn't hurt to have multiple v4l2_device structs, but it introduces a
>> slight memory overhead since one would have been sufficient.
> 
> Doesn't that make all controls for all cameras common? The struct
> v4l2_ctrl_handler is part of struct v4l2_device.
> 
> Or do we:
> - ditch the use of ctrl_handler in struct v4l2_device
> - create and initialise a ctrl_handler per camera on an internal
> structure so we retain the control state
> - assign ctrl_handler in struct v4l2_fh to it every time a file handle
> on the device is opened?

You can set ctrl_handlers at three levels: v4l2_device (common to all
video devices), video_device (specific to a single video device), or
for v4l2_fh (specific to that filehandle only).

In this case you would assign it to the video_device:

	dev->vdev.ctrl_handler = &dev->ctrl_handler;

> 
> And if we only have one struct v4l2_device then is there the
> possibility of the unique names that Michael and Kay are trying to
> introduce?
> 
> I'm a little confused as to whether there really is a gain in having a
> single v4l2_device. In this case the two cameras are independent
> devices, even if they are loaded by a single platform driver.

There probably is little to no gain. Hence my proposal to just stick the
camera index after the module name.

Regards,

	Hans

> 
>   Dave
> 
>> v4l2_device_set_name() is meant for pci-like devices. And it really
>> is a bit overkill to have it as a helper function.
>>
>> Regards,
>>
>>         Hans


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
