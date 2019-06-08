Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35B283A08D
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 17:53:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nlfs6mErdcryg7yTp+yRlSvaLQlynr2FrYPYadZfAkU=; b=JbrxWD89FF/oru
	DzSsV81Q7p6nc696s1Mk6RUtU2/0z76Y87W4qXrHNAnbM+nvCy139i5/lh7vDL7jLG5sa/OQdUDAC
	FCVjYmaJgnVh8yzOnLnLMbto4+cfSVvM7jte/TmzllvJA3QDR4lie+SfyMYwShDzapMpn17zfrxFC
	p4qiTl0cq41Aqm3lqOBHUl2+rWnPckIJbuxwxfbFlqIBlfqZLHAeRem3GYZ9jcNIo3LucuqcxYxii
	fEiFfO1HKNWg2ZaDzyNjIm4A349sxBPfSyjhY4wTLAaYyLoeFwi20x26ks5BEMiCqXFwVDFTbabhD
	DTg08t496hbJMHopmLrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZdeV-0004r2-RH; Sat, 08 Jun 2019 15:53:07 +0000
Received: from mail.efficios.com ([167.114.142.138])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZdeL-0004po-Tq
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Jun 2019 15:52:59 +0000
Received: from localhost (ip6-localhost [IPv6:::1])
 by mail.efficios.com (Postfix) with ESMTP id C034F1D3995;
 Sat,  8 Jun 2019 11:52:46 -0400 (EDT)
Received: from mail.efficios.com ([IPv6:::1])
 by localhost (mail02.efficios.com [IPv6:::1]) (amavisd-new, port 10032)
 with ESMTP id RDGBH0FwZAY9; Sat,  8 Jun 2019 11:52:46 -0400 (EDT)
Received: from localhost (ip6-localhost [IPv6:::1])
 by mail.efficios.com (Postfix) with ESMTP id 4028F1D3990;
 Sat,  8 Jun 2019 11:52:46 -0400 (EDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.efficios.com 4028F1D3990
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=efficios.com;
 s=default; t=1560009166;
 bh=1zYPEOa390T+4ygk6CtXUOuek0d/tel39qFmVv01juo=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=nmY+u3lkKGhd4/aQFS9wb3Y9ZomWqTVuBO+UzEIHuF3VVQ9HR2N5MffthLUcypuV+
 O4SVrRQd/kc70mezBkUXbFa9I3mSAb5PLmTO1H7GsFmohcsfB3XBPzgVCHK9VJp4Vy
 4iOSurbuqnJOn0IH8VkH0nKd+bUdguycBTHWmt6zllSHXlnJPj/BBk5LBhCdwwGkqn
 KDBiczy+fKgFc585bxrqFDOSZADWJYtIA+fxGZbcCFo4xXIBh2Qn2kRMasmv6L0PuC
 IUDil25QL5GgHV2GKmiZffrGBIdbNvQWadJtePVf6Em4CFXxniKH03lOBVXtlcWU/R
 eNk74JO39IXtA==
X-Virus-Scanned: amavisd-new at efficios.com
Received: from mail.efficios.com ([IPv6:::1])
 by localhost (mail02.efficios.com [IPv6:::1]) (amavisd-new, port 10026)
 with ESMTP id v03xN4kWi2lL; Sat,  8 Jun 2019 11:52:46 -0400 (EDT)
Received: from mail02.efficios.com (mail02.efficios.com [167.114.142.138])
 by mail.efficios.com (Postfix) with ESMTP id 1D44F1D3986;
 Sat,  8 Jun 2019 11:52:46 -0400 (EDT)
Date: Sat, 8 Jun 2019 11:52:45 -0400 (EDT)
From: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
To: Will Deacon <will.deacon@arm.com>, Russell King <linux@arm.linux.org.uk>
Message-ID: <716499178.40175.1560009165920.JavaMail.zimbra@efficios.com>
In-Reply-To: <1975020343.35751.1559844149532.JavaMail.zimbra@efficios.com>
References: <20190429152803.7719-9-mathieu.desnoyers@efficios.com>
 <20190503193858.9676-1-mathieu.desnoyers@efficios.com>
 <1975020343.35751.1559844149532.JavaMail.zimbra@efficios.com>
Subject: Re: [PATCH v2 for 5.2 08/12] rseq/selftests: arm: use udf
 instruction for RSEQ_SIG
MIME-Version: 1.0
X-Originating-IP: [167.114.142.138]
X-Mailer: Zimbra 8.8.12_GA_3803 (ZimbraWebClient - FF67 (Linux)/8.8.12_GA_3794)
Thread-Topic: rseq/selftests: arm: use udf instruction for RSEQ_SIG
Thread-Index: YcGezvm7ivFdjjSZdlA+YYoxUnlhzUxULrHf
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_085258_118504_0B7B56D5 
X-CRM114-Status: GOOD (  22.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [167.114.142.138 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-api <linux-api@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Andy Lutomirski <luto@amacapital.net>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

----- On Jun 6, 2019, at 8:02 PM, Mathieu Desnoyers mathieu.desnoyers@efficios.com wrote:

> ----- On May 3, 2019, at 3:38 PM, Mathieu Desnoyers
> mathieu.desnoyers@efficios.com wrote:
> 
>> Use udf as the guard instruction for the restartable sequence abort
>> handler.
>> 
>> Previously, the chosen signature was not a valid instruction, based
>> on the assumption that it could always sit in a literal pool. However,
>> there are compilation environments in which literal pools are not
>> available, for instance execute-only code. Therefore, we need to
>> choose a signature value that is also a valid instruction.
>> 
>> Handle compiling with -mbig-endian on ARMv6+, which generates binaries
>> with mixed code vs data endianness (little endian code, big endian
>> data).
>> 
>> Else mismatch between code endianness for the generated signatures and
>> data endianness for the RSEQ_SIG parameter passed to the rseq
>> registration will trigger application segmentation faults when the
>> kernel try to abort rseq critical sections.
>> 
>> Prior to ARMv6, -mbig-endian generates big-endian code and data, so
>> endianness should not be reversed in that case.
> 
> And of course it cannot be that easy. This breaks when building in
> thumb mode (-mthumb). Output from librseq arm32 build [1] (code similar
> to what is found in the rseq selftests):
> 
>  CC       rseq.lo
> /tmp/ccu6Jw1b.s: Assembler messages:
> /tmp/ccu6Jw1b.s:297: Error: cannot determine Thumb instruction size. Use
> .inst.n/.inst.w instead
> /tmp/ccu6Jw1b.s:490: Error: cannot determine Thumb instruction size. Use
> .inst.n/.inst.w instead
> Makefile:460: recipe for target 'rseq.lo' failed
> 
> This appears to be caused by a missing .arm directive in RSEQ_SIG_DATA.
> Fixing with:
> 
> -               asm volatile ("b 2f\n\t"                                \
> +               asm volatile (".arm\n\t"                                \
> +                             "b 2f\n\t"                                \
> 
> gets the build to go further, but breaks at:
> 
>  CC       basic_percpu_ops_test.o
> /tmp/ccpHOMHZ.s: Assembler messages:
> /tmp/ccpHOMHZ.s:148: Error: misaligned branch destination
> /tmp/ccpHOMHZ.s:956: Error: misaligned branch destination
> Makefile:378: recipe for target 'basic_percpu_ops_test.o' failed
> 
> I suspect it's caused by the change from:
> 
> -               ".word " __rseq_str(RSEQ_SIG) "\n\t"                    \
> 
> to
> 
> +               ".arm\n\t"                                              \
> +               ".inst " __rseq_str(RSEQ_SIG_CODE) "\n\t"               \
> 
> which changes the mode from thumb to arm for the rest of the
> inline asm within __RSEQ_ASM_DEFINE_ABORT. Better yet, there appears
> to be no way to save the arm/thumb state and restore it afterwards.
> 
> I'm really starting to wonder if we should go our of our way to try
> to get this signature to be a valid instruction on arm32. Perhaps
> we should consider going back to use ".word" on arm32 so it ensures
> it uses data endianness (which matches the parameter received by the
> sys_rseq system call), let objdump and friends print it as a literal
> pool (which it is), and just choose an instruction which has little
> chances to appear for the cases we care about between ARM32 BE, LE
> and THUMB. Perhaps a 32-bit palindrome ? Bonus points if this is a
> trap instruction in common configurations for odd-cases-debugging
> purposes.

So I'm not particularly proud of the result, but I found a rather
ugly way to figure out if we are currently in thumb mode within an
inline asm, and restore that mode: test the length of a nop
instruction with a ".if" asm statement.

Do we want to go for this kind of approach, or should we revert
back to a ".word" and accept that the rseq signature before the
abort handler will be seen as data rather than an instruction
on arm32 ?

Is there a better way to do this ?

Thanks,

Mathieu

diff --git a/include/rseq/rseq-arm.h b/include/rseq/rseq-arm.h
index 1ce9231..b6c36dd 100644
--- a/include/rseq/rseq-arm.h
+++ b/include/rseq/rseq-arm.h
@@ -43,7 +43,14 @@
        ({                                                              \
                int sig;                                                \
                asm volatile ("b 2f\n\t"                                \
+                             "3:\n\t"                                  \
+                             "nop\n\t"                                 \
+                             "4:\n\t"                                  \
+                             ".arm\n\t"                                \
                              "1: .inst " __rseq_str(RSEQ_SIG_CODE) "\n\t" \
+                             ".if ((4b - 3b) == 2)\n\t"                \
+                             ".thumb\n\t"                              \
+                             ".endif\n\t"                              \
                              "2:\n\t"                                  \
                              "ldr %[sig], 1b\n\t"                      \
                              : [sig] "=r" (sig));                      \
@@ -125,8 +132,14 @@ do {                                                                       \
                __rseq_str(table_label) ":\n\t"                         \
                ".word " __rseq_str(version) ", " __rseq_str(flags) "\n\t" \
                ".word " __rseq_str(start_ip) ", 0x0, " __rseq_str(post_commit_offset) ", 0x0, " __rseq_str(abort_ip) ", 0x0\n\t" \
+               "333:\n\t"                                              \
+               "nop\n\t"                                               \
+               "444:\n\t"                                              \
                ".arm\n\t"                                              \
                ".inst " __rseq_str(RSEQ_SIG_CODE) "\n\t"               \
+               ".if ((444b - 333b) == 2)\n\t"                          \
+               ".thumb\n\t"                                            \
+               ".endif\n\t"                                            \
                __rseq_str(label) ":\n\t"                               \
                teardown                                                \
                "b %l[" __rseq_str(abort_label) "]\n\t"






-- 
Mathieu Desnoyers
EfficiOS Inc.
http://www.efficios.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
