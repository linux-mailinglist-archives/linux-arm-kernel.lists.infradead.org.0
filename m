Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8521BD3546
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 02:10:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aSPiyPfABXq6cGX+wkaehp2N/gI7h6G5QdFbT17yx0w=; b=TQjga/nbNfXj9yL2brI1aTyri5
	2ynlUj8akzqxoWf4PW5x0P2Eb5gZbvQJuhePOEXURdF73zMR5mfFkgzbuLPj0Y2KhfFoEpIZ8u49V
	MeFl5yoncYnAR9w//+OwS2okzdTbVpbwR+rnN2t/MGrBAusdzBoqPiCA4jYe8i8KCJQooFCvc9i+e
	1wqZudZMtSbHsCqZsC9sK380caymwkCp8tKawtdrGiCL4v45VzhA9FMzOchxoLW5ddMLDMiUaFe5m
	b39H8s8XM1dzfnKKK2DoLv8p+gQ4oMSOZCRFDom3Hta36AX3jocqzBcwskQQGyh5rIfviZN1MPgXw
	dYowStEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIiVK-0006h2-Vn; Fri, 11 Oct 2019 00:09:59 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIiS3-0003i0-EG
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 00:06:37 +0000
Received: by mail-pg1-x544.google.com with SMTP id e10so697216pgd.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 17:06:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=EJBkEWR6Ytr2XDSFYITiqnAtjMhSVp9dR2Ot4Fv1LAw=;
 b=KM5dlcCCTgyv17xjylw2TIbqN7K6dPZ8B/Ds1xgkN+VH1VnsMLZGDYHw66e+3BUCca
 riYqc1ojb5gszDWydSqCZ2Fjn9VwsKWKCEOYwWZAWYDNcZ2OqJksDr47PyLR2S5o5UoH
 YsXGqsdW8L4U3e3tTs2DjLs97Jn8rDnJ2PzHo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=EJBkEWR6Ytr2XDSFYITiqnAtjMhSVp9dR2Ot4Fv1LAw=;
 b=jaum7PahS4y6EdCkLoq7NSCHKg2wfz2VoA/5Dzs0h0rzo00ydD9XvkcfqcLVvsbi9j
 JFmVtmQr2FdHqWX6+RLuRylf/e7gstwDK4hihmbmLcLnnUlEkrv7cZ/Zcz5IHet0e0yE
 uddqoGqYBlnqwWAV9LvwMWQiW3hGWs91WipAamhHUr6BjZ/j+Ezvu9SbBjNvMKhwd5Qt
 ZEV+tNQAviNrJBfmOGBfTBO2OauIh41JXugwpwMPpwpQUIXH4HFldyD8yKowPgsDiBWi
 CRX0AoqfAMo4oc4DrPzSNmFO3XRT5sEK6m6BGDpYGUX6dURU4yQQooZ1JxIgSIR1gI0X
 4VIw==
X-Gm-Message-State: APjAAAUG+P3W589gXkfPPSEjdmKf/sGYm5V8k07/SDF04kA16bai4xbR
 BhGRBq09itlX9qUiTQq7QYVAUQ==
X-Google-Smtp-Source: APXvYqx9mwKFFvFnZQH8YPkiWsa+huJ7n+p2MlQyZnW9rZY0KrtTniVpKFOfviihehBQNE3PYdY6uA==
X-Received: by 2002:a17:90a:b902:: with SMTP id
 p2mr13429398pjr.62.1570752394448; 
 Thu, 10 Oct 2019 17:06:34 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id c8sm10527798pfi.117.2019.10.10.17.06.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 17:06:32 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>
Subject: [PATCH v2 13/29] vmlinux.lds.h: Replace RW_DATA_SECTION with RW_DATA
Date: Thu, 10 Oct 2019 17:05:53 -0700
Message-Id: <20191011000609.29728-14-keescook@chromium.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191011000609.29728-1-keescook@chromium.org>
References: <20191011000609.29728-1-keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_170635_488548_D2202B0F 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Michal Simek <monstr@monstr.eu>, x86@kernel.org, linux-ia64@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-xtensa@linux-xtensa.org, Michael Ellerman <mpe@ellerman.id.au>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linuxppc-dev@lists.ozlabs.org,
 Yoshinori Sato <ysato@users.sourceforge.jp>, linux-parisc@vger.kernel.org,
 Andy Lutomirski <luto@kernel.org>, linux-alpha@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rick Edgecombe <rick.p.edgecombe@intel.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-c6x-dev@linux-c6x.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rename RW_DATA_SECTION to RW_DATA. (Calling this a "section" is a lie,
since it's multiple sections and section flags cannot be applied to
the macro.)

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/alpha/kernel/vmlinux.lds.S      | 2 +-
 arch/arc/kernel/vmlinux.lds.S        | 2 +-
 arch/arm/kernel/vmlinux-xip.lds.S    | 2 +-
 arch/arm/kernel/vmlinux.lds.S        | 2 +-
 arch/arm64/kernel/vmlinux.lds.S      | 2 +-
 arch/csky/kernel/vmlinux.lds.S       | 2 +-
 arch/h8300/kernel/vmlinux.lds.S      | 2 +-
 arch/hexagon/kernel/vmlinux.lds.S    | 2 +-
 arch/m68k/kernel/vmlinux-nommu.lds   | 2 +-
 arch/m68k/kernel/vmlinux-std.lds     | 2 +-
 arch/m68k/kernel/vmlinux-sun3.lds    | 2 +-
 arch/microblaze/kernel/vmlinux.lds.S | 2 +-
 arch/nds32/kernel/vmlinux.lds.S      | 2 +-
 arch/nios2/kernel/vmlinux.lds.S      | 2 +-
 arch/openrisc/kernel/vmlinux.lds.S   | 2 +-
 arch/parisc/kernel/vmlinux.lds.S     | 2 +-
 arch/riscv/kernel/vmlinux.lds.S      | 2 +-
 arch/s390/kernel/vmlinux.lds.S       | 2 +-
 arch/sh/kernel/vmlinux.lds.S         | 2 +-
 arch/sparc/kernel/vmlinux.lds.S      | 2 +-
 arch/unicore32/kernel/vmlinux.lds.S  | 2 +-
 arch/xtensa/kernel/vmlinux.lds.S     | 2 +-
 include/asm-generic/vmlinux.lds.h    | 4 ++--
 23 files changed, 24 insertions(+), 24 deletions(-)

diff --git a/arch/alpha/kernel/vmlinux.lds.S b/arch/alpha/kernel/vmlinux.lds.S
index af411817dd7d..edc45f45523b 100644
--- a/arch/alpha/kernel/vmlinux.lds.S
+++ b/arch/alpha/kernel/vmlinux.lds.S
@@ -50,7 +50,7 @@ SECTIONS
 
 	_sdata = .;	/* Start of rw data section */
 	_data = .;
-	RW_DATA_SECTION(L1_CACHE_BYTES, PAGE_SIZE, THREAD_SIZE)
+	RW_DATA(L1_CACHE_BYTES, PAGE_SIZE, THREAD_SIZE)
 
 	.got : {
 		*(.got)
diff --git a/arch/arc/kernel/vmlinux.lds.S b/arch/arc/kernel/vmlinux.lds.S
index 7d1d27066deb..54139a6f469b 100644
--- a/arch/arc/kernel/vmlinux.lds.S
+++ b/arch/arc/kernel/vmlinux.lds.S
@@ -101,7 +101,7 @@ SECTIONS
 	 * 1. this is .data essentially
 	 * 2. THREAD_SIZE for init.task, must be kernel-stk sz aligned
 	 */
-	RW_DATA_SECTION(L1_CACHE_BYTES, PAGE_SIZE, THREAD_SIZE)
+	RW_DATA(L1_CACHE_BYTES, PAGE_SIZE, THREAD_SIZE)
 
 	_edata = .;
 
diff --git a/arch/arm/kernel/vmlinux-xip.lds.S b/arch/arm/kernel/vmlinux-xip.lds.S
index d2a9651c24ad..21b8b271c80d 100644
--- a/arch/arm/kernel/vmlinux-xip.lds.S
+++ b/arch/arm/kernel/vmlinux-xip.lds.S
@@ -112,7 +112,7 @@ SECTIONS
 
 	. = ALIGN(THREAD_SIZE);
 	_sdata = .;
-	RW_DATA_SECTION(L1_CACHE_BYTES, PAGE_SIZE, THREAD_SIZE)
+	RW_DATA(L1_CACHE_BYTES, PAGE_SIZE, THREAD_SIZE)
 	.data.ro_after_init : AT(ADDR(.data.ro_after_init) - LOAD_OFFSET) {
 		*(.data..ro_after_init)
 	}
diff --git a/arch/arm/kernel/vmlinux.lds.S b/arch/arm/kernel/vmlinux.lds.S
index 068db6860867..319ccb10846a 100644
--- a/arch/arm/kernel/vmlinux.lds.S
+++ b/arch/arm/kernel/vmlinux.lds.S
@@ -141,7 +141,7 @@ SECTIONS
 	__init_end = .;
 
 	_sdata = .;
-	RW_DATA_SECTION(L1_CACHE_BYTES, PAGE_SIZE, THREAD_SIZE)
+	RW_DATA(L1_CACHE_BYTES, PAGE_SIZE, THREAD_SIZE)
 	_edata = .;
 
 	BSS_SECTION(0, 0, 0)
diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
index e7dafc29b1fa..a4b3e6c0680c 100644
--- a/arch/arm64/kernel/vmlinux.lds.S
+++ b/arch/arm64/kernel/vmlinux.lds.S
@@ -214,7 +214,7 @@ SECTIONS
 
 	_data = .;
 	_sdata = .;
-	RW_DATA_SECTION(L1_CACHE_BYTES, PAGE_SIZE, THREAD_ALIGN)
+	RW_DATA(L1_CACHE_BYTES, PAGE_SIZE, THREAD_ALIGN)
 
 	/*
 	 * Data written with the MMU off but read with the MMU on requires
diff --git a/arch/csky/kernel/vmlinux.lds.S b/arch/csky/kernel/vmlinux.lds.S
index 8598bd7a7bcd..2ff37beaf2bf 100644
--- a/arch/csky/kernel/vmlinux.lds.S
+++ b/arch/csky/kernel/vmlinux.lds.S
@@ -50,7 +50,7 @@ SECTIONS
 
 	_sdata = .;
 	RO_DATA(PAGE_SIZE)
-	RW_DATA_SECTION(L1_CACHE_BYTES, PAGE_SIZE, THREAD_SIZE)
+	RW_DATA(L1_CACHE_BYTES, PAGE_SIZE, THREAD_SIZE)
 	_edata = .;
 
 	EXCEPTION_TABLE(L1_CACHE_BYTES)
diff --git a/arch/h8300/kernel/vmlinux.lds.S b/arch/h8300/kernel/vmlinux.lds.S
index d3247d33b115..2ac7bdcd2fe0 100644
--- a/arch/h8300/kernel/vmlinux.lds.S
+++ b/arch/h8300/kernel/vmlinux.lds.S
@@ -47,7 +47,7 @@ SECTIONS
 #endif
 	_sdata = . ;
 	__data_start = . ;
-	RW_DATA_SECTION(0, PAGE_SIZE, THREAD_SIZE)
+	RW_DATA(0, PAGE_SIZE, THREAD_SIZE)
 #if defined(CONFIG_ROMKERNEL)
 #undef ADDR
 #endif
diff --git a/arch/hexagon/kernel/vmlinux.lds.S b/arch/hexagon/kernel/vmlinux.lds.S
index 0145251fa317..0ca2471ddb9f 100644
--- a/arch/hexagon/kernel/vmlinux.lds.S
+++ b/arch/hexagon/kernel/vmlinux.lds.S
@@ -49,7 +49,7 @@ SECTIONS
 	INIT_DATA_SECTION(PAGE_SIZE)
 
 	_sdata = .;
-		RW_DATA_SECTION(32,PAGE_SIZE,_THREAD_SIZE)
+		RW_DATA(32,PAGE_SIZE,_THREAD_SIZE)
 		RO_DATA(PAGE_SIZE)
 	_edata = .;
 
diff --git a/arch/m68k/kernel/vmlinux-nommu.lds b/arch/m68k/kernel/vmlinux-nommu.lds
index de80f8b8ae78..7b975420c3d9 100644
--- a/arch/m68k/kernel/vmlinux-nommu.lds
+++ b/arch/m68k/kernel/vmlinux-nommu.lds
@@ -61,7 +61,7 @@ SECTIONS {
 
 	_sdata = .;
 	RO_DATA(PAGE_SIZE)
-	RW_DATA_SECTION(16, PAGE_SIZE, THREAD_SIZE)
+	RW_DATA(16, PAGE_SIZE, THREAD_SIZE)
 	_edata = .;
 
 	EXCEPTION_TABLE(16)
diff --git a/arch/m68k/kernel/vmlinux-std.lds b/arch/m68k/kernel/vmlinux-std.lds
index 625a5785804f..6e7eb49ed985 100644
--- a/arch/m68k/kernel/vmlinux-std.lds
+++ b/arch/m68k/kernel/vmlinux-std.lds
@@ -33,7 +33,7 @@ SECTIONS
 
   RODATA
 
-  RW_DATA_SECTION(16, PAGE_SIZE, THREAD_SIZE)
+  RW_DATA(16, PAGE_SIZE, THREAD_SIZE)
 
   BSS_SECTION(0, 0, 0)
 
diff --git a/arch/m68k/kernel/vmlinux-sun3.lds b/arch/m68k/kernel/vmlinux-sun3.lds
index 9868270b0984..1a0ad6b6dd8c 100644
--- a/arch/m68k/kernel/vmlinux-sun3.lds
+++ b/arch/m68k/kernel/vmlinux-sun3.lds
@@ -30,7 +30,7 @@ SECTIONS
 
   EXCEPTION_TABLE(16) :data
   _sdata = .;			/* Start of rw data section */
-  RW_DATA_SECTION(16, PAGE_SIZE, THREAD_SIZE) :data
+  RW_DATA(16, PAGE_SIZE, THREAD_SIZE) :data
   /* End of data goes *here* so that freeing init code works properly. */
   _edata = .;
   NOTES
diff --git a/arch/microblaze/kernel/vmlinux.lds.S b/arch/microblaze/kernel/vmlinux.lds.S
index 2299694748ea..b8efb08204a1 100644
--- a/arch/microblaze/kernel/vmlinux.lds.S
+++ b/arch/microblaze/kernel/vmlinux.lds.S
@@ -69,7 +69,7 @@ SECTIONS {
 	}
 
 	_sdata = . ;
-	RW_DATA_SECTION(32, PAGE_SIZE, THREAD_SIZE)
+	RW_DATA(32, PAGE_SIZE, THREAD_SIZE)
 	_edata = . ;
 
 	/* Under the microblaze ABI, .sdata and .sbss must be contiguous */
diff --git a/arch/nds32/kernel/vmlinux.lds.S b/arch/nds32/kernel/vmlinux.lds.S
index 10ff570ba95b..f679d3397436 100644
--- a/arch/nds32/kernel/vmlinux.lds.S
+++ b/arch/nds32/kernel/vmlinux.lds.S
@@ -54,7 +54,7 @@ SECTIONS
 
 	_sdata = .;
 	RO_DATA(PAGE_SIZE)
-	RW_DATA_SECTION(L1_CACHE_BYTES, PAGE_SIZE, THREAD_SIZE)
+	RW_DATA(L1_CACHE_BYTES, PAGE_SIZE, THREAD_SIZE)
 	_edata  =  .;
 
 	EXCEPTION_TABLE(16)
diff --git a/arch/nios2/kernel/vmlinux.lds.S b/arch/nios2/kernel/vmlinux.lds.S
index 318804a2c7a1..c55a7cfa1075 100644
--- a/arch/nios2/kernel/vmlinux.lds.S
+++ b/arch/nios2/kernel/vmlinux.lds.S
@@ -50,7 +50,7 @@ SECTIONS
 
 	_sdata = .;
 	RO_DATA(PAGE_SIZE)
-	RW_DATA_SECTION(L1_CACHE_BYTES, PAGE_SIZE, THREAD_SIZE)
+	RW_DATA(L1_CACHE_BYTES, PAGE_SIZE, THREAD_SIZE)
 	_edata = .;
 
 	BSS_SECTION(0, 0, 0)
diff --git a/arch/openrisc/kernel/vmlinux.lds.S b/arch/openrisc/kernel/vmlinux.lds.S
index f73e0d3ea09f..60449fd7f16f 100644
--- a/arch/openrisc/kernel/vmlinux.lds.S
+++ b/arch/openrisc/kernel/vmlinux.lds.S
@@ -74,7 +74,7 @@ SECTIONS
 	/* Whatever comes after _e_kernel_ro had better be page-aligend, too */
 
 	/* 32 here is cacheline size... recheck this */
-	RW_DATA_SECTION(32, PAGE_SIZE, PAGE_SIZE)
+	RW_DATA(32, PAGE_SIZE, PAGE_SIZE)
 
         _edata  =  .;
 
diff --git a/arch/parisc/kernel/vmlinux.lds.S b/arch/parisc/kernel/vmlinux.lds.S
index e1c563c7dca1..12b3d7d5e9e4 100644
--- a/arch/parisc/kernel/vmlinux.lds.S
+++ b/arch/parisc/kernel/vmlinux.lds.S
@@ -148,7 +148,7 @@ SECTIONS
 	data_start = .;
 
 	/* Data */
-	RW_DATA_SECTION(L1_CACHE_BYTES, PAGE_SIZE, PAGE_SIZE)
+	RW_DATA(L1_CACHE_BYTES, PAGE_SIZE, PAGE_SIZE)
 
 	/* PA-RISC locks requires 16-byte alignment */
 	. = ALIGN(16);
diff --git a/arch/riscv/kernel/vmlinux.lds.S b/arch/riscv/kernel/vmlinux.lds.S
index 66dc17d24dd9..12f42f96d46e 100644
--- a/arch/riscv/kernel/vmlinux.lds.S
+++ b/arch/riscv/kernel/vmlinux.lds.S
@@ -57,7 +57,7 @@ SECTIONS
 		*(.srodata*)
 	}
 
-	RW_DATA_SECTION(L1_CACHE_BYTES, PAGE_SIZE, THREAD_SIZE)
+	RW_DATA(L1_CACHE_BYTES, PAGE_SIZE, THREAD_SIZE)
 	.sdata : {
 		__global_pointer$ = . + 0x800;
 		*(.sdata*)
diff --git a/arch/s390/kernel/vmlinux.lds.S b/arch/s390/kernel/vmlinux.lds.S
index b33c4823f8b5..37695499717d 100644
--- a/arch/s390/kernel/vmlinux.lds.S
+++ b/arch/s390/kernel/vmlinux.lds.S
@@ -67,7 +67,7 @@ SECTIONS
 	. = ALIGN(PAGE_SIZE);
 	__end_ro_after_init = .;
 
-	RW_DATA_SECTION(0x100, PAGE_SIZE, THREAD_SIZE)
+	RW_DATA(0x100, PAGE_SIZE, THREAD_SIZE)
 	BOOT_DATA_PRESERVED
 
 	_edata = .;		/* End of data section */
diff --git a/arch/sh/kernel/vmlinux.lds.S b/arch/sh/kernel/vmlinux.lds.S
index fef39054cc70..c60b19958c35 100644
--- a/arch/sh/kernel/vmlinux.lds.S
+++ b/arch/sh/kernel/vmlinux.lds.S
@@ -51,7 +51,7 @@ SECTIONS
 
 	_sdata = .;
 	RO_DATA(PAGE_SIZE)
-	RW_DATA_SECTION(L1_CACHE_BYTES, PAGE_SIZE, THREAD_SIZE)
+	RW_DATA(L1_CACHE_BYTES, PAGE_SIZE, THREAD_SIZE)
 	_edata = .;
 
 	DWARF_EH_FRAME
diff --git a/arch/sparc/kernel/vmlinux.lds.S b/arch/sparc/kernel/vmlinux.lds.S
index 8929fbc35a80..7ec79918b566 100644
--- a/arch/sparc/kernel/vmlinux.lds.S
+++ b/arch/sparc/kernel/vmlinux.lds.S
@@ -67,7 +67,7 @@ SECTIONS
 	.data1 : {
 		*(.data1)
 	}
-	RW_DATA_SECTION(SMP_CACHE_BYTES, 0, THREAD_SIZE)
+	RW_DATA(SMP_CACHE_BYTES, 0, THREAD_SIZE)
 
 	/* End of data section */
 	_edata = .;
diff --git a/arch/unicore32/kernel/vmlinux.lds.S b/arch/unicore32/kernel/vmlinux.lds.S
index 367c80313bec..6fb320b337ef 100644
--- a/arch/unicore32/kernel/vmlinux.lds.S
+++ b/arch/unicore32/kernel/vmlinux.lds.S
@@ -44,7 +44,7 @@ SECTIONS
 
 	_sdata = .;
 	RO_DATA(PAGE_SIZE)
-	RW_DATA_SECTION(L1_CACHE_BYTES, PAGE_SIZE, THREAD_SIZE)
+	RW_DATA(L1_CACHE_BYTES, PAGE_SIZE, THREAD_SIZE)
 	_edata = .;
 
 	EXCEPTION_TABLE(L1_CACHE_BYTES)
diff --git a/arch/xtensa/kernel/vmlinux.lds.S b/arch/xtensa/kernel/vmlinux.lds.S
index b97e5798b9cf..bdbd7c4056c1 100644
--- a/arch/xtensa/kernel/vmlinux.lds.S
+++ b/arch/xtensa/kernel/vmlinux.lds.S
@@ -134,7 +134,7 @@ SECTIONS
   /* Data section */
 
   _sdata = .;
-  RW_DATA_SECTION(XCHAL_ICACHE_LINESIZE, PAGE_SIZE, THREAD_SIZE)
+  RW_DATA(XCHAL_ICACHE_LINESIZE, PAGE_SIZE, THREAD_SIZE)
   _edata = .;
 
   /* Initialization code and data: */
diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index 061e57c609f6..356078e50a5c 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -24,7 +24,7 @@
  *
  *      _sdata = .;
  *	RO_DATA(PAGE_SIZE)
- *	RW_DATA_SECTION(...)
+ *	RW_DATA(...)
  *	_edata = .;
  *
  *	EXCEPTION_TABLE(...)
@@ -975,7 +975,7 @@
  * matches the requirement of PAGE_ALIGNED_DATA.
  *
  * use 0 as page_align if page_aligned data is not used */
-#define RW_DATA_SECTION(cacheline, pagealigned, inittask)		\
+#define RW_DATA(cacheline, pagealigned, inittask)			\
 	. = ALIGN(PAGE_SIZE);						\
 	.data : AT(ADDR(.data) - LOAD_OFFSET) {				\
 		INIT_TASK_DATA(inittask)				\
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
