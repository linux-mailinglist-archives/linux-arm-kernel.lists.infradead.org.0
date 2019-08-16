Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09BB190442
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 16:56:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4F1Azbq7QFIZXfTW9BgKxGn2L0ll0szxDQmDASwnWAA=; b=GWucuzJnHCdbWVSiopz9gM3Ca
	ZXD2c+P6yrq9VDr36oO+Wbcy6inCf9/bFnQNtsLrRkt/F2zi88t+qOVSA1K0rYxdjM5/tv6YZSbyM
	EBqPutm/4UPWXttrfJoZJFEFk1E4k8o0IB8AOtz6ATLx9ndiJEY/nwnnG1Rxvuh+Q7LrNz1RtAzL0
	gdtuatAJXbliab5PXU4JlzG/RiRcVKlhV9lolHfqrozgf3E9SBiua63C2pZz7ve9gms+7/uFe+/cO
	yoT/IIrXM7NmbCCfD1RGEY2RmhZDIIHvRTfBNZylx5V63Y8U/8cyOy2uHMtZC8ALzCTKSGoxEO3QJ
	7mbGexK1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyde3-00056v-Cq; Fri, 16 Aug 2019 14:55:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hydds-00056U-It
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 14:55:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 10321344;
 Fri, 16 Aug 2019 07:55:44 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id ACB7B3F694;
 Fri, 16 Aug 2019 07:55:42 -0700 (PDT)
Subject: Re: [PATCH] arm64: do_csum: implement accelerated scalar version
To: Shaokun Zhang <zhangshaokun@hisilicon.com>,
 Will Deacon <will.deacon@arm.com>
References: <20190218230842.11448-1-ard.biesheuvel@linaro.org>
 <d7a16ebd-073f-f50e-9651-68606d10b01c@hisilicon.com>
 <20190412095243.GA27193@fuggles.cambridge.arm.com>
 <41b30c72-c1c5-14b2-b2e1-3507d552830d@arm.com>
 <20190515094704.GC24357@fuggles.cambridge.arm.com>
 <440eb674-0e59-a97e-4a90-0026e2327069@hisilicon.com>
 <20190815164609.GI2015@fuggles.cambridge.arm.com>
 <37fbc2a3-069d-9f75-f3d0-3eda2efa5c9b@hisilicon.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <c14781ce-0fa5-bfc1-c019-bcfc07c42cc9@arm.com>
Date: Fri, 16 Aug 2019 15:55:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <37fbc2a3-069d-9f75-f3d0-3eda2efa5c9b@hisilicon.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_075548_669140_01A2987F 
X-CRM114-Status: GOOD (  17.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>, steve.capper@arm.com,
 netdev@vger.kernel.org, ilias.apalodimas@linaro.org,
 "huanglingyan \(A\)" <huanglingyan2@huawei.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16/08/2019 09:15, Shaokun Zhang wrote:
> Hi Will,
> 
> On 2019/8/16 0:46, Will Deacon wrote:
>> On Thu, May 16, 2019 at 11:14:35AM +0800, Zhangshaokun wrote:
>>> On 2019/5/15 17:47, Will Deacon wrote:
>>>> On Mon, Apr 15, 2019 at 07:18:22PM +0100, Robin Murphy wrote:
>>>>> On 12/04/2019 10:52, Will Deacon wrote:
>>>>>> I'm waiting for Robin to come back with numbers for a C implementation.
>>>>>>
>>>>>> Robin -- did you get anywhere with that?
>>>>>
>>>>> Still not what I would call finished, but where I've got so far (besides an
>>>>> increasingly elaborate test rig) is as below - it still wants some unrolling
>>>>> in the middle to really fly (and actual testing on BE), but the worst-case
>>>>> performance already equals or just beats this asm version on Cortex-A53 with
>>>>> GCC 7 (by virtue of being alignment-insensitive and branchless except for
>>>>> the loop). Unfortunately, the advantage of C code being instrumentable does
>>>>> also come around to bite me...
>>>>
>>>> Is there any interest from anybody in spinning a proper patch out of this?
>>>> Shaokun?
>>>
>>> HiSilicon's Kunpeng920(Hi1620) benefits from do_csum optimization, if Ard and
>>> Robin are ok, Lingyan or I can try to do it.
>>> Of course, if any guy posts the patch, we are happy to test it.
>>> Any will be ok.
>>
>> I don't mind who posts it, but Robin is super busy with SMMU stuff at the
>> moment so it probably makes more sense for you or Lingyan to do it.
> 
> Thanks for restarting this topic, I or Lingyan will do it soon.

FWIW, I've rolled up what I had so far and dumped it up into a quick 
semi-realistic patch here:

http://linux-arm.org/git?p=linux-rm.git;a=commitdiff;h=859c5566510c32ae72039aa5072e932a771a3596

So far I'd put most of the effort into the aforementioned benchmarking 
harness to compare performance and correctness for all the proposed 
implementations over all reasonable alignment/length combinations - I 
think that got pretty much finished, but as Will says I'm unlikely to 
find time to properly look at this again for several weeks.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
