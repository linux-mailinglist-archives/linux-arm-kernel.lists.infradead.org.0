Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15D6A43F3F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 17:55:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=URygELHqdLoxumWdAQIIP97Qa9+sQFGkrjEHboI9voU=; b=nCbXzBY5adIKRKJX0P5Mg27df
	WNDGIwZhaNmcc1NL8Xx5AmeI2UJFu1o9ceQ9EVyGAumvBBYuFAb5AJAJ1C4DJUlrAPvrD/u332bXz
	gp3f/L9yki7qNAGbc1GfKJl29Q1yCFysLl+XROes7wT831Bi9UlSgkZu7hWEf6aFAbKsoWbvVvRzx
	M4ABiH9bRr6eTRKcYUpcRA9l1RVdjL/9UfHtQFL9Jn7XER/VW/+qtHuzNai9vACfkzIQtuhEnahKZ
	qt+FED72rB6Hwb6tiD6UHmbOLjKziX5rTQr97jS1wWu58W7z2aAxdBulR7CqEliiwsn55xrrBbftN
	Ny8Jwa3+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbS4p-0004mW-Cr; Thu, 13 Jun 2019 15:55:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbS4b-0004ll-V1
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 15:55:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 45004367;
 Thu, 13 Jun 2019 08:55:33 -0700 (PDT)
Received: from [10.1.196.120] (e121650-lin.cambridge.arm.com [10.1.196.120])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 410F63F246;
 Thu, 13 Jun 2019 08:55:32 -0700 (PDT)
Subject: Re: [RFC V2 00/16] objtool: Add support for Arm64
To: Josh Poimboeuf <jpoimboe@redhat.com>
References: <20190516103655.5509-1-raphael.gault@arm.com>
 <20190516142917.nuhh6dmfiufxqzls@treble>
 <26692833-0e5b-cfe0-0ffd-c2c2f0815935@arm.com>
 <20190528222415.x63qw55ujm33dozb@treble>
From: Raphael Gault <raphael.gault@arm.com>
Message-ID: <09745535-2782-fa11-ed65-3119b9455e79@arm.com>
Date: Thu, 13 Jun 2019 16:55:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190528222415.x63qw55ujm33dozb@treble>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_085534_086858_F784760D 
X-CRM114-Status: GOOD (  28.26  )
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
Cc: Julien Thierry <Julien.Thierry@arm.com>,
 "peterz@infradead.org" <peterz@infradead.org>,
 Catalin Marinas <Catalin.Marinas@arm.com>, Will Deacon <Will.Deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Kamalesh Babulal <kamalesh@linux.vnet.ibm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Josh,

On 5/28/19 11:24 PM, Josh Poimboeuf wrote:
> On Tue, May 21, 2019 at 12:50:57PM +0000, Raphael Gault wrote:
>> Hi Josh,
>>
>> Thanks for offering your help and sorry for the late answer.
>>
>> My understanding is that a table of offsets is built by GCC, those
>> offsets being scaled by 4 before adding them to the base label.
>> I believe the offsets are stored in the .rodata section. To find the
>> size of that table, it is needed to find a comparison, which can be
>> optimized out apprently. In that case the end of the array can be found
>> by locating labels pointing to data behind it (which is not 100% safe).
>>
>> On 5/16/19 3:29 PM, Josh Poimboeuf wrote:
>>> On Thu, May 16, 2019 at 11:36:39AM +0100, Raphael Gault wrote:
>>>> Noteworthy points:
>>>> * I still haven't figured out how to detect switch-tables on arm64. I
>>>> have a better understanding of them but still haven't implemented checks
>>>> as it doesn't look trivial at all.
>>>
>>> Switch tables were tricky to get right on x86.  If you share an example
>>> (or even just a .o file) I can take a look.  Hopefully they're somewhat
>>> similar to x86 switch tables.  Otherwise we may want to consider a
>>> different approach (for example maybe a GCC plugin could help annotate
>>> them).
>>>
>>
>> The case which made me realize the issue is the one of
>> arch/arm64/kernel/module.o:apply_relocate_add:
>>
>> ```
>> What seems to happen in the case of module.o is:
>>    334:   90000015        adrp    x21, 0 <do_reloc>
>> which retrieves the location of an offset in the rodata section, and a
>> bit later we do some extra computation with it in order to compute the
>> jump destination:
>>    3e0:   78625aa0        ldrh    w0, [x21, w2, uxtw #1]
>>    3e4:   10000061        adr     x1, 3f0 <apply_relocate_add+0xf8>
>>    3e8:   8b20a820        add     x0, x1, w0, sxth #2
>>    3ec:   d61f0000        br      x0
>> ```
>>
>> Please keep in mind that the actual offsets might vary.
>>
>> I'm happy to provide more details about what I have identified if you
>> want me to.
> 
> I get the feeling this is going to be trickier than x86 switch tables
> (which have already been tricky enough).
> 
> On x86, there's a .rela.rodata section which applies relocations to
> .rodata.  The presence of those relocations makes it relatively easy to
> differentiate switch tables from other read-only data.  For example, we
> can tell that a switch table ends when either a) there's not a text
> relocation or b) another switch table begins.
> 
> But with arm64 I don't see a deterministic way to do that, because the
> table offsets are hard-coded in .rodata, with no relocations.
> 
>  From talking with Kamalesh I got the impression that we might have a
> similar issue for powerpc.
> 
> So I'm beginning to think we'll need compiler help.  Like a GCC plugin
> that annotates at least the following switch table metadata:
> 
> - Branch instruction address
> - Switch table address
> - Switch table entry size
> - Switch table size
> 
> The GCC plugin could write all the above metadata into a special section
> which gets discarded at link time.  I can look at implementing it,
> though I'll be traveling for two out of the next three weeks so it may
> be a while before I can get to it.
> 

I am completely new to GCC plugins but I had a look and I think I found 
a possible solution to retrieve at least part of this information using 
the RTL representation in GCC. I can't say it will work for sure but I 
would be happy to discuss it with you if you want.
Although there are still some area I need to investigate related to 
interacting with the RTL representation and storing info into the ELF
I'd be interested in giving it a try, if you are okay with that.

Thanks,
-- 
Raphael Gault

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
