Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D4626944
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 19:41:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6z6aXDkZYqlMuyrHEy0PDBqsPRxKGDQKcq//OTRgaZE=; b=ML0
	0rzwVCoy29cYYvel5Zt6uuV9SDvcl9XY/9n/JX3LD80fERJO/rQQM5gJvE+APpeXq9n3j1AeXG4uo
	PcTog8hBRT0sUMJEyNxYBUVsI6vqzFgKnrY0i8YNGCZttmF5aTibRNBo/MwwICYrknacSOlxgxtSF
	5AWFqoCdcXSSJZWG1fWrWk5Nh6AAebEdKoBWbljCOEYyykb9bIn7zQxWAbGT/ImbTat2gNNmnSHmo
	983OIbFIJajN3B4mdpZwrFrh0vmajotQLqK0XlYoMuvWLmcI9+pzCSmjQlUmAUS14e4LPuwfRNL4+
	fBl6uE4tnkHgH6J4iNwWNjMu4iM9kRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTVEk-0006Os-2a; Wed, 22 May 2019 17:41:10 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTVEc-0006OY-PG
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 17:41:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 489EB341;
 Wed, 22 May 2019 10:41:02 -0700 (PDT)
Received: from e111045-lin.cambridge.arm.com
 (apickardsiphone.cambridge.arm.com [10.1.30.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 01C223F5AF;
 Wed, 22 May 2019 10:40:59 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] x86/tools: deal with 64-bit relative relocations for per-CPU
 symbols
Date: Wed, 22 May 2019 18:40:57 +0100
Message-Id: <20190522174057.21770-1-ard.biesheuvel@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_104102_832888_F52BAA9A 
X-CRM114-Status: GOOD (  15.21  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, linux-arch@vger.kernel.org, arnd@arndb.de,
 guillaume.gardet@arm.com, marc.zyngier@arm.com, x86@kernel.org,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, james.morse@arm.com,
 Ard Biesheuvel <ard.biesheuvel@arm.com>, jeyu@kernel.org, mingo@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to fix an issue in the place relative ksymtab code, we
need to switch to 64-bit place relative references, which
require special handling in the x86 'relocs' tool. The reason
is that per-CPU symbols on x86_64 live in a separate link time
section, whose load time address is not reflected in the ELF
metadata, and so relative references emitted by the toolchain
are guaranteed to be wrong.

So fix this by extending the handling of 32-bit relative references
to per-CPU variables to support 64-bit relative references as
well.

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@arm.com>
---
This is a follow-up to [0] and a prerequisite to the change it
implements: using 64-bit relative references on x86_64 requires
this handling in the 'relocs' tool and in the decompressor.

[0] https://lore.kernel.org/linux-arm-kernel/20190522150239.19314-1-ard.biesheuvel@arm.com

This patch plus [0] build and boot tested with x86_64_defconfig on QEMU/kvm + OVMF.

 arch/x86/boot/compressed/misc.c | 12 ++++++++++++
 arch/x86/tools/relocs.c         | 15 ++++++++++-----
 2 files changed, 22 insertions(+), 5 deletions(-)

diff --git a/arch/x86/boot/compressed/misc.c b/arch/x86/boot/compressed/misc.c
index 5a237e8dbf8d..e089d78bd86a 100644
--- a/arch/x86/boot/compressed/misc.c
+++ b/arch/x86/boot/compressed/misc.c
@@ -218,6 +218,8 @@ static void handle_relocations(void *output, unsigned long output_len,
 	 * Format is:
 	 *
 	 * kernel bits...
+	 * 0 - zero terminator for inverse 64 bit relocations
+	 * 64 bit inverse relocation repeated
 	 * 0 - zero terminator for 64 bit relocations
 	 * 64 bit relocation repeated
 	 * 0 - zero terminator for inverse 32 bit relocations
@@ -258,6 +260,16 @@ static void handle_relocations(void *output, unsigned long output_len,
 
 		*(uint64_t *)ptr += delta;
 	}
+	while (*--reloc) {
+		long extended = *reloc;
+		extended += map;
+
+		ptr = (unsigned long)extended;
+		if (ptr < min_addr || ptr > max_addr)
+			error("inverse 64-bit relocation outside of kernel!\n");
+
+		*(uint64_t *)ptr -= delta;
+	}
 #endif
 }
 #else
diff --git a/arch/x86/tools/relocs.c b/arch/x86/tools/relocs.c
index ce7188cbdae5..d6a2bb90dfa6 100644
--- a/arch/x86/tools/relocs.c
+++ b/arch/x86/tools/relocs.c
@@ -26,6 +26,7 @@ static struct relocs relocs32;
 #if ELF_BITS == 64
 static struct relocs relocs32neg;
 static struct relocs relocs64;
+static struct relocs relocs64neg;
 #endif
 
 struct section {
@@ -800,12 +801,8 @@ static int do_reloc64(struct section *sec, Elf_Rel *rel, ElfW(Sym) *sym,
 		break;
 
 	case R_X86_64_PC64:
-		/*
-		 * Only used by jump labels
-		 */
 		if (is_percpu_sym(sym, symname))
-			die("Invalid R_X86_64_PC64 relocation against per-CPU symbol %s\n",
-			    symname);
+			add_reloc(&relocs64neg, offset);
 		break;
 
 	case R_X86_64_32:
@@ -1027,6 +1024,7 @@ static void emit_relocs(int as_text, int use_real_mode)
 #if ELF_BITS == 64
 	sort_relocs(&relocs32neg);
 	sort_relocs(&relocs64);
+	sort_relocs(&relocs64neg);
 #else
 	sort_relocs(&relocs16);
 #endif
@@ -1054,6 +1052,13 @@ static void emit_relocs(int as_text, int use_real_mode)
 		/* Print a stop */
 		write_reloc(0, stdout);
 
+		/* Now print each inverse 64-bit relocation */
+		for (i = 0; i < relocs64neg.count; i++)
+			write_reloc(relocs64neg.offset[i], stdout);
+
+		/* Print a stop */
+		write_reloc(0, stdout);
+
 		/* Now print each relocation */
 		for (i = 0; i < relocs64.count; i++)
 			write_reloc(relocs64.offset[i], stdout);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
