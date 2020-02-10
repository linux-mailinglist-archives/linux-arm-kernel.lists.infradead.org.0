Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B873B1570B7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 09:18:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mSE5LSkC6Rwro/9pr5nVaQoHa3wm/fDsPtqem1tARdw=; b=rqcFHAjWR1f4yNSasd11CGsnd
	iClQGTHI0s4AiNXvfZ4q+GnjxlhER4FNVTrt4S1DHIH5v8Zx+81pbZGsoPsC6A8OFxopy0P2aMT5q
	NiwmoW8Ha2nGKAvtzfVM3JZH5HiaSBOU5CD8AD5PwuRdEpDFKGxj0/qMw500/TINYx7Z6bdDLd7AN
	uCNZ5RYwTe6AItCn34B8m2ZkKQWFtE7CDueWSHsmmi1jm5w0Ta5cT7SPxgBn9raOavbsIl41/YS/p
	Vl8FaQsm1nC3isQVnF0FKQ5oDySIY34AcY69R5AV4FV6dyK5Fn4mfuxTx82S1yhoQ9rB4K42DtPVP
	glnTIWWjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j14GZ-0002II-Jk; Mon, 10 Feb 2020 08:18:03 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j14GP-0002Hb-AX; Mon, 10 Feb 2020 08:17:55 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: tomeu) with ESMTPSA id B7231283D5B
Subject: Re: [PATCH v4 0/7] Add dts for mt8183 GPU (and misc panfrost patches)
To: Nicolas Boichat <drinkcat@chromium.org>
References: <20200207052627.130118-1-drinkcat@chromium.org>
 <5237381b-c232-7087-a3d6-78d6358d80bf@collabora.com>
 <CANMq1KCD1U7iym_fFWAd-Xa6ipxHmF_FAYxDL5WqGzDnA0KKLw@mail.gmail.com>
 <93aec9ae-00fc-bf55-1d6c-9bd715b78344@collabora.com>
 <CANMq1KC_nN4MQ8LKPCCNGPPeHRP18n3USXg6DRPousivn_J3aw@mail.gmail.com>
From: Tomeu Vizoso <tomeu.vizoso@collabora.com>
Message-ID: <7e1ffa57-20c7-02cc-47f6-bfaebb772956@collabora.com>
Date: Mon, 10 Feb 2020 09:17:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CANMq1KC_nN4MQ8LKPCCNGPPeHRP18n3USXg6DRPousivn_J3aw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_001753_633158_D020F707 
X-CRM114-Status: GOOD (  19.71  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, David Airlie <airlied@linux.ie>,
 lkml <linux-kernel@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/10/20 4:39 AM, Nicolas Boichat wrote:
> On Fri, Feb 7, 2020 at 4:13 PM Tomeu Vizoso <tomeu.vizoso@collabora.com> wrote:
>>
>> On 2/7/20 8:42 AM, Nicolas Boichat wrote:
>>> On Fri, Feb 7, 2020 at 2:18 PM Tomeu Vizoso <tomeu.vizoso@collabora.com> wrote:
>>>>
>>>>> Some more changes are still required to get devfreq working, and of course
>>>>> I do not have a userspace driver to test this with.
>>>>
>>>> Have you tried the Panfrost tests in IGT? They are atm quite basic, but
>>>> could be interesting to check that the different HW units are correctly
>>>> powered on.
>>>
>>> I haven't, you mean this right?
>>> https://gitlab.freedesktop.org/tomeu/igt-gpu-tools/tree/panfrost
>>
>> Yes, though may be better to use the upstream repo:
>>
>> https://gitlab.freedesktop.org/drm/igt-gpu-tools
>>
>>> Any specific test you have in mind?
>>
>> All the panfrost ones, but looks like panfrost_prime:gem-prime-import is
>> failing atm:
>>
>> https://lava.collabora.co.uk/scheduler/job/2214987
> 
> (I first removed opp table from device tree to avoid constant spew
> about devfreq not supporting 2 regulators, I should get around to fix
> that...)
> 
> # /usr/libexec/igt-gpu-tools/panfrost_gem_new
> IGT-Version: 1.24-gd4d574a4 (arm) (Linux: 4.19.99 aarch64)
> Starting subtest: gem-new-4096
> Subtest gem-new-4096: SUCCESS (0.000s)
> Starting subtest: gem-new-0
> Subtest gem-new-0: SUCCESS (0.000s)
> Starting subtest: gem-new-zeroed
> Subtest gem-new-zeroed: SUCCESS (0.001s)
> # /usr/libexec/igt-gpu-tools/panfrost_get_param
> IGT-Version: 1.24-gd4d574a4 (arm) (Linux: 4.19.99 aarch64)
> Starting subtest: base-params
> Subtest base-params: SUCCESS (0.000s)
> Starting subtest: get-bad-param
> Subtest get-bad-param: SUCCESS (0.000s)
> Starting subtest: get-bad-padding
> Subtest get-bad-padding: SUCCESS (0.000s)
> # /usr/libexec/igt-gpu-tools/panfrost_prime
> IGT-Version: 1.24-gd4d574a4 (arm) (Linux: 4.19.99 aarch64)
> Starting subtest: gem-prime-import
> (panfrost_prime:1527) ioctl_wrappers-CRITICAL: Test assertion failure
> function prime_fd_to_handle, file
> ../igt-gpu-tools-9999/lib/ioctl_wrappers.c:1336:
> (panfrost_prime:1527) ioctl_wrappers-CRITICAL: Failed assertion:
> igt_ioctl((fd), ((((2U|1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) |
> (((0x2e)) << 0) | ((((sizeof(struct drm_prime_handle)))) <<
> ((0+8)+8)))), (&args)) == 0
> (panfrost_prime:1527) ioctl_wrappers-CRITICAL: Last errno: 95,
> Operation not supported
> (panfrost_prime:1527) ioctl_wrappers-CRITICAL: error: -1 != 0
> Stack trace:
> Subtest gem-prime-import failed.
> Subtest gem-prime-import: FAIL (0.004s)
> (but that looks expected?)

Yep, haven't gotten to investigate yet.

> Now the trickier ones, I guess we're either missing something, or my
> dirty 4.19 backport is very broken:

Damn, looks like the simple job we use to test submits doesn't work as-is 
on your GPU.

But things seem to work otherwise, so probably the kernel driver is fully 
functional with your changes.

Cheers,

Tomeu

> # /usr/libexec/igt-gpu-tools/panfrost_submit
> IGT-Version: 1.24-gd4d574a4 (arm) (Linux: 4.19.99 aarch64)
> Starting subtest: pan-submit
> (panfrost_submit:1643) CRITICAL: Test assertion failure function
> __real_main86, file ../igt-gpu-tools-9999/tests/panfrost_submit.c:103:
> (panfrost_submit:1643) CRITICAL: Failed assertion: syncobj_wait(fd,
> &submit->args->out_sync, 1, abs_timeout(SHORT_TIME_NSEC), 0, NULL)
> Stack trace:
> Subtest pan-submit failed.
> **** DEBUG ****
> (panfrost_submit:1643) CRITICAL: Test assertion failure function
> __real_main86, file ../igt-gpu-tools-9999/tests/panfrost_submit.c:103:
> (panfrost_submit:1643) CRITICAL: Failed assertion: syncobj_wait(fd,
> &submit->args->out_sync, 1, abs_timeout(SHORT_TIME_NSEC), 0, NULL)
> (panfrost_submit:1643) igt_core-INFO: Stack trace:
> ****  END  ****
> Subtest pan-submit: FAIL (0.119s)
> Starting subtest: pan-submit-error-no-jc
> Subtest pan-submit-error-no-jc: SUCCESS (0.000s)
> Starting subtest: pan-submit-error-bad-in-syncs
> Subtest pan-submit-error-bad-in-syncs: SUCCESS (0.012s)
> Starting subtest: pan-submit-error-bad-bo-handles
> Subtest pan-submit-error-bad-bo-handles: SUCCESS (0.012s)
> Starting subtest: pan-submit-error-bad-requirements
> Subtest pan-submit-error-bad-requirements: SUCCESS (0.012s)
> Starting subtest: pan-submit-error-bad-out-sync
> Subtest pan-submit-error-bad-out-sync: SUCCESS (0.012s)
> Starting subtest: pan-reset
> (panfrost_submit:1643) CRITICAL: Test assertion failure function
> __real_main86, file ../igt-gpu-tools-9999/tests/panfrost_submit.c:173:
> (panfrost_submit:1643) CRITICAL: Failed assertion: syncobj_wait(fd,
> &submit->args->out_sync, 1, abs_timeout(BAD_JOB_TIME_NSEC), 0, NULL)
> Stack trace:
> Subtest pan-reset failed.
> **** DEBUG ****
> (panfrost_submit:1643) CRITICAL: Test assertion failure function
> __real_main86, file ../igt-gpu-tools-9999/tests/panfrost_submit.c:173:
> (panfrost_submit:1643) CRITICAL: Failed assertion: syncobj_wait(fd,
> &submit->args->out_sync, 1, abs_timeout(BAD_JOB_TIME_NSEC), 0, NULL)
> (panfrost_submit:1643) igt_core-INFO: Stack trace:
> ****  END  ****
> Subtest pan-reset: FAIL (0.840s)
> 
> The pan-submit case causes an MMU fault:
> (full log: https://gist.github.com/drinkcat/1ae36cb1b1b71f30cc4fc29759612d76)
> 
> [ 1215.234937] [IGT] panfrost_submit: executing
> [ 1215.318446] [IGT] panfrost_submit: starting subtest pan-submit
> ...
> [ 1215.338644] panfrost 13040000.gpu: Unhandled Page fault in AS0 at
> VA 0x000000FF00000000
>                 Reason: TODO
>                 raw fault status: 0xA002C0
>                 decoded fault status: SLAVE FAULT
>                 exception type 0xC0: UNKNOWN
>                 access type 0x2: READ
>                 source id 0xA0
> [ 1215.444504] [IGT] panfrost_submit: exiting, ret=98
> ...
> [ 1215.446902] panfrost 13040000.gpu: js fault, js=0,
> status=JOB_BUS_FAULT, head=0x300b000, tail=0x300b000
> [ 1215.446935] panfrost 13040000.gpu: Unhandled Page fault in AS0 at
> VA 0x000000FF00000000
> Reason: TODO
> raw fault status: 0xA002C0
> decoded fault status: SLAVE FAULT
> exception type 0xC0: UNKNOWN
> access type 0x2: READ
> source id 0xA0
> 
> pan-reset failure looks similar:
> https://gist.github.com/drinkcat/2d336d57e6b95262d83e7a28a409bc5b
> 
> Thanks,
> 
>> Cheers,
>>
>> Tomeu
>>
>>> Thanks,
>>>
>>>> Regards,
>>>>
>>>> Tomeu
>>>>
>>>>> I believe at least patches 1, 2, and 3 can be merged. 4 and 5 are mostly
>>>>> useful in conjunction with 6 and 7 (which are not ready yet), so I'll let
>>>>> maintainers decide.
>>>>>
>>>>> Thanks!
>>>>>
>>>>> Nicolas Boichat (7):
>>>>>      dt-bindings: gpu: mali-bifrost: Add Mediatek MT8183
>>>>>      arm64: dts: mt8183: Add node for the Mali GPU
>>>>>      drm/panfrost: Improve error reporting in panfrost_gpu_power_on
>>>>>      drm/panfrost: Add support for multiple regulators
>>>>>      drm/panfrost: Add support for multiple power domains
>>>>>      RFC: drm/panfrost: Add mt8183-mali compatible string
>>>>>      RFC: drm/panfrost: devfreq: Add support for 2 regulators
>>>>>
>>>>>     .../bindings/gpu/arm,mali-bifrost.yaml        |  25 ++++
>>>>>     arch/arm64/boot/dts/mediatek/mt8183-evb.dts   |   7 +
>>>>>     arch/arm64/boot/dts/mediatek/mt8183.dtsi      | 105 +++++++++++++++
>>>>>     drivers/gpu/drm/panfrost/panfrost_devfreq.c   |  17 +++
>>>>>     drivers/gpu/drm/panfrost/panfrost_device.c    | 123 +++++++++++++++---
>>>>>     drivers/gpu/drm/panfrost/panfrost_device.h    |  27 +++-
>>>>>     drivers/gpu/drm/panfrost/panfrost_drv.c       |  41 ++++--
>>>>>     drivers/gpu/drm/panfrost/panfrost_gpu.c       |  11 +-
>>>>>     8 files changed, 326 insertions(+), 30 deletions(-)
>>>>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
