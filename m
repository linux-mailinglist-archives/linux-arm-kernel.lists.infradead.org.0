Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE13B1F895F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jun 2020 16:45:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c8ZOYA4aRxtyeglesJFwSl9vhWDc3uEIyzB/CtMqoVM=; b=G4347HCAxy0QVP
	pYZdyOrcV4kb6sDjQmbHsI6arekr9sOc1umobMJIz/ePWHgDqPLI+oKcnEY43ktqmpDDEf7KRrwua
	XG3/V0XED71+rYiNxSHcMQPG56EFQUn0w+hWdnlxfc9WO2pGkE7Zpseu5UgkLwjGSicWUOeJ+FwHN
	7c7R9JrXuSfc+MkIia/7IdurjPafEy7fhDnd0XHsI8OEAEyOrlYxbUvBrPPenQmeocyP8nIKSSTqa
	bgWavbEfgYLQ6Q2K138bdZz+1y3cqpEMqhCnyRt/wHUfcPfWwsWis7xVww3lc3Nzs6fP4iUYmpcFC
	6cR49Sbg16kCli8w1muA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkTsQ-0000cJ-Gz; Sun, 14 Jun 2020 14:44:50 +0000
Received: from conuserg-11.nifty.com ([210.131.2.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkTsJ-0000bE-Kz
 for linux-arm-kernel@lists.infradead.org; Sun, 14 Jun 2020 14:44:45 +0000
Received: from oscar.flets-west.jp (softbank126090202047.bbtec.net
 [126.90.202.47]) (authenticated)
 by conuserg-11.nifty.com with ESMTP id 05EEhjq1024323;
 Sun, 14 Jun 2020 23:43:46 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 05EEhjq1024323
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1592145827;
 bh=2tNBTLIrpjvalARV+ZKm1wYdYtOnuZzF6U2fUm+curc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=0MkqVwFcLmqBEkbwbyIVa3kclqsXzYF/ckTbUtRz6QfEd/JnCZ9JnDydoLKUEFQ7s
 mpvI5rUGsxigQs2ynVeFgVee8i8Jqm3Azb2xyMBa7JHkrDi9zLimnrzziIm1xQXikg
 S63ZoDQwP5Omql9Wmz9guRCQKIxj3Eywm8Mbe4qE3BrW8zvcqNLn1jrQGP9IJZuzwR
 mT7SrcbjxR8uIERzDPERllhaV+/l//g3ktsutBTeKTACqI3HG69bjeKgumT3WgL6q5
 YUsXnYSBSXvNUQ6KkMAqtLZBoNuQ5DamQq5igzLXy2TXUd4xftlBGSADXsLfJDdSWk
 f+Nri5Ra+LB1w==
X-Nifty-SrcIP: [126.90.202.47]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Subject: [PATCH 2/2] kconfig: unify cc-option and as-option
Date: Sun, 14 Jun 2020 23:43:41 +0900
Message-Id: <20200614144341.1077495-2-masahiroy@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200614144341.1077495-1-masahiroy@kernel.org>
References: <20200614144341.1077495-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_074443_913183_B2DC92ED 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.78 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Masahiro Yamada <masahiroy@kernel.org>, Randy Dunlap <rdunlap@infradead.org>,
 Brendan Higgins <brendanhiggins@google.com>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Changbin Du <changbin.du@intel.com>,
 Arvind Sankar <nivedita@alum.mit.edu>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

cc-option and as-option are almost the same; both pass the flag to
$(CC). The main difference is the cc-option stops before the assemble
stage (-S option) whereas as-option stops after it (-c option).

I chose -S because it is slightly faster, but $(cc-option,-gz=zlib)
returns a wrong result (https://lkml.org/lkml/2020/6/9/1529).
It has been fixed by a separate patch, but using -c is more robust.

However, you cannot simply replace -S with -c because the following
code would break:

    depends on $(cc-option,-gsplit-dwarf)

The combination of -c and -gsplit-dwarf does not accept /dev/null as
output.

  $ cat /dev/null | gcc -gsplit-dwarf -S -x c - -o /dev/null
  $ echo $?
  0

  $ cat /dev/null | gcc -gsplit-dwarf -c -x c - -o /dev/null
  objcopy: Warning: '/dev/null' is not an ordinary file
  $ echo $?
  1

  $ cat /dev/null | gcc -gsplit-dwarf -c -x c - -o tmp.o
  $ echo $?
  0

There is another flag that creates an separate file based on the
object file path:

  $ cat /dev/null | gcc -ftest-coverage -c -x c - -o /dev/null
  <stdin>:1: error: cannot open /dev/null.gcno

So, we cannot use /dev/null to sink the output.

Align the cc-option implementation with scripts/Kbuild.include.

With -c option used in cc-option, as-option is unneeded.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/arm64/Kconfig      | 2 +-
 lib/Kconfig.debug       | 1 -
 scripts/Kconfig.include | 8 +-------
 3 files changed, 2 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 31380da53689..6eb18f45258e 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1564,7 +1564,7 @@ config CC_HAS_SIGN_RETURN_ADDRESS
 	def_bool $(cc-option,-msign-return-address=all)
 
 config AS_HAS_PAC
-	def_bool $(as-option,-Wa$(comma)-march=armv8.3-a)
+	def_bool $(cc-option,-Wa$(comma)-march=armv8.3-a)
 
 config AS_HAS_CFI_NEGATE_RA_STATE
 	def_bool $(as-instr,.cfi_startproc\n.cfi_negate_ra_state\n.cfi_endproc\n)
diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index 96999d4d2dda..9ad9210d70a1 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -229,7 +229,6 @@ config DEBUG_INFO_COMPRESSED
 	bool "Compressed debugging information"
 	depends on DEBUG_INFO
 	depends on $(cc-option,-gz=zlib)
-	depends on $(as-option,-gz=zlib)
 	depends on $(ld-option,--compress-debug-sections=zlib)
 	help
 	  Compress the debug information using zlib.  Requires GCC 5.0+ or Clang
diff --git a/scripts/Kconfig.include b/scripts/Kconfig.include
index c264da2b9b30..a5fe72c504ff 100644
--- a/scripts/Kconfig.include
+++ b/scripts/Kconfig.include
@@ -25,18 +25,12 @@ failure = $(if-success,$(1),n,y)
 
 # $(cc-option,<flag>)
 # Return y if the compiler supports <flag>, n otherwise
-cc-option = $(success,$(CC) -Werror $(CLANG_FLAGS) $(1) -S -x c /dev/null -o /dev/null)
+cc-option = $(success,mkdir .tmp_$$$$; trap "rm -rf .tmp_$$$$" EXIT; $(CC) -Werror $(CLANG_FLAGS) $(1) -c -x c /dev/null -o .tmp_$$$$/tmp.o)
 
 # $(ld-option,<flag>)
 # Return y if the linker supports <flag>, n otherwise
 ld-option = $(success,$(LD) -v $(1))
 
-# $(as-option,<flag>)
-# /dev/zero is used as output instead of /dev/null as some assembler cribs when
-# both input and output are same. Also both of them have same write behaviour so
-# can be easily substituted.
-as-option = $(success, $(CC) $(CLANG_FLAGS) $(1) -c -x assembler /dev/null -o /dev/zero)
-
 # $(as-instr,<instr>)
 # Return y if the assembler supports <instr>, n otherwise
 as-instr = $(success,printf "%b\n" "$(1)" | $(CC) $(CLANG_FLAGS) -c -x assembler -o /dev/null -)
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
