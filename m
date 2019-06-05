Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E510335C24
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 13:56:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a/CgZ6O0QCXnpo8Pz8J+5VEe1ihr5n77VSpw165xvHw=; b=S9riuAjAdga6PI
	x5zNPcd3XPMa6joStdBRYtkTz8Qgx73YAlEuxOqAz5RbGDUrXGEg4hE1lsmF/qmZklMf627McvOVh
	A7wx5lKC2E0MeJZJMnNHaF2pnPBfRe6BYfBuWaEdK8ruQaeR3HhknJZvH4CG3M2HBeYnClA2IEz34
	6GVS5TnCvtwk+KDv7mcNmlastuFdeTIskskRtbsC41Jo41yfRVxMgQs36YORK/Q6nVs/oHA1jGTWd
	gH++1lkn0VeptiwL5Q7DfluDGswoeVm0vgH5POZO3nFeMqMMv584YY/ZKv5lXY+vPkczBn7IFymnf
	5Z/RQ34X7ghIjaSuLXrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYUWs-000625-4g; Wed, 05 Jun 2019 11:56:30 +0000
Received: from lb1-smtp-cloud7.xs4all.net ([194.109.24.24])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYUWj-00061f-Ra
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 11:56:24 +0000
Received: from [IPv6:2001:420:44c1:2579:c806:4d76:5b3c:eea9]
 ([IPv6:2001:420:44c1:2579:c806:4d76:5b3c:eea9])
 by smtp-cloud7.xs4all.net with ESMTPA
 id YUWThlG5P3qlsYUWWhfjs4; Wed, 05 Jun 2019 13:56:11 +0200
Subject: Re: [PATCH v2] media: atmel: atmel-isc: split driver into driver base
 and isc
To: Eugen.Hristev@microchip.com, linux-media@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <1559202331-15397-1-git-send-email-eugen.hristev@microchip.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <4f1925a5-9361-7f57-4526-3d28be8291dd@xs4all.nl>
Date: Wed, 5 Jun 2019 13:56:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <1559202331-15397-1-git-send-email-eugen.hristev@microchip.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfDGHyAwyH2zA9EhGcmXOLNXHaTarbVEUHs6xOhFzmaqx14XGbxyU9oa8vrh1dFcFtEsfcEhyeVRprSbS4irwoRyA1DO/WnVMt5W5VBdS8mDhy3cveA7l
 hhUDbOkuTfD44BtOV4Ov3Deyyzl9GekqFtxvEjAlx5gCX9c2EvgrFxLFvGtGzFJZDvUhCc8hv0iPoUaDbBROUPsMlkbfrSwJUe4ZHytP2fynAf0kCfPLFwg+
 D77kQKzMePJngExD4iYHGmdd8Br/EGL1IiwFRxKBpN3+JNYDjE8sujq35W74JTcDIFHUrk1W2dJduntaMC1qxyFU9S1MqVawr8GNddUWa1X3+5BifFa5c2Dt
 wvcbC5vSiedszXirzG5UJ/GcKply9jTq1dwsyPDvep3lxwFctAb6vosjo+HIkTn9vEKu7roNWk5jFCCE+cVi0N/Z82RE7NxodhQskHLTyuyi6+UbhZw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_045622_052956_96B0FCC1 
X-CRM114-Status: GOOD (  19.86  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.24 listed in list.dnswl.org]
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

Hi Eugen,

On 5/30/19 9:50 AM, Eugen.Hristev@microchip.com wrote:
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> This splits the Atmel ISC driver into a common base: atmel-isc-base.c
> and the driver probe/dt part , atmel-sama5d2-isc.c
> This is needed to keep a common ground for the sensor controller which will
> be reused.
> The atmel-isc will use the common symbols inside the atmel-isc-base
> Future driver will also use the same symbols and redefine different aspects,
> for a different version of the ISC.
> This is done to avoid complete code duplication by creating a totally
> different driver for the new variant of the ISC.
> 
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> ---
> 
> Hello Hans,
> 
> I am resending this with the required fixes.
> You asked me about the #ifdef around ATMEL_ISC_NAME, it's because I was
> thinking to have the ATMEL_ISC_NAME different by each driver that use
> the atmel-isc.h, but for now I removed any ifdef around it, and will
> consider a different define for new drivers.
> 
> Changes in v2:
> - renamed atmel-isc.c to atmel-sama5d2-isc.c as sama5d2 is the SoC that
>   includes this hardware block. The module will still be named atmel-isc.ko
> - removed ifdef around definition of ATMEL_ISC_NAME
> - moved external declarations in the specific files, this was breaking
>   module loading
> 
> v4l2-compliance SHA: 0d61ddede7d340ffa1c75a2882e30c455ef3d8b8, 32 bitatmel-isc f0008000.isc: =================  START STATUS  =================
> 
> atmelpliance test for atmel-isc device /dev/video0:
> 
> Driver Info:
>         Driver name      : atmel-isc
>         Card type        : Atmel Image Sensor Controller
>         Bus info         : platform:atmel-isc f0008000.isc
>         Driver version   : 5.2.0
>         Capabilities     : 0x84200001
>                 Video Capture
>                 Streaming
>                 Extended Pix Format
>                 Device Capabilities
>         Device Caps      : 0x04200001
>                 Video Capture
>                 Streaming
>                 Extended Pix Format
> 
> Required ioctls:
>         test VIDIOC_QUERYCAP: OK
> 
> Allow for multiple opens:
>         test second /dev/video0 open: OK
>         test VIDIOC_QUERYCAP: OK
>         test VIDIOC_G/S_PRIORITY: OK
>         test for unlimited opens: OK
> 
> Debug ioctls:
>         test VIDIOC_DBG_G/S_REGISTER: OK (Not Supported)
> -isc f0008000.isc: Brightness: 0
> atmel-isc f0008000.isc: Contrast: 256
> atmel-isc f0008000.isc: Gamma: 2
> atmel-isc f0008000.isc: White Balance, Automatic: true
> atmel-isc f0008000.isc: ==================  END STATUS  ==================
>         test VIDIOC_LOG_STATUS: OK
> 
> Input ioctls:
>         test VIDIOC_G/S_TUNER/ENUM_FREQ_BANDS: OK (Not Supported)
>         test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
>         test VIDIOC_S_HW_FREQ_SEEK: OK (Not Supported)
>         test VIDIOC_ENUMAUDIO: OK (Not Supported)
>         test VIDIOC_G/S/ENUMINPUT: OK
>         test VIDIOC_G/S_AUDIO: OK (Not Supported)
>         Inputs: 1 Audio Inputs: 0 Tuners: 0
> 
> Output ioctls:
>         test VIDIOC_G/S_MODULATOR: OK (Not Supported)
>         test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
>         test VIDIOC_ENUMAUDOUT: OK (Not Supported)
>         test VIDIOC_G/S/ENUMOUTPUT: OK (Not Supported)
>         test VIDIOC_G/S_AUDOUT: OK (Not Supported)
>         Outputs: 0 Audio Outputs: 0 Modulators: 0
> 
> Input/Output configuration ioctls:
>         test VIDIOC_ENUM/G/S/QUERY_STD: OK (Not Supported)
>         test VIDIOC_ENUM/G/S/QUERY_DV_TIMINGS: OK (Not Supported)
>         test VIDIOC_DV_TIMINGS_CAP: OK (Not Supported)
>         test VIDIOC_G/S_EDID: OK (Not Supported)
> 
> Control ioctls (Input 0):
>         test VIDIOC_QUERY_EXT_CTRL/QUERYMENU: OK
>         test VIDIOC_QUERYCTRL: OK
>         test VIDIOC_G/S_CTRL: OK
>         test VIDIOC_G/S/TRY_EXT_CTRLS: OK
>         test VIDIOC_(UN)SUBSCRIBE_EVENT/DQEVENT: OK
>         test VIDIOC_G/S_JPEGCOMP: OK (Not Supported)
>         Standard Controls: 6 Private Controls: 0
> 
> Format ioctls (Input 0):
>         test VIDIOC_ENUM_FMT/FRAMESIZES/FRAMEINTERVALS: OK
>         test VIDIOC_G/S_PARM: OK
>         test VIDIOC_G_FBUF: OK (Not Supported)
>         test VIDIOC_G_FMT: OK
>         test VIDIOC_TRY_FMT: OK
>         test VIDIOC_S_FMT: OK
>         test VIDIOC_G_SLICED_VBI_CAP: OK (Not Supported)
>         test Cropping: OK (Not Supported)
>         test Composing: OK (Not Supported)
>         test Scaling: OK (Not Supported)
> 
> Codec ioctls (Input 0):
>         test VIDIOC_(TRY_)ENCODER_CMD: OK (Not Supported)
>         test VIDIOC_G_ENC_INDEX: OK (Not Supported)
>         test VIDIOC_(TRY_)DECODER_CMD: OK (Not Supported)
> 
> Buffer ioctls (Input 0):
>         test VIDIOC_REQBUFS/CREATE_BUFS/QUERYBUF: OK
>         test VIDIOC_EXPBUF: OK
>         test Requests: OK (Not Supported)
> 
> Total for atmel-isc device /dev/video0: 44, Succeeded: 44, Failed: 0, Warnings: 0
> 
> 
>  MAINTAINERS                                      |    4 +-
>  drivers/media/platform/atmel/Makefile            |    4 +-
>  drivers/media/platform/atmel/atmel-isc-base.c    | 2148 ++++++++++++++++++
>  drivers/media/platform/atmel/atmel-isc.c         | 2634 ----------------------
>  drivers/media/platform/atmel/atmel-isc.h         |  192 ++
>  drivers/media/platform/atmel/atmel-sama5d2-isc.c |  365 +++
>  6 files changed, 2711 insertions(+), 2636 deletions(-)
>  create mode 100644 drivers/media/platform/atmel/atmel-isc-base.c
>  delete mode 100644 drivers/media/platform/atmel/atmel-isc.c
>  create mode 100644 drivers/media/platform/atmel/atmel-isc.h
>  create mode 100644 drivers/media/platform/atmel/atmel-sama5d2-isc.c
> 

Checkpatch gave me various warnings that I think should be addressed:

WARNING: externs should be avoided in .c files
#249: FILE: drivers/media/platform/atmel/atmel-isc-base.c:40:
+extern unsigned int sensor_preferred;

It looks like these module parameters can be moved to atmel-isc-base.c
and only an extern unsigned int debug should be added to the atmel-isc.h.

Externs in a source is indeed dubious.

CHECK: spinlock_t definition without comment
#681: FILE: drivers/media/platform/atmel/atmel-isc.h:27:
+       spinlock_t      lock;

I know there was no comment before, but it might be nice to add one
now.

CHECK: Macro argument reuse 'hw' - possible side-effects?
#688: FILE: drivers/media/platform/atmel/atmel-isc.h:34:
+#define to_isc_clk(hw) container_of(hw, struct isc_clk, hw)

This seems really wrong. One hw refers to the argument, the
other is the name of a field in a struct. Use a different
name as the macro argument to avoid this confusion.


CHECK: spinlock_t definition without comment
#814: FILE: drivers/media/platform/atmel/atmel-isc.h:160:
+       spinlock_t              dma_queue_lock;

CHECK: struct mutex definition without comment
#832: FILE: drivers/media/platform/atmel/atmel-isc.h:178:
+       struct mutex            lock;

CHECK: spinlock_t definition without comment
#833: FILE: drivers/media/platform/atmel/atmel-isc.h:179:
+       spinlock_t              awb_lock;

Comments would be nice.

WARNING: externs should be avoided in .c files
#909: FILE: drivers/media/platform/atmel/atmel-sama5d2-isc.c:57:
+extern struct isc_format formats_list[];

WARNING: externs should be avoided in .c files
#910: FILE: drivers/media/platform/atmel/atmel-sama5d2-isc.c:58:
+extern struct isc_format controller_formats[];

WARNING: externs should be avoided in .c files
#911: FILE: drivers/media/platform/atmel/atmel-sama5d2-isc.c:59:
+extern const u32 isc_gamma_table[GAMMA_MAX + 1][GAMMA_ENTRIES];

WARNING: externs should be avoided in .c files
#912: FILE: drivers/media/platform/atmel/atmel-sama5d2-isc.c:60:
+extern const struct regmap_config isc_regmap_config;

WARNING: externs should be avoided in .c files
#913: FILE: drivers/media/platform/atmel/atmel-sama5d2-isc.c:61:
+extern const struct v4l2_async_notifier_operations isc_async_ops;

This should be in a header.

WARNING: externs should be avoided in .c files
#915: FILE: drivers/media/platform/atmel/atmel-sama5d2-isc.c:63:
+extern irqreturn_t isc_interrupt(int irq, void *dev_id);

WARNING: externs should be avoided in .c files
#916: FILE: drivers/media/platform/atmel/atmel-sama5d2-isc.c:64:
+extern int isc_pipeline_init(struct isc_device *isc);

WARNING: externs should be avoided in .c files
#917: FILE: drivers/media/platform/atmel/atmel-sama5d2-isc.c:65:
+extern int isc_clk_init(struct isc_device *isc);

WARNING: externs should be avoided in .c files
#918: FILE: drivers/media/platform/atmel/atmel-sama5d2-isc.c:66:
+extern void isc_subdev_cleanup(struct isc_device *isc);

WARNING: externs should be avoided in .c files
#919: FILE: drivers/media/platform/atmel/atmel-sama5d2-isc.c:67:
+extern void isc_clk_cleanup(struct isc_device *isc);

Should also be in a header. No need to extern when just declaring the
function prototype, BTW.

CHECK: Alignment should match open parenthesis
#964: FILE: drivers/media/platform/atmel/atmel-sama5d2-isc.c:112:
+               subdev_entity = devm_kzalloc(dev,
+                                         sizeof(*subdev_entity), GFP_KERNEL);

Please fix this as well.

Regards,

	Hans

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
