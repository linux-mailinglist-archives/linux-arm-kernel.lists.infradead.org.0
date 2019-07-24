Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 648C173179
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 16:19:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xF0wyvl5sFYU3rHijJSq3Wsy+umLPyP6NqMhPGN7CQM=; b=J8gAXUygoNsc04
	IS3Anb7OkXroDHp3hz7d4VNYpaKRvjQIPY6ptiakPCltaKtUy6bBJp8IuCmSDtWqsgsIond1TIumT
	8YTD3MNIb87gJ6v3B1RXSLXjxRpMjmV94t8OE++ljLjKEh1u+TLtXtn0PGIT5fs+Cp/xKBgrlNW1n
	t4u5ycjzZcWoBSKnOqFGx+DrqwOYKH/sDtic7qC2SiMrhS8/iNb6W/6RSAwVAsTeaPUUrnp91Xkng
	IvqI0zbGVStbZeiYYmi7DYxF8QGIJcBts2vKEcizw0cXJZv4f4WZj+rPia16XbVGk/PXq54/+4SFh
	dpW+SgUZJgscNJrtXmVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqI6c-0007DO-RT; Wed, 24 Jul 2019 14:18:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqI6S-0007D1-PA
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 14:18:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0319428;
 Wed, 24 Jul 2019 07:18:48 -0700 (PDT)
Received: from [10.1.196.133] (e112269-lin.cambridge.arm.com [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 55C7A3F71A;
 Wed, 24 Jul 2019 07:18:45 -0700 (PDT)
Subject: Re: [PATCH v9 00/21] Generic page walk and ptdump
To: Thomas Gleixner <tglx@linutronix.de>
References: <20190722154210.42799-1-steven.price@arm.com>
 <20190723101639.GD8085@lakrids.cambridge.arm.com>
 <e108b8a6-deca-e69c-b338-52a98b14be86@arm.com>
 <alpine.DEB.2.21.1907241541570.1791@nanos.tec.linutronix.de>
From: Steven Price <steven.price@arm.com>
Message-ID: <fd898367-b44e-9328-bdab-7a3de0db6bda@arm.com>
Date: Wed, 24 Jul 2019 15:18:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.1907241541570.1791@nanos.tec.linutronix.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_071848_901724_DF5C4C8B 
X-CRM114-Status: GOOD (  24.90  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, x86@kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Andrew Morton <akpm@linux-foundation.org>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org, "Liang,
 Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 24/07/2019 14:57, Thomas Gleixner wrote:
> On Wed, 24 Jul 2019, Steven Price wrote:
>> On 23/07/2019 11:16, Mark Rutland wrote:
>>> Are there any visible changes to the arm64 output?
>>
>> arm64 output shouldn't change. I've confirmed that "efi_page_tables" is
>> identical on a Juno before/after the change. "kernel_page_tables"
>> obviously will vary depending on the exact layout of memory, but the
>> format isn't changed.
>>
>> x86 output does change due to patch 14. In this case the change is
>> removing the lines from the output of the form...
>>
>>> 0xffffffff84800000-0xffffffffa0000000         440M                               pmd
>>
>> ...which are unpopulated areas of the memory map. Populated lines which
>> have attributes are unchanged.
> 
> Having the hole size and the level in the dump is a very conveniant thing.
> 
> Right now we have:
> 
> 0xffffffffc0427000-0xffffffffc042b000          16K     ro                     NX pte
> 0xffffffffc042b000-0xffffffffc042e000          12K     RW                     NX pte
> 0xffffffffc042e000-0xffffffffc042f000           4K                               pte
> 0xffffffffc042f000-0xffffffffc0430000           4K     ro                     x  pte
> 0xffffffffc0430000-0xffffffffc0431000           4K     ro                     NX pte
> 0xffffffffc0431000-0xffffffffc0433000           8K     RW                     NX pte
> 0xffffffffc0433000-0xffffffffc0434000           4K                               pte
> 0xffffffffc0434000-0xffffffffc0436000           8K     ro                     x  pte
> 0xffffffffc0436000-0xffffffffc0438000           8K     ro                     NX pte
> 0xffffffffc0438000-0xffffffffc043a000           8K     RW                     NX pte
> 0xffffffffc043a000-0xffffffffc043f000          20K                               pte
> 0xffffffffc043f000-0xffffffffc0444000          20K     ro                     x  pte
> 0xffffffffc0444000-0xffffffffc0447000          12K     ro                     NX pte
> 0xffffffffc0447000-0xffffffffc0449000           8K     RW                     NX pte
> 0xffffffffc0449000-0xffffffffc044f000          24K                               pte
> 0xffffffffc044f000-0xffffffffc0450000           4K     ro                     x  pte
> 0xffffffffc0450000-0xffffffffc0451000           4K     ro                     NX pte
> 0xffffffffc0451000-0xffffffffc0453000           8K     RW                     NX pte
> 0xffffffffc0453000-0xffffffffc0458000          20K                               pte
> 0xffffffffc0458000-0xffffffffc0459000           4K     ro                     x  pte
> 0xffffffffc0459000-0xffffffffc045b000           8K     ro                     NX pte
> 
> with your change this becomes:
> 
> 0xffffffffc0427000-0xffffffffc042b000          16K     ro                     NX pte
> 0xffffffffc042b000-0xffffffffc042e000          12K     RW                     NX pte
> 0xffffffffc042f000-0xffffffffc0430000           4K     ro                     x  pte
> 0xffffffffc0430000-0xffffffffc0431000           4K     ro                     NX pte
> 0xffffffffc0431000-0xffffffffc0433000           8K     RW                     NX pte
> 0xffffffffc0434000-0xffffffffc0436000           8K     ro                     x  pte
> 0xffffffffc0436000-0xffffffffc0438000           8K     ro                     NX pte
> 0xffffffffc0438000-0xffffffffc043a000           8K     RW                     NX pte
> 0xffffffffc043f000-0xffffffffc0444000          20K     ro                     x  pte
> 0xffffffffc0444000-0xffffffffc0447000          12K     ro                     NX pte
> 0xffffffffc0447000-0xffffffffc0449000           8K     RW                     NX pte
> 0xffffffffc044f000-0xffffffffc0450000           4K     ro                     x  pte
> 0xffffffffc0450000-0xffffffffc0451000           4K     ro                     NX pte
> 0xffffffffc0451000-0xffffffffc0453000           8K     RW                     NX pte
> 0xffffffffc0458000-0xffffffffc0459000           4K     ro                     x  pte
> 0xffffffffc0459000-0xffffffffc045b000           8K     ro                     NX pte
> 
> which is 5 lines less, but a pain to figure out the size of the holes. And
> it becomes even more painful when the holes go across different mapping
> levels.
> 
> From your 14/N changelog:
> 
>> This keeps the output shorter and will help with a future change
> 
> I don't care about shorter at all. It's debug information.

Sorry, the "shorter" part was because Dave Hansen originally said[1]:
> I think I'd actually be OK with the holes just not showing up.  I
> actually find it kinda hard to read sometimes with the holes in there.
> I'd be curious what others think though.

[1]
https://lore.kernel.org/lkml/5f354bf5-4ac8-d0e2-048c-0857c91a21e6@intel.com/

And I'd abbreviated "holes not showing up" as "shorter" in the commit
message - not the best wording I agree.

>> switching to using the generic page walk code as we no longer care about
>> the 'level' that the page table holes are at.
> 
> I really do not understand why you think that WE no longer care about the
> level (and the size) of the holes. I assume that WE is pluralis majestatis
> and not meant to reflect the opinion of you and everyone else.

Again, I apologise - that was sloppy wording in the commit message. By
"we" I meant the code not any particular person. In my original patch[2]
the only use of the 'depth' argument to pte_hole was to report the level
for these debug lines. Removing those lines simplified the code and at
the time nobody raised any objections.

[2]
https://lore.kernel.org/lkml/20190227170608.27963-28-steven.price@arm.com/

> I have no idea whether you ever had to do serious work with PT dump, but I
> surely have at various occasions including the PTI mess and I definitely
> found the size and the level information from holes very useful.

On arm64 we don't have those lines, but equally it's possible they might
be useful in the future. So this might be something to add.

As I said in a previous email[3] I was dropping the lines from the
output assuming nobody had any objections. Since you find these lines
useful, I'll see about reworking the change to retain the lines.

Steve

[3]
https://lore.kernel.org/lkml/26df02dd-c54e-ea91-bdd1-0a4aad3a30ac@arm.com/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
