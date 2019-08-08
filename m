Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D7F85FF2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 12:41:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TTCPkeIdfYV8lMyLfqXZaHyHLpuXzNSZZlX/l9P9gjg=; b=VzbWdTSxlBdWCS
	riQu1oW6KArKKec8eEORG5JRwX5oCbRsQcYbWivcixaRvBO3K5ogLy7m41GmoCjLyCHDQ7fc5eJnJ
	e1QGbMX0rK6vhNmrCf1p1R8Yd362siH2K1QpDpOl8QvSY6j2NWLnHyPpD/Y+7u8SnbfXyyE9W5Obc
	des4d+03mMdtK5wVk0VSNN04AqPcGtUUiiDH311q6Rj+qLZVXufcgYO60TOfgOw/3OeetIwNSWiwN
	0Dn8Q9b+xK4V+1g+oQjueUDMmNLTZDCkoljVvN3UDJFkU4qS7i0/4EtNY0P3EqxMWHnD5/iD73BPl
	XlC8fpSutQGgakkBN1Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvfqo-0007wX-Ny; Thu, 08 Aug 2019 10:40:54 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvfqY-0007vn-WD
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 10:40:41 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x78Abf5q006589; Thu, 8 Aug 2019 12:40:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=OR5QhrSszwUC5t+z/AAD78ZpZNVofHWSNNovD/lgTSQ=;
 b=PKrATBT8H0axnMTx3n0Rhc+YmGCBVNKBVDzl9VWIy8jphDKNra82rwuHuxwCbKYkaxbe
 wcUiNPa/jDhQPvDrlm7N1vxQlbOVdMkpEIghXQbTrTtzAuVydrOPnYs8MfuSDm3SNrwP
 wZIFastHH6rhcopklk4phU23P3IR0PM/tGA71XItN0hKtiJfMnJZGjCz3Mr8ds4PPwRW
 M7IxoxypXtmu8M/KQpQQg5yGnt5mTGbLiBm6Ua7PULk4jCcHfZJm+wEjRRiTmAa4n64l
 YlCW+F04m/yyoV+jDIgRSQycGUM9a8omAsorGFk2FqyqBEn3QVm1A733vptvcGzWxsnL 3g== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2u515mvnh5-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 08 Aug 2019 12:40:31 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0016831;
 Thu,  8 Aug 2019 10:40:29 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id D6BDC2F9D8A;
 Thu,  8 Aug 2019 12:40:29 +0200 (CEST)
Received: from SFHDAG5NODE1.st.com (10.75.127.13) by SFHDAG6NODE2.st.com
 (10.75.127.17) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 8 Aug
 2019 12:40:29 +0200
Received: from SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6]) by
 SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6%20]) with mapi id
 15.00.1473.003; Thu, 8 Aug 2019 12:40:28 +0200
From: Hugues FRUCHET <hugues.fruchet@st.com>
To: Hans Verkuil <hverkuil@xs4all.nl>, Alexandre TORGUE
 <alexandre.torgue@st.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 "Sakari Ailus" <sakari.ailus@linux.intel.com>
Subject: Re: [PATCH v4 0/3] DCMI bridge support
Thread-Topic: [PATCH v4 0/3] DCMI bridge support
Thread-Index: AQHVTQkgTcvIjOQmAEWftzhpiuOH2qbw3leAgAABGACAABBaAA==
Date: Thu, 8 Aug 2019 10:40:28 +0000
Message-ID: <bbb4f08d-7aa1-cef9-8d81-15c8ae48cba0@st.com>
References: <1564577783-18627-1-git-send-email-hugues.fruchet@st.com>
 <28a2a9ac-d5b9-a312-616a-620e0385cf66@xs4all.nl>
 <85edd40f-68cc-13aa-52e0-6ec832bf6c2f@st.com>
 <c58613a7-a1d2-cc1b-5f94-beb2bd753e5e@xs4all.nl>
In-Reply-To: <c58613a7-a1d2-cc1b-5f94-beb2bd753e5e@xs4all.nl>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.46]
Content-ID: <756ACA611C217547A1C2FC3E2A041002@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-08_05:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_034039_357304_2171D471 
X-CRM114-Status: GOOD (  15.25  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Hi Hans,

On 8/8/19 11:41 AM, Hans Verkuil wrote:
> Hi Hugues,
> 
> On 8/8/19 11:38 AM, Hugues FRUCHET wrote:
>> Hi Hans,
>>
>> You're welcome, here it is:
>>
>> 1) v4l-utils master branch, commit
>> 6aa15f7447d4aeca6af1ed7ee9644a0c7e891ece "v4l2-ctl: fix double
>> decrementing of stream_count"
>>
>> 2) Cropping test is failed as usual because of OV5640 discrete framesizes
>>
>> 3) No more /dev/media* and /dev/v4l-*:
>> root@stm32mp1-av96:~# ls -al /dev/video0
>> crw-rw---- 1 root video 81, 0 Mar 19 17:42 /dev/video0
>> root@stm32mp1-av96:~# ls -al /dev/media*
>> ls: cannot access '/dev/media*': No such file or directory
>> root@stm32mp1-av96:~# ls -al /dev/v4l-*
>> ls: cannot access '/dev/v4l-*': No such file or directory
> 
> Good. One more question: is this tested with two subdevs? So a bridge+sensor?

Yes, tested with ov5640 (CSI) => st-mipid02 => stm32-dcmi.

In term of hardware setup, it's an Avenger96 96 board [1] embedding an 
STM32MP157 (DCMI //) and an ST MIPID02 bridge (CSI to //) in order to 
enable CSI video input on high speed expansion connector + a D3 
engineering mezzanine board [2] embedding an OV5640 CSI camera.

&dcmi {
...
	port {
		dcmi_0: endpoint {
			remote-endpoint = <&mipid02_2>;

mipid02: mipid02@14 {
...
			port@0 {
				reg = <0>;

				mipid02_0: endpoint {
					data-lanes = <1 2>;
					remote-endpoint = <&ov5640_0>;
				};
			};
			port@2 {
				reg = <2>;

				mipid02_2: endpoint {
					bus-width = <8>;
					hsync-active = <0>;
					vsync-active = <0>;
					pclk-sample = <0>;
					remote-endpoint = <&dcmi_0>;
				};

ov5640: camera@3c {
...
			ov5640_0: endpoint {
				remote-endpoint = <&mipid02_0>;
				clock-lanes = <0>;
				data-lanes = <1 2>;
			};



[1]
https://www.96boards.org/product/avenger96/
https://wiki.dh-electronics.com/index.php/Avenger96

[2] https://www.96boards.org/product/d3camera/


> 
> Regards,
> 
> 	Hans
> 
>>
>>
>> root@stm32mp1-av96:~# v4l2-compliance -s
>> v4l2-compliance SHA: 6aa15f7447d4aeca6af1ed7ee9644a0c7e891ece, 32 bits
>>
>> Compliance test for stm32-dcmi device /dev/video0:
>>
>> Driver Info:
>>           Driver name      : stm32-dcmi
>>           Card type        : STM32 Camera Memory Interface
>>           Bus info         : platform:dcmi
>>           Driver version   : 4.19.49
>>           Capabilities     : 0x85200001
>>                   Video Capture
>>                   Read/Write
>>                   Streaming
>>                   Extended Pix Format
>>                   Device Capabilities
>>           Device Caps      : 0x05200001
>>                   Video Capture
>>                   Read/Write
>>                   Streaming
>>                   Extended Pix Format
>>
>> Required ioctls:
>>           test VIDIOC_QUERYCAP: OK
>>
>> Allow for multiple opens:
>>           test second /dev/video0 open: OK
>>           test VIDIOC_QUERYCAP: OK
>>           test VIDIOC_G/S_PRIORITY: OK
>>           test for unlimited opens: OK
>>
>> Debug ioctls:
>>           test VIDIOC_DBG_G/S_REGISTER: OK (Not Supported)
>>           test VIDIOC_LOG_STATUS: OK
>>
>> Input ioctls:
>>           test VIDIOC_G/S_TUNER/ENUM_FREQ_BANDS: OK (Not Supported)
>>           test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
>>           test VIDIOC_S_HW_FREQ_SEEK: OK (Not Supported)
>>           test VIDIOC_ENUMAUDIO: OK (Not Supported)
>>           test VIDIOC_G/S/ENUMINPUT: OK
>>           test VIDIOC_G/S_AUDIO: OK (Not Supported)
>>           Inputs: 1 Audio Inputs: 0 Tuners: 0
>>
>> Output ioctls:
>>           test VIDIOC_G/S_MODULATOR: OK (Not Supported)
>>           test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
>>           test VIDIOC_ENUMAUDOUT: OK (Not Supported)
>>           test VIDIOC_G/S/ENUMOUTPUT: OK (Not Supported)
>>           test VIDIOC_G/S_AUDOUT: OK (Not Supported)
>>           Outputs: 0 Audio Outputs: 0 Modulators: 0
>>
>> Input/Output configuration ioctls:
>>           test VIDIOC_ENUM/G/S/QUERY_STD: OK (Not Supported)
>>           test VIDIOC_ENUM/G/S/QUERY_DV_TIMINGS: OK (Not Supported)
>>           test VIDIOC_DV_TIMINGS_CAP: OK (Not Supported)
>>           test VIDIOC_G/S_EDID: OK (Not Supported)
>>
>> Control ioctls (Input 0):
>>           test VIDIOC_QUERY_EXT_CTRL/QUERYMENU: OK
>>           test VIDIOC_QUERYCTRL: OK
>>           test VIDIOC_G/S_CTRL: OK
>>           test VIDIOC_G/S/TRY_EXT_CTRLS: OK
>>           test VIDIOC_(UN)SUBSCRIBE_EVENT/DQEVENT: OK
>>           test VIDIOC_G/S_JPEGCOMP: OK (Not Supported)
>>           Standard Controls: 18 Private Controls: 0
>>
>> Format ioctls (Input 0):
>>           test VIDIOC_ENUM_FMT/FRAMESIZES/FRAMEINTERVALS: OK
>>           test VIDIOC_G/S_PARM: OK
>>           test VIDIOC_G_FBUF: OK (Not Supported)
>>           test VIDIOC_G_FMT: OK
>>           test VIDIOC_TRY_FMT: OK
>>           test VIDIOC_S_FMT: OK
>>           test VIDIOC_G_SLICED_VBI_CAP: OK (Not Supported)
>>                   fail:
>> ../../../../../../../../../sources/v4l-utils/utils/v4l2-compliance/v4l2-test-formats.cpp(1414):
>> node->frmsizes_count[pixfm
>> t] > 1
>>           test Cropping: FAIL
>>           test Composing: OK (Not Supported)
>>           test Scaling: OK (Not Supported)
>>
>> Codec ioctls (Input 0):
>>           test VIDIOC_(TRY_)ENCODER_CMD: OK (Not Supported)
>>           test VIDIOC_G_ENC_INDEX: OK (Not Supported)
>>           test VIDIOC_(TRY_)DECODER_CMD: OK (Not Supported)
>>
>> Buffer ioctls (Input 0):
>>           test VIDIOC_REQBUFS/CREATE_BUFS/QUERYBUF: OK
>>           test VIDIOC_EXPBUF: OK
>>           test Requests: OK (Not Supported)
>>
>> Test input 0:
>>
>> Streaming ioctls:
>>           test read/write: OK
>>           test blocking wait: OK
>>           test MMAP (no poll): OK
>>           test MMAP (select): OK
>>           test MMAP (epoll): OK
>>           test USERPTR (no poll): OK (Not Supported)
>>           test USERPTR (select): OK (Not Supported)
>>           test DMABUF: Cannot test, specify --expbuf-device
>>
>> Total for stm32-dcmi device /dev/video0: 51, Succeeded: 50, Failed: 1,
>> Warnings: 0
>>
>>
>> On 8/7/19 12:15 PM, Hans Verkuil wrote:
>>> Hi Hugues,
>>>
>>> Can you provide the output of the most recent v4l2-compliance?
>>>
>>> Use 'v4l2-compliance -s'.
>>>
>>> Also, just to confirm, with this v4 there are no /dev/mediaX or
>>> /dev/v4l-subdevX devices created anymore, right?
>>>
>>> This v4 looks good to me, I just want to have these final checks
>>> done.
>>>
>>> Regards,
>>>
>>> 	Hans
>>>
>>
>> Best regards,
>> Hugues.
>>
> 

Best regards,
Hugues.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
