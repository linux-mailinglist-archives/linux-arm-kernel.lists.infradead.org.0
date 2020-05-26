Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00B6A1E27DF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 19:04:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IDnV/WpJsM/NDYmrBkbjDqMLtKmYCuzYsAKPyLVIeus=; b=LPWZHf/SkiGB3E
	u9PKauJQky5+ixem8aSDdjlzNy+yo+DIQlu2By3nBF+K0TZFaUvXXgQu1lGT5BAperKveW4DDsyfA
	JSdS2E/O6P3MRWQe/nSclW0IKjkzGSqJU6u3UHnBuSkbSapp3TGoVvXBrb0pzSWBTokJbpJfY1xe0
	237cepnr7w7r0OusvxcYOs/6VFkSMGX8VLJAbqPKuVADmGZupNdxjnbQJvImKIzJXSztBD4cdn+pC
	srnU7jsPfYqJ0uHJIHotYDG/X4Nhqw0L2hc5AIx4MA6xLtxJ9IKVn+B6Tzdr0YNn/3RLAaz1P9r2C
	xSS+VNkth6E4LYlguCjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdczZ-0003NG-8p; Tue, 26 May 2020 17:03:53 +0000
Received: from mail-qt1-x849.google.com ([2607:f8b0:4864:20::849])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdczP-0003MC-Et
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 17:03:44 +0000
Received: by mail-qt1-x849.google.com with SMTP id f1so9059580qti.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 10:03:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=sjeGTWCrYFBnhNd6ar8naLJbL00oyzfJjyGq2z7zCYM=;
 b=G3Ey5fIQCWCFoypqGjbc2hk0avGWOqqDQnE2vUlBSYrDxioSYd9RPDbUGiFhB77PIN
 t+bk5WIVhdyU8FJH9aiOs73NxtjgI+3wtHQnXsuM3wdeAu77xwHxUSxumpOj8O14fgfy
 8jW+5J/XMnS2ZgzOMAq3BWRdqi5ycT6TQHGdbkjPI5e1qOkHWej+Dqtuc+OcJ4S+VyTW
 /P0fQDdmQy9GZ/f6TowlDBdeaICe19n/rU+f6YBtumPcQK+Ymby8ubZcvjaN28KtZfmQ
 Hvb70ZKZPHQQL8hxKBnkd9/8/zCXb9x8NcKbZ8RfVWoQLuRhkpnxq8UQeWD4JWAO/2p3
 Uy0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=sjeGTWCrYFBnhNd6ar8naLJbL00oyzfJjyGq2z7zCYM=;
 b=RAEo0LiLkHBPD05prVa7+qxAGr2OijZClmw94asGwkqRr/7ZgHMUe9uT6hdXufoWDj
 EXm8RwEE0aCuE7O1o/VnYxTDY0Fwnb5wWomCUdRDPzhxoa+CDGiF/o72hCZWtPPmU8N6
 s0EmzO0c5E2uG14555S7Z1l4N0t1pm/NRFwp5/Us4nDZ0bh93vfDUC+7vkbhDTeonM9H
 DrAbUo1hBSSnOn+OA+d6SF890sjAyzydzEYYlmx57A4ZCfA4uIURfqdg/S/RHauojxfh
 HbkzunboJ4KgouLoNU6EPmy2UAcCSBNWUup09UrTe2wc1YxK0jxiu8nyuXex+Q34Lsnc
 cK8A==
X-Gm-Message-State: AOAM53083XsY7t1UxMsEVYeM63m6UStXhjRE/GIYdBekRLVClzKDodAE
 dRZPqvb5J76aN58egehiR8nwlxIpziXVGMjxRE4=
X-Google-Smtp-Source: ABdhPJwQhZ8w5Vcn+j5tdQBJJGLG61l6jPuEHHQhcKItCdsS2S47GmgllZZ+b0oAtAbsKy4FDWj0huk5A5roJS6EAjM=
X-Received: by 2002:a05:6214:10e4:: with SMTP id
 q4mr2609572qvt.83.1590512619406; 
 Tue, 26 May 2020 10:03:39 -0700 (PDT)
Date: Tue, 26 May 2020 10:03:16 -0700
In-Reply-To: <CAK7LNASkcLx-K+W1va9WxfxZ=7H-w65QbyBt=88dzK1NrrM_PQ@mail.gmail.com>
Message-Id: <20200526170321.137238-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <CAK7LNASkcLx-K+W1va9WxfxZ=7H-w65QbyBt=88dzK1NrrM_PQ@mail.gmail.com>
X-Mailer: git-send-email 2.27.0.rc0.183.gde8f92d652-goog
Subject: [PATCH v4] Makefile: support compressed debug info
From: Nick Desaulniers <ndesaulniers@google.com>
To: Masahiro Yamada <masahiroy@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_100343_499738_0DCF3B6F 
X-CRM114-Status: GOOD (  12.58  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:849 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Nick Clifton <nickc@redhat.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Naohiro Aota <naohiro.aota@wdc.com>, Stephen Rothwell <sfr@canb.auug.org.au>,
 Fangrui Song <maskray@google.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 linux-kbuild@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 clang-built-linux@googlegroups.com,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Sedat Dilek <sedat.dilek@gmail.com>, David Blaikie <blaikie@google.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Michal Marek <michal.lkml@markovi.net>, Randy Dunlap <rdunlap@infradead.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Changbin Du <changbin.du@intel.com>, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As debug information gets larger and larger, it helps significantly save
the size of vmlinux images to compress the information in the debug
information sections. Note: this debug info is typically split off from
the final compressed kernel image, which is why vmlinux is what's used
in conjunction with GDB. Minimizing the debug info size should have no
impact on boot times, or final compressed kernel image size.

All of the debug sections will have a `C` flag set.
$ readelf -S <object file>

$ bloaty vmlinux.gcc75.compressed.dwarf4 -- \
    vmlinux.gcc75.uncompressed.dwarf4

    FILE SIZE        VM SIZE
 --------------  --------------
  +0.0%     +18  [ = ]       0    [Unmapped]
 -73.3%  -114Ki  [ = ]       0    .debug_aranges
 -76.2% -2.01Mi  [ = ]       0    .debug_frame
 -73.6% -2.89Mi  [ = ]       0    .debug_str
 -80.7% -4.66Mi  [ = ]       0    .debug_abbrev
 -82.9% -4.88Mi  [ = ]       0    .debug_ranges
 -70.5% -9.04Mi  [ = ]       0    .debug_line
 -79.3% -10.9Mi  [ = ]       0    .debug_loc
 -39.5% -88.6Mi  [ = ]       0    .debug_info
 -18.2%  -123Mi  [ = ]       0    TOTAL

$ bloaty vmlinux.clang11.compressed.dwarf4 -- \
    vmlinux.clang11.uncompressed.dwarf4

    FILE SIZE        VM SIZE
 --------------  --------------
  +0.0%     +23  [ = ]       0    [Unmapped]
 -65.6%    -871  [ = ]       0    .debug_aranges
 -77.4% -1.84Mi  [ = ]       0    .debug_frame
 -82.9% -2.33Mi  [ = ]       0    .debug_abbrev
 -73.1% -2.43Mi  [ = ]       0    .debug_str
 -84.8% -3.07Mi  [ = ]       0    .debug_ranges
 -65.9% -8.62Mi  [ = ]       0    .debug_line
 -86.2% -40.0Mi  [ = ]       0    .debug_loc
 -42.0% -64.1Mi  [ = ]       0    .debug_info
 -22.1%  -122Mi  [ = ]       0    TOTAL

For x86_64 defconfig + LLVM=1 (before):
Elapsed (wall clock) time (h:mm:ss or m:ss): 3:22.03
Maximum resident set size (kbytes): 43856

For x86_64 defconfig + LLVM=1 (after):
Elapsed (wall clock) time (h:mm:ss or m:ss): 3:32.52
Maximum resident set size (kbytes): 1566776

Thanks to:
Nick Clifton helped us to provide the minimal binutils version.
Sedat Dilet found an increase in size of debug .deb package.

Cc: Nick Clifton <nickc@redhat.com>
Cc: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: David Blaikie <blaikie@google.com>
Reviewed-by: Fangrui Song <maskray@google.com>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes V3 -> V4:
* Add thanks line to commit message as per Masahiro.
* Swap Sugguested-by to Cc for two lines in commit message, as per
  Masahiro.

Changes V2 -> V3:
* Fix blaikie@'s email addr.
* Fix Fangrui's Reviewed-by tag as per Masahiro.
* Fix help text as per Masahiro.
* Fix -Wa$(comma)foo as per Masahiro.

Changes V1 -> V2:
* rebase on linux-next.
* Add assembler flags as per Fangrui.
* Add note about KDEB_COMPRESS+scripts/package/builddeb
  as per Sedat and Masahiro.
* Add note about bintutils version requirements as per Nick C.
* Add note about measured increased build time and max RSS.

 Makefile                          |  6 ++++++
 arch/arm64/kernel/vdso32/Makefile |  2 +-
 lib/Kconfig.debug                 | 17 +++++++++++++++++
 3 files changed, 24 insertions(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 71687bfe1cd9..be8835296754 100644
--- a/Makefile
+++ b/Makefile
@@ -822,6 +822,12 @@ DEBUG_CFLAGS	+= $(call cc-option, -femit-struct-debug-baseonly) \
 		   $(call cc-option,-fno-var-tracking)
 endif
 
+ifdef CONFIG_DEBUG_INFO_COMPRESSED
+DEBUG_CFLAGS	+= -gz=zlib
+KBUILD_AFLAGS	+= -Wa,--compress-debug-sections=zlib
+KBUILD_LDFLAGS	+= --compress-debug-sections=zlib
+endif
+
 KBUILD_CFLAGS += $(DEBUG_CFLAGS)
 export DEBUG_CFLAGS
 
diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
index 3964738ebbde..5fd7792d03fc 100644
--- a/arch/arm64/kernel/vdso32/Makefile
+++ b/arch/arm64/kernel/vdso32/Makefile
@@ -135,7 +135,7 @@ c-obj-vdso-gettimeofday := vgettimeofday.o
 asm-obj-vdso := sigreturn.o
 
 ifneq ($(c-gettimeofday-y),)
-VDSO_CFLAGS_gettimeofday_o += -include $(c-gettimeofday-y)
+VDSO_CFLAGS_gettimeofday_o += -include $(c-gettimeofday-y) -marm
 endif
 
 VDSO_CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os
diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index b8f023e054b9..7fc82dcf814b 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -225,6 +225,23 @@ config DEBUG_INFO_REDUCED
 	  DEBUG_INFO build and compile times are reduced too.
 	  Only works with newer gcc versions.
 
+config DEBUG_INFO_COMPRESSED
+	bool "Compressed debugging information"
+	depends on DEBUG_INFO
+	depends on $(cc-option,-gz=zlib)
+	depends on $(as-option,-Wa$(comma)--compress-debug-sections=zlib)
+	depends on $(ld-option,--compress-debug-sections=zlib)
+	help
+	  Compress the debug information using zlib.  Requires GCC 5.0+ or Clang
+	  5.0+, binutils 2.26+, and zlib.
+
+	  Users of dpkg-deb via scripts/package/builddeb may find an increase in
+	  size of their debug .deb packages with this config set, due to the
+	  debug info being compressed with zlib, then the object files being
+	  recompressed with a different compression scheme. But this is still
+	  preferable to setting $KDEB_COMPRESS to "none" which would be even
+	  larger.
+
 config DEBUG_INFO_SPLIT
 	bool "Produce split debuginfo in .dwo files"
 	depends on DEBUG_INFO
-- 
2.27.0.rc0.183.gde8f92d652-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
