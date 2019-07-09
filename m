Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A21063419
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 12:18:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8n4cm6de7DooD5ZPQHiqETYsjiYWfPvsCj3tcPO8hWA=; b=bmVzfCsSCrdJbg
	92LQW4boEWEsQWec4QxGMDBG4RrGomeCw7agFid32AE4ovcNzNSs/8Cwz+8mTwiF+zVDBkqOljiuN
	lneF23MCGJc8EA0XwAWL5nkDGbPF6DVAZgx1ObR4awKi5okRRcuKXDM3koh5anT24oNCrlTaBvKaf
	f8Fa3ztG4STUHZ5iaJqhnLkxSh1BG9iKHNo8f7FeuXEBT6lpzOW/AVXykkNBLgF8HHrD+aucCSY90
	IOSwQSW9Rr9alv/TJNwQeEO+GND1Md3PDqEMyGY0eUm1W+EE1NVn10WKh/FIg1ZQWUR2gRaFJlrlJ
	Dg0Ru79YnMfes1AzCS4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hknCU-00038T-Tn; Tue, 09 Jul 2019 10:18:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hknCJ-00036b-R5; Tue, 09 Jul 2019 10:18:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0F96B2B;
 Tue,  9 Jul 2019 03:18:05 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AB2AC3F738;
 Tue,  9 Jul 2019 03:18:02 -0700 (PDT)
Subject: Re: [v1 0/5] allow to reserve memory for normal kexec kernel
To: Pavel Tatashin <pasha.tatashin@soleen.com>
References: <20190708211528.12392-1-pasha.tatashin@soleen.com>
 <87sgrgjd6i.fsf@xmission.com>
 <CA+CK2bAOPkN=qEdE38R0FRnrzRK0EqLid7eUVnTj1acmaFHY_w@mail.gmail.com>
From: James Morse <james.morse@arm.com>
Message-ID: <9a61d38a-66cb-132c-de07-ee65d5a238c0@arm.com>
Date: Tue, 9 Jul 2019 11:18:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CA+CK2bAOPkN=qEdE38R0FRnrzRK0EqLid7eUVnTj1acmaFHY_w@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_031808_252051_6F1F8296 
X-CRM114-Status: GOOD (  22.46  )
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
Cc: Sasha Levin <sashal@kernel.org>, corbet@lwn.net,
 Catalin Marinas <catalin.marinas@arm.com>, linux-doc@vger.kernel.org,
 kexec@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>,
 James Morris <jmorris@namei.org>, "Eric W. Biederman" <ebiederm@xmission.com>,
 will@kernel.org, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pavel, Eric,

(Subject-Nit: 'arm64:' is needed to match the style for arm64's arch code. Without it the
maintainer is likely to skip the patches as being for core code.)

On 09/07/2019 01:09, Pavel Tatashin wrote:
>> Something is very very wrong there.
>>
>> Last I measured memory bandwidth seriously I could touch a Gigabyte per
>> second easily, and that was nearly 20 years ago.  Did you manage to
>> disable caching or have some particularly slow code that does the
>> reolocations.
>>
>> There is a serious cost to reserving memory in that it is simply not
>> available at other times.  For kexec on panic there is no other reliable
>> way to get memory that won't be DMA'd to.

> Indeed, but sometimes fast reboot is more important than the cost of
> reserving 32M-64M of memory.

>> We have options in this case and I would strongly encourage you to track
>> down why that copy in relocation is so very slow.  I suspect a 4KiB page
>> size is large enough that it can swamp pointer following costs.
>>
>> My back of the napkin math says even 20 years ago your copying costs
>> should be only 0.037s.  The only machine I have ever tested on where
>> the copy costs were noticable was my old 386.

>> Maybe I am out to lunch here but a claim that your memory only runs
>> at 100MiB/s (the speed of my spinning rust hard drive) is rather
>> incredible.

> I agree,  my measurement on this machine was 2,857MB/s. Perhaps when
> MMU is disabled ARM64 also has caching disabled? The function that
> loops through array of pages and relocates them to final destination
> is this:

> A comment before calling it:
> 
> 205   /*
> 206   * cpu_soft_restart will shutdown the MMU, disable data caches, then
> 207   * transfer control to the reboot_code_buffer which contains a copy of
> 208   * the arm64_relocate_new_kernel routine.  arm64_relocate_new_kernel
> 209   * uses physical addressing to relocate the new image to its final
> 210   * position and transfers control to the image entry point when the
> 211   * relocation is complete.
> 212   * In kexec case, kimage->start points to purgatory assuming that
> 213   * kernel entry and dtb address are embedded in purgatory by
> 214   * userspace (kexec-tools).
> 215   * In kexec_file case, the kernel starts directly without purgatory.
> 216   */

> So, as I understand at least data caches are disabled, and MMU is
> disabled, perhaps this is why this function is so incredibly slow?

Yup, spot on.

Kexec typically wants to place the new kernel over the top of the old one, so its
guaranteed to overwrite the live swapper_pg_dir.
There is also nothing to prevent the other parts of the page-tables being overwritten as
we relocate the kernel. The way the the kexec series chose to make this safe was the
simplest: turn the MMU off. We need to enter purgatory with the MMU off anyway.

(Its worth checking your kexec-tools purgatory isn't spending a decade generating a SHA256
of the kernel while the MMU is off. This is pointless as we don't suspect the previous
kernel of corrupting memory, and we can't debug/report the problem if we detect a
different SHA256. Newer kexec-tools have some commandline option to turn this thing off.)


> Perhaps, there is a better way to fix this problem by keeping caches
> enabled while still relocating? Any suggestions from Aarch64
> developers?

Turning the MMU off is the simplest. The alternative is a lot more complicated:

(To get the benefit of the caches, we need the MMU enabled to tell the hardware what the
cache-ability attributes of each page of memory are.)

We'd need to copy the page tables to build a new set out of memory we know won't get
overwritten. Switching to this 'safe set' is tricky, as it also maps the code we're
executing. To do that we'd need to use TTBR0 to hold another 'safe mapping' of the code
we're running, while we change our view of the linear-map.

Hibernate does exactly this, so its possible to re-use some of that logic. From memory, I
think the reason that didn't get done is kexec doesn't provide an allocator, and needs the
MMU off at some point anyway.


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
