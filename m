Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3875713CAF9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 18:28:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7BYFmdZHhHVzWJ/mrQeqTCwe+w7wjwnXYanLPdb9rM0=; b=NcRS/4VJUpTpEjjL2jZov8b5s
	ut7pwgAc1DkbWqkBflD3wqawijXOWF8HOvZLniwIm0D526WTdD/JIdMcXKPEHekLuVBnfnJFgG2sz
	eFkV/k2zm1cH2QxFZclqVh3MHBY0XYA7mQxhV8damIx2VCie5IaF7cBEgb7JyLw+u4wKWcWjoNnui
	sYmLz3EqxDRAJc9Y4AsTffPuC2PvJVpNo/m/g0SRHOEBsyxM7OQraSxJrk/sUCh+WqKGItQl2e33f
	kH3D0mzKLjcr1tDyvJqFMqrXdF87VB8PDQEQCj/HTrnOnZBjW8VBlBIOOwhkFFBb3TyMMlfcRQIqj
	KtDVcgtJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irmT8-0006Sl-Dg; Wed, 15 Jan 2020 17:28:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irmSs-0006Io-CG
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 17:28:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0203B328;
 Wed, 15 Jan 2020 09:28:21 -0800 (PST)
Received: from [10.1.197.1] (ewhatever.cambridge.arm.com [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 362133F6C4;
 Wed, 15 Jan 2020 09:28:20 -0800 (PST)
Subject: Re: [stable] [PATCH 1/2] coresight: etb10: Do not call
 smp_processor_id from preemptible
To: Greg KH <gregkh@linuxfoundation.org>
References: <20200108110541.318672-1-suzuki.poulose@arm.com>
 <20200109143537.GE1706@sasha-vm>
 <a183da32-b933-6ed0-f8b8-703e27d3f15e@arm.com>
 <20200115151118.GC3740793@kroah.com>
 <d3cd59e0-8fa2-9e69-534f-15f13cb14897@arm.com>
 <20200115172126.GB4127163@kroah.com>
From: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Message-ID: <b8c38ac4-4b47-59b3-e0d4-22be3f6aca42@arm.com>
Date: Wed, 15 Jan 2020 17:28:19 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200115172126.GB4127163@kroah.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_092822_465231_FC5EC9FE 
X-CRM114-Status: GOOD (  18.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Sasha Levin <sashal@kernel.org>, mathieu.poirier@linaro.org,
 linux-arm-kernel@lists.infradead.org, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15/01/2020 17:21, Greg KH wrote:
> On Wed, Jan 15, 2020 at 04:44:29PM +0000, Suzuki Kuruppassery Poulose wrote:
>>
>> Hi Greg,
>>
>> On 15/01/2020 15:11, Greg KH wrote:
>>> On Thu, Jan 09, 2020 at 02:36:17PM +0000, Suzuki Kuruppassery Poulose wrote:
>>>> On 09/01/2020 14:35, Sasha Levin wrote:
>>>>> On Wed, Jan 08, 2020 at 11:05:40AM +0000, Suzuki K Poulose wrote:
>>>>>> [ Upstream commit 730766bae3280a25d40ea76a53dc6342e84e6513 ]
>>>>>>
>>>>>> During a perf session we try to allocate buffers on the "node" associated
>>>>>> with the CPU the event is bound to. If it is not bound to a CPU, we
>>>>>> use the current CPU node, using smp_processor_id(). However this is
>>>>>> unsafe
>>>>>> in a pre-emptible context and could generate the splats as below :
>>>>>>
>>>>>> BUG: using smp_processor_id() in preemptible [00000000] code: perf/2544
>>>>>>
>>>>>> Use NUMA_NO_NODE hint instead of using the current node for events
>>>>>> not bound to CPUs.
>>>>>>
>>>>>> Fixes: 2997aa4063d97fdb39 ("coresight: etb10: implementing AUX API")
>>>>>> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
>>>>>> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
>>>>>> Cc: stable <stable@vger.kernel.org> # v4.9 to v4.19
>>>>>> Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
>>>>>> Link: https://lore.kernel.org/r/20190620221237.3536-5-mathieu.poirier@linaro.org
>>>>>>
>>>>>
>>>>> I've queued this for 4.9-4.19. There was a simple conflict on 4.9 which
>>>>> also had to be resolved.
>>>>>
>>>>
>>>>
>>>> Thanks Sasha !
>>>
>>> Note, these had to all be dropped as they broke the build :(
>>>
>>> So can you please send us patches that at least build?  :)
>>>
>>
>> Do you have a build failure log ? I did build test it before sending it
>> over. I tried it again on 4.9, 4.14 and 4.19. I don't hit any build
>> failures here.
>>
>> Please could you share the log if you have it handy ?
> 
> It was in the stable -rc review emails, I don't have it handy, sorry.
> 

I think there is a bit of confusion here. If you're referring to

https://lkml.org/lkml/2020/1/11/634

as the build failure report, this is precisely my series fixes.
I sent this series to address the build break reported by Nathan.
The original patches were picked up from the "Fixes" tag automatically
which broke the build due to missing "event" parameter. This series
fixes those build issues and for sure builds fine for the affected
versions. Trust me ;-)

Cheers
Suzuki



> greg k-h
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
