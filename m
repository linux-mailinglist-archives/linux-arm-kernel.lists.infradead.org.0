Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2DEC656DB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 14:28:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Umw3ooVRnLPgLrKWdNDfwJoWMeu355VvZ2/JEB/zHEU=; b=kzWJ/ph0WI7Zv9
	FzdVGCIwGTrxNp9ZT95UbAhfJJ/brZjX0kUn3pKZogemPGq8pZhPqJ4Bwg89tNNcH+Wg2KffSJGBN
	7Ecz1gzqJr3rDXFoZmLw4p3bJleZcxpKm4cxDRyZH30w5Tp3apZOLZX7Q68QTA0MDKZCT9l+Y7gmX
	J3FGNCbwow7XweLLQGEdZUbONY4qB3SUuP16NX0Ds6Xh/Jmbtl6JbX2nJvTL70MJsw/cRNhPDa1He
	IibosXFp0Ei/k8UofwTdNii2aYSmiz20jSalttCLN/sRG/NfcO5L6bYsbnmtLK9Hhd1zbH0hwxNB4
	fhVQn6XtYKgPnFXsU0qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlYBd-0006V3-Dp; Thu, 11 Jul 2019 12:28:33 +0000
Received: from mail-yw1-f67.google.com ([209.85.161.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlYBT-0006RE-6T
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 12:28:26 +0000
Received: by mail-yw1-f67.google.com with SMTP id b143so3218006ywb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 05:28:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JhuJhWxP1rUZnb+Vp6G8TuOnOq95+bSLey7FrYy8zQY=;
 b=SHS5NlU9rWEEj0RSvjZfbfW0smO9ZwWr1xeoyEEApf4iju0NkvQlmd1GmV8LiClyV5
 3shXwNmLEJFLsJWLqVWnhBqb90UARjSUeb55CuCxaXc1jH3W1ecedNthoD3IRHEsNjos
 RDzCgRXnAjtWGiglUc2NrvwSKqFZDQDVUjVpFCxD9egDkuEczNnF+K3hVyoptinXDuUD
 jF2UUcNOnng1QYfmV79Z4HgiY0pvdTSVgxFDJlybRgm6y+MTfkC2ARJuUxqhA+Glvk4P
 7nyWjZqOD4knF/X2AXYda65OGRWBnBosHNmHW4JVwIlj4vh9v1qtEBdP1n13SLyoXb4z
 GCMw==
X-Gm-Message-State: APjAAAXLTZhFuCvzLKEKVnY258e0HtEGuoPsO1bzanfQL6y/46dUJ3Lc
 ym6Z4uxIONOASmONnjuWkqmHCVCA1LpckWd/+3QX/5SAxYo=
X-Google-Smtp-Source: APXvYqxnENs8rD53npbxsD00xL3VrlCkW1LR5JPpFwT+zi16w+B/f9HTckdF0z/FhReYSAwdlJwKNwtGWfJSorUq86s=
X-Received: by 2002:aed:33a4:: with SMTP id v33mr1942490qtd.18.1562848101449; 
 Thu, 11 Jul 2019 05:28:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190710130206.1670830-1-arnd@arndb.de>
 <33511b0e-6d7b-c156-c415-7a609b049567@arm.com>
In-Reply-To: <33511b0e-6d7b-c156-c415-7a609b049567@arm.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 11 Jul 2019 14:28:04 +0200
Message-ID: <CAK8P3a1EBaWdbAEzirFDSgHVJMtWjuNt2HGG8z+vpXeNHwETFQ@mail.gmail.com>
Subject: Re: [PATCH] vsyscall: use __iter_div_u64_rem()
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_052823_275435_D458C2E7 
X-CRM114-Status: GOOD (  14.05  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.67 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arch <linux-arch@vger.kernel.org>, Shuah Khan <shuah@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Andy Lutomirski <luto@kernel.org>, Dmitry Safonov <0x7f454c46@gmail.com>,
 Huw Davies <huw@codeweavers.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-mips@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 Russell King <linux@armlinux.org.uk>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Paul Burton <paul.burton@mips.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Thomas Gleixner <tglx@linutronix.de>, Mark Salyzyn <salyzyn@android.com>,
 Peter Collingbourne <pcc@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 11, 2019 at 2:14 PM Vincenzo Frascino
<vincenzo.frascino@arm.com> wrote:
>
>
> Could you please tell me which version of the compiler did you use?
>
> My building command is:
>
> # make mrproper && make CC=clang HOSTCC=clang i386_defconfig && make ARCH=i386
> CC=clang HOSTCC=clang -j56
>

See below for the patch I am using locally to work around this.
That patch is probably wrong, so I have not submitted it yet, but it
gives you a clean build ;-)

     Arnd

8<---
Subject: [PATCH] x86: percpu: fix clang 32-bit build

clang does not like an inline assembly with a "=q" contraint for
a 64-bit output:

arch/x86/events/perf_event.h:824:21: error: invalid output size for
constraint '=q'
        u64 disable_mask = __this_cpu_read(cpu_hw_events.perf_ctr_virt_mask);
                           ^
include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
        raw_cpu_read(pcp);                                              \
        ^
include/linux/percpu-defs.h:421:28: note: expanded from macro 'raw_cpu_read'
 #define raw_cpu_read(pcp)
__pcpu_size_call_return(raw_cpu_read_, pcp)
                                        ^
include/linux/percpu-defs.h:322:23: note: expanded from macro
'__pcpu_size_call_return'
        case 1: pscr_ret__ = stem##1(variable); break;                  \
                             ^
<scratch space>:357:1: note: expanded from here
raw_cpu_read_1
^
arch/x86/include/asm/percpu.h:394:30: note: expanded from macro 'raw_cpu_read_1'
 #define raw_cpu_read_1(pcp)             percpu_from_op(, "mov", pcp)
                                        ^
arch/x86/include/asm/percpu.h:189:15: note: expanded from macro 'percpu_from_op'
                    : "=q" (pfo_ret__)                  \
                            ^

According to the commit that introduced the "q" constraint, this was
needed to fix miscompilation, but it gives no further detail.

Using the normal "=r" constraint seems to work so far.

Fixes: 3c598766a2ba ("x86: fix percpu_{to,from}_op()")
Cc: Jan Beulich <jbeulich@suse.com>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>

diff --git a/arch/x86/include/asm/percpu.h b/arch/x86/include/asm/percpu.h
index 2278797c769d..e791fbf4018f 100644
--- a/arch/x86/include/asm/percpu.h
+++ b/arch/x86/include/asm/percpu.h
@@ -99,7 +99,7 @@ do {                                                  \
        case 1:                                         \
                asm qual (op "b %1,"__percpu_arg(0)     \
                    : "+m" (var)                        \
-                   : "qi" ((pto_T__)(val)));           \
+                   : "ri" ((pto_T__)(val)));           \
                break;                                  \
        case 2:                                         \
                asm qual (op "w %1,"__percpu_arg(0)     \
@@ -144,7 +144,7 @@ do {
                         \
                else                                                    \
                        asm qual ("addb %1, "__percpu_arg(0)            \
                            : "+m" (var)                                \
-                           : "qi" ((pao_T__)(val)));                   \
+                           : "ri" ((pao_T__)(val)));                   \
                break;                                                  \
        case 2:                                                         \
                if (pao_ID__ == 1)                                      \
@@ -186,7 +186,7 @@ do {
                         \
        switch (sizeof(var)) {                          \
        case 1:                                         \
                asm qual (op "b "__percpu_arg(1)",%0"   \
-                   : "=q" (pfo_ret__)                  \
+                   : "=r" (pfo_ret__)                  \
                    : "m" (var));                       \
                break;                                  \
        case 2:                                         \
@@ -215,7 +215,7 @@ do {
                         \
        switch (sizeof(var)) {                          \
        case 1:                                         \
                asm(op "b "__percpu_arg(P1)",%0"        \
-                   : "=q" (pfo_ret__)                  \
+                   : "=r" (pfo_ret__)                  \
                    : "p" (&(var)));                    \
                break;                                  \
        case 2:                                         \

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
