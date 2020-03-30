Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2B41197AB3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 13:30:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=08nvWlDVXvm+8RNM1VyZbjCo0K4J+WVbO1VHCpgidLU=; b=TZe7nggxKAE3Lr
	kZ9cykBSF18LkaNbv9FMT7MEJZKmrGPIQfV5pRXTASQJM2TCl9bZbx5/9AOZM4i3qnrUoT8cbXzp1
	bF0cFehhvXmPBxsrdKztwP8eQgolzgmKyJbiYSLkP7np2cC0EvEWQpteVFVa+KcJ8B3IlOOwJilPh
	GCI7iO9y+GGfW6Zn8r7l+OwFbyVLOd4f6rHESENngiddPKWu0Sb6pl1avTWbURXMNLcNLqcrF9WpH
	toO4a3dtdRpwl+oAJ6MG6KafRAbQ1RzlQmwxrxQ7WSuZIjseurOM6Er6oDX1IAV7im7dlTgMPZB8m
	FYp12JD+ot6dkWKTEmug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIscg-0006al-FU; Mon, 30 Mar 2020 11:30:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIscU-0006aB-Es
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 11:30:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0EAFE31B;
 Mon, 30 Mar 2020 04:30:16 -0700 (PDT)
Received: from [172.16.1.108] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 95A3A3F52E;
 Mon, 30 Mar 2020 04:30:14 -0700 (PDT)
Subject: Re: SError handling vs. SIGSEGV
To: Florian Fainelli <f.fainelli@gmail.com>
References: <3da89354-78f7-5f48-9eec-75c74270fa3e@gmail.com>
From: James Morse <james.morse@arm.com>
Openpgp: preference=signencrypt
Message-ID: <68580476-eba8-2615-c25f-f3f1b53118e0@arm.com>
Date: Mon, 30 Mar 2020 12:30:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <3da89354-78f7-5f48-9eec-75c74270fa3e@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_043018_586529_9D4A3156 
X-CRM114-Status: GOOD (  22.82  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Doug Berger <opendmb@gmail.com>,
 Scott Branden <sbranden@broadcom.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 bcm-kernel-feedback-list@broadcom.com, Ray Jui <rjui@broadcom.com>,
 Will Deacon <will@kernel.org>, Dave.Martin@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Florian,

(I assume this is all on some pre-v8.2 system)

On 3/28/20 4:31 AM, Florian Fainelli wrote:
> Up until commit e4ba15debcfd27f60d43da940a58108783bff2a6 ("arm64:
> fix for bad_mode() handler to always result in panic") we had been
> getting SIGSEGV delivered to applications running on Broadcom STB
> platforms which access register holes or registers for which we have
> purposely blocked the access via the GISB (proprietary bus for control
> registers) bus arbiter used on those SoCs.

User-space has access to this? Not good.


> That commit arguably plugged
> a hole in that scheduling was possible when panic() was intended, so
> this is not really the only culprit.

> We are actually relying on this
> behavior to pass a number of tests that specifically exercise that
> register blocking is effective without taking down the whole system.

... but this isn't actually possible ...

The abort is asynchronous, the CPU may be doing something else when it arrives.
It may have taken an IRQ. Taking a (pre-v8.2) SError out of IRQ context has to
fatal.


> Due to our SoC integration all of those register access errors are
> SErrors with the signature at the bottom.

Do you trust user-space not to access them?

If not, don't give user-space access to those pages!


> Doug had tried to submit a patch series that allowed a given platform to
> install custom abort handlers, similar to what ARM 32-bit permits, but
> this got shot down:

For good reason. You cannot know that the abort was caused by your broken
hardware, and not an ECC error for the stack memory...

Getting this wrong leads to data corruption, and you have no reliable
information to base the decision on. (see below). The RAS extensions added the
CPU and system bits to improve this.


> I understand that such a SError is deemed catastrophic and
> unrecoverable, but taking down the whole system for something we could
> possibly resolve with a SIGSEGV provided the platform is known and hooks
> are in place would be more desirable IMHO, otherwise we have nice DoS
> lurking around and hard to debug systems in production, too.

SError is asynchronous. The ELR_EL1 value is meaningless.
The CPU can change exception level between the access that triggers the
external-abort being sent, and the result received. You can't even rely on
'while my process is running'.

SError can also be imprecise so you can't return from an SError exception. The
CPU is not obliged to put the world back in order before taking the exception.

precise/imprecise isn't commonly described. The arm-arm has: G1.3.4 "Definition
of a precise exception":
| An exception is described as precise when the exception handler receives the
| PE state and memory system state that is consistent with the PE having
| executed all of the instructions up to but not including the point in the
| instruction stream where the exception was taken, and none afterwards.
| Other than the SError interrupt all exceptions that are taken to AArch32 state
| are required to be precise. For each occurrence of an SError interrupt,
| whether the interrupt is precise or imprecise is IMPLEMENTATION DEFINED.


> As it stands today, I see no way to have a self hosted test case that
> exercises that our GISB bus arbiter blocking works correctly because the
> whole kernel is taken down when the test is successful :/

Sorry, it looks like your hardware people have given you something you can't
reliably work with.

Don't give user-space access to devices, they can take the system down.
Don't punch holes in page mappings, the CPU can't map anything smaller.
Don't respond with an abort unless you are prepared for the OS to die.




Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
