Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED847B8ED
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 06:55:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PL62RDg0xgWoQ8zgKvLWq1QGEVKlH5DBFlPTnM3bvOc=; b=cAidbznim3mVyN
	nc5U5Qmk8slVCI5jFBkyShYfw0hHMLiVbmAsClKr/dfIBimpLDL/r2+y+u7nwC8bhdwUJyJRiUYJ2
	4l0hiwZJH93pmpOdu9hhasLSA6V/dkEIDsRJ5oj5LTO45pGIM9urctWZeFsQClx9e0dY6vbJZKrk2
	Dvdf7tG69rAqMCJ7f7DQxi3K2g+8LM7ZwkltE0a/7tmA58FvjGQYjf4fZGwaTgQDN/hz61ki1pDaE
	mVq335YzX1SZjtWFoETqx/ovn+QRaI+D1DJ1pvjpTEi6YIVb+rdmsyTWhQfcCh1ZDscaEZ9eODEYj
	t3WpDTW0c4n/6NtGebKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsgeO-0007Fz-2R; Wed, 31 Jul 2019 04:55:44 +0000
Received: from lb2-smtp-cloud7.xs4all.net ([194.109.24.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsgeB-0007FU-BH; Wed, 31 Jul 2019 04:55:33 +0000
Received: from [IPv6:2001:983:e9a7:1:a003:9a19:9f18:5372]
 ([IPv6:2001:983:e9a7:1:a003:9a19:9f18:5372])
 by smtp-cloud7.xs4all.net with ESMTPA
 id sge6h2adHur8Tsge7hB9Hs; Wed, 31 Jul 2019 06:55:28 +0200
Subject: Re: [PATCH v8 00/14] Rockchip ISP1 Driver
From: Hans Verkuil <hverkuil@xs4all.nl>
To: Helen Koike <helen.koike@collabora.com>, linux-rockchip@lists.infradead.org
References: <20190730184256.30338-1-helen.koike@collabora.com>
 <dbdfed3e-7bb6-bf1f-64b9-ab7298193e2d@xs4all.nl>
 <41e7e574-2708-eb4c-ea30-e6a1ac9c073e@collabora.com>
 <8ce532de-6c26-f8db-8754-c8dd1eb0764b@collabora.com>
 <74bb0ba1-2859-39ff-d946-129a440ba150@xs4all.nl>
 <fb1327fb-0903-ce62-4eea-94b81f599b62@xs4all.nl>
Message-ID: <13d89676-ae84-5904-7606-935501cb2d89@xs4all.nl>
Date: Wed, 31 Jul 2019 06:55:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <fb1327fb-0903-ce62-4eea-94b81f599b62@xs4all.nl>
Content-Language: en-US
X-CMAE-Envelope: MS4wfP/q3EnArJxBpSF7A97Y6c/kJMiNjcY8zTy1HJDi56O4eVd8ArhL5LDpNvq47gai47NHfK3L/be0dDM8KvqGTek5mSMdQdRExvMPD+eKajxit+ZkID0N
 MAdRENuetD+cl+lty3C1NbyjzQw0VJwr+5++KWyNiJuCIcI6RMa0rCtwptR0Ad0cEM9CGiWNY8QqF0YzI+q+VO71GOui9E0B3/UhGbf8ZxlHIFzWqMfeI4i6
 hLWvaxKefJkS7bfuinmY8GOR76RBltnftT/YDcbRHO3qY7dvkTgmMOerg/xHF4Ij2Lq5th5LvovVHJuW5klfK2VsG0uTjJ6ZMBUZ4rbnf37GxY6WaXSJ6XJB
 FhTW2BEfW4VenQAPOHaIkm3hQn1X7ekj6x6EV1LIa/wquo48Rh09wt2Xq8y1NyOOI4iC/ErXScmxv/DACce1qOh++h573A7rEbb4f3KNnXNQV2JUXvOpZ0NL
 R61GhuJ8xT3kvjNlLgnB+0moQokpBHWbKMXSau7N1DoSrliH0OBM/4GORn82wfr7VHmHPEQRSkKHVGmfZFPUbuBCXbMGG3I23gBpV7sBLP6dzVKCzNuMaw61
 RrgOQZUI+bQH/UZEBHlCzF4GKdncBvitwaF30Na1rgM6pcQSbbbfkf61ugGvnfVCCYyYXt86cWVGQ8tH5Ps1N/DDRZpc77DoSW0FJI9iQGpgDjg8sG9q+8F7
 Q5HDIJMyGkIOgfynRe+Xcqdd3Exjaahm0TAimUwjNUkCZF3A4ORSifmE687wkIo2quw33fguQ9xP4A518Nbq1//AXAtlFAMbJlJ5vUkCGx2voDSE58lM7oit
 VOKxNY5RXCVnLXHu5YPk9eJe9BPGdStm/Orc3ckITathFVYxO1SwlrSYbgdXwMmn7/Oj2wdFLxCXkn20eCOXGdtEmbKK7PKMMnHZaj3y
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_215531_546407_064E8501 
X-CRM114-Status: GOOD (  16.66  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.28 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, eddie.cai.linux@gmail.com, kernel@collabora.com,
 heiko@sntech.de, zhengsq@rock-chips.com, jeffy.chen@rock-chips.com,
 zyc@rock-chips.com, linux-kernel@vger.kernel.org, tfiga@chromium.org,
 hans.verkuil@cisco.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 7/31/19 6:33 AM, Hans Verkuil wrote:
> On 7/31/19 6:29 AM, Hans Verkuil wrote:
>> On 7/31/19 2:08 AM, Helen Koike wrote:
>>>
>>>
>>> On 7/30/19 5:50 PM, Helen Koike wrote:
>>>>
>>>>
>>>> On 7/30/19 5:15 PM, Hans Verkuil wrote:
>>>>> On 7/30/19 8:42 PM, Helen Koike wrote:
>>>>>> Hello,
>>>>>>
>>>>>> I'm re-sending a new version of ISP(Camera) v4l2 driver for rockchip
>>>>>> rk3399 SoC.
>>>>>>
>>>>>> I didn't change much from the last version, just applying the
>>>>>> suggestions made in the previous one.
>>>>>>
>>>>>> This patchset is also available at:
>>>>>> https://gitlab.collabora.com/koike/linux/tree/rockchip/isp/v8
>>>>>>
>>>>>> Libcamera patched to work with this version:
>>>>>> https://gitlab.collabora.com/koike/libcamera
>>>>>> (also sent to the mailing list)
>>>>>>
>>>>>> I tested on the rockpi 4 with a rpi v1.3 sensor and also with the
>>>>>> Scarlet Chromebook.
>>>>>>
>>>>>> Known issues (same as in v7):
>>>>>> -------------
>>>>>> - Reloading the module doesn't work (there is some missing cleanup when
>>>>>> unloading)
>>>>>> - When capturing in bayer format, changing the size doesn't seem to
>>>>>> affect the image.
>>>>>> - crop needs more tests
>>>>>> - v4l2-compliance error:
>>>>>>         fail: v4l2-test-controls.cpp(824): subscribe event for control 'Image Processing Controls' failed
>>>>>> test VIDIOC_(UN)SUBSCRIBE_EVENT/DQEVENT: FAIL
>>>>>
>>>>> Can you mail me the full v4l2-compliance output?
>>>>
>>>> Sure, please check here: http://ix.io/1Q5u
>>>> I updated v4l-utils with the latest version and I re-ran bootstrap/configure/make,
>>>> but for some reason the hash from the link above is not the latest commit, probably some
>>>> old configuration somewhere. I'll resend this log as soon as I get v4l2-compliance
>>>> properly updated.
>>>
>>> Please see the output of v4l2-compliance here with an updated v4l-utils: http://ix.io/1Q6A
>>
>> So this FAIL is for /dev/v4l-subdev0 (rkisp1-isp-subdev).
>>
>> What is weird that this subdev does not appear to have controls at all.
>>
>> What is the output of 'v4l2-ctl -d /dev/v4l-subdev0 -l'? And if it lists
>> controls, then why?
>>
>> If you run 'v4l2-compliance -u /dev/v4l-subdev0', do you get a fail as
>> well?
> 
> I see the same issue with v4l-subdev1, but I see no "Media Driver Info"
> in the v4l2-compliance output for that subdev. That's strange. It would
> be good to know why that's happening.

It looks to be some parenting issue: v4l2-compliance expects to find
a mediaX directory in /sys/dev/char/81\:Y/device/ where 81:Y is the major/minor
of /dev/v4l-subdev1.

Because is this mi_get_media_fd() cannot find the media device for the subdev
in v4l2-compliance.

Regards,

	Hans

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
