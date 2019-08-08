Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18231862FF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 15:22:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FhP42KkeWCVzM7rW49zBnSxpJb8tPjUs764sqcOeM8g=; b=OvYqDnye+JaR+lQDxNyiSyU+E
	r7zpXcJW2n5kZlyfxLOgqPaN22rjujxa3WEY9pA4yz5pB/hFZno8XOSeHZmbfj6+RyUk0BM5obj/E
	u6DLTTvU0iK4WGrF9la62J3CxtellH1tljGAQ/LzB74/q+BbT0UmsV25AtvfJ1gCcaMXaldF07ItP
	s6wKeuSWEn4HDs/lf3AhE1ySTwkjoU8gFHX3YBKbmftqLyNqBdvUcNFl6qA//HFRTS4Co9xTydFQ5
	To41fnLAvIagV/DNXDhvKZZiI/t9LIMvB6uvgYr2XTrOMxmNEYR0MwiEv0yFNNMCKeeIPbwrusUa2
	+FP7sWw7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hviMk-0006rm-5p; Thu, 08 Aug 2019 13:22:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hviMV-0006rD-2d
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 13:21:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6503815A2;
 Thu,  8 Aug 2019 06:21:44 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CE0A43F694;
 Thu,  8 Aug 2019 06:21:43 -0700 (PDT)
Subject: Re: [PATCH] arm64: Clarify when cpu_enable() is called
To: broonie@kernel.org
References: <20190806170043.35588-1-broonie@kernel.org>
 <20190807160107.fpanxo4iimhg743c@willie-the-truck>
 <20190807165143.GI4048@sirena.co.uk>
 <0508fc5a-ab61-f507-507f-3002e49f2d27@arm.com>
 <20190808121956.GA3795@sirena.co.uk>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <4975be8c-09ca-9acc-06ea-87e831f7fd79@arm.com>
Date: Thu, 8 Aug 2019 14:21:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190808121956.GA3795@sirena.co.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_062151_661650_13CB27E3 
X-CRM114-Status: GOOD (  21.73  )
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
Cc: catalin.marinas@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 08/08/2019 13:19, Mark Brown wrote:
> On Thu, Aug 08, 2019 at 12:05:02PM +0100, Suzuki K Poulose wrote:
>> On 07/08/2019 17:51, Mark Brown wrote:
>>> On Wed, Aug 07, 2019 at 05:01:08PM +0100, Will Deacon wrote:
>>>> On Tue, Aug 06, 2019 at 06:00:43PM +0100, Mark Brown wrote:
> 
>>> I guess you're thinking of the ARM64_CPUCAP_SYSTEM_FEATURE case where we
>>> match the feature on all CPUs so we could see the feature on some CPUs
>>> but not detect it as we're requiring a match on all?
> 
>> We don't run the "match" check (i.e, detect) on all CPUs for SYSTEM scoped
>> features. Instead, we use sanitised feature set to detect the system features.
> 
> Right, but the sanitised feature set involves merging the capabilities
> of all the CPUs.
> 
>>> 	If this is called for any CPU in the system then it will be
>>> 	called for all of them.
> 
>>> might cover it?
> 
>> 	* current CPU. If this capability is detected by the kernel, this will
>> 	* called on all the CPUs in the system, including the hotplugged
>> 	* CPUs.
>> 	*/
> 
> How about adding ", regardless of if the capability was detected on that
> specific CPU" at the end?  The above is *accurate* but it's still easy to
> insert an "on that CPU" in there when reading especially with the
> awkward phrasing.  Or possibly just drop the first comma.  The reason I
> said "If this is called" rather than "if this is detected" is to make it
> as clear as possible that the calls don't depend on detection without
> being overly verbose.
> 
> 	 If this capability is detected by the kernel
> 	 this will called on all the CPUs in the system, including
> 	 the hotplugged CPUs, regardless of if the capability was
> 	 detected on that specific CPU.

I think the only issue with this, as also with the original statement, is that
you are overloading "detected" for the "specific CPU" case.  In the first use, 
the "detect" is dependent on the SCOPE of the capability and in the latter one
is strictly "LOCAL" scope. If you replace the second "detected" with say, "not
available" or even "not matched", it makes it less confusing.

How about:

  	If the capability is detected by the kernel this will be called on all
	the CPUs in the system, including the hotplugged CPUs, regardless of if
	the capability was *available* on that specific CPU. This is useful for
	some capabilities (e.g, working around CPU errata), where all the CPUs
	must take some action (e.g, changing system control/configuration).
	Thus, if an action is required only if the CPU has the capability, then
	the routine must check it before taking any action.

Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
