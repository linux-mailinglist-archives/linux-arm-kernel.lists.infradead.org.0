Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F36C955546
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 19:00:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=U8RvHOzVVLEZhRVi+o7gfMZTetX0nWNXJXhbcfNp91o=; b=ZOQv2a+9hDrhcoznJTQVYn7Vf
	nOqWJMdi5qeU7Q2zEY8Wa7eiPXFX53/gIVwdqhaWxLH2BvqEn+PhzpYIl3VAsfIQHqPO1rV08mZHv
	7auWlADCIbggDBBz1OZH2JxbkpdZbBuNNqr0kyvD1ukcRmnsaUSzYdXhF5n/D/D5FkypBYUdeXy+O
	pRLnJ4RbbnnT0P0FG5/YC2IGsUUitXLehDsblmeA1+g88Vw9wwgEed9EtDeF+dmGNErsg6MYK0gij
	8TkxpwFSnTBqgQ8M23Zia76aZs7xrXZk11RSfOPEsrC4HpM4dB5x1OoRyVyH2g7tLHRYblOAePNtX
	sUPEPyN8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfooK-0003Mm-Fp; Tue, 25 Jun 2019 17:00:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfoo5-0003LV-Mk
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 17:00:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E699F360;
 Tue, 25 Jun 2019 10:00:29 -0700 (PDT)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BEB0F3F718;
 Tue, 25 Jun 2019 10:00:28 -0700 (PDT)
Subject: Re: "arm64: vdso: Substitute gettimeofday() with C implementation"
 breaks clang build
To: Nick Desaulniers <ndesaulniers@google.com>
References: <1561464964.5154.63.camel@lca.pw>
 <e86774e4-7470-5cb2-fc3e-b7c1f529d253@arm.com>
 <1561467369.5154.67.camel@lca.pw>
 <00a78980-6b9c-5d5b-ed01-b28bb34be022@arm.com>
 <1561470705.5154.68.camel@lca.pw>
 <5113362e-1256-6712-6ce8-9599b1806cf1@arm.com>
 <1561472887.5154.72.camel@lca.pw>
 <668bbe72-b32b-8cee-ccad-d1f6110c6728@arm.com>
 <CAKwvOdmCFjunXRbninTdqoDGPNJ6b7npgXLAPYGqFZas5ofNjw@mail.gmail.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <193c179e-16ca-4b4e-2584-75e8f6c1819f@arm.com>
Date: Tue, 25 Jun 2019 18:00:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdmCFjunXRbninTdqoDGPNJ6b7npgXLAPYGqFZas5ofNjw@mail.gmail.com>
Content-Type: multipart/mixed; boundary="------------C25D41F534D1DAA79714818A"
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_100034_013596_70BB31FA 
X-CRM114-Status: GOOD (  18.83  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Qian Cai <cai@lca.pw>, Thomas Gleixner <tglx@linutronix.de>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a multi-part message in MIME format.
--------------C25D41F534D1DAA79714818A
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi Nick,

On 25/06/2019 17:26, Nick Desaulniers wrote:
> On Tue, Jun 25, 2019 at 7:54 AM Vincenzo Frascino
> <vincenzo.frascino@arm.com> wrote:
>>
>> Hi Qian,
>>
>> ...
>>
>>>
>>> but clang 7.0 is still use in many distros by default, so maybe this commit can
>>> be fixed by adding a conditional check to use "small" if clang version < 8.0.
>>>
>>
>> Could you please verify that the patch below works for you?
> 
> Should it be checking against CONFIG_CLANG_VERSION, or better yet be
> using cc-option macro?
> 

This is what I did in my proposed patch, but I was surprised that clang-7
generates relocations that clang-8 does not.

  LD      arch/arm64/kernel/vdso/vdso.so.dbg
  VDSOCHK arch/arm64/kernel/vdso/vdso.so.dbg
00000000000009d0 R_AARCH64_JUMP_SLOT  _mcount

arch/arm64/kernel/vdso/vdso.so.dbg: dynamic relocations are not supported
make[1]: *** [arch/arm64/kernel/vdso/Makefile:59:
arch/arm64/kernel/vdso/vdso.so.dbg] Error 1
make: *** [arch/arm64/Makefile:180: vdso_prepare] Error 2

This is the the result of the macro I introduced in lib/vdso/Makefile.

And I just found out why. I forgot to add a "+" in the patch provided :)

@Qian: Could you please retry with the one provided below?

-- 
Regards,
Vincenzo

--->8----




--------------C25D41F534D1DAA79714818A
Content-Type: text/x-patch;
 name="0001-arm64-vdso-Fix-compilation-with-clang-8.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="0001-arm64-vdso-Fix-compilation-with-clang-8.patch"

From eed9ea23cf999d31b87db4b98a8e9de209706132 Mon Sep 17 00:00:00 2001
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Date: Tue, 25 Jun 2019 15:49:37 +0100
Subject: [PATCH] arm64: vdso: Fix compilation with clang < 8

clang versions previous to 8 do not support -mcmodel=tiny.

Add a check to the vDSO Makefile for arm64 to remove the flag when these
versions of the compiler are detected.

Reported-by: Qian Cai <cai@lca.pw>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/arm64/kernel/vdso/Makefile | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
index ec81d28aeb5d..5154f50aff2d 100644
--- a/arch/arm64/kernel/vdso/Makefile
+++ b/arch/arm64/kernel/vdso/Makefile
@@ -38,6 +38,11 @@ else
 CFLAGS_vgettimeofday.o = -O2 -mcmodel=tiny -include $(c-gettimeofday-y)
 endif
 
+# Clang versions less than 8 do not support -mcmodel=tiny
+ifeq ($(shell test $(CONFIG_CLANG_VERSION) -lt 80000; echo $$?),0)
+CFLAGS_REMOVE_vgettimeofday.o += -mcmodel=tiny
+endif
+
 # Disable gcov profiling for VDSO code
 GCOV_PROFILE := n
 
-- 
2.22.0


--------------C25D41F534D1DAA79714818A
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--------------C25D41F534D1DAA79714818A--

