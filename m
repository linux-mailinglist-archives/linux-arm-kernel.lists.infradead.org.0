Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11A4285EE9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 11:42:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AbHGE8735sSFn4YVOP/duvdLeGSwLSwaeG2qhstgnJ0=; b=ayt0aVMtPTXzQz
	lJjd+QABqn55r5+4l2vCGGYNaTyKMd4uwBZjeWwhxplrVXMYoKfy9XBAPUQVKA44mTECT9s1qNvdq
	jl3ZcysgH9Fq37EqycxySJENrM0C9ftRT5qbS/EDcLbzcWiXVKctgM2sYhDftm5VFBLB9bmDuuTWH
	K9ephx7Naptgn/IlqV+RDGBQhFGlqZ9XwzT1i09VvkWZvclMD1SBPU7OMc8IveyzEteFJUvEI9gVT
	Rwxe2JmnniHeh04U0zFNFQnwBgzOaf8gGZScD4lV4oRP52NHL7jUItNPfxRzfLfDaAzK1IOLF/Z5L
	/DJO/feCy7bOjKWYR6NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvewE-00014s-6O; Thu, 08 Aug 2019 09:42:26 +0000
Received: from lb1-smtp-cloud9.xs4all.net ([194.109.24.22])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvevx-00013K-Ve
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 09:42:12 +0000
Received: from [IPv6:2001:983:e9a7:1:dd78:ec97:6537:dc93]
 ([IPv6:2001:983:e9a7:1:dd78:ec97:6537:dc93])
 by smtp-cloud9.xs4all.net with ESMTPA
 id vevkhs1w4AffAvevmhBakW; Thu, 08 Aug 2019 11:42:05 +0200
Subject: Re: [PATCH v4 0/3] DCMI bridge support
To: Hugues FRUCHET <hugues.fruchet@st.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>
References: <1564577783-18627-1-git-send-email-hugues.fruchet@st.com>
 <28a2a9ac-d5b9-a312-616a-620e0385cf66@xs4all.nl>
 <85edd40f-68cc-13aa-52e0-6ec832bf6c2f@st.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <c58613a7-a1d2-cc1b-5f94-beb2bd753e5e@xs4all.nl>
Date: Thu, 8 Aug 2019 11:41:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <85edd40f-68cc-13aa-52e0-6ec832bf6c2f@st.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfC5ACmRPuS3YAAfyW4BnQN1UU1u9dTyjgbg6D28/ejMIlmwugAn4Lgm1gsP6k6qYQh4okcjxQa6xKfGl3g7c0oahlOIl6COVcn55qS8YgJi50OtIMALk
 UpVPWPmdB93XfcDjw18IkPJNc1hzjo3yOXJKMruxlLcC3KV0RZQ6jk8V33UWiY+wtN6T15kPmbrc4MAB4D9EZuVhoTuhZOZegwHhtkpb0fT7F16op6Xg7GpY
 teNn385Qaho8zI6uA5Msq6r7aGTNVRUpNdp6E2w7iHDk4GQ53BtipOWyB+8073y1wFMhu7/DZ7CN+pyXT2CXHRcjScxinU7alz88DCGqjZdMRwsx2WmibCmM
 wA1SmNp3E74eSFzb9m9ywfUSvmkHUwAVWrRSn7qm8CdSAHwDcDGrcRznYfurxSQq7zWkwbeS7sj2bWDNKxlxWMgs1cN4Luv/QbbwAwJZlvTwzyvNyGmp7zTP
 4ibGCs6B4F7LJLLI7gvSa2anue8cejdrz8InncEcgIYdaTPCUep+igNV1lBm1u5eBHthRBUryy98B7W6AmHwN8CQt/Qlyx12zmVZbE5MiQvwJ0P+yT+7+g7p
 HlNEkD5OGeKlm/kqO2HHJF6ZQ3jKacnuCRCJnZ7lAmbqmXeYCGjjnUb0AWNbtbTMJw2R5TALI4FMwOUqeqY4i0ohHeHNZjUIM1jViP4V/IYeXpt94AyeOcec
 L5o5hrZ04iI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_024210_190557_09D00AA4 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.22 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Hi Hugues,

On 8/8/19 11:38 AM, Hugues FRUCHET wrote:
> Hi Hans,
> 
> You're welcome, here it is:
> 
> 1) v4l-utils master branch, commit 
> 6aa15f7447d4aeca6af1ed7ee9644a0c7e891ece "v4l2-ctl: fix double 
> decrementing of stream_count"
> 
> 2) Cropping test is failed as usual because of OV5640 discrete framesizes
> 
> 3) No more /dev/media* and /dev/v4l-*:
> root@stm32mp1-av96:~# ls -al /dev/video0
> crw-rw---- 1 root video 81, 0 Mar 19 17:42 /dev/video0
> root@stm32mp1-av96:~# ls -al /dev/media*
> ls: cannot access '/dev/media*': No such file or directory
> root@stm32mp1-av96:~# ls -al /dev/v4l-*
> ls: cannot access '/dev/v4l-*': No such file or directory

Good. One more question: is this tested with two subdevs? So a bridge+sensor?

Regards,

	Hans

> 
> 
> root@stm32mp1-av96:~# v4l2-compliance -s
> v4l2-compliance SHA: 6aa15f7447d4aeca6af1ed7ee9644a0c7e891ece, 32 bits
> 
> Compliance test for stm32-dcmi device /dev/video0:
> 
> Driver Info:
>          Driver name      : stm32-dcmi
>          Card type        : STM32 Camera Memory Interface
>          Bus info         : platform:dcmi
>          Driver version   : 4.19.49
>          Capabilities     : 0x85200001
>                  Video Capture
>                  Read/Write
>                  Streaming
>                  Extended Pix Format
>                  Device Capabilities
>          Device Caps      : 0x05200001
>                  Video Capture
>                  Read/Write
>                  Streaming
>                  Extended Pix Format
> 
> Required ioctls:
>          test VIDIOC_QUERYCAP: OK
> 
> Allow for multiple opens:
>          test second /dev/video0 open: OK
>          test VIDIOC_QUERYCAP: OK
>          test VIDIOC_G/S_PRIORITY: OK
>          test for unlimited opens: OK
> 
> Debug ioctls:
>          test VIDIOC_DBG_G/S_REGISTER: OK (Not Supported)
>          test VIDIOC_LOG_STATUS: OK
> 
> Input ioctls:
>          test VIDIOC_G/S_TUNER/ENUM_FREQ_BANDS: OK (Not Supported)
>          test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
>          test VIDIOC_S_HW_FREQ_SEEK: OK (Not Supported)
>          test VIDIOC_ENUMAUDIO: OK (Not Supported)
>          test VIDIOC_G/S/ENUMINPUT: OK
>          test VIDIOC_G/S_AUDIO: OK (Not Supported)
>          Inputs: 1 Audio Inputs: 0 Tuners: 0
> 
> Output ioctls:
>          test VIDIOC_G/S_MODULATOR: OK (Not Supported)
>          test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
>          test VIDIOC_ENUMAUDOUT: OK (Not Supported)
>          test VIDIOC_G/S/ENUMOUTPUT: OK (Not Supported)
>          test VIDIOC_G/S_AUDOUT: OK (Not Supported)
>          Outputs: 0 Audio Outputs: 0 Modulators: 0
> 
> Input/Output configuration ioctls:
>          test VIDIOC_ENUM/G/S/QUERY_STD: OK (Not Supported)
>          test VIDIOC_ENUM/G/S/QUERY_DV_TIMINGS: OK (Not Supported)
>          test VIDIOC_DV_TIMINGS_CAP: OK (Not Supported)
>          test VIDIOC_G/S_EDID: OK (Not Supported)
> 
> Control ioctls (Input 0):
>          test VIDIOC_QUERY_EXT_CTRL/QUERYMENU: OK
>          test VIDIOC_QUERYCTRL: OK
>          test VIDIOC_G/S_CTRL: OK
>          test VIDIOC_G/S/TRY_EXT_CTRLS: OK
>          test VIDIOC_(UN)SUBSCRIBE_EVENT/DQEVENT: OK
>          test VIDIOC_G/S_JPEGCOMP: OK (Not Supported)
>          Standard Controls: 18 Private Controls: 0
> 
> Format ioctls (Input 0):
>          test VIDIOC_ENUM_FMT/FRAMESIZES/FRAMEINTERVALS: OK
>          test VIDIOC_G/S_PARM: OK
>          test VIDIOC_G_FBUF: OK (Not Supported)
>          test VIDIOC_G_FMT: OK
>          test VIDIOC_TRY_FMT: OK
>          test VIDIOC_S_FMT: OK
>          test VIDIOC_G_SLICED_VBI_CAP: OK (Not Supported)
>                  fail: 
> ../../../../../../../../../sources/v4l-utils/utils/v4l2-compliance/v4l2-test-formats.cpp(1414): 
> node->frmsizes_count[pixfm
> t] > 1
>          test Cropping: FAIL
>          test Composing: OK (Not Supported)
>          test Scaling: OK (Not Supported)
> 
> Codec ioctls (Input 0):
>          test VIDIOC_(TRY_)ENCODER_CMD: OK (Not Supported)
>          test VIDIOC_G_ENC_INDEX: OK (Not Supported)
>          test VIDIOC_(TRY_)DECODER_CMD: OK (Not Supported)
> 
> Buffer ioctls (Input 0):
>          test VIDIOC_REQBUFS/CREATE_BUFS/QUERYBUF: OK
>          test VIDIOC_EXPBUF: OK
>          test Requests: OK (Not Supported)
> 
> Test input 0:
> 
> Streaming ioctls:
>          test read/write: OK
>          test blocking wait: OK
>          test MMAP (no poll): OK
>          test MMAP (select): OK
>          test MMAP (epoll): OK
>          test USERPTR (no poll): OK (Not Supported)
>          test USERPTR (select): OK (Not Supported)
>          test DMABUF: Cannot test, specify --expbuf-device
> 
> Total for stm32-dcmi device /dev/video0: 51, Succeeded: 50, Failed: 1, 
> Warnings: 0
> 
> 
> On 8/7/19 12:15 PM, Hans Verkuil wrote:
>> Hi Hugues,
>>
>> Can you provide the output of the most recent v4l2-compliance?
>>
>> Use 'v4l2-compliance -s'.
>>
>> Also, just to confirm, with this v4 there are no /dev/mediaX or
>> /dev/v4l-subdevX devices created anymore, right?
>>
>> This v4 looks good to me, I just want to have these final checks
>> done.
>>
>> Regards,
>>
>> 	Hans
>>
> 
> Best regards,
> Hugues.
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
