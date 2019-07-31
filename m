Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 232F97B8B5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 06:30:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I9AngE+JcO7etVg8luK0LBrNRqs97BduNxhVJOK/e/o=; b=tluvRLPzLcXovF
	c6ExIyRE+emFRf+UiB5d3/J6p5smvGfVUDBsd4kECM99F7XlSOVwcf38d0LQyYruYwgTyLm6N37dN
	3I+ZbmfPiPi3vCogJUcJlU9nlg89lDE9iTVZeq2f5LWsbftAZ/SCWJOzhI70AuYjkwgG7AfgmAjAk
	3RY6VaH0GqNsQKU8q2AN7/zt083nc3glkW4UaQ070wI+fTWKnvPvXqMFBhyFgMfhE+8Oo4It8IeeS
	fxcPCd+kIFDoH9dZbFc1vqzCL+ZMRoW7LBUH6sWZc+l/N733/LVoAMPUMN4f9wV0fDLHqp1i8igsr
	5vpZE3fP8TZ75GTXAFBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsgG0-0007XZ-Mk; Wed, 31 Jul 2019 04:30:32 +0000
Received: from lb2-smtp-cloud7.xs4all.net ([194.109.24.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsgFh-0006ru-Cy; Wed, 31 Jul 2019 04:30:15 +0000
Received: from [IPv6:2001:983:e9a7:1:a003:9a19:9f18:5372]
 ([IPv6:2001:983:e9a7:1:a003:9a19:9f18:5372])
 by smtp-cloud7.xs4all.net with ESMTPA
 id sgFTh2U6zur8TsgFUhB7Xs; Wed, 31 Jul 2019 06:30:06 +0200
Subject: Re: [PATCH v8 00/14] Rockchip ISP1 Driver
To: Helen Koike <helen.koike@collabora.com>, linux-rockchip@lists.infradead.org
References: <20190730184256.30338-1-helen.koike@collabora.com>
 <dbdfed3e-7bb6-bf1f-64b9-ab7298193e2d@xs4all.nl>
 <41e7e574-2708-eb4c-ea30-e6a1ac9c073e@collabora.com>
 <8ce532de-6c26-f8db-8754-c8dd1eb0764b@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <74bb0ba1-2859-39ff-d946-129a440ba150@xs4all.nl>
Date: Wed, 31 Jul 2019 06:29:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <8ce532de-6c26-f8db-8754-c8dd1eb0764b@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfGzGe2A7zD3Qrqunsp8MLlEAQbAkyPphsu4wr29b/OTwg0ooPoJd7bndOwd3J9ejKOkxJ0cbjD/OJg+O16w41BuIWIlG3qWHhNj4eIzypt9VClWiUenQ
 4x7WMzM3EDH3+8ogHw2UwVEBfa1MyMYbAnDNey6xByiD5Wv9r4W4gy7c0JqdRYslaPc5CXk8ImfWn1WmyK1UxzxdABmfyRE9wRSGN6LUnRMNLnz2h3Uu3Zmj
 GcuBNqz1HMIzXzU+K1FbkUOirZ8hl1gN5Ssxqc+CsDC7DV+GxuL4etCx//b1LD5Hlqetzi3oAgR3sb9xwyO5/2TmIw8FFif2dAanEKIld2rvhd8QMb1Ard9X
 PDWv82mvvKdmyhnVELfgFBaZRw3s2XdoSSbeQW8AkPIs1RaoLZXROpEzXjU9+o1F4A1nHRoTawPL2PCZdzCienvTs8zOw83mL8a44xdnTsavmL1afCD6f4o9
 sBvzFt3sWvguoyiCdxA0UqHmC4GqQt3xY34Xfk3dad0NU1wBTzlPGHEb8Wt6epA6/mthSbkYjmX9HKU1HgVA+0VqgcWfBXyk22gylbCvUdM3XAyeuw1gwNkY
 cJwgsZ2DQesP0gsq8wwmYH8LmF0MFVMfpyb02nlrYe/As0/mdsNQ80mV1DrsBW9dsmz3HyGuLRcfBcBGzjvEnfd2VyM90uoGX9xXzBnWiFVtMgDdtrxaqiY9
 UzEjBxyl9QMWoDHPyXkQ40ghRZD9rCmYenDzIA0wqYdwF9Se2KK6HdVv7nW98Dy9rMitePuYayEtMq0Lz2A7I1aT4D13sBVPeJfIkMiq0V3nUEvzq06roAep
 A9RYAfeRK/G6AAJlh5HBySCFH+2nIX3sqTXDEFlh61RvW+cgEfjWE9Y7PIfEbPh2tpvmAthNdusM/7GBkEA/nTyxHG+5jTfVc1ds3Cx/
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_213014_079596_BFC1B0A5 
X-CRM114-Status: GOOD (  14.18  )
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

On 7/31/19 2:08 AM, Helen Koike wrote:
> 
> 
> On 7/30/19 5:50 PM, Helen Koike wrote:
>>
>>
>> On 7/30/19 5:15 PM, Hans Verkuil wrote:
>>> On 7/30/19 8:42 PM, Helen Koike wrote:
>>>> Hello,
>>>>
>>>> I'm re-sending a new version of ISP(Camera) v4l2 driver for rockchip
>>>> rk3399 SoC.
>>>>
>>>> I didn't change much from the last version, just applying the
>>>> suggestions made in the previous one.
>>>>
>>>> This patchset is also available at:
>>>> https://gitlab.collabora.com/koike/linux/tree/rockchip/isp/v8
>>>>
>>>> Libcamera patched to work with this version:
>>>> https://gitlab.collabora.com/koike/libcamera
>>>> (also sent to the mailing list)
>>>>
>>>> I tested on the rockpi 4 with a rpi v1.3 sensor and also with the
>>>> Scarlet Chromebook.
>>>>
>>>> Known issues (same as in v7):
>>>> -------------
>>>> - Reloading the module doesn't work (there is some missing cleanup when
>>>> unloading)
>>>> - When capturing in bayer format, changing the size doesn't seem to
>>>> affect the image.
>>>> - crop needs more tests
>>>> - v4l2-compliance error:
>>>>         fail: v4l2-test-controls.cpp(824): subscribe event for control 'Image Processing Controls' failed
>>>> test VIDIOC_(UN)SUBSCRIBE_EVENT/DQEVENT: FAIL
>>>
>>> Can you mail me the full v4l2-compliance output?
>>
>> Sure, please check here: http://ix.io/1Q5u
>> I updated v4l-utils with the latest version and I re-ran bootstrap/configure/make,
>> but for some reason the hash from the link above is not the latest commit, probably some
>> old configuration somewhere. I'll resend this log as soon as I get v4l2-compliance
>> properly updated.
> 
> Please see the output of v4l2-compliance here with an updated v4l-utils: http://ix.io/1Q6A

So this FAIL is for /dev/v4l-subdev0 (rkisp1-isp-subdev).

What is weird that this subdev does not appear to have controls at all.

What is the output of 'v4l2-ctl -d /dev/v4l-subdev0 -l'? And if it lists
controls, then why?

If you run 'v4l2-compliance -u /dev/v4l-subdev0', do you get a fail as
well?

BTW, note that struct rkisp1_isp_subdev has a ctrl_handler field that
isn't used at all.

Regards,

	Hans

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
