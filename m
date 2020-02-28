Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE7A172D30
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 01:25:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OdVwenjTYGS7TFIhFcU9SjpBNbBZhq60hOsj3G44wJM=; b=r0rYrJacLM6q0B
	yESRRrkJPcEygfubQFvx0386TUUxNGECY369AVHIYxEll7gopiGHy72SiikuRGcyUUESBPpYtPeUX
	m14GsjJJzcX0JPdlsqDJarf2S7dQhB5rvkxgdGuuN7ooSEW0Xk/M8k3iHseiuKHLwTf/uuNCfRpiR
	bQYfIjE5qVXbrutulDAJ+EU+VcOkLZXLDzCmlgWSehwBYskTVnSFf9QqTEI7I4aYGhg6LZqJQj+YR
	J/2RSQHzt037gJyY3DYy2p7ecYydydyVtDe6YH5GBp2xZ9TPfYNPyd4Y2JTSfgh45dBskf+/ifnjf
	Peoqpk8Nkzl2a1TvTm8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7TSx-0002m1-60; Fri, 28 Feb 2020 00:25:19 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7TQe-00015E-Ub
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 00:22:58 +0000
Received: by mail-pl1-x641.google.com with SMTP id j7so499196plt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 16:22:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5pMXhDd5WkHmc2Nd9+Jjb38fhh7Zetn6tk9gX3pPvjM=;
 b=NdpfQ9E77BQQDeLbRe4C0kneiRaa4BRWlG/661nY6+36gEg6ulvyK6zJdrM6FlpkLx
 rZnuOrOoXJH6eCy0PMi8rot0VETFWym5wj0fDsIe9QVrzJg7KEO+1C0QPBYDgIEB4mcg
 xFYZAsgdnMK5ZAzxXgLUxelkrt9eHsy30qa9U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5pMXhDd5WkHmc2Nd9+Jjb38fhh7Zetn6tk9gX3pPvjM=;
 b=fOjxYvaoD0hJKsVkqAZCVDKVtptgAz1NSXT5xH9BSI79EHVEEKfQCHCrgEiaL4AYwH
 ABXCjYIdIz6kYqxIMP5fWPVkVp5FffpsidIJ96iMGUPN6LSpRyQQkK6UWoqUz3hVhvea
 0d7znNvQb2SDPce7UrnHLsVcbdakkXeIIbnM2BLyAS5feIj+ukarXblXL9PzBpMtTx0j
 C4sh9ZO1srF5kGMVo5GWbM1MlY8jpJ1tZzxMSMXODfAOhatD9NcFPFPiWZYCcFcp5a10
 W/C4Ub3bxlvjPsJD+h6jIBz3zelhQxFZBFoDSy83tPLikepEMVNsto0bwzA1K9YIu+L+
 3GHw==
X-Gm-Message-State: APjAAAXD2MRUidnDHXnjPF/0qF/j6uyNJnBhDPHvaHAkuhhaCN3gRJkJ
 F3T2jYRAtZp71saXuxHNkRFpEQ==
X-Google-Smtp-Source: APXvYqzuOX0XiyVaOeVuugXOJBvn7E6Nhu05xm90KTUN/qkQ34/SDiQ4lE0A5jOUkXzf88ArP2HuXA==
X-Received: by 2002:a17:902:694b:: with SMTP id
 k11mr1375405plt.334.1582849375873; 
 Thu, 27 Feb 2020 16:22:55 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id 3sm8455845pfi.13.2020.02.27.16.22.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 16:22:52 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@suse.de>
Subject: [PATCH 9/9] arm/boot: Warn on orphan section placement
Date: Thu, 27 Feb 2020 16:22:44 -0800
Message-Id: <20200228002244.15240-10-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200228002244.15240-1-keescook@chromium.org>
References: <20200228002244.15240-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_162257_031173_08E0B0DC 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, "H.J. Lu" <hjl.tools@gmail.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-kbuild@vger.kernel.org, Peter Collingbourne <pcc@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <masahiroy@kernel.org>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, James Morse <james.morse@arm.com>,
 linux-arch@vger.kernel.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We don't want to depend on the linker's orphan section placement
heuristics as these can vary between linkers, and may change between
versions. All sections need to be explicitly named in the linker
script.

Use common macros for debug sections, discards, and text stubs. Add
discards for unwanted .note, and .rel sections. Finally, enable orphan
section warning.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/arm/boot/compressed/Makefile      |  2 ++
 arch/arm/boot/compressed/vmlinux.lds.S | 17 +++++++----------
 2 files changed, 9 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boot/compressed/Makefile b/arch/arm/boot/compressed/Makefile
index da599c3a1193..7faa2b5e7e16 100644
--- a/arch/arm/boot/compressed/Makefile
+++ b/arch/arm/boot/compressed/Makefile
@@ -136,6 +136,8 @@ endif
 LDFLAGS_vmlinux += --no-undefined
 # Delete all temporary local symbols
 LDFLAGS_vmlinux += -X
+# Report orphan sections
+LDFLAGS_vmlinux += --orphan-handling=warn
 # Next argument is a linker script
 LDFLAGS_vmlinux += -T
 
diff --git a/arch/arm/boot/compressed/vmlinux.lds.S b/arch/arm/boot/compressed/vmlinux.lds.S
index fc7ed03d8b93..a6a51b5d2328 100644
--- a/arch/arm/boot/compressed/vmlinux.lds.S
+++ b/arch/arm/boot/compressed/vmlinux.lds.S
@@ -2,6 +2,7 @@
 /*
  *  Copyright (C) 2000 Russell King
  */
+#include <asm/vmlinux.lds.h>
 
 #ifdef CONFIG_CPU_ENDIAN_BE8
 #define ZIMAGE_MAGIC(x) ( (((x) >> 24) & 0x000000ff) | \
@@ -17,8 +18,11 @@ ENTRY(_start)
 SECTIONS
 {
   /DISCARD/ : {
+    ARM_COMMON_DISCARD
     *(.ARM.exidx*)
     *(.ARM.extab*)
+    *(.note.*)
+    *(.rel.*)
     /*
      * Discard any r/w data - this produces a link error if we have any,
      * which is required for PIC decompression.  Local data generates
@@ -37,9 +41,7 @@ SECTIONS
     *(.text)
     *(.text.*)
     *(.fixup)
-    *(.gnu.warning)
-    *(.glue_7t)
-    *(.glue_7)
+    ARM_STUBS_TEXT
   }
   .table : ALIGN(4) {
     _table_start = .;
@@ -124,12 +126,7 @@ SECTIONS
   PROVIDE(__pecoff_data_size = ALIGN(512) - ADDR(.data));
   PROVIDE(__pecoff_end = ALIGN(512));
 
-  .stab 0		: { *(.stab) }
-  .stabstr 0		: { *(.stabstr) }
-  .stab.excl 0		: { *(.stab.excl) }
-  .stab.exclstr 0	: { *(.stab.exclstr) }
-  .stab.index 0		: { *(.stab.index) }
-  .stab.indexstr 0	: { *(.stab.indexstr) }
-  .comment 0		: { *(.comment) }
+  STABS_DEBUG
+  DWARF_DEBUG
 }
 ASSERT(_edata_real == _edata, "error: zImage file size is incorrect");
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
