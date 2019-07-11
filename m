Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6455E652E7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 10:12:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6KYbVa1+vEwgwpHazE8LKobr5vQPUW0GgxhOClkpAmU=; b=e4paHHloltCSTB
	/27TqarBUxkMIl6zZJjt7bXcS2HBOqH6KUAp1uq4aFLIvTMCvItyOHffQmlO/NTquE60iRCGa0otU
	W5wrt1Y4LajSbgOXScGpKCZdtwPd0nN4jJisccnZnz9MorlCOhx3exp/Kufa4ezX6fVu0V3MMRuT6
	7oFLtUx2+CU3LZxLxKVBr5pi+wPTc8b4sx8Fw6fYTal+6iWI2iP1k9w01j9f2hs6KjLMh9bb5DUT7
	p+67uMFYrjjU1dnMwdD3ATvEnPIci7VDFwcULmvSE8nhFFlp17Ti63LPgqqGenoJZ/0XCUHU4+UM/
	NdAviIttis5h9xXKUE+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlUBt-0004py-UX; Thu, 11 Jul 2019 08:12:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hlUBY-0004nm-3y; Thu, 11 Jul 2019 08:12:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4D5992B;
 Thu, 11 Jul 2019 01:12:08 -0700 (PDT)
Received: from [10.1.25.146] (e111740.arm.com [10.1.25.146])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A25713F59C;
 Thu, 11 Jul 2019 01:12:06 -0700 (PDT)
Subject: Re: [v1 0/5] allow to reserve memory for normal kexec kernel
To: Pavel Tatashin <pasha.tatashin@soleen.com>,
 James Morse <james.morse@arm.com>
References: <20190708211528.12392-1-pasha.tatashin@soleen.com>
 <CACi5LpNGWhTnXyM8gB0Tn=682+08s-ppfDpX2SawfxMvue1GTQ@mail.gmail.com>
 <CA+CK2bBrwBHhD-PFO_gVnDYoFi0Su6t456WNdtBWpOe4qM+oww@mail.gmail.com>
 <2d60f302-5161-638a-76cd-d7d79e5631fe@arm.com>
 <CA+CK2bA40wQvX=KieE5Qg2Ny5ZyiDAAjAb9W7Phu2Ou_9r6bOA@mail.gmail.com>
 <f9bea5bd-370a-47b5-8ad1-a30bd43d6cca@arm.com>
 <CA+CK2bBWis8TgyOmDhVgLYrOU95Za-UhSGSB3ufsjiNDt-Zd_w@mail.gmail.com>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <93f99d54-9fe4-a191-4877-080ad78322bb@arm.com>
Date: Thu, 11 Jul 2019 09:12:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CA+CK2bBWis8TgyOmDhVgLYrOU95Za-UhSGSB3ufsjiNDt-Zd_w@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_011212_215886_A9490788 
X-CRM114-Status: GOOD (  16.19  )
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
Cc: Sasha Levin <sashal@kernel.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, Jonathan Corbet <corbet@lwn.net>,
 kexec mailing list <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 James Morris <jmorris@namei.org>, Eric Biederman <ebiederm@xmission.com>,
 will@kernel.org, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 7/10/19 4:56 PM, Pavel Tatashin wrote:
> On Wed, Jul 10, 2019 at 11:19 AM James Morse <james.morse@arm.com> wrote:
>>
>> Hi Pasha,
>>
>> On 09/07/2019 14:07, Pavel Tatashin wrote:
>>>>> Enabling MMU and D-Cache for relocation  would essentially require the
>>>>> same changes in kernel. Could you please share exactly why these were
>>>>> not accepted upstream into kexec-tools?
>>>>
>>>> Because '--no-checks' is a much simpler alternative.
>>>>
>>>> More of the discussion:
>>>> https://lore.kernel.org/linux-arm-kernel/5599813d-f83c-d154-287a-c131c48292ca@arm.com/
>>>>
>>>> While you can make purgatory a fully-fledged operating system, it doesn't really need to
>>>> do anything on arm64. Errata-workarounds alone are a reason not do start down this path.
>>>
>>> Thank you James. I will summaries the information gathered from the
>>> yesterday's/today's discussion and add it to the cover letter together
>>> with ARM64 tag. I think, the patch series makes sense for ARM64 only,
>>> unless there are other platforms that disable caching/MMU during
>>> relocation.
>>
>> I'd prefer not to reserve additional memory for regular kexec just to avoid the relocation.
>> If the kernel's relocation work is so painful we can investigate doing it while the MMU is
>> enabled. If you can compare regular-kexec with kexec_file_load() you eliminate the
>> purgatory part of the work.
> 
> Relocation time is exactly the same for regular-kexec and
> kexec_file_load(). So, the relocation is indeed painful for our case.
> I am working on adding MMU enabled kernel relocation.

Out of curiosity, does enabling only I-cache make a difference? IIRC, it doesn't
require setting MMU, in contrast to D-cache.

Cheers
Vladimir

> 
> Pasha
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
