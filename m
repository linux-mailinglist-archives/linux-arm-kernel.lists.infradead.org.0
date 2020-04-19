Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24AA21AFE66
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 23:21:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ALBIoZx5cTCrH8dGSaJRN53+iz0nvRqWlYiRohxfBQY=; b=G75HoFKji/LUk4
	UX/qfO9Pi4LtEFvsmB/or3gFtkfyErxO57UgSwx5PVykC9w+0MXIdlwnA4vQKb5gsbaqjdQiAllwY
	QMpzYMZ5OBq2umgiubEUvFZwBtChBy4QceXB1bZPydI5toY6yt0YUQIhqvUvbur+BxUpKitIig5py
	y5zpUC64M5BO1n9aiMZZlQfVuD8RqDBPn/IyBALIXOWNx6p10bKkMBnCVQzJ8CDoscF/es0VuxVDY
	seEnbjrsnRrYXrqRwZ2ne3RacxrzsDThUlWq3OvrO8boYhtcEZvEA9T6YpcrY7TW2q9GOr+GSpk2n
	b2rsg1vX4cbJVHFtwhQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQHNB-00061A-B5; Sun, 19 Apr 2020 21:21:05 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQHN0-00060M-HG
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 21:20:58 +0000
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id 8A7D95C2AD6;
 Sun, 19 Apr 2020 23:20:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1587331250;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vPJzpM7y8xsutEk9xoRCpyH0Mjw6Ey8nK+iP0TqlfaE=;
 b=NojelCtNh2sieDxsw11fxyIRQs7U1VjKYKwOP712QhxFbnZArTCgBqrqc1zE0uVxzAbHg1
 f39v/wrAGINya/vNYlYGUD48aG5JUAjdBh34MXaifCgAZCsdhuCtI618k7pyD3jhYG4y3g
 Q3gfgdd87+9flCV4rAKvdq8zjerCf6M=
MIME-Version: 1.0
Date: Sun, 19 Apr 2020 23:20:50 +0200
From: Stefan Agner <stefan@agner.ch>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH v2 0/3] ARM: make use of UAL VFP mnemonics when possible
In-Reply-To: <20200419141229.GX25745@shell.armlinux.org.uk>
References: <cover.1587299429.git.stefan@agner.ch>
 <20200419141229.GX25745@shell.armlinux.org.uk>
User-Agent: Roundcube Webmail/1.4.1
Message-ID: <7c3bb6fedbb2ff512451fa8e5abe2440@agner.ch>
X-Sender: stefan@agner.ch
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_142054_866583_1478FA7B 
X-CRM114-Status: GOOD (  19.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: arnd@arndb.de, ard.biesheuvel@linaro.org, yamada.masahiro@socionext.com,
 ndesaulniers@google.com, linux-kernel@vger.kernel.org, jiancai@google.com,
 clang-built-linux@googlegroups.com, manojgupta@google.com,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-19 16:12, Russell King - ARM Linux admin wrote:
> On Sun, Apr 19, 2020 at 02:35:48PM +0200, Stefan Agner wrote:
>> To build the kernel with Clang's integrated assembler the VFP code needs
>> to make use of the unified assembler language (UAL) VFP mnemonics.
>>
>> At first I tried to get rid of the co-processor instructions to access
>> the floating point unit along with the macros completely. However, due
>> to missing FPINST/FPINST2 argument support in older binutils versions we
>> have to keep them around. Once we drop support for binutils 2.24 and
>> older, the move to UAL VFP mnemonics will be straight forward with this
>> changes applied.
>>
>> Tested using Clang with integrated assembler as well as external
>> (binutils assembler), various gcc/binutils version down to 4.7/2.23.
>> Disassembled and compared the object files in arch/arm/vfp/ to make
>> sure this changes leads to the same code. Besides different inlining
>> behavior I was not able to spot a difference.
>>
>> In v2 the check for FPINST argument support is now made in Kconfig.
> 
> Given what I said in the other thread, Clang really _should_ allow
> the MCR/MRC et.al. instructions to access the VFP registers.  There
> is no reason to specifically block them.

I agree, and I am working on changing this.

There have been discussions about co-processor register access a while
back in the LLVM/Clang community [1]. Peter Smith pointed this out in
the ClangBuiltLinux issue tracker [2], which also has some more context.
I did submit a patch [3] to convert use of cp10/cp11 in ARMv7 contexts
to a warning. However it got stale, I'll have to revisit.

There is actually another case where this issue blocks Clang's
integrated assembler: In arch/arm/kernel/perf_event_v7.c, function
venum_read_pmresr mcr/mrc is used to access the performance monitor
registers for Qualcomm's Krait/Scorpion PMU, and in this case there is
no mnemonic available.

> 
> As we have seen with FPA, having that ability when iWMMXT comes along
> is very useful.  In any case:
> 
> 1. The ARM ARM (DDI0406) states that "These instructions are MRC and MCR
> instructions for coprocessors 10 and 11." in section A7.8.
> 
> 2. The ARM ARM (DDI0406) describes the MRC and MCR instructions as
> being able to access _any_ co-processor.

These are good arguments I can use in case my patch stirs up a
discussion, thanks for the hints!

> 
> So, Clang deciding that it's going to block access to coprocessor 10
> and 11 because some version of the architecture _also_ defines these
> as VFP instructions is really not on, and Clang needs to be fixed
> irrespective of these patches - and I want to know that *is* going to
> get fixed before I take these patches into the kernel.

I'll try. We'll see.

[1] https://bugs.llvm.org/show_bug.cgi?id=20025
[2] https://github.com/ClangBuiltLinux/linux/issues/306
[3] https://reviews.llvm.org/D59733

--
Stefan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
