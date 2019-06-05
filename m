Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 103EB35CD0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 14:28:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gXEtAtgAgiuly8kUhCdoDphXSNGICYxIMa3LjwC7bJI=; b=o3xCdrOZ5BTQFM
	wF+BVJuqnros6ndq6FJCiO97uYg6KiWt7jKlmy5Q1k3JEKP4fh+HaqTWzabgzkEEM1otIWQ1HHKYr
	/kqH+26HuxlUoVpTM/dA9ihvQl7TkYWHU2DoWgrsnMg38dRapEW50D9IWAVookFLBlzCPVpLp9xQ1
	v2wOhj/qO/W1YAA/+M6pezgXr1UNEQ521p1qNKv7ggvSR9NoafbRW0ukCH6HqW3wVm5fLyA4xMz3j
	oLXMrsP2Mp27KbwIAInGeF34A8cUdrgl3YaAo2AUxxcE6lB6FeYtR9EZSJdDV4Fr9H6ebGxzn3ufE
	bnvJLeg7+4bsDrlH3D8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYV1h-0006pZ-Hw; Wed, 05 Jun 2019 12:28:21 +0000
Received: from lb2-smtp-cloud7.xs4all.net ([194.109.24.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYV1Z-0006p2-Ba
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 12:28:15 +0000
Received: from [IPv6:2001:420:44c1:2579:c806:4d76:5b3c:eea9]
 ([IPv6:2001:420:44c1:2579:c806:4d76:5b3c:eea9])
 by smtp-cloud7.xs4all.net with ESMTPA
 id YV1Rhlf1q3qlsYV1VhfwGp; Wed, 05 Jun 2019 14:28:09 +0200
Subject: Re: [PATCH v2] media: atmel: atmel-isc: split driver into driver base
 and isc
To: Eugen.Hristev@microchip.com, linux-media@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <1559202331-15397-1-git-send-email-eugen.hristev@microchip.com>
 <4f1925a5-9361-7f57-4526-3d28be8291dd@xs4all.nl>
 <613e2e74-6ac7-93ce-6fb7-d570852bf1e3@microchip.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <b4444af5-a7d6-f1f5-6954-7f05d4003484@xs4all.nl>
Date: Wed, 5 Jun 2019 14:28:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <613e2e74-6ac7-93ce-6fb7-d570852bf1e3@microchip.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfMeHU7VVk+ubjOu/mUoIBGWaluTGLBBs//VsEtNMMDYM7cCmD0EFyo96JFYBLs0yTNipRACLpxdMuZnVbtwY+efDwrzNAAOZgyvc4eCftiNhoTB7rnXB
 yuhlZcx4sJWqcreG/D4OzWHC+0X7XhWBZySBrvwPcYJAbq75kbIHuMg5gk+cXB38qSMdz/3f8LkLuJwOhKi9ZXoA89zC34OQcu2xIcZ/i0nCByqVOm9CvXMo
 wiTdTzwdn9cLXcyV/kVetmoD04MC8Fl8ZPWH3Yhg5c3S8gHRnM02+aIV6FMhnrpRLnHlFFcTu8LsCnbm1j953lGYCO84D5Jn2KhTwJKO1yPavB2Q3knyBvCm
 NGPk8tShPKN6KOcmY0obUI+HSxKm02erA5liR0tymAHWCWm2MraElslsuFH0PKEfuoM2VIDeU8h1AwMSysrb1SIUwEMnoX8Vhied3Q7/fJvqy/29w20=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_052813_563043_3A2BCDAF 
X-CRM114-Status: GOOD (  22.49  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: ksloat@aampglobal.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/5/19 2:08 PM, Eugen.Hristev@microchip.com wrote:
> 
> 
> On 05.06.2019 14:56, Hans Verkuil wrote:
> 
>>
>> Hi Eugen,
>>
>> On 5/30/19 9:50 AM, Eugen.Hristev@microchip.com wrote:
>>> From: Eugen Hristev <eugen.hristev@microchip.com>
>>>
>>> This splits the Atmel ISC driver into a common base: atmel-isc-base.c
>>> and the driver probe/dt part , atmel-sama5d2-isc.c
>>> This is needed to keep a common ground for the sensor controller which will
>>> be reused.
>>> The atmel-isc will use the common symbols inside the atmel-isc-base
>>> Future driver will also use the same symbols and redefine different aspects,
>>> for a different version of the ISC.
>>> This is done to avoid complete code duplication by creating a totally
>>> different driver for the new variant of the ISC.
>>>
>>> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
>>> ---
>>>
>>> Hello Hans,
>>>
>>> I am resending this with the required fixes.
>>> You asked me about the #ifdef around ATMEL_ISC_NAME, it's because I was
>>> thinking to have the ATMEL_ISC_NAME different by each driver that use
>>> the atmel-isc.h, but for now I removed any ifdef around it, and will
>>> consider a different define for new drivers.
>>>
>>> Changes in v2:
>>> - renamed atmel-isc.c to atmel-sama5d2-isc.c as sama5d2 is the SoC that
>>>    includes this hardware block. The module will still be named atmel-isc.ko
>>> - removed ifdef around definition of ATMEL_ISC_NAME
>>> - moved external declarations in the specific files, this was breaking
>>>    module loading
>>>
>>> v4l2-compliance SHA: 0d61ddede7d340ffa1c75a2882e30c455ef3d8b8, 32 bitatmel-isc f0008000.isc: =================  START STATUS  =================
>>>
>>> atmelpliance test for atmel-isc device /dev/video0:
>>>
>>> Driver Info:
>>>          Driver name      : atmel-isc
>>>          Card type        : Atmel Image Sensor Controller
>>>          Bus info         : platform:atmel-isc f0008000.isc
>>>          Driver version   : 5.2.0
>>>          Capabilities     : 0x84200001
>>>                  Video Capture
>>>                  Streaming
>>>                  Extended Pix Format
>>>                  Device Capabilities
>>>          Device Caps      : 0x04200001
>>>                  Video Capture
>>>                  Streaming
>>>                  Extended Pix Format
>>>
>>> Required ioctls:
>>>          test VIDIOC_QUERYCAP: OK
>>>
>>> Allow for multiple opens:
>>>          test second /dev/video0 open: OK
>>>          test VIDIOC_QUERYCAP: OK
>>>          test VIDIOC_G/S_PRIORITY: OK
>>>          test for unlimited opens: OK
>>>
>>> Debug ioctls:
>>>          test VIDIOC_DBG_G/S_REGISTER: OK (Not Supported)
>>> -isc f0008000.isc: Brightness: 0
>>> atmel-isc f0008000.isc: Contrast: 256
>>> atmel-isc f0008000.isc: Gamma: 2
>>> atmel-isc f0008000.isc: White Balance, Automatic: true
>>> atmel-isc f0008000.isc: ==================  END STATUS  ==================
>>>          test VIDIOC_LOG_STATUS: OK
>>>
>>> Input ioctls:
>>>          test VIDIOC_G/S_TUNER/ENUM_FREQ_BANDS: OK (Not Supported)
>>>          test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
>>>          test VIDIOC_S_HW_FREQ_SEEK: OK (Not Supported)
>>>          test VIDIOC_ENUMAUDIO: OK (Not Supported)
>>>          test VIDIOC_G/S/ENUMINPUT: OK
>>>          test VIDIOC_G/S_AUDIO: OK (Not Supported)
>>>          Inputs: 1 Audio Inputs: 0 Tuners: 0
>>>
>>> Output ioctls:
>>>          test VIDIOC_G/S_MODULATOR: OK (Not Supported)
>>>          test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
>>>          test VIDIOC_ENUMAUDOUT: OK (Not Supported)
>>>          test VIDIOC_G/S/ENUMOUTPUT: OK (Not Supported)
>>>          test VIDIOC_G/S_AUDOUT: OK (Not Supported)
>>>          Outputs: 0 Audio Outputs: 0 Modulators: 0
>>>
>>> Input/Output configuration ioctls:
>>>          test VIDIOC_ENUM/G/S/QUERY_STD: OK (Not Supported)
>>>          test VIDIOC_ENUM/G/S/QUERY_DV_TIMINGS: OK (Not Supported)
>>>          test VIDIOC_DV_TIMINGS_CAP: OK (Not Supported)
>>>          test VIDIOC_G/S_EDID: OK (Not Supported)
>>>
>>> Control ioctls (Input 0):
>>>          test VIDIOC_QUERY_EXT_CTRL/QUERYMENU: OK
>>>          test VIDIOC_QUERYCTRL: OK
>>>          test VIDIOC_G/S_CTRL: OK
>>>          test VIDIOC_G/S/TRY_EXT_CTRLS: OK
>>>          test VIDIOC_(UN)SUBSCRIBE_EVENT/DQEVENT: OK
>>>          test VIDIOC_G/S_JPEGCOMP: OK (Not Supported)
>>>          Standard Controls: 6 Private Controls: 0
>>>
>>> Format ioctls (Input 0):
>>>          test VIDIOC_ENUM_FMT/FRAMESIZES/FRAMEINTERVALS: OK
>>>          test VIDIOC_G/S_PARM: OK
>>>          test VIDIOC_G_FBUF: OK (Not Supported)
>>>          test VIDIOC_G_FMT: OK
>>>          test VIDIOC_TRY_FMT: OK
>>>          test VIDIOC_S_FMT: OK
>>>          test VIDIOC_G_SLICED_VBI_CAP: OK (Not Supported)
>>>          test Cropping: OK (Not Supported)
>>>          test Composing: OK (Not Supported)
>>>          test Scaling: OK (Not Supported)
>>>
>>> Codec ioctls (Input 0):
>>>          test VIDIOC_(TRY_)ENCODER_CMD: OK (Not Supported)
>>>          test VIDIOC_G_ENC_INDEX: OK (Not Supported)
>>>          test VIDIOC_(TRY_)DECODER_CMD: OK (Not Supported)
>>>
>>> Buffer ioctls (Input 0):
>>>          test VIDIOC_REQBUFS/CREATE_BUFS/QUERYBUF: OK
>>>          test VIDIOC_EXPBUF: OK
>>>          test Requests: OK (Not Supported)
>>>
>>> Total for atmel-isc device /dev/video0: 44, Succeeded: 44, Failed: 0, Warnings: 0
>>>
>>>
>>>   MAINTAINERS                                      |    4 +-
>>>   drivers/media/platform/atmel/Makefile            |    4 +-
>>>   drivers/media/platform/atmel/atmel-isc-base.c    | 2148 ++++++++++++++++++
>>>   drivers/media/platform/atmel/atmel-isc.c         | 2634 ----------------------
>>>   drivers/media/platform/atmel/atmel-isc.h         |  192 ++
>>>   drivers/media/platform/atmel/atmel-sama5d2-isc.c |  365 +++
>>>   6 files changed, 2711 insertions(+), 2636 deletions(-)
>>>   create mode 100644 drivers/media/platform/atmel/atmel-isc-base.c
>>>   delete mode 100644 drivers/media/platform/atmel/atmel-isc.c
>>>   create mode 100644 drivers/media/platform/atmel/atmel-isc.h
>>>   create mode 100644 drivers/media/platform/atmel/atmel-sama5d2-isc.c
>>>
>>
>> Checkpatch gave me various warnings that I think should be addressed:
> 
> 
> Hello Hans,
> 
> I saw the checkpatch issues as well, but most of them are inherited and 
> appear now because of code move...
> I would think it would be cleaner to solve these issues in a an a-priori 
> patch, and then do the split as a "clean,just-split" patch afterwards.
> What do you think?
> 
> And for the externs, I can handle it, but I would create a separate 
> header file for them that would be included in new atmel-sama5d2-isc.c
> 
> Are you ok with this approach ?

The extern issues are introduced by this patch, so they should be solved
here.

The other issues can be fixed in a separate follow-up patch.

Regards,

	Hans

> 
> Thanks for review,
> Eugen
> 
>>
>> WARNING: externs should be avoided in .c files
>> #249: FILE: drivers/media/platform/atmel/atmel-isc-base.c:40:
>> +extern unsigned int sensor_preferred;
>>
>> It looks like these module parameters can be moved to atmel-isc-base.c
>> and only an extern unsigned int debug should be added to the atmel-isc.h.
>>
>> Externs in a source is indeed dubious.
>>
>> CHECK: spinlock_t definition without comment
>> #681: FILE: drivers/media/platform/atmel/atmel-isc.h:27:
>> +       spinlock_t      lock;
>>
>> I know there was no comment before, but it might be nice to add one
>> now.
>>
>> CHECK: Macro argument reuse 'hw' - possible side-effects?
>> #688: FILE: drivers/media/platform/atmel/atmel-isc.h:34:
>> +#define to_isc_clk(hw) container_of(hw, struct isc_clk, hw)
>>
>> This seems really wrong. One hw refers to the argument, the
>> other is the name of a field in a struct. Use a different
>> name as the macro argument to avoid this confusion.
>>
>>
>> CHECK: spinlock_t definition without comment
>> #814: FILE: drivers/media/platform/atmel/atmel-isc.h:160:
>> +       spinlock_t              dma_queue_lock;
>>
>> CHECK: struct mutex definition without comment
>> #832: FILE: drivers/media/platform/atmel/atmel-isc.h:178:
>> +       struct mutex            lock;
>>
>> CHECK: spinlock_t definition without comment
>> #833: FILE: drivers/media/platform/atmel/atmel-isc.h:179:
>> +       spinlock_t              awb_lock;
>>
>> Comments would be nice.
>>
>> WARNING: externs should be avoided in .c files
>> #909: FILE: drivers/media/platform/atmel/atmel-sama5d2-isc.c:57:
>> +extern struct isc_format formats_list[];
>>
>> WARNING: externs should be avoided in .c files
>> #910: FILE: drivers/media/platform/atmel/atmel-sama5d2-isc.c:58:
>> +extern struct isc_format controller_formats[];
>>
>> WARNING: externs should be avoided in .c files
>> #911: FILE: drivers/media/platform/atmel/atmel-sama5d2-isc.c:59:
>> +extern const u32 isc_gamma_table[GAMMA_MAX + 1][GAMMA_ENTRIES];
>>
>> WARNING: externs should be avoided in .c files
>> #912: FILE: drivers/media/platform/atmel/atmel-sama5d2-isc.c:60:
>> +extern const struct regmap_config isc_regmap_config;
>>
>> WARNING: externs should be avoided in .c files
>> #913: FILE: drivers/media/platform/atmel/atmel-sama5d2-isc.c:61:
>> +extern const struct v4l2_async_notifier_operations isc_async_ops;
>>
>> This should be in a header.
>>
>> WARNING: externs should be avoided in .c files
>> #915: FILE: drivers/media/platform/atmel/atmel-sama5d2-isc.c:63:
>> +extern irqreturn_t isc_interrupt(int irq, void *dev_id);
>>
>> WARNING: externs should be avoided in .c files
>> #916: FILE: drivers/media/platform/atmel/atmel-sama5d2-isc.c:64:
>> +extern int isc_pipeline_init(struct isc_device *isc);
>>
>> WARNING: externs should be avoided in .c files
>> #917: FILE: drivers/media/platform/atmel/atmel-sama5d2-isc.c:65:
>> +extern int isc_clk_init(struct isc_device *isc);
>>
>> WARNING: externs should be avoided in .c files
>> #918: FILE: drivers/media/platform/atmel/atmel-sama5d2-isc.c:66:
>> +extern void isc_subdev_cleanup(struct isc_device *isc);
>>
>> WARNING: externs should be avoided in .c files
>> #919: FILE: drivers/media/platform/atmel/atmel-sama5d2-isc.c:67:
>> +extern void isc_clk_cleanup(struct isc_device *isc);
>>
>> Should also be in a header. No need to extern when just declaring the
>> function prototype, BTW.
>>
>> CHECK: Alignment should match open parenthesis
>> #964: FILE: drivers/media/platform/atmel/atmel-sama5d2-isc.c:112:
>> +               subdev_entity = devm_kzalloc(dev,
>> +                                         sizeof(*subdev_entity), GFP_KERNEL);
>>
>> Please fix this as well.
>>
>> Regards,
>>
>> 	Hans
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
