Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B0A6D83D7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 00:37:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/wuX1DIugbihwBUJK9aMQo6iLEm9cnbmfXxCNifDey4=; b=ZSH3HC7/Cn4zUP
	WSCgXUfTHbFZ7zYfU3UHq6HoQkP4T0x5mnmqO42US/8Smoc0rQaTVqNU1uuCYInvtjvcloTCSEpEv
	IhfzVRtqD3+Iv+oOV6KOKaOTdeGhqpO2IeDbTQTkLyqK15eLo3/ehelx4UWL3g9MbBsPtbpI6ION0
	5wOLhV6ehp3s6daDYiiRc8t4oGwkuf2kntj7tKV7tmTVFGGvhVJGwRWcZTMZvZ+CeOmFd4eeHZOjW
	yY3/+1JPd7uLetVA7bHIQoqPfEZb/39MMkD6Juv8NoqljX12NA6uwkLULVyStUMBsYJTvPeub4Jb0
	pPEx79xrWZOyJDh5n6AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKVRx-0007xk-Im; Tue, 15 Oct 2019 22:37:53 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKVRo-0007xN-MT
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 22:37:46 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9BFA33086218;
 Tue, 15 Oct 2019 22:37:42 +0000 (UTC)
Received: from llong.remote.csb (ovpn-123-27.rdu2.redhat.com [10.10.123.27])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A2EA8608C2;
 Tue, 15 Oct 2019 22:37:41 +0000 (UTC)
Subject: Re: [PATCH 6/6] ARM: Inline locking functions for !PREEMPTION
To: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>,
 Arnd Bergmann <arnd@arndb.de>
References: <20191013221310.30748-1-sebastian@breakpoint.cc>
 <20191013221310.30748-7-sebastian@breakpoint.cc>
 <CAK8P3a2hYteGizk=--_Z1kE200_ORL52QEK5RBTMtXt5_UzmhA@mail.gmail.com>
 <CAK8P3a1Mu0Ghy1VtD7NBKQ4-ZMsYQe_bjYBAshRMTYTWtxzbPw@mail.gmail.com>
 <20191015223011.nyjbtylco6isjvb6@flow>
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <38a78a18-43ec-9425-6ad9-3ffe106690c5@redhat.com>
Date: Tue, 15 Oct 2019 18:37:41 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20191015223011.nyjbtylco6isjvb6@flow>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Tue, 15 Oct 2019 22:37:42 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_153744_778251_CA005C30 
X-CRM114-Status: GOOD (  20.81  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Will Deacon <will@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/15/19 6:30 PM, Sebastian Andrzej Siewior wrote:
> On 2019-10-14 12:01:02 [+0200], Arnd Bergmann wrote:
>> On Mon, Oct 14, 2019 at 9:43 AM Arnd Bergmann <arnd@arndb.de> wrote:
>>> On Mon, Oct 14, 2019 at 12:14 AM Sebastian Andrzej Siewior <sebastian@breakpoint.cc> wrote
>>>
>>> Also, the output of 'size vmlinux' before and after the patch for
>>> multi_v7_defconfig would be useful to have in the changelog, as there
>>> are a couple of platforms that are particularly sensitive to object code
>>> size changes.
>> To follow up, here are the numbers I get, building the linux-5.4-rc2
>> multi_v7_defconfig with clang-9, comparing the original spinlock
>> and the qspinlock, combined with inlining all locks or leaving them
>> out of line:
>>
>>    text    data     bss     dec     hex filename
>> 15294816 6958636 404480 22657932 159bb8c vmlinux-orig
>> 16004898 6962060 404480 23371438 1649eae vmlinux-orig-inline
>> 15198619 6958812 404560 22561991 15844c7 vmlinux-qlock-noinline
>> 15622897 6962116 404560 22989573 15ecb05 vmlinux-qlock-inline
>>
>> This gives us a 1.5% size increase over the original code with
>> inlining, or a 0.5% decrease without inlining, or about 1.9% size
>> difference for the Kconfig change itself, which does sound
>> significant.
> I had 2% increase (vmlinux-orig -> vmlinux-qlock-inline) but my vmlinux
> was only half the size. Performance wise the inlining improved the
> hackbench numbers in my test. How do we account that?
>
>> Maybe it should be configurable?
> Any comment from the locking department? I would prefer to avoid an
> extra knob for it. 
> The v7 config is PREEMPT_NONE and HZ_100. Based on the perf numbers I
> posted last time: with inlining I get more or less to the performance of
> the ticket implementation on imx6 and it makes no difference on AM572x.
> Let me run the hackbench test with the multi_v7_defconfig on my two
> boards with ORIG/qlock/qlock-inline and come with some numbers here.

Perhaps, we should not just looking at the all inlined or all uninlined
cases. Different variants of the lock and unlock functions can differ
widely in size depends on how the irq handling code is handled in each
architecture. Maybe we can inline the small ones but leave the bigger
ones uninlined. That can increase performance without too much overhead
in kernel size.

Cheers,
Longman


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
