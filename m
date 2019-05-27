Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ADB22B7F0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 16:54:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oa9asXUILX0Py9Kj60mla3Pzxa79FO7poSxKgRigeXI=; b=o2py0qIwN5woyP
	D/Ltoqe1S+ygrAzsruWTSH+qpoja8NP0EkPD8Rr3KFgaoCUr5+lxE5V25mhpCa98RxNsAOg+uUyIy
	/7ds4bLkZW9GPlZKXHoYWCheYziGxf6J72TOKm50zocWySBBOhgDPblSr8KOoEwYZ3akgo6yd8LmU
	HAJK3/QVSa8K+QQoe0no8mlQeAbo2zkItxLvkzkzXRkwFUjFbSgYyPJO2+h9Qsf5ujA9vYczPvi/H
	t8sYuEAmFOWFTW2kwLoGaKwF/S5MxDnlYF4WMSZygn5IYKUBJQRJshgNzDpgUIeyb1ADFfseZcyyx
	9yZk42g04VTjA9H7Brwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVH1O-0002y7-Ei; Mon, 27 May 2019 14:54:42 +0000
Received: from lb3-smtp-cloud7.xs4all.net ([194.109.24.31])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVH1F-0002wP-9B; Mon, 27 May 2019 14:54:35 +0000
Received: from [IPv6:2001:983:e9a7:1:10b2:2e62:e4b1:bd13]
 ([IPv6:2001:983:e9a7:1:10b2:2e62:e4b1:bd13])
 by smtp-cloud7.xs4all.net with ESMTPA
 id VH14hbq0b3qlsVH15hdFCw; Mon, 27 May 2019 16:54:27 +0200
Subject: Re: [PATCH v6 3/4] media: meson: add v4l2 m2m video decoder driver
To: Maxime Jourdan <mjourdan@baylibre.com>
References: <20190514135612.30822-1-mjourdan@baylibre.com>
 <20190514135612.30822-4-mjourdan@baylibre.com>
 <07af1a22-d57c-aff6-b476-98fbf72135c1@xs4all.nl>
 <CAMO6naz-cG3F_h70Chjt+GprGWe2EShsMjrietu_JBAdLrPbpQ@mail.gmail.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <0821bfd9-58e4-5df3-4528-189476d35d89@xs4all.nl>
Date: Mon, 27 May 2019 16:54:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAMO6naz-cG3F_h70Chjt+GprGWe2EShsMjrietu_JBAdLrPbpQ@mail.gmail.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfC14XOgAejGHDD7XoN677Jj5C7F2ltQrMEguCsVq4TGpM8oUGIcHqhP/Nu0qacv9r4OPXnJCenc9GmvcJxP92PDW8dWI3KiMLUxZm8LnCwQ5j7zx8VOO
 EGb/clJo/8WMmkajPa50FhHZgaXXDGh29g/xHugmlJKsqCZ+LfnvAUVIcrPVcf99X/vK3f7dqVghUTp020T5jo32dlGfj07vT8KnHqG4bqc+/ry9KxXV1bDW
 ynjOowxWW/yQQRd8K0VHu11ct4nm/1H25zRQhlxxLGsfx29GchaKkWISs8oIw2UwsEc+W8lxnSDJpJW/X4gHSKPH6I+0l9HKMzFrlhg+WJ3ngwOxVbL5hT5W
 cWoJwNLoajI4lYSBnZb0Rgyx2ZWB2jn/p+et0R8CJV/uls2oCp8L+v8yb0Upr0riCIxPBbll6vHdl09BYynDda5bXhuiZNazwCuVNJa0rGR6QD0QFYpM8ZT/
 aHlY+4rye/nF3+iXPdRsc9CY2YqTEa5SVxgH1iDn87ORIcJQFw+p2LFnmSgcnj+chKPghKh+Ap6kPpsnu5R7iHDKwl3RMBtLROX2CwYN940KmT9XnZTZbB6l
 ghGbP5jjNibaIXQ0pwyCOfNnmUHUD0HGJfsCNnE9eVJw3Ip5v6ASSFWGvUTm0pFI9KK5DRBH9eMRcv7QyI1SG0dY
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_075433_487442_51FCA005 
X-CRM114-Status: GOOD (  32.31  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.31 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, Hans Verkuil <hans.verkuil@cisco.com>,
 linux-amlogic@lists.infradead.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/27/19 4:44 PM, Maxime Jourdan wrote:
> Hi Hans,
> On Mon, May 27, 2019 at 12:04 PM Hans Verkuil <hverkuil@xs4all.nl> wrote:
>>
>> Hi Maxime,
>>
>> First a high-level comment: I think this driver should go to staging.
>> Once we finalize the stateful decoder spec, and we've updated the
>> v4l2-compliance test, then this needs to be tested against that and
>> only if it passes can it be moved out of staging.
>>
> 
> I chose to send the driver supporting only MPEG2 for now as it keeps
> it "to the point", but as it turns out it's one of the few formats on
> Amlogic that can't fully respect the spec at the moment because of the
> lack of support for V4L2_EVENT_SOURCE_CHANGE, thus the patch in the
> series that adds a new flag V4L2_FMT_FLAG_FIXED_RESOLUTION. It
> basically requires userspace to set the format (i.e coded resolution)
> since the driver/fw can't probe it.
> At the moment, this is described in the v3 spec like this:
> 
>>
>> 1. Set the coded format on ``OUTPUT`` via :c:func:`VIDIOC_S_FMT`
>>
>>   * **Required fields:**
>>
>>     ``type``
>>         a ``V4L2_BUF_TYPE_*`` enum appropriate for ``OUTPUT``
>>
>>     ``pixelformat``
>>         a coded pixel format
>>
>>     ``width``, ``height``
>>         required only if cannot be parsed from the stream for the given
>>         coded format; optional otherwise - set to zero to ignore
>>
> 
> But MPEG2 being a format where the coded resolution is inside the
> bitstream, this is purely an Amlogic issue where the firmware doesn't
> extend the capability to do this.
> 
> Here's a proposal: if I were to resend the driver supporting only H264
> and conforming to the spec, would you be considering it for inclusion
> in the main tree ? Does your current iteration of v4l2-compliance
> support testing stateful decoders with H264 bitstreams ?

The core problem is that the spec isn't finalized yet. The v3 spec you
refer to above is old already since there are various changes planned.

If you want to test your driver with a v4l2-compliance that is likely
to be close to the final version of the spec, then you can use this
branch:

https://git.linuxtv.org/hverkuil/v4l-utils.git/log/?h=vicodec

You can test with:

v4l2-compliance -s --stream-from <file>

I wouldn't be too worried about keeping it in staging. Having it there
will already be very nice indeed. Just add a TODO file that states that
you are waiting for the final version of the stateful decoder spec and
the corresponding compliance tests.

The V4L2_FMT_FLAG_FIXED_RESOLUTION isn't a blocker. That flag makes sense,
and so it has nothing to do with keeping this driver in staging.

Regards,

	Hans

> 
>> It is just a bit too soon to have this in mainline at this time.
>>
>> One other comment below:
>>
>> On 5/14/19 3:56 PM, Maxime Jourdan wrote:
>>> Amlogic SoCs feature a powerful video decoder unit able to
>>> decode many formats, with a performance of usually up to 4k60.
>>>
>>> This is a driver for this IP that is based around the v4l2 m2m framework.
>>>
>>> It features decoding for:
>>> - MPEG 1
>>> - MPEG 2
>>>
>>> Supported SoCs are: GXBB (S905), GXL (S905X/W/D), GXM (S912)
>>>
>>> There is also a hardware bitstream parser (ESPARSER) that is handled here.
>>>
>>> Tested-by: Neil Armstrong <narmstrong@baylibre.com>
>>> Signed-off-by: Maxime Jourdan <mjourdan@baylibre.com>
>>> ---
>>>  drivers/media/platform/Kconfig                |   10 +
>>>  drivers/media/platform/meson/Makefile         |    1 +
>>>  drivers/media/platform/meson/vdec/Makefile    |    8 +
>>>  .../media/platform/meson/vdec/codec_mpeg12.c  |  209 ++++
>>>  .../media/platform/meson/vdec/codec_mpeg12.h  |   14 +
>>>  drivers/media/platform/meson/vdec/dos_regs.h  |   98 ++
>>>  drivers/media/platform/meson/vdec/esparser.c  |  323 +++++
>>>  drivers/media/platform/meson/vdec/esparser.h  |   32 +
>>>  drivers/media/platform/meson/vdec/vdec.c      | 1071 +++++++++++++++++
>>>  drivers/media/platform/meson/vdec/vdec.h      |  265 ++++
>>>  drivers/media/platform/meson/vdec/vdec_1.c    |  229 ++++
>>>  drivers/media/platform/meson/vdec/vdec_1.h    |   14 +
>>>  .../media/platform/meson/vdec/vdec_ctrls.c    |   51 +
>>>  .../media/platform/meson/vdec/vdec_ctrls.h    |   14 +
>>>  .../media/platform/meson/vdec/vdec_helpers.c  |  441 +++++++
>>>  .../media/platform/meson/vdec/vdec_helpers.h  |   80 ++
>>>  .../media/platform/meson/vdec/vdec_platform.c |  107 ++
>>>  .../media/platform/meson/vdec/vdec_platform.h |   30 +
>>>  18 files changed, 2997 insertions(+)
>>>  create mode 100644 drivers/media/platform/meson/vdec/Makefile
>>>  create mode 100644 drivers/media/platform/meson/vdec/codec_mpeg12.c
>>>  create mode 100644 drivers/media/platform/meson/vdec/codec_mpeg12.h
>>>  create mode 100644 drivers/media/platform/meson/vdec/dos_regs.h
>>>  create mode 100644 drivers/media/platform/meson/vdec/esparser.c
>>>  create mode 100644 drivers/media/platform/meson/vdec/esparser.h
>>>  create mode 100644 drivers/media/platform/meson/vdec/vdec.c
>>>  create mode 100644 drivers/media/platform/meson/vdec/vdec.h
>>>  create mode 100644 drivers/media/platform/meson/vdec/vdec_1.c
>>>  create mode 100644 drivers/media/platform/meson/vdec/vdec_1.h
>>>  create mode 100644 drivers/media/platform/meson/vdec/vdec_ctrls.c
>>>  create mode 100644 drivers/media/platform/meson/vdec/vdec_ctrls.h
>>>  create mode 100644 drivers/media/platform/meson/vdec/vdec_helpers.c
>>>  create mode 100644 drivers/media/platform/meson/vdec/vdec_helpers.h
>>>  create mode 100644 drivers/media/platform/meson/vdec/vdec_platform.c
>>>  create mode 100644 drivers/media/platform/meson/vdec/vdec_platform.h
>>>
>>
>> <snip>
>>
>>> diff --git a/drivers/media/platform/meson/vdec/vdec_ctrls.c b/drivers/media/platform/meson/vdec/vdec_ctrls.c
>>> new file mode 100644
>>> index 000000000000..d5d6b1b97aa5
>>> --- /dev/null
>>> +++ b/drivers/media/platform/meson/vdec/vdec_ctrls.c
>>> @@ -0,0 +1,51 @@
>>> +// SPDX-License-Identifier: GPL-2.0+
>>> +/*
>>> + * Copyright (C) 2018 BayLibre, SAS
>>> + * Author: Maxime Jourdan <mjourdan@baylibre.com>
>>> + */
>>> +
>>> +#include "vdec_ctrls.h"
>>> +
>>> +static int vdec_op_g_volatile_ctrl(struct v4l2_ctrl *ctrl)
>>> +{
>>> +     struct amvdec_session *sess =
>>> +           container_of(ctrl->handler, struct amvdec_session, ctrl_handler);
>>> +
>>> +     switch (ctrl->id) {
>>> +     case V4L2_CID_MIN_BUFFERS_FOR_CAPTURE:
>>> +             ctrl->val = sess->dpb_size;
>>> +             break;
>>> +     default:
>>> +             return -EINVAL;
>>> +     };
>>> +
>>> +     return 0;
>>> +}
>>> +
>>> +static const struct v4l2_ctrl_ops vdec_ctrl_ops = {
>>> +     .g_volatile_ctrl = vdec_op_g_volatile_ctrl,
>>> +};
>>> +
>>> +int amvdec_init_ctrls(struct v4l2_ctrl_handler *ctrl_handler)
>>> +{
>>> +     int ret;
>>> +     struct v4l2_ctrl *ctrl;
>>> +
>>> +     ret = v4l2_ctrl_handler_init(ctrl_handler, 1);
>>> +     if (ret)
>>> +             return ret;
>>> +
>>> +     ctrl = v4l2_ctrl_new_std(ctrl_handler, &vdec_ctrl_ops,
>>> +             V4L2_CID_MIN_BUFFERS_FOR_CAPTURE, 1, 32, 1, 1);
>>> +     if (ctrl)
>>> +             ctrl->flags |= V4L2_CTRL_FLAG_VOLATILE;
>>
>> Why is this volatile? That makes little sense.
>>
> 
> I copied this over from other stateful decoders, they all used
> volatile so it didn't cross my mind too much.
> 
> It seems that there are 2 cases:
>  - the control is actually volatile, e.g its value is read from firmware.
>  - the control is not really volatile, e.g its value is set by the driver
> 
> My driver falls in the second case. Is the correct way to deal with
> that to use v4l2_ctrl_s_ctrl() and remove the volatile flag ?
> 
> Regards,
> Maxime
> 
> 
>>> +
>>> +     ret = ctrl_handler->error;
>>> +     if (ret) {
>>> +             v4l2_ctrl_handler_free(ctrl_handler);
>>> +             return ret;
>>> +     }
>>> +
>>> +     return 0;
>>> +}
>>> +EXPORT_SYMBOL_GPL(amvdec_init_ctrls);
>>
>> <snip>
>>
>> Regards,
>>
>>         Hans


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
