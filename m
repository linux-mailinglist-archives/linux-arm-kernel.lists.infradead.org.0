Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4FC6E91F0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 22:21:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=khagzTwXLQXudQ8n0Axpp5Fdn5ytM1z5qy113UPloJ8=; b=ndhPdSSuvfwTaz9MRjjUf0pqum
	mJCT6xTUVniW7ew+a/rgmOYV+JB1vJcPXQsQappb/ULM3stFNe62zMa7q+opd5cH+MmIUULaDSjtF
	MKDpTBzXCfuWtvwzk2oNmB/KPRVM8SI8gXV4ohZ5lR3TQAu+iA51wql28nvWkCcuKh+5Ls5vPkeZU
	JjPPbsr/tVsHd+KWViINt7lWbXgy9Tj8M9HJdDa7aVvyC2PlvJFuM2hQjlwGctwBAOWYSdLrIAJNE
	TU831Z8FrHdc3cO6pvD6XFalN21lBsYNan+m7vNHPQ79CNqRrvCw0AVIUV01wPgL5TCfJq9S1Bknk
	JcV1J7Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPYvb-00045c-W7; Tue, 29 Oct 2019 21:21:24 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPYuo-0003gy-8m
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 21:20:36 +0000
Received: by mail-pf1-x444.google.com with SMTP id p26so6408018pfq.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 14:20:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=56WTju1L7IdDRijxoIUB2r2neOyuIdf74K9VFVyF/8w=;
 b=dvrhP8hfeFfdZrhqRZGTkRjU5ksTaLSz/hrQ4G185BSQDMF0iY8HF4Dek0kPZP+1eG
 6jGT8yaTKdk7Jf5LsjqYCdFpr8mGansjWt7wt3WWjuBDc2zFLR3qBJFk5pgpahV3xj5h
 TSoak3KGRQm9JvvSkwWqpPJjiAZod70mBWCZA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=56WTju1L7IdDRijxoIUB2r2neOyuIdf74K9VFVyF/8w=;
 b=sLonIKApzoEURSEf3pgJo4VSAJUlPoD8qCnreu4gsPBgV01crsvN/JTYXvMfhx2ipQ
 MqLe6mJg1sgPL56wZ4Lqu+cp/wPR1yyKp5kDlMNtwWiZijRGr0q5q6U228Hk6fWklnKn
 YkZhddef3Ih9mbvZ+zmNN9+1sbd29r0Wowqwe1KOiOrZHD1z2Yo9hqJ+wmxSMicBWMfD
 DlFIaXettM4GhKj781bprjGo+Etrzle/e0wse2ZzhB6TddzPletDhO++LJ2PPzX+6W0v
 qWPegqB2PEjeuIfxqiaorcxelQpxyUc6++6i98q0LHZ/F7W2caHJiaYhAO942rL8Skrj
 Ln6Q==
X-Gm-Message-State: APjAAAWq3RKZORHbrkkMS1/6hweJcpX3X4LFJrJb9CB23jmgKSyGrtmn
 G/LjCeYuuY6wB5fiPk1Ycvy+rw==
X-Google-Smtp-Source: APXvYqwXJewbFikDEFslbivIQaY2Ue0KJzkj1ReW6KYnL8wVtolGtHNqPqufMdVY4EV/YvxWVZu9BA==
X-Received: by 2002:a63:e750:: with SMTP id j16mr30479861pgk.30.1572384033502; 
 Tue, 29 Oct 2019 14:20:33 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id k9sm48891pfk.72.2019.10.29.14.20.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 14:20:32 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>
Subject: [PATCH v3 12/29] vmlinux.lds.h: Replace RO_DATA_SECTION with RO_DATA
Date: Tue, 29 Oct 2019 14:13:34 -0700
Message-Id: <20191029211351.13243-13-keescook@chromium.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191029211351.13243-1-keescook@chromium.org>
References: <20191029211351.13243-1-keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_142034_527788_A7EC4464 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Michal Simek <monstr@monstr.eu>, linux-ia64@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Segher Boessenkool <segher@kernel.crashing.org>, linuxppc-dev@lists.ozlabs.org,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Andy Lutomirski <luto@kernel.org>,
 linux-alpha@vger.kernel.org, Rick Edgecombe <rick.p.edgecombe@intel.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-c6x-dev@linux-c6x.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Finish renaming RO_DATA_SECTION to RO_DATA. (Calling this a "section"
is a lie, since it's multiple sections and section flags cannot be
applied to the macro.)

Signed-off-by: Kees Cook <keescook@chromium.org>
Acked-by: Heiko Carstens <heiko.carstens@de.ibm.com> # s390
Acked-by: Geert Uytterhoeven <geert@linux-m68k.org> # m68k
---
 arch/arc/kernel/vmlinux.lds.S       | 2 +-
 arch/c6x/kernel/vmlinux.lds.S       | 2 +-
 arch/csky/kernel/vmlinux.lds.S      | 2 +-
 arch/h8300/kernel/vmlinux.lds.S     | 2 +-
 arch/hexagon/kernel/vmlinux.lds.S   | 2 +-
 arch/m68k/kernel/vmlinux-nommu.lds  | 2 +-
 arch/nds32/kernel/vmlinux.lds.S     | 2 +-
 arch/nios2/kernel/vmlinux.lds.S     | 2 +-
 arch/openrisc/kernel/vmlinux.lds.S  | 4 ++--
 arch/parisc/kernel/vmlinux.lds.S    | 4 ++--
 arch/riscv/kernel/vmlinux.lds.S     | 2 +-
 arch/s390/kernel/vmlinux.lds.S      | 2 +-
 arch/unicore32/kernel/vmlinux.lds.S | 2 +-
 include/asm-generic/vmlinux.lds.h   | 7 ++-----
 14 files changed, 17 insertions(+), 20 deletions(-)

diff --git a/arch/arc/kernel/vmlinux.lds.S b/arch/arc/kernel/vmlinux.lds.S
index 1d6eef4b6976..7d1d27066deb 100644
--- a/arch/arc/kernel/vmlinux.lds.S
+++ b/arch/arc/kernel/vmlinux.lds.S
@@ -95,7 +95,7 @@ SECTIONS
 	_etext = .;
 
 	_sdata = .;
-	RO_DATA_SECTION(PAGE_SIZE)
+	RO_DATA(PAGE_SIZE)
 
 	/*
 	 * 1. this is .data essentially
diff --git a/arch/c6x/kernel/vmlinux.lds.S b/arch/c6x/kernel/vmlinux.lds.S
index d6e3802536b3..a3547f9d415b 100644
--- a/arch/c6x/kernel/vmlinux.lds.S
+++ b/arch/c6x/kernel/vmlinux.lds.S
@@ -82,7 +82,7 @@ SECTIONS
 
 	EXCEPTION_TABLE(16)
 
-	RO_DATA_SECTION(PAGE_SIZE)
+	RO_DATA(PAGE_SIZE)
 	.const :
 	{
 		*(.const .const.* .gnu.linkonce.r.*)
diff --git a/arch/csky/kernel/vmlinux.lds.S b/arch/csky/kernel/vmlinux.lds.S
index 75dd31412242..8598bd7a7bcd 100644
--- a/arch/csky/kernel/vmlinux.lds.S
+++ b/arch/csky/kernel/vmlinux.lds.S
@@ -49,7 +49,7 @@ SECTIONS
 
 
 	_sdata = .;
-	RO_DATA_SECTION(PAGE_SIZE)
+	RO_DATA(PAGE_SIZE)
 	RW_DATA_SECTION(L1_CACHE_BYTES, PAGE_SIZE, THREAD_SIZE)
 	_edata = .;
 
diff --git a/arch/h8300/kernel/vmlinux.lds.S b/arch/h8300/kernel/vmlinux.lds.S
index 88776e785245..d3247d33b115 100644
--- a/arch/h8300/kernel/vmlinux.lds.S
+++ b/arch/h8300/kernel/vmlinux.lds.S
@@ -38,7 +38,7 @@ SECTIONS
 	_etext = . ;
 	}
 	EXCEPTION_TABLE(16)
-	RO_DATA_SECTION(4)
+	RO_DATA(4)
 	ROMEND = .;
 #if defined(CONFIG_ROMKERNEL)
 	. = RAMTOP;
diff --git a/arch/hexagon/kernel/vmlinux.lds.S b/arch/hexagon/kernel/vmlinux.lds.S
index 6a6e8fc422ee..0145251fa317 100644
--- a/arch/hexagon/kernel/vmlinux.lds.S
+++ b/arch/hexagon/kernel/vmlinux.lds.S
@@ -50,7 +50,7 @@ SECTIONS
 
 	_sdata = .;
 		RW_DATA_SECTION(32,PAGE_SIZE,_THREAD_SIZE)
-		RO_DATA_SECTION(PAGE_SIZE)
+		RO_DATA(PAGE_SIZE)
 	_edata = .;
 
 	EXCEPTION_TABLE(16)
diff --git a/arch/m68k/kernel/vmlinux-nommu.lds b/arch/m68k/kernel/vmlinux-nommu.lds
index cf6edda38971..de80f8b8ae78 100644
--- a/arch/m68k/kernel/vmlinux-nommu.lds
+++ b/arch/m68k/kernel/vmlinux-nommu.lds
@@ -60,7 +60,7 @@ SECTIONS {
 #endif
 
 	_sdata = .;
-	RO_DATA_SECTION(PAGE_SIZE)
+	RO_DATA(PAGE_SIZE)
 	RW_DATA_SECTION(16, PAGE_SIZE, THREAD_SIZE)
 	_edata = .;
 
diff --git a/arch/nds32/kernel/vmlinux.lds.S b/arch/nds32/kernel/vmlinux.lds.S
index c4f1c5a604c3..10ff570ba95b 100644
--- a/arch/nds32/kernel/vmlinux.lds.S
+++ b/arch/nds32/kernel/vmlinux.lds.S
@@ -53,7 +53,7 @@ SECTIONS
 	_etext = .;			/* End of text and rodata section */
 
 	_sdata = .;
-	RO_DATA_SECTION(PAGE_SIZE)
+	RO_DATA(PAGE_SIZE)
 	RW_DATA_SECTION(L1_CACHE_BYTES, PAGE_SIZE, THREAD_SIZE)
 	_edata  =  .;
 
diff --git a/arch/nios2/kernel/vmlinux.lds.S b/arch/nios2/kernel/vmlinux.lds.S
index 20e4078b3477..318804a2c7a1 100644
--- a/arch/nios2/kernel/vmlinux.lds.S
+++ b/arch/nios2/kernel/vmlinux.lds.S
@@ -49,7 +49,7 @@ SECTIONS
 	__init_end = .;
 
 	_sdata = .;
-	RO_DATA_SECTION(PAGE_SIZE)
+	RO_DATA(PAGE_SIZE)
 	RW_DATA_SECTION(L1_CACHE_BYTES, PAGE_SIZE, THREAD_SIZE)
 	_edata = .;
 
diff --git a/arch/openrisc/kernel/vmlinux.lds.S b/arch/openrisc/kernel/vmlinux.lds.S
index 142c51c994f5..f73e0d3ea09f 100644
--- a/arch/openrisc/kernel/vmlinux.lds.S
+++ b/arch/openrisc/kernel/vmlinux.lds.S
@@ -67,8 +67,8 @@ SECTIONS
 
 	_sdata = .;
 
-	/* Page alignment required for RO_DATA_SECTION */
-	RO_DATA_SECTION(PAGE_SIZE)
+	/* Page alignment required for RO_DATA */
+	RO_DATA(PAGE_SIZE)
 	_e_kernel_ro = .;
 
 	/* Whatever comes after _e_kernel_ro had better be page-aligend, too */
diff --git a/arch/parisc/kernel/vmlinux.lds.S b/arch/parisc/kernel/vmlinux.lds.S
index 168d12b2ebb8..e1c563c7dca1 100644
--- a/arch/parisc/kernel/vmlinux.lds.S
+++ b/arch/parisc/kernel/vmlinux.lds.S
@@ -109,7 +109,7 @@ SECTIONS
 	_sdata = .;
 
 	/* Architecturally we need to keep __gp below 0x1000000 and thus
-	 * in front of RO_DATA_SECTION() which stores lots of tracepoint
+	 * in front of RO_DATA() which stores lots of tracepoint
 	 * and ftrace symbols. */
 #ifdef CONFIG_64BIT
 	. = ALIGN(16);
@@ -127,7 +127,7 @@ SECTIONS
 	}
 #endif
 
-	RO_DATA_SECTION(8)
+	RO_DATA(8)
 
 	/* RO because of BUILDTIME_EXTABLE_SORT */
 	EXCEPTION_TABLE(8)
diff --git a/arch/riscv/kernel/vmlinux.lds.S b/arch/riscv/kernel/vmlinux.lds.S
index df5229c4034d..66dc17d24dd9 100644
--- a/arch/riscv/kernel/vmlinux.lds.S
+++ b/arch/riscv/kernel/vmlinux.lds.S
@@ -52,7 +52,7 @@ SECTIONS
 
 	/* Start of data section */
 	_sdata = .;
-	RO_DATA_SECTION(L1_CACHE_BYTES)
+	RO_DATA(L1_CACHE_BYTES)
 	.srodata : {
 		*(.srodata*)
 	}
diff --git a/arch/s390/kernel/vmlinux.lds.S b/arch/s390/kernel/vmlinux.lds.S
index beb4df053e20..b33c4823f8b5 100644
--- a/arch/s390/kernel/vmlinux.lds.S
+++ b/arch/s390/kernel/vmlinux.lds.S
@@ -52,7 +52,7 @@ SECTIONS
 		_etext = .;		/* End of text section */
 	} :text = 0x0700
 
-	RO_DATA_SECTION(PAGE_SIZE)
+	RO_DATA(PAGE_SIZE)
 
 	. = ALIGN(PAGE_SIZE);
 	_sdata = .;		/* Start of data section */
diff --git a/arch/unicore32/kernel/vmlinux.lds.S b/arch/unicore32/kernel/vmlinux.lds.S
index 78c4c56057b0..367c80313bec 100644
--- a/arch/unicore32/kernel/vmlinux.lds.S
+++ b/arch/unicore32/kernel/vmlinux.lds.S
@@ -43,7 +43,7 @@ SECTIONS
 	_etext = .;
 
 	_sdata = .;
-	RO_DATA_SECTION(PAGE_SIZE)
+	RO_DATA(PAGE_SIZE)
 	RW_DATA_SECTION(L1_CACHE_BYTES, PAGE_SIZE, THREAD_SIZE)
 	_edata = .;
 
diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index a0a989fbe411..061e57c609f6 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -23,7 +23,7 @@
  *	_etext = .;
  *
  *      _sdata = .;
- *	RO_DATA_SECTION(PAGE_SIZE)
+ *	RO_DATA(PAGE_SIZE)
  *	RW_DATA_SECTION(...)
  *	_edata = .;
  *
@@ -363,7 +363,7 @@
 /*
  * Read only Data
  */
-#define RO_DATA_SECTION(align)						\
+#define RO_DATA(align)							\
 	. = ALIGN((align));						\
 	.rodata           : AT(ADDR(.rodata) - LOAD_OFFSET) {		\
 		__start_rodata = .;					\
@@ -518,9 +518,6 @@
 	. = ALIGN((align));						\
 	__end_rodata = .;
 
-/* All archs are supposed to use RO_DATA() */
-#define RO_DATA(align)  RO_DATA_SECTION(align)
-
 /*
  * .text section. Map to function alignment to avoid address changes
  * during second ld run in second ld pass when generating System.map
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
