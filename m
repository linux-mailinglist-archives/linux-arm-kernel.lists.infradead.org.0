Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5EADD3540
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 02:08:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZxKchBfjtmKSYM0bBFldZpVhebFXFb0Hl2pZsPCGqbs=; b=M/gZUFKXdXGUwfc97IqIwG9U2w
	ow3TMleBRTYjA0Sl3gDjG5A6FEQyaTP6MNiiF9RmF4n9Uvid2M2ozjzuYzuySZsEMigB3yCOY8oDX
	j3Xd5SFWQRyhMONb7bTCz09Ybpv0G1MEO8scVsdD/v1PKraS1FdAKtOb0H/lqo4o+I0owqDthlDM6
	FlpBDW9f1Q5ceAhdYU0+D2AyCUZepeD7tNCREWGoMtZmWDjtGXdpGzRI6MaG323V9+VBzQExkSsM8
	+En0Iiy0iv1lt9GqBF+cL0WiQx9vy7/s6w26e7NmMzPr+/HBCZG8bG8/vAf8veplCMi4C7ovhFHZY
	KSNssLqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIiUD-0005WV-Lr; Fri, 11 Oct 2019 00:08:49 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIiRw-0003bG-FZ
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 00:06:30 +0000
Received: by mail-pf1-x442.google.com with SMTP id y22so4947144pfr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 17:06:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=n5VmKDs7q8vdBz4+9T2sJG9hHU7BSOvzC0pvhvZX8so=;
 b=carhZDVuV7aWHe/mVOzWup+o5oNODCRSaKYDJLBEexacyYhrHfUMNbKXFo59HsfLdT
 wZ6hMFSRQexCI22v5IG5NUFM2WcEObK5BgW99c0DZtHkj30esilAfjApmPDIP3pjvWiL
 pfzZb27IerlCy8SvvnyBoQgndOKKC0Ory7bvc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=n5VmKDs7q8vdBz4+9T2sJG9hHU7BSOvzC0pvhvZX8so=;
 b=GARgw2Zba3Bcym2blxFtYBOA5BnWhU1al0ZMn14m/c21uSc9JQeMCdsXmC+LjzdsTf
 woyM8iy7VL6rchn/Jh3+DZDl7tUgrBgd+BESKUdbDwduZK8HojkaeHytqeUS9llLnIK6
 xG+sxSGo/1c0zXwdeD8633J4FgA54AcAd1qwgfiT7Yh5lQTMMpLRn0j6rdp/xWkJ8k+9
 6xqIiRIEtkjvjVYjk8cNkblAOUFIGSnK0IJfe+cDqfk7o1nzDfTBdR1pBVWSCHCnNmPr
 2VoFL5jboO9Z7bQI/tzdTxtcsjaGLjAOCFIw3EF22A3HrpGBumcpQOVMAy+Rl9sBLezA
 U/XA==
X-Gm-Message-State: APjAAAV3Mpzo6s3ks7y5aYge1Cvk5ZhhKOxwHYdq+xwsx5kRaGEzpMD1
 q8z9n2fld1o0m1heEngrcCp7eQ==
X-Google-Smtp-Source: APXvYqx8Gwnw4oVnhwjvlupfQ+jLMpTkOFUHSLw0DgIUj0K31Z94tjG2CFAjw0mYBaG87MVpGGwzjQ==
X-Received: by 2002:a62:1b45:: with SMTP id b66mr13449656pfb.34.1570752387906; 
 Thu, 10 Oct 2019 17:06:27 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id d19sm6444280pjz.5.2019.10.10.17.06.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 17:06:24 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>
Subject: [PATCH v2 08/29] vmlinux.lds.h: Provide EMIT_PT_NOTE to indicate
 export of .notes
Date: Thu, 10 Oct 2019 17:05:48 -0700
Message-Id: <20191011000609.29728-9-keescook@chromium.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191011000609.29728-1-keescook@chromium.org>
References: <20191011000609.29728-1-keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_170628_574100_EBBDB41A 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

In preparation for moving NOTES into RO_DATA, provide a mechanism for
architectures that want to emit a PT_NOTE Program Header to do so.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/alpha/kernel/vmlinux.lds.S   |  3 +++
 arch/ia64/kernel/vmlinux.lds.S    |  2 ++
 arch/mips/kernel/vmlinux.lds.S    | 12 ++++++------
 arch/powerpc/kernel/vmlinux.lds.S |  1 +
 arch/s390/kernel/vmlinux.lds.S    |  2 ++
 arch/x86/kernel/vmlinux.lds.S     |  2 ++
 include/asm-generic/vmlinux.lds.h |  8 ++++++++
 7 files changed, 24 insertions(+), 6 deletions(-)

diff --git a/arch/alpha/kernel/vmlinux.lds.S b/arch/alpha/kernel/vmlinux.lds.S
index 781090cacc96..363a60ba7c31 100644
--- a/arch/alpha/kernel/vmlinux.lds.S
+++ b/arch/alpha/kernel/vmlinux.lds.S
@@ -1,4 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0 */
+
+#define EMITS_PT_NOTE
+
 #include <asm-generic/vmlinux.lds.h>
 #include <asm/thread_info.h>
 #include <asm/cache.h>
diff --git a/arch/ia64/kernel/vmlinux.lds.S b/arch/ia64/kernel/vmlinux.lds.S
index 2c4f23c390ad..7cf4958b732d 100644
--- a/arch/ia64/kernel/vmlinux.lds.S
+++ b/arch/ia64/kernel/vmlinux.lds.S
@@ -5,6 +5,8 @@
 #include <asm/pgtable.h>
 #include <asm/thread_info.h>
 
+#define EMITS_PT_NOTE
+
 #include <asm-generic/vmlinux.lds.h>
 
 OUTPUT_FORMAT("elf64-ia64-little")
diff --git a/arch/mips/kernel/vmlinux.lds.S b/arch/mips/kernel/vmlinux.lds.S
index 33ee0d18fb0a..1c95612eb800 100644
--- a/arch/mips/kernel/vmlinux.lds.S
+++ b/arch/mips/kernel/vmlinux.lds.S
@@ -10,6 +10,11 @@
  */
 #define BSS_FIRST_SECTIONS *(.bss..swapper_pg_dir)
 
+/* Cavium Octeon should not have a separate PT_NOTE Program Header. */
+#ifndef CONFIG_CAVIUM_OCTEON_SOC
+#define EMITS_PT_NOTE
+#endif
+
 #include <asm-generic/vmlinux.lds.h>
 
 #undef mips
@@ -76,12 +81,7 @@ SECTIONS
 		__stop___dbe_table = .;
 	}
 
-#ifdef CONFIG_CAVIUM_OCTEON_SOC
-#define NOTES_HEADER
-#else /* CONFIG_CAVIUM_OCTEON_SOC */
-#define NOTES_HEADER :note
-#endif /* CONFIG_CAVIUM_OCTEON_SOC */
-	NOTES :text NOTES_HEADER
+	NOTES NOTES_HEADERS
 	.dummy : { *(.dummy) } :text
 
 	_sdata = .;			/* Start of data section */
diff --git a/arch/powerpc/kernel/vmlinux.lds.S b/arch/powerpc/kernel/vmlinux.lds.S
index e184a63aa5b0..7e26e20c8324 100644
--- a/arch/powerpc/kernel/vmlinux.lds.S
+++ b/arch/powerpc/kernel/vmlinux.lds.S
@@ -6,6 +6,7 @@
 #endif
 
 #define BSS_FIRST_SECTIONS *(.bss.prominit)
+#define EMITS_PT_NOTE
 
 #include <asm/page.h>
 #include <asm-generic/vmlinux.lds.h>
diff --git a/arch/s390/kernel/vmlinux.lds.S b/arch/s390/kernel/vmlinux.lds.S
index 13294fef473e..646d939346df 100644
--- a/arch/s390/kernel/vmlinux.lds.S
+++ b/arch/s390/kernel/vmlinux.lds.S
@@ -15,6 +15,8 @@
 /* Handle ro_after_init data on our own. */
 #define RO_AFTER_INIT_DATA
 
+#define EMITS_PT_NOTE
+
 #include <asm-generic/vmlinux.lds.h>
 #include <asm/vmlinux.lds.h>
 
diff --git a/arch/x86/kernel/vmlinux.lds.S b/arch/x86/kernel/vmlinux.lds.S
index 788e78978030..2e18bf5c1aed 100644
--- a/arch/x86/kernel/vmlinux.lds.S
+++ b/arch/x86/kernel/vmlinux.lds.S
@@ -21,6 +21,8 @@
 #define LOAD_OFFSET __START_KERNEL_map
 #endif
 
+#define EMITS_PT_NOTE
+
 #include <asm-generic/vmlinux.lds.h>
 #include <asm/asm-offsets.h>
 #include <asm/thread_info.h>
diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index dae64600ccbf..f5dd45ce73f1 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -54,6 +54,14 @@
 #define LOAD_OFFSET 0
 #endif
 
+/*
+ * Only some architectures want to have the .notes segment visible in
+ * a separate PT_NOTE ELF Program Header.
+ */
+#ifdef EMITS_PT_NOTE
+#define NOTES_HEADERS		:text :note
+#endif
+
 /* Align . to a 8 byte boundary equals to maximum function alignment. */
 #define ALIGN_FUNCTION()  . = ALIGN(8)
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
