Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E07383BE7D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 23:24:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kq1sBqDfw2ESxbIrmBOVZOi9rdy5GD5QKn2WjYwVaqQ=; b=IQ+RjsPkegC6JN
	ZKWofxahMmaZ48HGDACuI6CjZsYfHsWxU1d5OFNK0JlaQW9O9RJy5ecS/MW+3cM686tuJ0eqVHg0Y
	V+RPfIrYxjW6yhgCQ3Vk2pPRvLt6LUQX5OFNTrkJq6x7UVzHQ8i1OiQkUhQRr8MxVhVeWOwUlzJVa
	oBc69I7T0utyvBSenrhjS9zQuKwxdxHKu226KtsXq6LIW5qTGt95lhC6J8uiZ4RsphfTRl9LS+dXE
	hOjKowHnKWOs5blAsO49IsobmTJnVIj7hFE0BkayCkSehN4W1Fb/0ZvQaXXGw4B0KLaeSCFdF44V8
	KNq9WKsGhH+rXbd8W2AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haRm6-0003dR-6u; Mon, 10 Jun 2019 21:24:18 +0000
Received: from 089144193064.atnat0002.highway.a1.net ([89.144.193.64]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1haRif-0000eX-46; Mon, 10 Jun 2019 21:20:45 +0000
From: Christoph Hellwig <hch@lst.de>
To: Greg Ungerer <gerg@linux-m68k.org>
Subject: [PATCH 10/15] binfmt_flat: make support for old format binaries
 optional
Date: Mon, 10 Jun 2019 23:20:10 +0200
Message-Id: <20190610212015.9157-11-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190610212015.9157-1-hch@lst.de>
References: <20190610212015.9157-1-hch@lst.de>
MIME-Version: 1.0
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
Cc: uclinux-h8-devel@lists.sourceforge.jp, linux-xtensa@linux-xtensa.org,
 Michal Simek <monstr@monstr.eu>, linux-c6x-dev@linux-c6x.org,
 linux-sh@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-m68k@lists.linux-m68k.org, linux-riscv@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

No need to carry the extra code around, given that systems using flat
binaries are generally very resource constrained.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 fs/Kconfig.binfmt |  7 +++++++
 fs/binfmt_flat.c  | 29 +++++++++++++++++++++--------
 2 files changed, 28 insertions(+), 8 deletions(-)

diff --git a/fs/Kconfig.binfmt b/fs/Kconfig.binfmt
index 286b425b30b9..62dc4f577ba1 100644
--- a/fs/Kconfig.binfmt
+++ b/fs/Kconfig.binfmt
@@ -106,6 +106,13 @@ config BINFMT_FLAT_ARGVP_ENVP_ON_STACK
 config BINFMT_FLAT_OLD_ALWAYS_RAM
 	bool
 
+config BINFMT_FLAT_OLD
+	bool "Enable support for very old legacy flat binaries"
+	depends on BINFMT_FLAT
+	help
+	  Support decade old uClinux FLAT format binaries.  Unless you know
+	  you have some of those say N here.
+
 config BINFMT_ZFLAT
 	bool "Enable ZFLAT support"
 	depends on BINFMT_FLAT
diff --git a/fs/binfmt_flat.c b/fs/binfmt_flat.c
index 6c1848dee724..ed7d969593d2 100644
--- a/fs/binfmt_flat.c
+++ b/fs/binfmt_flat.c
@@ -374,6 +374,7 @@ calc_reloc(unsigned long r, struct lib_info *p, int curid, int internalp)
 
 /****************************************************************************/
 
+#ifdef CONFIG_BINFMT_FLAT_OLD
 static void old_reloc(unsigned long rl)
 {
 	static const char *segment[] = { "TEXT", "DATA", "BSS", "*UNKNOWN*" };
@@ -411,6 +412,7 @@ static void old_reloc(unsigned long rl)
 
 	pr_debug("Relocation became %lx\n", val);
 }
+#endif /* CONFIG_BINFMT_FLAT_OLD */
 
 /****************************************************************************/
 
@@ -461,6 +463,7 @@ static int load_flat_file(struct linux_binprm *bprm,
 	if (flags & FLAT_FLAG_KTRACE)
 		pr_info("Loading file: %s\n", bprm->filename);
 
+#ifdef CONFIG_BINFMT_FLAT_OLD
 	if (rev != FLAT_VERSION && rev != OLD_FLAT_VERSION) {
 		pr_err("bad flat file version 0x%x (supported 0x%lx and 0x%lx)\n",
 		       rev, FLAT_VERSION, OLD_FLAT_VERSION);
@@ -476,6 +479,22 @@ static int load_flat_file(struct linux_binprm *bprm,
 		goto err;
 	}
 
+	/*
+	 * fix up the flags for the older format,  there were all kinds
+	 * of endian hacks,  this only works for the simple cases
+	 */
+	if (IS_ENABLED(CONFIG_BINFMT_FLAT_OLD_ALWAYS_RAM) &&
+	    rev == OLD_FLAT_VERSION)
+		flags = FLAT_FLAG_RAM;
+#else /* CONFIG_BINFMT_FLAT_OLD */
+	if (rev != FLAT_VERSION) {
+		pr_err("bad flat file version 0x%x (supported 0x%lx)\n",
+		       rev, FLAT_VERSION);
+		ret = -ENOEXEC;
+		goto err;
+	}
+#endif /* !CONFIG_BINFMT_FLAT_OLD */
+
 	/*
 	 * Make sure the header params are sane.
 	 * 28 bits (256 MB) is way more than reasonable in this case.
@@ -487,14 +506,6 @@ static int load_flat_file(struct linux_binprm *bprm,
 		goto err;
 	}
 
-	/*
-	 * fix up the flags for the older format,  there were all kinds
-	 * of endian hacks,  this only works for the simple cases
-	 */
-	if (IS_ENABLED(CONFIG_BINFMT_FLAT_OLD_ALWAYS_RAM) &&
-	    rev == OLD_FLAT_VERSION)
-		flags = FLAT_FLAG_RAM;
-
 #ifndef CONFIG_BINFMT_ZFLAT
 	if (flags & (FLAT_FLAG_GZIP|FLAT_FLAG_GZDATA)) {
 		pr_err("Support for ZFLAT executables is not enabled.\n");
@@ -833,6 +844,7 @@ static int load_flat_file(struct linux_binprm *bprm,
 					goto err;
 			}
 		}
+#ifdef CONFIG_BINFMT_FLAT_OLD
 	} else {
 		for (i = 0; i < relocs; i++) {
 			__be32 relval;
@@ -840,6 +852,7 @@ static int load_flat_file(struct linux_binprm *bprm,
 				return -EFAULT;
 			old_reloc(ntohl(relval));
 		}
+#endif /* CONFIG_BINFMT_FLAT_OLD */
 	}
 
 	flush_icache_range(start_code, end_code);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
