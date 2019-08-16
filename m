Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 337809079A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 20:18:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tME80DckOuofxXBolTyykiKKjGLgGi5QbQCVLy5RLbI=; b=P9WDwNM///AcGk
	Dl/R6YfgXn7a3ELH79d7bcUjb0RmRc6Em2X5yr734SRnhkHX+rUZbSBXjeQ+ipDtT0VIwTFqHmIC5
	J+dA7RHSUXk2GLgMLMTbpMvMKgGvX5K4OmZ8aZPINgCI/W79yfkHpOwkCgGL4IYJ55SE+7eVLduLK
	mg6Po5l4fIaoC0mXfqI7KYIjgh4IPG+7xpFetduneGoK4DoogLfnm5raEw8kkzxzuPNFdEkNkEmlL
	490P417TatdaaQqlIkB2/mqW5vQzfSzr7daUc6wYMGywvSOD/xvcBiZnxvr7naQbWWkMJvYYC69cd
	lY0XJBo+NYsqbHJyz5Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hygnb-0007zU-Qr; Fri, 16 Aug 2019 18:18:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hygn1-0007uq-JN; Fri, 16 Aug 2019 18:17:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D6F5B28;
 Fri, 16 Aug 2019 11:17:23 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0F0C23F706;
 Fri, 16 Aug 2019 11:17:21 -0700 (PDT)
Subject: Re: [PATCH v1 0/8] arm64: MMU enabled kexec relocation
To: Pavel Tatashin <pasha.tatashin@soleen.com>
References: <20190801152439.11363-1-pasha.tatashin@soleen.com>
 <CA+CK2bADiBMEx9cJuXT5fQkBYFZAtxUtc7ZzjrNfEjijPZkPtw@mail.gmail.com>
 <ba8a2519-ed95-2518-d0e8-66e8e0c14ff5@arm.com>
 <CA+CK2bAqBi43Cchr=md7EPRuEWH-iuToK0PxN3ysSBQ42Hd0-g@mail.gmail.com>
From: James Morse <james.morse@arm.com>
Message-ID: <746ceee3-43a7-231d-b2f6-0991a4148a28@arm.com>
Date: Fri, 16 Aug 2019 19:17:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CA+CK2bAqBi43Cchr=md7EPRuEWH-iuToK0PxN3ysSBQ42Hd0-g@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_111727_729483_BA7F957F 
X-CRM114-Status: GOOD (  24.98  )
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
Cc: Sasha Levin <sashal@kernel.org>, Vladimir Murzin <vladimir.murzin@arm.com>,
 Jonathan Corbet <corbet@lwn.net>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morris <jmorris@namei.org>,
 linux-mm <linux-mm@kvack.org>, "Eric W. Biederman" <ebiederm@xmission.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, will@kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pavel,

On 15/08/2019 21:09, Pavel Tatashin wrote:
>>> Also, I'd appreciate if anyone could test this series on vhe hardware
>>> with vhe kernel, it does not look like QEMU can emulate it yet
>>
>> This locks up during resume from hibernate on my AMD Seattle, a regular v8.0 machine.
> 
> Thanks for reporting a bug I will root cause and fix it.

>> Please try and build the series to reduce review time. What you have here is an all-new
>> page-table generation API, which you switch hibernate and kexec too. This is effectively a
>> new implementation of hibernate and kexec. There are three things here that need review.
>>
>> You have a regression in your all-new implementation of hibernate. It took six months (and
>> lots of review) to get the existing code right, please don't rip it out if there is
>> nothing wrong with it.
> 
>> Instead, please just move the hibernate copy_page_tables() code, and then wire kexec up.
>> You shouldn't need to change anything in the copy_page_tables() code as the linear map is
>> the same in both cases.

> It is not really an all-new implementation of hibernate (for kexec it
> is true though). I used the current implementation of hibernate as
> bases, and simply generalized the functions by providing a flexible
> interface. So what you are asking is actually exactly what I am doing.

I disagree. The resume page-table code is the bulk of the complexity in hibernate.c. Your
first patch dumps ~200 lines of differently-complex code, and your second switches
hibernate over to it.

Instead, please move that code, keeping it as it is. git will spot the move, and the
generated diffstat should only reflect the build-system changes. You don't need to 'switch
hibernate to transitional page tables.'

Adding kexec will then show-up what needs changing, each change comes with a commit
message explaining why. Having these as 'generalisations' in the first patch is a mess.

There is existing code that we don't want to break. Any changes need to be done as a
sequence of small incremental changes. It can't be reviewed any other way.


> I realize, that I introduced a bug that I will fix.

Done as a sequence of small incremental changes, I could bisect it to the patch that
introduces the bug, and probably fix it from the description in the commit message.


>> It looks like you are creating the page tables just after the kexec:segments have been
>> loaded. This will go horribly wrong if anything changes between then and kexec time. (e.g.
>> memory you've got mapped gets hot-removed).
>> This needs to be done as late as possible, so we don't waste memory, and the world can't
>> change around us. Reboot notifiers run before kexec, can't we do the memory-allocation there?

> Kexec by design does not allow allocate during kexec time. This is
> because we cannot fail during kexec syscall.

This problem needs solving.

| Reboot notifiers run before kexec, can't we do the memory-allocation there?


> All allocations must be done during kexec load time.

This increases the memory footprint. I don't think we should waste ~2MB per GB of kernel
memory on this feature. (Assuming 4K pages and rodata_full)

Another option is to allocate this memory at load time, but then free it so it can be used
in the meantime. You can keep the list of allocated pfn, as we know they aren't in use by
the running kernel, kexec metadata, loaded images etc.

Memory hotplug would need handling carefully, as would anything that 'donates' memory to
another agent. (I suspect the TEE stuff does this, I don't know how it interacts with kexec)


> Kernel memory cannot be hot-removed, as
> it is not part of ZONE_MOVABLE, and cannot be migrated.

Today, yes. Tomorrow?, "arm64/mm: Enable memory hot remove":
https://lore.kernel.org/r/1563171470-3117-1-git-send-email-anshuman.khandual@arm.com


>>>> Previously:
>>>> kernel shutdown 0.022131328s
>>>> relocation      0.440510736s
>>>> kernel startup  0.294706768s
>>>>
>>>> Relocation was taking: 58.2% of reboot time
>>>>
>>>> Now:
>>>> kernel shutdown 0.032066576s
>>>> relocation      0.022158152s
>>>> kernel startup  0.296055880s
>>>>
>>>> Now: Relocation takes 6.3% of reboot time
>>>>
>>>> Total reboot is x2.16 times faster.
>>
>> When I first saw these numbers they were ~'0.29s', which I wrongly assumed was 29 seconds.
>> Savings in milliseconds, for _reboot_ is a hard sell. I'm hoping that on the machines that
>> take minutes to kexec we'll get numbers that make this change more convincing.

> Sure, this userland is very small kernel+userland is only 47M. Here is
> another data point: fitImage: 380M, it contains a larger userland.
> The numbers for kernel shutdown and startup are the same as this is
> the same kernel, but relocation takes: 3.58s
> shutdown: 0.02s
> relocation: 3.58s
> startup:  0.30s
> 
> Relocation take 88% of reboot time. And, we must have it under one second.

Where does this one second number come from? (was it ever a reasonable starting point?)


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
