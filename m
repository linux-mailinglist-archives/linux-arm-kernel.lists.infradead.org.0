Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AED7A5500
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 13:33:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qr9WRZq7F3qv5tciek6eMYC2g1pM67Xh3eb+8nxHxK8=; b=AXRrSwywx82VA0
	rd2bCwEJmnXWJK52/zB4MEz3/mc7svNQJPc+Lc7uANvIxhaZknTS7y8NnPATjHZWaTIZz1ffET/ae
	mjteo8wI2IDrxtjUUQ/hDUx9yCXjVuNRLW3V52yHa1Rv6xBwI55/i9JA0WCzqhH3UdWFsucUEkSpx
	n54P9teHtlm6Lomzr2Um3vZA87lO1C4YpqvZi+Sz5t0Qt9L0pKZ5klfoRQVvmdIWnOmMe5w246JXR
	dOWOxETESWW974aoF6aCUeWGx5QKGZrKEKWnxFuG+BVDhnKhWwFI66NE+c1rqbQMiWKHU82X+aDq6
	GblLBLIRuv5Ke9JCrFqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4kaX-0008Us-U7; Mon, 02 Sep 2019 11:33:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i4kXc-00060H-V1
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 11:30:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B213528;
 Mon,  2 Sep 2019 04:30:36 -0700 (PDT)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0AAD73F246;
 Mon,  2 Sep 2019 04:30:35 -0700 (PDT)
Subject: Re: [PATCH v3 00/11] Add arm64/signal initial kselftest support
To: Dave Martin <Dave.Martin@arm.com>
References: <20190802170300.20662-1-cristian.marussi@arm.com>
 <20190813162254.GX10425@arm.com>
 <b4c9cb22-6e08-8096-addb-4ac267fc0a84@arm.com>
 <20190902105322.GL27757@arm.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <f28756a5-a763-7103-6d3e-70305dcbdbbd@arm.com>
Date: Mon, 2 Sep 2019 12:30:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190902105322.GL27757@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_043037_113719_FF4A1AF5 
X-CRM114-Status: GOOD (  17.61  )
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
Cc: andreyknvl@google.com, shuah@kernel.org, linux-kselftest@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi

On 02/09/2019 11:53, Dave Martin wrote:
> On Fri, Aug 30, 2019 at 05:40:42PM +0100, Cristian Marussi wrote:
>> Hi
>>
>> On 13/08/2019 17:22, Dave Martin wrote:
>>> On Fri, Aug 02, 2019 at 06:02:49PM +0100, Cristian Marussi wrote:
>>>> Hi
>>>>
>>>> this patchset aims to add the initial arch-specific arm64 support to
>>>> kselftest starting with signals-related test-cases.
>>>> A common internal test-case layout is proposed which then it is anyway
>>>> wired-up to the toplevel kselftest Makefile, so that it should be possible
>>>> at the end to run it on an arm64 target in the usual way with KSFT.
>>>
>>> The tests look like a reasonable base overall and something that we can
>>> extend later as needed.
>>>
>>> There are various minor things that need attention -- see my comments on
>>> the individual patches.  Apart for some things that can be factored out,
>>> I don't think any of it involves redesign.
>>>
>>>
>>> A few general comments:
>>>
>>>  * Please wrap all commit messages to <= 75 chars, and follow the other
>>>    guidelines about commit messages in
>>>    Documentation/process/submitting-patches.rst).
>>>
>>>  * Remember to run scripts/checkpatch.pl on your patches.  Currently
>>>    various issues are reported: they should mostly be trivial to fix.
>>>    checkpatch does report some false positives, but most of the warnings
>>>    I see look relevant.
>>>
>>
>> Thanks for the review. I addressed latest issues in V4, published now.
>>
>> I kept tests verbose (outputting to stderr) as of now.
>> Removed as a whole standalone build/run.
> 
> The responses look reasonable, thanks for repost.
> 
> I'll take a look.
> 
Ok Thanks...but...

I'm re-posting now a further V5 which is also rebased on arm64/for-next/core and so deals
with the conflicts against queued commit:

https://lore.kernel.org/linux-arm-kernel/c1e6aad230658bc175b42d92daeff2e30050302a.1563904656.git.andreyknvl@google.com/
Subject: [PATCH v19 15/15] selftests, arm64: add a selftest for passing tagged pointers to kernel

Differences from v4 are limited to 01/02 and reported in changelog.

Thanks

Cristian

> [...]
> 
> Cheers
> ---Dave
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
