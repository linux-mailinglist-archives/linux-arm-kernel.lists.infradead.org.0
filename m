Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C45551D2075
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 22:58:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=D+FWWvBsCv+WI7gUT5kcs+KOW4zjvxTs/+YEprBo4wE=; b=fgHhxSZqwbxKejnLUesJQ7p1U
	7hsYevCeoYpaHWwITMbvqIHwbZssEWAckNQVeulE2HBkuqDMotxyU5lgWmQww3Baxs/9QAC6IVeIH
	6mkcyP8WqEvNLTNdQulUXKQO4FqsMkmgcoqd8yZnfmT4f34ILtgZ0p+vuPVlqpFKMJbiwcjPO64fD
	Y1HHN6sJ3k4J3H8DxvYM8c8NKoaTMztbbwUTS/iMqnJTmYoxcwLenZ2NknkjqnblZ7phoka0f16uN
	LmQoBjLYJqN9iXPmZg30CNDnD+ypN3iqIVyijWxFv58THumf9q66Qjv3pTVNISlTtwa/gnrJ+mcWC
	1PiUmsk/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYyS8-0004Wu-U7; Wed, 13 May 2020 20:58:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYyS1-0004WR-44
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 20:58:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8048230E;
 Wed, 13 May 2020 13:57:59 -0700 (PDT)
Received: from [10.57.36.85] (unknown [10.57.36.85])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AD0923F68F;
 Wed, 13 May 2020 13:57:57 -0700 (PDT)
Subject: Re: [RFC PATCH] arm: Don't trap conditional UDF instructions
To: Fredrik Strupe <fredrik@strupe.net>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <b2042f19-9477-272c-0989-d6cab1572cca@strupe.net>
 <20200513181209.GM1551@shell.armlinux.org.uk>
 <9fba4d17-d826-6a3a-86fc-60977aa6cc9e@strupe.net>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <d2171942-e4b4-4441-b3ba-b5c16c06c2a2@arm.com>
Date: Wed, 13 May 2020 21:57:54 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <9fba4d17-d826-6a3a-86fc-60977aa6cc9e@strupe.net>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_135801_251009_079ED787 
X-CRM114-Status: GOOD (  20.79  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Oleg Nesterov <oleg@redhat.com>, Richard Fontana <rfontana@redhat.com>,
 linux-arm-kernel@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 Enrico Weigelt <info@metux.net>, Allison Randal <allison@lohutok.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-13 7:56 pm, Fredrik Strupe wrote:
> On 13.05.2020 20:12, Russell King - ARM Linux admin wrote:
>> On Wed, May 13, 2020 at 05:41:58PM +0200, Fredrik Strupe wrote:
>>> Hi,
>>>
>>> This is more of a question than a patch, but I hope the attached patch makes
>>> the issue a bit clearer.
>>>
>>> The arm port of Linux supports hooking/trapping of undefined instructions. Some
>>> parts of the code use this to trap UDF instructions with certain immediates in
>>> order to use them for other purposes, like 'UDF #16' which is equivalent to a
>>> BKPT instruction in A32.
>>>
>>> Moreover, most of the undef hooks on UDF instructions assume that UDF is
>>> conditional and mask out the condition prefix during matching. The attached
>>> patch shows the locations where this happens. However, the Arm architecture
>>> reference manual explicitly states that UDF is *not* conditional, making
>>> any instruction encoding with a condition prefix other than 0xe (always
>>> execute) unallocated.
>>
>> The latest version of the ARM architecture reference manual may say
>> that, but earlier versions say different things. The latest reference
>> manual does not apply to earlier architectures, so if you're writing
>> code to cover multiple different architectures, you must have an
>> understanding of each of those architectures.
>>
>> So, from the code:
>>
>> 	ARM:   xxxx 0111 1111 xxxx xxxx xxxx 1111 xxxx
>>
>>  From DDI0100E:
>>
>> 3.13.1 Undefined instruction space
>>         Instructions with the following opcodes are undefined
>>         instruction space:
>>
>>         opcode[27:25] = 0b011
>>         opcode[4] = 1
>>
>>         31 28 27 26 25 24                                     5 4 3     0
>>         cond  0  1  1  x  x x x x x x x x x x x x x x x x x x x 1 x x x x
>>
>> So, in this version of the architecture, undefined instructions may
>> be conditional - and indeed that used to be the case.  The condition
>> code was always respected, and cond=1111 meant "never" (NV).
>>
>> Hence, trapping them if the condition code is not 1110 (AL) is
>> entirely reasonable, legal and safe.  If an ARM CPU defines an
>> instruction coding that matches the above, then it won't take the
>> undefined instruction trap, and we'll never see it.
>>
>> Now, as for UDF usage in the kernel, it may be quite correct that we
>> always use the AL condition code for them, but it would be very odd
>> for there to be an instruction implemented with a different (non-NV)
>> condition code that can't also have it's AL condition code encoding.
>> You could never execute such an instruction unconditionally.
>>
> 
> That makes sense. Thank you very much for a great answer!

The other subtlety is that UDF is a *mnemonic* for a specific encoding 
with cond=0b1110, thus "conditional UDF" is an oxymoron. You can still 
have a conditional instruction from the "permanently undefined" space 
(although on Armv7-A it's implementation-defined whether it causes an 
exception regardless of the condition), it's just not a UDF.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
