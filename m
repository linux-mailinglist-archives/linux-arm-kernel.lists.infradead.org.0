Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C68AC4ECE1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 18:16:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hqsiJeiclXn+TwkT2ScEwBjp5e7YGiiA+dhgUk2rG70=; b=HtALEySqxAE5SZje/rpkXh/Sz
	9+6NcX2s64EErqBdviPcPip0uvKgZekPGupvMfJcvr8hVYttrofFkhWz22+nVGC4CIPv/FOlgcWyC
	OWqMomOZlnwjadNTglhyEzNcpR0GAVCNkEH/sAEp0nZqd7/iGAcfmiZ5+oGtnqb9q1zBOo2szyNy4
	MDgudhLpE2DT7U51j5xYU0pxdwKBsHU9HAMaWmi0457hdavn09lU4aRUPO1Cut7S7uWAbl2brg3r/
	5Ikuo4Tb/sdIhfgkOZ1GJqKM3o7qm39CGF1DL0BcWTDoLAjt/XPFPArYHWt4TtW/uK3mFYedBKZb+
	cwoHwCxLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heMDZ-0005xY-1G; Fri, 21 Jun 2019 16:16:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heMDH-0005x5-JB
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 16:16:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AD554344;
 Fri, 21 Jun 2019 09:16:30 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A0DCA3F575;
 Fri, 21 Jun 2019 09:16:29 -0700 (PDT)
Subject: Re: Coresight causes synchronous external abort on msm8916
To: stephan@gerhold.net, mathieu.poirier@linaro.org, Sudeep.Holla@arm.com
References: <20190618202623.GA53651@gerhold.net>
 <a51f117f-c48d-d3f4-c3d1-9b584e3a055f@arm.com>
 <20190619183904.GB937@gerhold.net>
 <CANLsYkxaX2=Bp_BWWUFimC-UmP3L5g=CU7tqjd+xoFVcWG38tA@mail.gmail.com>
 <20190621160631.GA34922@gerhold.net>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <14bd9196-538f-f641-59e1-0c04960890aa@arm.com>
Date: Fri, 21 Jun 2019 17:16:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190621160631.GA34922@gerhold.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_091631_738237_CA898629 
X-CRM114-Status: GOOD (  43.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: david.brown@linaro.org, saiprakash.ranjan@codeaurora.org, agross@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stephan

On 21/06/2019 17:06, Stephan Gerhold wrote:
> Hi all,
> 
> Thanks for all your replies!
> 
> On Wed, Jun 19, 2019 at 02:16:38PM -0600, Mathieu Poirier wrote:
>> On Wed, 19 Jun 2019 at 12:39, Stephan Gerhold <stephan@gerhold.net> wrote:
>>>
>>> Hi,
>>>
>>> On Wed, Jun 19, 2019 at 09:49:03AM +0100, Suzuki K Poulose wrote:
>>>> Hi Stephan,
>>>>
>>>> On 18/06/2019 21:26, Stephan Gerhold wrote:
>>>>> Hi,
>>>>>
>>>>> I'm trying to run mainline Linux on a smartphone with MSM8916 SoC.
>>>>> It works surprisingly well, but the coresight devices seem to cause the
>>>>> following crash shortly after userspace starts:
>>>>>
>>>>>       Internal error: synchronous external abort: 96000010 [#1] PREEMPT SMP
>>>>
>>>> ...
>>>>
>>>>
>>>>>
>>>>> In this case I'm using a simple device tree similar to apq8016-sbc,
>>>>> but it also happens using something as simple as msm8916-mtp.dts
>>>>> on this particular device.
>>>>>     (Attached: dmesg log with msm8916-mtp.dts and arm64 defconfig)
>>>>>
>>>>> I can avoid the crash and boot without any further problems by disabling
>>>>> every coresight device defined in msm8916.dtsi, e.g.:
>>>>>
>>>>>      tpiu@820000 { status = "disabled"; };
>>>>
>>>> ...
>>>>
>>>>>
>>>>> I don't have any use for coresight at the moment,
>>>>> but it seems somewhat odd to put this in the device specific dts.
>>>>>
>>>>> Any idea what could be causing this crash?
>>>>
>>>> This is mostly due to the missing power domain support. The CoreSight
>>>> components are usually in a debug power domain. So unless that is turned on,
>>>> (either by specifying proper power domain ids for power management protocol
>>>> supported by the firmware OR via other hacks - e.g, connecting a DS-5 to
>>>> keep the debug power domain turned on , this works on Juno -).
>>>
>>> Interesting, thanks a lot!
>>>
>>> In this case I'm wondering how it works on the Dragonboard 410c.
>>
>> There can be two problems:
>>
>> 1) CPUidle is enabled on your platform and as I pointed out before,
>> that won't work.  There are patches circulating[1] to fix that problem
>> but it still needs a little bit of work.
> 
> I tried disabling cpuidle (see [1]), but unfortunately it did not help.
> 
> [1]: https://lore.kernel.org/linux-arm-msm/20190619173743.GA937@gerhold.net/
> 
>>
>> 2) As Suzuki pointed out the debug power domain may not be enabled by
>> default on your platform, something I would understand if it is a
>> production device.  There is nothing I can do on that front.
> 
> Indeed, this is a production device.
> The downstream (production) kernel does not seem to have coresight
> enabled, so it is very well possible that the debug power domain is not
> enabled by the firmware.
> 
>>
>> [1]. https://www.spinics.net/lists/arm-kernel/msg735707.html
>>
>>> Does it enable these power domains in the firmware?
>>>    (Assuming it boots without this error...)
>>
>> The debug power domain is enabled by default on the 410c and the board
>> boots without error.
> 
> Good to know, thank you!
> 
>>
>>>
>>> If coresight is not working properly on all/most msm8916 devices,
>>> shouldn't coresight be disabled by default in msm8916.dtsi?
>>
>> It is in the defconfig for arm64, as such it shouldn't bother you.
> 
> Indeed, I already have CONFIG_CORESIGHT disabled.
> At the moment, I'm using arm64 defconfig as-is, with no modifications.
> 
> So the error happens in the AMBA bus code even when CONFIG_CORESIGHT is
> disabled, as Suzuki suspected [2].
> 
> [2]: https://lore.kernel.org/linux-arm-msm/6bb74dcc-62e4-5310-5884-9c4b82ce5be9@arm.com/
> 
>>
>>> At least until those power domains can be set up by the kernel.
>>>
>>> If this is a device-specific issue, what would be an acceptable solution
>>> for mainline?
>>> Can I turn on these power domains from the kernel?
>>
>> Yes, if you have the SoC's TRM.
> 
> I guess "TRM" refers to Technical Reference Manual?
> Unfortunately, I don't have access to any documentation that is not
> publicly available on the Internet.
> 
>>
>>> Or is it fine to disable coresight for this device with the snippet above?
>>>
>>> I'm not actually trying to use coresight, I just want the device to boot :)
>>> And since I am considering submitting my device tree for inclusion in
>>> mainline, I want to ask in advance how I should tackle this problem.
>>
>> Simply don't enable coresight in the kernel config if the code isn't
>> mature enough to properly handle the relevant power domains using the
>> PM runtime API.
> 
> The error occurs without CONFIG_CORESIGHT, and I believe there is no
> way to disable CONFIG_AMBA (it is selected by CONFIG_ARM64 and included
> in arm64 defconfig).
> 
> So, assuming it is the debug power domain, I believe I can make the
> device boot successfully by either:
> 
>   (a) Turning on the debug power domain:
>       It seems like the kernel cannot do this on msm8916 at the moment(?)
>       (msm8916.dtsi does not declare any power domain in the coresight
>        device tree nodes)
> 
>       I cannot modify the firmware of this device,
>       so I'm afraid I have absolutely no idea how to turn it on. :/
> 
>   (b) Preventing the crash:
>       Is there some way to:
> 
>        (1) Add a check in the AMBA bus code to verify if the power
>            domain is actually turned on?

No, there isn't, unless the DT tells you that device is disabled, just like
your patch does.

>       or
>        (2) Recover from the "synchronous external abort" and continue
>            booting after printing an error/warning?
>            (At the moment, userspace seems to continue for a while,
>             but stops working at some point after the error...)

Unfortunately, no. There is no way to do that from the kernel.

> 
>       Otherwise, there is still the option to prevent the AMBA bus code
>       from running by disabling the affected device tree nodes.
>       That's what the debug@850000 { status = "disabled"; }; ... snippet
>       from my first mail [3] does, and it is the only way to make the
>       kernel boot successfully at the moment.

For your board, I would say, this is the best option and the reasonable
solution.

> 
>       It wouldn't affect any other device if placed in the DTS for my
>       device (i.e. *not* in the shared msm8916.dtsi).

Ultimately, the device tree is based on the assumption that you are running with
a firmware that supports the power domain and thus is fine for upstream. If
someone is using a firmware that doesn't support this, it is better to disable
the nodes, just like you did.

Personally I would leave the upstream DTS as it is and expect the user to
fixup his DTS for the firmware.

Kind regards
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
