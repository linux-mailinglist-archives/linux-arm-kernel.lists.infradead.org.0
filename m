Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BFC210521D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 13:16:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ws9Vu3W5upUmhoGZZ8dY2dcCU01lBsbgfwuwcTY5ink=; b=BqXNGd3ood4qVwjjJ7/0sWvVW
	8GXRKfbA6Cvaqcm9gg7sImEmIRTnM5XBZRT1ZfoRccynLhNodPalQT8/lM4IJsv2LKS5k70Pl4Gn0
	t7UsyGbD0nWJo1KJ33FfB6Xydq2g9wbmr3bn8XhWvTAAmWcYRd0mDEpatuXrrDGOgM5Ocmh5yfge+
	wpIOPJ1UW7YiNKhHgaqOI+i+zX0lCzTKMXcjrQ4e2cIVyVjAwMBrvXjtPBh7z5sb2TtpcxsTzn3Hn
	dfr9Dxkl0YAPKQlvniUkjCgMZFCZ9sUDCM+1BPPjlLyM9++Vks3TJXfRWxFblku1LiDBFbGbFa160
	cSEvsJ/UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXlNQ-0006QX-Nb; Thu, 21 Nov 2019 12:16:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXlNJ-0006Q6-89
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 12:15:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 14CC8328;
 Thu, 21 Nov 2019 04:15:50 -0800 (PST)
Received: from [10.162.42.107] (a075563-lin.blr.arm.com [10.162.42.107])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2C6993F703;
 Thu, 21 Nov 2019 04:15:45 -0800 (PST)
Subject: Re: [PATCH v2 00/14] arm64: return address signing
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
References: <1574166746-27197-1-git-send-email-amit.kachhap@arm.com>
 <CAKv+Gu85AMezxHpNhBOtnK3X6P32qhZ5LtvFOSpzo7ju4=wBAA@mail.gmail.com>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <225e4746-bc53-ff63-b360-264066f338e4@arm.com>
Date: Thu, 21 Nov 2019 17:45:43 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAKv+Gu85AMezxHpNhBOtnK3X6P32qhZ5LtvFOSpzo7ju4=wBAA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_041553_331059_B8D81FFB 
X-CRM114-Status: GOOD (  19.83  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ard,

On 11/20/19 9:35 PM, Ard Biesheuvel wrote:
> On Tue, 19 Nov 2019 at 13:33, Amit Daniel Kachhap <amit.kachhap@arm.com> wrote:
>>
>> Hi,
>>
>> This series improves function return address protection for the arm64 kernel, by
>> compiling the kernel with ARMv8.3 Pointer Authentication instructions (referred
>> ptrauth hereafter). This should help protect the kernel against attacks using
>> return-oriented programming.
>>
>> This series is based on v5.4-rc8.
>>
>> High-level changes since v1 [1] (detailed changes are listed in patches):
>>   - Dropped patch "arm64: cpufeature: handle conflicts based on capability"
>>     as pointed by Suzuki.
>>   - Patch 4, 10, 12 and 14 are added newly added.
>>   - Patch 12 adds support to block probe of authenticate ptrauth instructions.
>>   - Patch 14 adds support for lkdtm to test ptrauth.
>>   - In the last version if secondary cpus do have ptrauth and primary cpu do not
>>     then the secondary will silently disable ptrauth and keep running. This version
>>     creates panic in this case as suggested by Suzuki.
>>   - Many suggestion from James implemented.
>>
>> This series do not implement few things or have known limitations:
>>   - kdump tool may need some rework to work with ptrauth.
>>   - Generate/Get some randomness for ptrauth keys during kernel early booting.
>>
> 
> Hello Amit,
> 
> As we discussed off line, we still need some place to initialize the
> PAC keys for the boot CPU.
> 
> We should follow the same approach as boot_init_stack_canary() is
> currently taking: it is called from start_kernel(), never returns, and
> it is marked as __always_inline, which means it does not set up a
> stack frame and so its return address will not get signed with the
> wrong key.
> 
> Something like the below should be acceptable for a generic header
> file, and we can wire up kernel PAC in the arm64 version of the
> stackprotector.h header whichever way we like.
> 

This seems to be a practical approach. I tested in my local system and
it works fine. For few functions before boot_init_stack_canary, it can 
afford to run without keys as randomization driver is not initialised. 
Thanks for the pointer.

Regards,
Amit Daniel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
