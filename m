Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F32B7A345E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 11:45:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AI/GJVonkHYJkJcTACp2zY4w9m9mFMrzSDYtVbR3Jlo=; b=JSI/fH0TyoB6GT
	BMSdgnIO5fKy3B6S9n/TS/v7huyCF+7D3ELln/Whqvd/lX50SPY0rNiI6+3adGyoT4umQyk/8RMsi
	YLV7o3RlvKerWoIepPHF6B9RVy1b73MidsdSyIEqNidWkEbJIGx6rsmPm0V0KZEfBvJ0JNrq4YJ3Z
	DCyIuXtQvzQHmqSFiofBiZFugGOguX67n9vRvg9qVRXvDo6lb7EZwBwglNYZYFcURPg8n0xPHDS3j
	pxu4efw9JCfyKFG+h7HpXfp7N/TtzSRhKv1XLAoxeaD7VH1It89/kw4TJthkk0eJnTCsgBAXgV6fX
	GtTC2RsUz+8RLtAGLagQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3dT2-0006Uz-8L; Fri, 30 Aug 2019 09:45:16 +0000
Received: from lb2-smtp-cloud8.xs4all.net ([194.109.24.25])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3dSp-0005N4-WC
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 09:45:05 +0000
Received: from [192.168.2.10] ([46.9.232.237])
 by smtp-cloud8.xs4all.net with ESMTPA
 id 3dShiYEL4DqPe3dSkiRS9z; Fri, 30 Aug 2019 11:45:00 +0200
Subject: Re: [PATCH 2/8] videodev2.h: add V4L2_DEC_CMD_FLUSH
To: Alexandre Courbot <acourbot@chromium.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>
References: <20190822194500.2071-1-jernej.skrabec@siol.net>
 <20190822194500.2071-3-jernej.skrabec@siol.net>
 <CAPBb6MUChtZcNSTa2uT50k6uPU9T68wofLYGUFRJntDhjH8+iw@mail.gmail.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <907f3c43-b994-f1c7-a15b-116566e19003@xs4all.nl>
Date: Fri, 30 Aug 2019 11:44:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAPBb6MUChtZcNSTa2uT50k6uPU9T68wofLYGUFRJntDhjH8+iw@mail.gmail.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfB4Iwpuxa4ZWt3WM5IScwN1zIREASBWnbgJamG02lqSTKf0f6j1jls/icFEBpt/+ljEr/9Y5Sq5Zd9sZVR6ANFlk/wmVSJVnMrssJpDPeJBWRqvn+U/p
 LVEEMt39B1UHj6sOC490LO9wF2NWibQ78kCPGnUAWmwR3oWf++lVNsd1bmDFh4tBqyCG4RjLtz+vPkfOYhbPEeoOa7+xOnaCdbl4H7IhWoAAXXIgl9IflOxH
 cc1PFgWU6u4fVCy3OJoqsgnYEWRFujH3WodDTFiTFlKM51XUi7nVSeigAS14/3E1BU4EqYrOkJlGmcgQzLN8XJmQ52J74mkYg7qSyzrmKWZ/4ZC2CEjeWQJZ
 XJk0wPWGnvRKw2bb+tiHbwkRY6r6CgAGmm8bu2mUaN/SZrqw4TVAHQuJtb8WvnSsKaijD5bREj07kRg4iflyy8L5MAAme/LpzwT2IMXyRsoSyuqOu3NBP1Z3
 tzjcdWh2vLp/fcnK+DOELBvNwrvpRn6J6U4UKgf4j0MER/dsnK8hbKKzzMDwaQcSsCCZC1cHXRbDbrgZEY7hKCb/jdU5vyAdLncmCfmQDUGUajlV4vm07AF6
 1RitpU4Y+gnyKJ6XOCngTKZ91X4yTPrdGy//Ui2pdXkitnE+yvdwRjlIcSjHYCwjGNoXohLW8KGcEHXZslxfljBBeBnZoRiHWZhS3dzUqz9aQkvfaq3E2a8N
 p4F05ydyvQwCdZKvYLxrSfrlWaxEa7nP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_024504_206793_9BD4D1FA 
X-CRM114-Status: GOOD (  21.46  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devel@driverdev.osuosl.org,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Pawel Osciak <pawel@osciak.com>, jonas@kwiboo.se, gregkh@linuxfoundation.org,
 Chen-Yu Tsai <wens@csie.org>, mripard@kernel.org,
 Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, LKML <linux-kernel@vger.kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/30/19 11:38 AM, Alexandre Courbot wrote:
> On Fri, Aug 23, 2019 at 4:45 AM Jernej Skrabec <jernej.skrabec@siol.net> wrote:
>>
>> From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
>>
>> Add this new V4L2_DEC_CMD_FLUSH decoder command and document it.
>>
>> Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
>> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
>> ---
>>  Documentation/media/uapi/v4l/vidioc-decoder-cmd.rst | 11 ++++++++++-
>>  Documentation/media/videodev2.h.rst.exceptions      |  1 +
>>  include/uapi/linux/videodev2.h                      |  1 +
>>  3 files changed, 12 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/media/uapi/v4l/vidioc-decoder-cmd.rst b/Documentation/media/uapi/v4l/vidioc-decoder-cmd.rst
>> index 57f0066f4cff..0bffef6058f7 100644
>> --- a/Documentation/media/uapi/v4l/vidioc-decoder-cmd.rst
>> +++ b/Documentation/media/uapi/v4l/vidioc-decoder-cmd.rst
>> @@ -208,7 +208,16 @@ introduced in Linux 3.3. They are, however, mandatory for stateful mem2mem decod
>>         been started yet, the driver will return an ``EPERM`` error code. When
>>         the decoder is already running, this command does nothing. No
>>         flags are defined for this command.
>> -
>> +    * - ``V4L2_DEC_CMD_FLUSH``
>> +      - 4
>> +      - Flush any held capture buffers. Only valid for stateless decoders,
>> +        and only if ``V4L2_BUF_CAP_SUPPORTS_M2M_HOLD_CAPTURE_BUF`` was set.
>> +       This command is typically used when the application reached the
>> +       end of the stream and the last output buffer had the
>> +       ``V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF`` flag set. This would prevent
>> +       dequeueing the last capture buffer containing the last decoded frame.
>> +       So this command can be used to explicitly flush that last decoded
>> +       frame.
> 
> Just for safety, can we also specify that it is valid to call this
> command even if no buffer was held (in which case it is a no-op), as
> this can help make user-space code simpler?

Ah yes, thanks for the reminder.

Jernej, when you post the next version of this series, can you change the text
above to:

- Flush any held capture buffers. Only valid for stateless decoders.
  This command is typically used when the application reached the
  end of the stream and the last output buffer had the
  ``V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF`` flag set. This would prevent
  dequeueing the capture buffer containing the last decoded frame.
  So this command can be used to explicitly flush that final decoded
  frame. This command does nothing if there are no held capture buffers.

Regards,

	Hans

> 
>>
>>  Return Value
>>  ============
>> diff --git a/Documentation/media/videodev2.h.rst.exceptions b/Documentation/media/videodev2.h.rst.exceptions
>> index adeb6b7a15cb..a79028e4d929 100644
>> --- a/Documentation/media/videodev2.h.rst.exceptions
>> +++ b/Documentation/media/videodev2.h.rst.exceptions
>> @@ -434,6 +434,7 @@ replace define V4L2_DEC_CMD_START decoder-cmds
>>  replace define V4L2_DEC_CMD_STOP decoder-cmds
>>  replace define V4L2_DEC_CMD_PAUSE decoder-cmds
>>  replace define V4L2_DEC_CMD_RESUME decoder-cmds
>> +replace define V4L2_DEC_CMD_FLUSH decoder-cmds
>>
>>  replace define V4L2_DEC_CMD_START_MUTE_AUDIO decoder-cmds
>>  replace define V4L2_DEC_CMD_PAUSE_TO_BLACK decoder-cmds
>> diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
>> index 4fa9f543742d..91a79e16089c 100644
>> --- a/include/uapi/linux/videodev2.h
>> +++ b/include/uapi/linux/videodev2.h
>> @@ -1978,6 +1978,7 @@ struct v4l2_encoder_cmd {
>>  #define V4L2_DEC_CMD_STOP        (1)
>>  #define V4L2_DEC_CMD_PAUSE       (2)
>>  #define V4L2_DEC_CMD_RESUME      (3)
>> +#define V4L2_DEC_CMD_FLUSH       (4)
>>
>>  /* Flags for V4L2_DEC_CMD_START */
>>  #define V4L2_DEC_CMD_START_MUTE_AUDIO  (1 << 0)
>> --
>> 2.22.1
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
