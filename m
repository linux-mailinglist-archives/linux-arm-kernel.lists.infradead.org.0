Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD4A52DBE1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 13:30:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OFxFyQH06kavgzAIg74ySldKujbrdknu8nbqbtQtP30=; b=FgTCMhfdvbKsD/
	ic8+C9PZxkBXhhDrtR/jjfGxOPG98zDO6WLjCGAKphZCwasg2Jcr19Yfa7k2FFU07+hPr9fkN8MkE
	VuKA4ILIhhbq4YXlQffiumrZCrFeyEwmgGXE4V+4W/b0fquLklLj+xIigl8E5c+1gZFZZe4uYOop6
	u/Xqt0xFJ0whwjVmoYgr1sp6sWPjuGgmTvAO8t2xwumEMLNtgzpbE9mDxQxrs9ipp20ynyfVOgV+2
	BieJEnUPwhgUEuCvuUZZljcKjSbP6WUdXcz7aeCjCKkhoV6jNO40CEQoAKhZX52Wd6dk+PB6jN83u
	6zzAXNnplLzTzCIKOsXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVwmZ-00011d-In; Wed, 29 May 2019 11:30:11 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVwmO-0000ZZ-Uu
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 11:30:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 209EB341;
 Wed, 29 May 2019 04:30:00 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0FF733F59C;
 Wed, 29 May 2019 04:29:58 -0700 (PDT)
Date: Wed, 29 May 2019 12:29:56 +0100
From: Will Deacon <will.deacon@arm.com>
To: Laura Abbott <labbott@redhat.com>
Subject: Re: CONFIG_OPTIMIZE_INLINING breaks atomic64 test on arm64
Message-ID: <20190529112956.GE4485@fuggles.cambridge.arm.com>
References: <ba33029c-64f6-6908-a098-b543f0851fb7@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ba33029c-64f6-6908-a098-b543f0851fb7@redhat.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_043000_995982_BE790E88 
X-CRM114-Status: GOOD (  13.65  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>, Andrew.Murray@arm.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Laura,

Thanks for the report -- I've managed to reproduce the issue locally.

On Tue, May 28, 2019 at 05:42:04PM -0400, Laura Abbott wrote:
> CONFIG_OPTIMIZE_INLINING is a selectable option on arm64 now. It currently
> triggers a bug on the CONFIG_ATOMIC64_SELFTEST:

[...]

> ffff0000104901d0 <arch_atomic64_dec_if_positive>:
> ffff0000104901d0:       a9bf7bfd        stp     x29, x30, [sp, #-16]!
> ffff0000104901d4:       aa0003e1        mov     x1, x0
> ffff0000104901d8:       910003fd        mov     x29, sp
> ffff0000104901dc:       9412c9d5        bl      ffff000010942930 <__ll_sc_arch_atomic64_dec_if_positive>
> ffff0000104901e0:       d503201f        nop
> ffff0000104901e4:       d503201f        nop
> ffff0000104901e8:       d503201f        nop
> ffff0000104901ec:       d503201f        nop
> ffff0000104901f0:       d503201f        nop
> ffff0000104901f4:       d503201f        nop
> ffff0000104901f8:       aa0103e0        mov     x0, x1
> ffff0000104901fc:       a8c17bfd        ldp     x29, x30, [sp], #16
> ffff000010490200:       d65f03c0        ret
> 
> ...which seems to be coming from this buggy looking code.

The problem here is that GCC has allocated the '%[ret]' input operand in x1
for the out-of-line version of the function, despite us using the register
keyword explicitly:

static inline long arch_atomic64_dec_if_positive(atomic64_t *v)
{
	register long x0 asm ("x0") = (long)v;

	asm volatile(ARM64_LSE_ATOMIC_INSN(
	/* LL/SC */
	__LL_SC_ATOMIC64(dec_if_positive)
	__nops(6),
	/* LSE atomics */
	"1:	ldr	x30, %[v]\n"
	"	subs	%[ret], x30, #1\n"
	"	b.lt	2f\n"
	"	casal	x30, %[ret], %[v]\n"
	"	sub	x30, x30, #1\n"
	"	sub	x30, x30, %[ret]\n"
	"	cbnz	x30, 1b\n"
	"2:")
	: [ret] "+&r" (x0), [v] "+Q" (v->counter)
	:
	: __LL_SC_CLOBBERS, "cc", "memory");

	return x0;
}

My reading of:

  https://gcc.gnu.org/onlinedocs/gcc/Local-Register-Variables.html#Local-Register-Variables

is that this should work, although it's fair to say that we are pulling
a bunch of other tricks in this code.

At this point, I'd be inclined to raise something in the GCC bugzilla
with the result of --save-temps for the failing atomic64_test.c. Maybe
they will have a better opinion as to whether we're doing something wrong
here. Is that something you're willing to do, or shall I do it?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
