Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE7DF873E0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 10:15:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Izkat1UHkbvcIUCncBXW4YsgL/VzuxnzR34O+SMwPUI=; b=rz/ySN/iBbMK6x
	haZDHjKjumU3dMn+2uiDeRKO6u4Z09SYSW/OSy0JwbwSgcHSz0NH7kQB7KSneYaGLIiV2xJVxkTCF
	f2/qm/no8ZzZx/cXJ8gJkGuk+GSQMGNoOF8dskSA8f472rqLb8DQq+xv2Jk4Baw8UTgbcqJ9ylwP6
	6AlM5w0RfbQy6dSfWfliKddj+om2xyZiefIDhedh+h1I1mHlyHTK3wHXnN4IjWFRk69qclAttaUYK
	5Yy+NiYHoBpYjY5HOci/axKHZzHLhZRIy+x0FhiwXzlQhwXsMBbaD/ITdsulhPTZ/UNGtOIpM4UxX
	yPI1QwI0dkRcbs8zkM8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw045-0007Mk-BG; Fri, 09 Aug 2019 08:15:57 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw03l-0007Lc-98
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 08:15:39 +0000
Received: by mail-ed1-x541.google.com with SMTP id e3so94054396edr.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 01:15:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DhlV3mGwU57S5uU/9S38xCSvL+IZrv6wUmIj2HFWWUQ=;
 b=Cw9EXq82OVoxnWyFa/ORrROmYriVej1qHYyJkvd0Y/Ao2zwD02RQKysU4iEXdypzzS
 fZUJtPRYvHMZ8Cs3FHbI6C9J5A6uzi0JkcsjFJt6T3KKBiUpv1rHxbJwnqZlynOcaa1r
 oKV54KMG+GQSkgqf8IGEDQnhTmetVzlQfJyX8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DhlV3mGwU57S5uU/9S38xCSvL+IZrv6wUmIj2HFWWUQ=;
 b=Rm1x2HSd2dhpNrA660E0D7iELIPRZyQCGeMWzsJnP3hWS6PstcJD7ELWssG8YKWhtu
 LSZnf+SU/UTYlXYGjiEgX/CtjN9j4+TMs3EcjWq2/7Sc0iKGCjvEuROjJb9/doaliT5i
 KcCOXbwDL/rywGw5X9t3Z0YeMs0JmE6/NkTDg5wBdyD9xBY/DpBbyHDfriq6TFOkT2tx
 I+r5Qo/VCdyQcX0Jq9dF1MYwza8+w2qOvr+ZX0dzkTh60XX4MeHh7D8ghgt5eZEqBBTR
 5B1xhadQzP/Bs2bv/fVlk5ehPYIvTLtbX7t+lwxCqAmhxP8+B8ogZ7bkn6ZMTIFB7sBU
 nGFA==
X-Gm-Message-State: APjAAAVpkpiGk+wBfyl49ZAobNRopauXpJW/6oLM6yydtYwfWfqD+NEn
 wj/s0q94BAcYDqgsBht+Qt+fDgMnV68YkQ==
X-Google-Smtp-Source: APXvYqz2rRjsW24lKlX5+ssHQtDXZkpKrPU/L135Th0CfWsJXjQia3sdpNMCmWn3BCUhkWSJY3xQYg==
X-Received: by 2002:a50:d1c6:: with SMTP id i6mr20323755edg.110.1565338534848; 
 Fri, 09 Aug 2019 01:15:34 -0700 (PDT)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com.
 [209.85.221.46])
 by smtp.gmail.com with ESMTPSA id q21sm16041327ejo.76.2019.08.09.01.15.34
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 09 Aug 2019 01:15:34 -0700 (PDT)
Received: by mail-wr1-f46.google.com with SMTP id n9so97510322wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 01:15:34 -0700 (PDT)
X-Received: by 2002:a5d:49c5:: with SMTP id t5mr9090444wrs.48.1565338053713;
 Fri, 09 Aug 2019 01:07:33 -0700 (PDT)
MIME-Version: 1.0
References: <1562661672-22439-1-git-send-email-Jerry-Ch.chen@mediatek.com>
 <1562661672-22439-5-git-send-email-Jerry-Ch.chen@mediatek.com>
 <eb3bb92d-5d44-0d45-2e90-abcdb96f595d@metux.net>
 <1564380061.15267.383.camel@mtksdccf07>
 <CAAFQd5A0Qi==m4O9L2W3Qmdx4g8acs-kjBtHjLBNCBpoGd5ZSw@mail.gmail.com>
 <1564401491.15267.405.camel@mtksdccf07>
In-Reply-To: <1564401491.15267.405.camel@mtksdccf07>
From: Tomasz Figa <tfiga@chromium.org>
Date: Fri, 9 Aug 2019 17:07:21 +0900
X-Gmail-Original-Message-ID: <CAAFQd5BaCicobyRWwMDqL5zVYUG0mieA0QdTckek9L1pjwhJcA@mail.gmail.com>
Message-ID: <CAAFQd5BaCicobyRWwMDqL5zVYUG0mieA0QdTckek9L1pjwhJcA@mail.gmail.com>
Subject: Re: [RFC PATCH V2 4/4] platform: mtk-isp: Add Mediatek FD driver
To: "Enrico Weigelt, metux IT consult" <lkml@metux.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_011537_319100_74E31C93 
X-CRM114-Status: GOOD (  40.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "laurent.pinchart+renesas@ideasonboard.com"
 <laurent.pinchart+renesas@ideasonboard.com>,
 =?UTF-8?B?UnlubiBXdSAo5ZCz6IKy5oGpKQ==?= <Rynn.Wu@mediatek.com>,
 =?UTF-8?B?UG8tWWFuZyBIdWFuZyAo6buD5p+P6Zm9KQ==?= <po-yang.huang@mediatek.com>,
 "suleiman@chromium.org" <suleiman@chromium.org>,
 Jerry-ch Chen <Jerry-ch.Chen@mediatek.com>,
 =?UTF-8?B?SnVuZ28gTGluICjmnpfmmI7kv4op?= <jungo.lin@mediatek.com>,
 "hans.verkuil@cisco.com" <hans.verkuil@cisco.com>,
 Sakari Ailus <sakari.ailus@iki.fi>,
 =?UTF-8?B?RnJlZGVyaWMgQ2hlbiAo6Zmz5L+K5YWDKQ==?= <Frederic.Chen@mediatek.com>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 =?UTF-8?B?U2ogSHVhbmcgKOm7g+S/oeeSiyk=?= <sj.huang@mediatek.com>,
 "yuzhao@chromium.org" <yuzhao@chromium.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "mchehab@kernel.org" <mchehab@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 =?UTF-8?B?U2VhbiBDaGVuZyAo6YSt5piH5byYKQ==?= <Sean.Cheng@mediatek.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 "shik@chromium.org" <shik@chromium.org>,
 =?UTF-8?B?Q2hyaXN0aWUgWXUgKOa4uOmbheaDoCk=?= <christie.yu@mediatek.com>,
 "zwisler@chromium.org" <zwisler@chromium.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 8:58 PM Jerry-ch Chen
<Jerry-ch.Chen@mediatek.com> wrote:
>
> Hi Tomasz,
>
> On Mon, 2019-07-29 at 17:57 +0800, Tomasz Figa wrote:
> > On Mon, Jul 29, 2019 at 3:01 PM Jerry-ch Chen
> > <Jerry-ch.Chen@mediatek.com> wrote:
> > >
> > > Hi Enrico,
> > >
> > > On Tue, 2019-07-09 at 18:56 +0800, Enrico Weigelt, metux IT consult
> > > wrote:
> > > > On 09.07.19 10:41, Jerry-ch Chen wrote:
> > > >
> > > > Hi,
> > > >
> > > >
> > > > > diff --git a/drivers/media/platform/mtk-isp/fd/mtk_fd.h b/drivers/media/platform/mtk-isp/fd/mtk_fd.h
> > > > > new file mode 100644
> > > > > index 0000000..289999b
> > > > > --- /dev/null
> > > > > +++ b/drivers/media/platform/mtk-isp/fd/mtk_fd.h
> > > > > @@ -0,0 +1,157 @@
> > > > > +/* SPDX-License-Identifier: GPL-2.0 */
> > > > > +//
> > > > > +// Copyright (c) 2018 MediaTek Inc.
> > > > > +
> > > > > +#ifndef __MTK_FD_HW_H__
> > > > > +#define __MTK_FD_HW_H__
> > > > > +
> > > > > +#include <linux/io.h>
> > > > > +#include <linux/types.h>
> > > > > +#include <linux/platform_device.h>
> > > > > +#include <media/v4l2-ctrls.h>
> > > > > +#include <media/v4l2-device.h>
> > > > > +#include <media/videobuf2-v4l2.h>
> > > > > +
> > > > > +#define MTK_FD_OUTPUT_MIN_WIDTH                    26U
> > > > > +#define MTK_FD_OUTPUT_MIN_HEIGHT           26U
> > > > > +#define MTK_FD_OUTPUT_MAX_WIDTH                    640U
> > > > > +#define MTK_FD_OUTPUT_MAX_HEIGHT           480U
> > > > > +
> > > > > +/* Control the user defined image widths and heights
> > > > > + * to be scaled and performed face detection in FD HW.
> > > > > + * MTK FD support up to 14 user defined image sizes to perform face detection.
> > > > > + */
> > > > > +#define V4L2_CID_MTK_FD_SCALE_IMG_WIDTH            (V4L2_CID_USER_MTK_FD_BASE + 1)
> > > > > +#define V4L2_CID_MTK_FD_SCALE_IMG_HEIGHT   (V4L2_CID_USER_MTK_FD_BASE + 2)
> > > >
> > > > I've got a *really* bad feeling about introducing chip specific
> > > > uapi stuff. (by the way: uapi stuff belongs into include/uapi/...)
> > > >
> > > Thanks for your comments,
> > >
> > > If we remain chip-specific control IDs, I will move the uapi stuff into
> > > inlcude/uapi/mtk_fd.h (filename TBD)
> > >
> > > > Maybe you could tell us what that's *really* about, so we can find some
> > > > standard / chip-independent api for these things. That's one of the
> > > > major point of the kernel: hardware abstraction.
> > > >
> > > I am not sure if it is possible for us to add some standard
> > > v4l2-controls for face detection, a further explanations of controls are
> > > listed below.
> > >
> > > In v4l2-controls, there exists V4L2_CID_DETECT_CLASS, but I haven't
> > > found the standards or api that can be used for face detection yet.
> > > https://elixir.bootlin.com/linux/latest/source/include/uapi/linux/v4l2-controls.h#L1092
> > >
> > > For detecting certain face angle and head direction, we would need
> > > V4L2_CID_DETECT_ANGLE, V4L2_CID_DETECT_DIRECTION controls for user to
> > > specify the angle and direction to be detected.
> > > In MTK FD driver, we support the following angles and directions to be
> > > selected by user, and they are both multiple selected .
> > > FD_angle_table[] = {-90, -45, 0 , 45, 90}
> > > FD_direction_table[] = {0, 30, 60, 90, 120, 150, ..., 330}
> > >
> > > Assuming these v4l2-controls are array of V4L2_CTRL_TYPE_U16 with
> > > dimension 5 and 12.
> > > User can select the desired angle and directions to be detected into
> > > arrays and bring it to driver by these controls, however, the more they
> > > select, the longer execution time needed by HW.
> > >
> >
> > Sounds like we need some kind of a menu bitmask control here, but I
> > don't see V4L2 having anything like that.
> >
> > Hans, Sakari, any ideas?
> >
> > > For detecting different sizes of faces and increase the detection speed,
> > > FD driver might need to scales down the input image into different
> > > smaller sizes
> >
> > Do you mean the FD hardware would do the scaling or the driver code
> > itself? It would be undesirable to do such scaling in a kernel driver,
> > so if that's not something handled by the hardware, the downscaled
> > image might need to be provided from the userspace.
> >
> Thanks for your comments.
>
> Yes, FD hardware will do the scaling itself, so driver could set the
> sizes.
>
> > >, besides driver default values, user or proprietary
> > > algorithm library can manually set the desired image sizes, therefore,
> > > we would need the following controls:
> > > V4L2_CID_DETECT_SCALE_DOWN_IMG_WIDTH and
> > > V4L2_CID_DETECT_SCALE_DOWN_IMG_HEIGHT.
> > > In MTK FD driver, we implement these controls as array of
> > > V4L2_CTRL_TYPE_U16 with the dimension 15.
> >
> > Why 15?
> >
> It consists of one input image size and 14 down-scaled image sizes,
> the amount 15 (or say 14) is defined by the MTK FD algo library,
> therefore I remain the number of 15 here for communicate with the
> library.
> Maybe it should be defined as following?
> MTK_FD_MAX_SCALE_SIZE_NUM               14
> and
> MTK_FD_SCALE_ARR_NUM                    15
>
> > >
> > > For controlling detection speed, we would need the
> > > V4L2_CID_DETECT_SPEED, the faster speedup implies the lower accuracy of
> > > detection, In MTK FD driver, the max level of speedup is 7, and default
> > > value is 0.
> > >
> > > For MTK FD algorithm user library, they would need select extra
> > > detection features(models) used in HW, we need
> > > V4L2_CID_MTK_FD_EXTRA_MODEL, this will be set to 1 for using extra
> > > model. However, we are considering make this control more
> > > chip-independent and can be added into standard.
> > > for example, V4L2_CID_DETECTION_FD_MODEL or ...FD_ALGO,
> > > drivers can define the detection algorithm or detection model to be used
> > > for users to select. How do you think?
> >
> > Sounds like something that could be a menu control, so it could vary
> > between drivers.
> >
> Ok, and maybe it should be created by v4l2_ctrl_new_int_menu(...)?
>
> > >
> > > In short, I summery the control IDs as following:
> > > V4L2_CID_DETECT_ANGLE: set the angle of face in degrees. 90 ~ -90
> > > degrees.
> > > V4L2_CID_DETECT_DIRECTION: set the rotation of the head in degrees.
> > > 0~330 degrees.
> > > V4L2_CID_DETECT_SCALE_DOWN_IMG_WIDTH: set the image widths for an input
> > > image to be scaled down for face detection
> > > V4L2_CID_DETECT_SCALE_DOWN_IMG_HEIGHT: set the image heights for an
> > > input image to be scaled down for face detection
> > > V4L2_CID_DETECT_SPEED: set the detection speed, usually reducing
> > > accuracy.
> > > V4L2_CID_DETECTION_FD_MODEL: select the detection model or algorithm to
> > > be used by face detection driver.
> > >
> > > > > +#define ENABLE_FD                          0x111
> > > > > +#define FD_HW_ENABLE                               0x4
> > > > > +#define FD_INT_EN                          0x15c
> > > > > +#define FD_INT                                     0x168
> > > > > +#define FD_RESULT                          0x178
> > > > > +#define FD_IRQ_MASK                                0x001
> > > > > +
> > > > > +#define RS_MAX_BUF_SIZE                            2288788
> > > > > +#define FD_MAX_SPEEDUP                             7
> > > > > +#define FD_MAX_POSE_VAL                            0xfffffffffffffff
> > > > > +#define FD_DEF_POSE_VAL                            0x3ff
> > > > > +#define MAX_FD_SEL_NUM                             1026
> > > >
> > > > If that file is supposed to be included by anything beyond the driver
> > > > itself, we need proper prefixing. (same for anything else in here)
> > > >
> > > I will fix it as following:
> > >
> > > #define FD_ENABLE    0x111
> > >
> > > #define FD_REG_OFFSET_HW_ENABLE  0x4
> > > #define FD_REG_OFFSET_INT_EN     0x15c
> > > #define FD_REG_OFFSET_INT_VAL    0x168
> > > #define FD_REG_OFFSET_RESULT     0x178
> > >
> > > #define FD_IRQ_MASK         1
> > > #define FD_MAX_RS_BUF_SIZE  2288788
> > > #define FD_MAX_SPEEDUP      7
> > > #define FD_MAX_RESULT_NUM   1026
> > >
> >
> > I'd suggest the MTK_FD_ prefix.
> >
> Ok, I will use MTK_FD_ prefix.
>
> > > > > diff --git a/include/uapi/linux/v4l2-controls.h b/include/uapi/linux/v4l2-controls.h
> > > > > index 3dcfc61..eae876e 100644
> > > > > --- a/include/uapi/linux/v4l2-controls.h
> > > > > +++ b/include/uapi/linux/v4l2-controls.h
> > > > > @@ -192,6 +192,10 @@ enum v4l2_colorfx {
> > > > >   * We reserve 16 controls for this driver. */
> > > > >  #define V4L2_CID_USER_IMX_BASE                     (V4L2_CID_USER_BASE + 0x10b0)
> > > > >
> > > > > +/* The base for the mediatek FD driver controls */
> > > > > +/* We reserve 16 controls for this driver. */
> > > > > +#define V4L2_CID_USER_MTK_FD_BASE          (V4L2_CID_USER_BASE + 0x10d0)
> > > >
> > > > Why only the base, but not the actual IDs in uapi ?
> > > >
> > > I will put actual IDs in uapi/ for user to reference.

Enrico, any thoughts on the explanation that Jerry provided and
further discussion above?

Thanks,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
