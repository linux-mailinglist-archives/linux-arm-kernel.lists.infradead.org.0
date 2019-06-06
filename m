Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57E1737BC3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 20:02:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wTW+2bcRbK76zu3Z+OqSFpqRolkQa+Japt1P8Xa1j2k=; b=XBv6cs1BzMjYdc
	TozEvjwVBsJJd6V0P1dyESCenpBk2b58Anur9rM76tpAq5z8r/bmf1QVqL2r3B1JdHDFDTrn1d7uN
	jzEYqCto3LaWA9MZh+T7i0FKCx+TFqiy/ZviL3ylhp0DuO9eCUxsIrpsIJ8fg4SePyf6C2wYL6DKe
	RtKyfgCowehtR8xg4eW7lkSMwKRCGxsmrjGCieLDSPJ95ohFraW5P7zTRXIqxMrbZmGQmCS2D4J0b
	vBi1b9+h1Kv0ZvGEsJyx1O7Dr+Pl25pCLEL2Ie8NpBV5Oroiitagh7L+s/I/Nc5fqIjQ2WanHKVI/
	fc/Cgd1b7Izn+s9IdsXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYwio-0006zX-Ol; Thu, 06 Jun 2019 18:02:42 +0000
Received: from mail.efficios.com ([167.114.142.138])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYwig-0006yY-RT
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 18:02:37 +0000
Received: from localhost (ip6-localhost [IPv6:::1])
 by mail.efficios.com (Postfix) with ESMTP id B3BDC242834;
 Thu,  6 Jun 2019 14:02:30 -0400 (EDT)
Received: from mail.efficios.com ([IPv6:::1])
 by localhost (mail02.efficios.com [IPv6:::1]) (amavisd-new, port 10032)
 with ESMTP id hdAWPYAsPizK; Thu,  6 Jun 2019 14:02:29 -0400 (EDT)
Received: from localhost (ip6-localhost [IPv6:::1])
 by mail.efficios.com (Postfix) with ESMTP id C9C7C242829;
 Thu,  6 Jun 2019 14:02:29 -0400 (EDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.efficios.com C9C7C242829
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=efficios.com;
 s=default; t=1559844149;
 bh=vdoUni7TtB4T+sY7n7rv0ImmEBFxotDrIUJTIkh7Mhk=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=g6ABHGiJnJ5X9tr3URBXcnTB3lYzGxF3UfgTIZXOc+svJNX8VCg+9GdkMslJNmVxX
 T2kZSyW755/dGqXDZ7rPqKkKXPTSj2yo/5Fvp4eysdTVreH9UZP24V9Y6CrWiszfJZ
 K/nQjCRSkwxYhbNFWPjNqGnCDwrZ0Tzggq8ESWxz4sEWRQ09Q2oQ8wbWdTy5GMBN/p
 ohklr0it5+O4x0XacTT/lcU8CB5tyIy+f1EFfsrq0+CGrrd6wxlLMNjlpkmvyHUyO8
 LmHO6YUsg3pVsEG+W4Y45tBM4RsBYlbpil887CAl9r68asoc6rbSq6qvR6AL6WVEhH
 XMB4peqYdpqnA==
X-Virus-Scanned: amavisd-new at efficios.com
Received: from mail.efficios.com ([IPv6:::1])
 by localhost (mail02.efficios.com [IPv6:::1]) (amavisd-new, port 10026)
 with ESMTP id o2TYGXsURVSJ; Thu,  6 Jun 2019 14:02:29 -0400 (EDT)
Received: from mail02.efficios.com (mail02.efficios.com [167.114.142.138])
 by mail.efficios.com (Postfix) with ESMTP id A85F6242819;
 Thu,  6 Jun 2019 14:02:29 -0400 (EDT)
Date: Thu, 6 Jun 2019 14:02:29 -0400 (EDT)
From: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
To: Will Deacon <will.deacon@arm.com>, Russell King <linux@arm.linux.org.uk>
Message-ID: <1975020343.35751.1559844149532.JavaMail.zimbra@efficios.com>
In-Reply-To: <20190503193858.9676-1-mathieu.desnoyers@efficios.com>
References: <20190429152803.7719-9-mathieu.desnoyers@efficios.com>
 <20190503193858.9676-1-mathieu.desnoyers@efficios.com>
Subject: Re: [PATCH v2 for 5.2 08/12] rseq/selftests: arm: use udf
 instruction for RSEQ_SIG
MIME-Version: 1.0
X-Originating-IP: [167.114.142.138]
X-Mailer: Zimbra 8.8.12_GA_3803 (ZimbraWebClient - FF67 (Linux)/8.8.12_GA_3794)
Thread-Topic: rseq/selftests: arm: use udf instruction for RSEQ_SIG
Thread-Index: YcGezvm7ivFdjjSZdlA+YYoxUnlhzQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_110235_109414_9A605659 
X-CRM114-Status: GOOD (  25.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [167.114.142.138 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Joel Fernandes <joelaf@google.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Dave Watson <davejwatson@fb.com>,
 Andi Kleen <andi@firstfloor.org>,
 linux-kselftest <linux-kselftest@vger.kernel.org>,
 "H. Peter Anvin" <hpa@zytor.com>, Chris Lameter <cl@linux.com>,
 shuah <shuah@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 Michael Kerrisk <mtk.manpages@gmail.com>,
 "Paul E . McKenney" <paulmck@linux.vnet.ibm.com>, Paul Turner <pjt@google.com>,
 Boqun Feng <boqun.feng@gmail.com>, Josh Triplett <josh@joshtriplett.org>,
 rostedt <rostedt@goodmis.org>, Ben Maurer <bmaurer@fb.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 linux-api <linux-api@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Andy Lutomirski <luto@amacapital.net>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

----- On May 3, 2019, at 3:38 PM, Mathieu Desnoyers mathieu.desnoyers@efficios.com wrote:

> Use udf as the guard instruction for the restartable sequence abort
> handler.
> 
> Previously, the chosen signature was not a valid instruction, based
> on the assumption that it could always sit in a literal pool. However,
> there are compilation environments in which literal pools are not
> available, for instance execute-only code. Therefore, we need to
> choose a signature value that is also a valid instruction.
> 
> Handle compiling with -mbig-endian on ARMv6+, which generates binaries
> with mixed code vs data endianness (little endian code, big endian
> data).
> 
> Else mismatch between code endianness for the generated signatures and
> data endianness for the RSEQ_SIG parameter passed to the rseq
> registration will trigger application segmentation faults when the
> kernel try to abort rseq critical sections.
> 
> Prior to ARMv6, -mbig-endian generates big-endian code and data, so
> endianness should not be reversed in that case.

And of course it cannot be that easy. This breaks when building in
thumb mode (-mthumb). Output from librseq arm32 build [1] (code similar
to what is found in the rseq selftests):

  CC       rseq.lo
/tmp/ccu6Jw1b.s: Assembler messages:
/tmp/ccu6Jw1b.s:297: Error: cannot determine Thumb instruction size. Use .inst.n/.inst.w instead
/tmp/ccu6Jw1b.s:490: Error: cannot determine Thumb instruction size. Use .inst.n/.inst.w instead
Makefile:460: recipe for target 'rseq.lo' failed

This appears to be caused by a missing .arm directive in RSEQ_SIG_DATA.
Fixing with:

-               asm volatile ("b 2f\n\t"                                \
+               asm volatile (".arm\n\t"                                \
+                             "b 2f\n\t"                                \

gets the build to go further, but breaks at:

  CC       basic_percpu_ops_test.o
/tmp/ccpHOMHZ.s: Assembler messages:
/tmp/ccpHOMHZ.s:148: Error: misaligned branch destination
/tmp/ccpHOMHZ.s:956: Error: misaligned branch destination
Makefile:378: recipe for target 'basic_percpu_ops_test.o' failed

I suspect it's caused by the change from:

-               ".word " __rseq_str(RSEQ_SIG) "\n\t"                    \

to

+               ".arm\n\t"                                              \
+               ".inst " __rseq_str(RSEQ_SIG_CODE) "\n\t"               \

which changes the mode from thumb to arm for the rest of the
inline asm within __RSEQ_ASM_DEFINE_ABORT. Better yet, there appears
to be no way to save the arm/thumb state and restore it afterwards.

I'm really starting to wonder if we should go our of our way to try
to get this signature to be a valid instruction on arm32. Perhaps
we should consider going back to use ".word" on arm32 so it ensures
it uses data endianness (which matches the parameter received by the
sys_rseq system call), let objdump and friends print it as a literal
pool (which it is), and just choose an instruction which has little
chances to appear for the cases we care about between ARM32 BE, LE
and THUMB. Perhaps a 32-bit palindrome ? Bonus points if this is a
trap instruction in common configurations for odd-cases-debugging
purposes.

Thoughts ?

Thanks,

Mathieu

[1] https://github.com/compudj/librseq


> 
> Signed-off-by: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
> CC: Peter Zijlstra <peterz@infradead.org>
> CC: Thomas Gleixner <tglx@linutronix.de>
> CC: Joel Fernandes <joelaf@google.com>
> CC: Catalin Marinas <catalin.marinas@arm.com>
> CC: Dave Watson <davejwatson@fb.com>
> CC: Will Deacon <will.deacon@arm.com>
> CC: Shuah Khan <shuah@kernel.org>
> CC: Andi Kleen <andi@firstfloor.org>
> CC: linux-kselftest@vger.kernel.org
> CC: "H . Peter Anvin" <hpa@zytor.com>
> CC: Chris Lameter <cl@linux.com>
> CC: Russell King <linux@arm.linux.org.uk>
> CC: Michael Kerrisk <mtk.manpages@gmail.com>
> CC: "Paul E . McKenney" <paulmck@linux.vnet.ibm.com>
> CC: Paul Turner <pjt@google.com>
> CC: Boqun Feng <boqun.feng@gmail.com>
> CC: Josh Triplett <josh@joshtriplett.org>
> CC: Steven Rostedt <rostedt@goodmis.org>
> CC: Ben Maurer <bmaurer@fb.com>
> CC: linux-api@vger.kernel.org
> CC: Andy Lutomirski <luto@amacapital.net>
> CC: Andrew Morton <akpm@linux-foundation.org>
> CC: Linus Torvalds <torvalds@linux-foundation.org>
> ---
> Changes since v1:
> - Fix checkpatch error and warning.
> 
> ---
> tools/testing/selftests/rseq/rseq-arm.h | 52 +++++++++++++++++++++++++++++++--
> 1 file changed, 50 insertions(+), 2 deletions(-)
> 
> diff --git a/tools/testing/selftests/rseq/rseq-arm.h
> b/tools/testing/selftests/rseq/rseq-arm.h
> index 5f262c54364f..84f28f147fb6 100644
> --- a/tools/testing/selftests/rseq/rseq-arm.h
> +++ b/tools/testing/selftests/rseq/rseq-arm.h
> @@ -5,7 +5,54 @@
>  * (C) Copyright 2016-2018 - Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
>  */
> 
> -#define RSEQ_SIG	0x53053053
> +/*
> + * RSEQ_SIG uses the udf A32 instruction with an uncommon immediate operand
> + * value 0x5de3. This traps if user-space reaches this instruction by mistake,
> + * and the uncommon operand ensures the kernel does not move the instruction
> + * pointer to attacker-controlled code on rseq abort.
> + *
> + * The instruction pattern in the A32 instruction set is:
> + *
> + * e7f5def3    udf    #24035    ; 0x5de3
> + *
> + * This translates to the following instruction pattern in the T16 instruction
> + * set:
> + *
> + * little endian:
> + * def3        udf    #243      ; 0xf3
> + * e7f5        b.n    <7f5>
> + *
> + * pre-ARMv6 big endian code:
> + * e7f5        b.n    <7f5>
> + * def3        udf    #243      ; 0xf3
> + *
> + * ARMv6+ -mbig-endian generates mixed endianness code vs data: little-endian
> + * code and big-endian data. Ensure the RSEQ_SIG data signature matches code
> + * endianness. Prior to ARMv6, -mbig-endian generates big-endian code and data
> + * (which match), so there is no need to reverse the endianness of the data
> + * representation of the signature. However, the choice between BE32 and BE8
> + * is done by the linker, so we cannot know whether code and data endianness
> + * will be mixed before the linker is invoked.
> + */
> +
> +#define RSEQ_SIG_CODE	0xe7f5def3
> +
> +#ifndef __ASSEMBLER__
> +
> +#define RSEQ_SIG_DATA							\
> +	({								\
> +		int sig;						\
> +		asm volatile ("b 2f\n\t"				\
> +			      "1: .inst " __rseq_str(RSEQ_SIG_CODE) "\n\t" \
> +			      "2:\n\t"					\
> +			      "ldr %[sig], 1b\n\t"			\
> +			      : [sig] "=r" (sig));			\
> +		sig;							\
> +	})
> +
> +#define RSEQ_SIG	RSEQ_SIG_DATA
> +
> +#endif
> 
> #define rseq_smp_mb()	__asm__ __volatile__ ("dmb" ::: "memory", "cc")
> #define rseq_smp_rmb()	__asm__ __volatile__ ("dmb" ::: "memory", "cc")
> @@ -78,7 +125,8 @@ do {									\
> 		__rseq_str(table_label) ":\n\t"				\
> 		".word " __rseq_str(version) ", " __rseq_str(flags) "\n\t" \
> 		".word " __rseq_str(start_ip) ", 0x0, " __rseq_str(post_commit_offset) ", 0x0, "
> 		__rseq_str(abort_ip) ", 0x0\n\t" \
> -		".word " __rseq_str(RSEQ_SIG) "\n\t"			\
> +		".arm\n\t"						\
> +		".inst " __rseq_str(RSEQ_SIG_CODE) "\n\t"		\
> 		__rseq_str(label) ":\n\t"				\
> 		teardown						\
> 		"b %l[" __rseq_str(abort_label) "]\n\t"
> --
> 2.11.0

-- 
Mathieu Desnoyers
EfficiOS Inc.
http://www.efficios.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
