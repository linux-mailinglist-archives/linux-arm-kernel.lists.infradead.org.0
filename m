Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6545C784D3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 08:01:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MJVnjZU3yyi/96eqQG6AMbGzyqWB92ewnNI6fjQ6fvk=; b=IiU9Dx6lyFQkfY
	L3R6oPHqHG9vtHvGKXjggNJR6PyuHbIMmKV/N9mfNn0EJ5mJ5tO9S/QCOqr/Vttd9mTHBTepRYMVs
	7fd1y9y/73Xas96rJh5x1IE3C30mxHsXtw/OwwtErAbVLQYALkvKh20foikcw2mdk7ApvjIAdyLs+
	PJpRxRsk9snZ1E4ujpooKy/AEErocgjbVeQVPaZSiPwcLDF1lnvbZIZGmgBd8qaVnVblx5dG3mPn5
	HzGXRyBtLQljszBC343FTI8cmihgo4EvvTuDQUmWmfJ6Zzif4k4xGQCeUZ9Me9u4EXkEju8aJBPfl
	gKWX5JhzJoaofZJhfXcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hryjH-0001lo-GY; Mon, 29 Jul 2019 06:01:51 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hryis-0001kF-0S; Mon, 29 Jul 2019 06:01:30 +0000
X-UUID: e85604acb0744430b1451df1201f35c7-20190728
X-UUID: e85604acb0744430b1451df1201f35c7-20190728
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <jerry-ch.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2056828271; Sun, 28 Jul 2019 22:01:11 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 28 Jul 2019 23:01:09 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 29 Jul 2019 14:01:01 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 29 Jul 2019 14:01:01 +0800
Message-ID: <1564380061.15267.383.camel@mtksdccf07>
Subject: Re: [RFC PATCH V2 4/4] platform: mtk-isp: Add Mediatek FD driver
From: Jerry-ch Chen <Jerry-ch.Chen@mediatek.com>
To: "Enrico Weigelt, metux IT consult" <lkml@metux.net>,
 <"metux IT consult  <lkml"@metux.net>
Date: Mon, 29 Jul 2019 14:01:01 +0800
In-Reply-To: <eb3bb92d-5d44-0d45-2e90-abcdb96f595d@metux.net>
References: <1562661672-22439-1-git-send-email-Jerry-Ch.chen@mediatek.com>
 <1562661672-22439-5-git-send-email-Jerry-Ch.chen@mediatek.com>
 <eb3bb92d-5d44-0d45-2e90-abcdb96f595d@metux.net>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_230126_060896_817A36F0 
X-CRM114-Status: GOOD (  23.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Sean Cheng =?UTF-8?Q?=28=E9=84=AD=E6=98=87=E5=BC=98=29?=
 <Sean.Cheng@mediatek.com>,
 Frederic Chen =?UTF-8?Q?=28=E9=99=B3=E4=BF=8A=E5=85=83=29?=
 <Frederic.Chen@mediatek.com>,
 Rynn Wu =?UTF-8?Q?=28=E5=90=B3=E8=82=B2=E6=81=A9=29?= <Rynn.Wu@mediatek.com>,
 srv_heupstream <srv_heupstream@mediatek.com>, Po-Yang Huang
 =?UTF-8?Q?=28=E9=BB=83=E6=9F=8F=E9=99=BD=29?= <po-yang.huang@mediatek.com>,
 "suleiman@chromium.org" <suleiman@chromium.org>, Sj
 Huang =?UTF-8?Q?=28=E9=BB=83=E4=BF=A1=E7=92=8B=29?= <sj.huang@mediatek.com>,
 "tfiga@chromium.org" <tfiga@chromium.org>,
 Jungo Lin =?UTF-8?Q?=28=E6=9E=97=E6=98=8E=E4=BF=8A=29?=
 <jungo.lin@mediatek.com>, "shik@chromium.org" <shik@chromium.org>,
 "yuzhao@chromium.org" <yuzhao@chromium.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "zwisler@chromium.org" <zwisler@chromium.org>,
 "hans.verkuil@cisco.com" <hans.verkuil@cisco.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 Christie Yu =?UTF-8?Q?=28=E6=B8=B8=E9=9B=85=E6=83=A0=29?=
 <christie.yu@mediatek.com>, "mchehab@kernel.org" <mchehab@kernel.org>,
 "laurent.pinchart+renesas@ideasonboard.com"
 <laurent.pinchart+renesas@ideasonboard.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Enrico, 

On Tue, 2019-07-09 at 18:56 +0800, Enrico Weigelt, metux IT consult
wrote:
> On 09.07.19 10:41, Jerry-ch Chen wrote:
> 
> Hi,
> 
> 
> > diff --git a/drivers/media/platform/mtk-isp/fd/mtk_fd.h b/drivers/media/platform/mtk-isp/fd/mtk_fd.h
> > new file mode 100644
> > index 0000000..289999b
> > --- /dev/null
> > +++ b/drivers/media/platform/mtk-isp/fd/mtk_fd.h
> > @@ -0,0 +1,157 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +//
> > +// Copyright (c) 2018 MediaTek Inc.
> > +
> > +#ifndef __MTK_FD_HW_H__
> > +#define __MTK_FD_HW_H__
> > +
> > +#include <linux/io.h>
> > +#include <linux/types.h>
> > +#include <linux/platform_device.h>
> > +#include <media/v4l2-ctrls.h>
> > +#include <media/v4l2-device.h>
> > +#include <media/videobuf2-v4l2.h>
> > +
> > +#define MTK_FD_OUTPUT_MIN_WIDTH			26U
> > +#define MTK_FD_OUTPUT_MIN_HEIGHT		26U
> > +#define MTK_FD_OUTPUT_MAX_WIDTH			640U
> > +#define MTK_FD_OUTPUT_MAX_HEIGHT		480U
> > +
> > +/* Control the user defined image widths and heights
> > + * to be scaled and performed face detection in FD HW.
> > + * MTK FD support up to 14 user defined image sizes to perform face detection.
> > + */
> > +#define V4L2_CID_MTK_FD_SCALE_IMG_WIDTH		(V4L2_CID_USER_MTK_FD_BASE + 1)
> > +#define V4L2_CID_MTK_FD_SCALE_IMG_HEIGHT	(V4L2_CID_USER_MTK_FD_BASE + 2)
> 
> I've got a *really* bad feeling about introducing chip specific
> uapi stuff. (by the way: uapi stuff belongs into include/uapi/...)
> 
Thanks for your comments,

If we remain chip-specific control IDs, I will move the uapi stuff into
inlcude/uapi/mtk_fd.h (filename TBD)

> Maybe you could tell us what that's *really* about, so we can find some
> standard / chip-independent api for these things. That's one of the
> major point of the kernel: hardware abstraction.
> 
I am not sure if it is possible for us to add some standard
v4l2-controls for face detection, a further explanations of controls are
listed below.

In v4l2-controls, there exists V4L2_CID_DETECT_CLASS, but I haven't
found the standards or api that can be used for face detection yet.
https://elixir.bootlin.com/linux/latest/source/include/uapi/linux/v4l2-controls.h#L1092

For detecting certain face angle and head direction, we would need
V4L2_CID_DETECT_ANGLE, V4L2_CID_DETECT_DIRECTION controls for user to
specify the angle and direction to be detected.
In MTK FD driver, we support the following angles and directions to be
selected by user, and they are both multiple selected .
FD_angle_table[] = {-90, -45, 0 , 45, 90}
FD_direction_table[] = {0, 30, 60, 90, 120, 150, ..., 330}

Assuming these v4l2-controls are array of V4L2_CTRL_TYPE_U16 with
dimension 5 and 12.
User can select the desired angle and directions to be detected into
arrays and bring it to driver by these controls, however, the more they
select, the longer execution time needed by HW.

For detecting different sizes of faces and increase the detection speed,
FD driver might need to scales down the input image into different
smaller sizes, besides driver default values, user or proprietary
algorithm library can manually set the desired image sizes, therefore,
we would need the following controls:
V4L2_CID_DETECT_SCALE_DOWN_IMG_WIDTH and
V4L2_CID_DETECT_SCALE_DOWN_IMG_HEIGHT.
In MTK FD driver, we implement these controls as array of
V4L2_CTRL_TYPE_U16 with the dimension 15.

For controlling detection speed, we would need the
V4L2_CID_DETECT_SPEED, the faster speedup implies the lower accuracy of
detection, In MTK FD driver, the max level of speedup is 7, and default
value is 0.

For MTK FD algorithm user library, they would need select extra
detection features(models) used in HW, we need
V4L2_CID_MTK_FD_EXTRA_MODEL, this will be set to 1 for using extra
model. However, we are considering make this control more
chip-independent and can be added into standard.
for example, V4L2_CID_DETECTION_FD_MODEL or ...FD_ALGO,
drivers can define the detection algorithm or detection model to be used
for users to select. How do you think? 

In short, I summery the control IDs as following:
V4L2_CID_DETECT_ANGLE: set the angle of face in degrees. 90 ~ -90
degrees.
V4L2_CID_DETECT_DIRECTION: set the rotation of the head in degrees.
0~330 degrees.
V4L2_CID_DETECT_SCALE_DOWN_IMG_WIDTH: set the image widths for an input
image to be scaled down for face detection
V4L2_CID_DETECT_SCALE_DOWN_IMG_HEIGHT: set the image heights for an
input image to be scaled down for face detection
V4L2_CID_DETECT_SPEED: set the detection speed, usually reducing
accuracy.
V4L2_CID_DETECTION_FD_MODEL: select the detection model or algorithm to
be used by face detection driver.

> > +#define ENABLE_FD				0x111
> > +#define FD_HW_ENABLE				0x4
> > +#define FD_INT_EN				0x15c
> > +#define FD_INT					0x168
> > +#define FD_RESULT				0x178
> > +#define FD_IRQ_MASK				0x001
> > +
> > +#define RS_MAX_BUF_SIZE				2288788
> > +#define FD_MAX_SPEEDUP				7
> > +#define FD_MAX_POSE_VAL				0xfffffffffffffff
> > +#define FD_DEF_POSE_VAL				0x3ff
> > +#define MAX_FD_SEL_NUM				1026
> 
> If that file is supposed to be included by anything beyond the driver
> itself, we need proper prefixing. (same for anything else in here)
> 
I will fix it as following:

#define FD_ENABLE    0x111

#define FD_REG_OFFSET_HW_ENABLE  0x4
#define FD_REG_OFFSET_INT_EN     0x15c
#define FD_REG_OFFSET_INT_VAL    0x168
#define FD_REG_OFFSET_RESULT     0x178

#define FD_IRQ_MASK         1
#define FD_MAX_RS_BUF_SIZE  2288788
#define FD_MAX_SPEEDUP      7
#define FD_MAX_RESULT_NUM   1026

> > diff --git a/include/uapi/linux/v4l2-controls.h b/include/uapi/linux/v4l2-controls.h
> > index 3dcfc61..eae876e 100644
> > --- a/include/uapi/linux/v4l2-controls.h
> > +++ b/include/uapi/linux/v4l2-controls.h
> > @@ -192,6 +192,10 @@ enum v4l2_colorfx {
> >   * We reserve 16 controls for this driver. */
> >  #define V4L2_CID_USER_IMX_BASE			(V4L2_CID_USER_BASE + 0x10b0)
> >  
> > +/* The base for the mediatek FD driver controls */
> > +/* We reserve 16 controls for this driver. */
> > +#define V4L2_CID_USER_MTK_FD_BASE		(V4L2_CID_USER_BASE + 0x10d0)
> 
> Why only the base, but not the actual IDs in uapi ?
> 
I will put actual IDs in uapi/ for user to reference.

> 
> --mtx
> 

Best regards,
Jerry


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
