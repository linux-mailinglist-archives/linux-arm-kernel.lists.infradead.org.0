Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36EA0F50F0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 17:20:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IRhzNe+koXUK9fcbXHQv0lppMBPrh8MKka81dH+xsKs=; b=Y//x7ahzkFYD2Z
	eorOz0QQwdEprNc2HPvloj6DRSZr5JLmuW+Ax25q3+vWig2REcVB58vsie/bPfBZT8l9Pq3LL+MhH
	YGrnmamw201wRUfbRrb9xvONkkQVGpvW/EraT010pH2EuVdYwAew8M91OdjRkoHGvxmaLNXTcjse+
	c1b9crFNuyv5kXGxafqu3FVx4v5EYpvxzoZtzB3qTM45aL+gT4mlFsyIEhxs8TxmoQFD9mzvizoHQ
	2dcJlI33FeKrwLQiAqqJvlb4dABtStNkPYHaF2HBlL4YIt+xSLE98zOw0ECoVXyxL/+uzUNbVtd48
	wbrjoM3cvjsEdyDlO4LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT6zx-0002k2-A8; Fri, 08 Nov 2019 16:20:33 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT6zW-0001ps-0f
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 16:20:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From
 :Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UP8sz3VMM6gDtXw3B2Xz6o2Ev4+XxpPWW9yRz0iej2g=; b=pm+WJhVlCMfso1FITbxJ2yLgDz
 X/IPc/GtbGVKfJc/DC0Ii0VA3nhtM2JQ0EUd+GClWg1FSm3OmbjR2X5Bz4xPhnZvuhylJUatInraN
 uIKC/TXEwAp8pmNNxWC59JltAAxif2PG+SFjtO/LthR+MaQK1R50Rv16RnOEcGk2Co8o=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iT6zT-0007dv-L0; Fri, 08 Nov 2019 16:20:03 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id DB9192740A38; Fri,  8 Nov 2019 16:20:02 +0000 (GMT)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v3 1/2] arm64: kaslr: Announce KASLR status on boot
Date: Fri,  8 Nov 2019 16:20:00 +0000
Message-Id: <20191108162001.11737-2-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191108162001.11737-1-broonie@kernel.org>
References: <20191108162001.11737-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_082006_087237_B9D5DEF5 
X-CRM114-Status: GOOD (  15.78  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently the KASLR code is silent at boot unless it forces on KPTI in
which case a message will be printed for that. This can lead to users
incorrectly believing their system has the feature enabled when it in
fact does not, and if they notice the problem the lack of any
diagnostics makes it harder to understand the problem. Add an initcall
which prints a message showing the status of KASLR during boot to make
the status clear.

This is particularly useful in cases where we don't have a seed. It
seems to be a relatively common error for system integrators and
administrators to enable KASLR in their configuration but not provide
the seed at runtime, often due to seed provisioning breaking at some
later point after it is initially enabled and verified.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/kernel/kaslr.c | 41 ++++++++++++++++++++++++++++++++++++---
 1 file changed, 38 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/kernel/kaslr.c b/arch/arm64/kernel/kaslr.c
index 416f537bf614..0039dc50e556 100644
--- a/arch/arm64/kernel/kaslr.c
+++ b/arch/arm64/kernel/kaslr.c
@@ -19,6 +19,14 @@
 #include <asm/pgtable.h>
 #include <asm/sections.h>
 
+enum kaslr_status {
+	KASLR_ENABLED,
+	KASLR_DISABLED_CMDLINE,
+	KASLR_DISABLED_NO_SEED,
+	KASLR_DISABLED_FDT_REMAP,
+};
+
+enum kaslr_status __ro_after_init kaslr_status;
 u64 __ro_after_init module_alloc_base;
 u16 __initdata memstart_offset_seed;
 
@@ -91,15 +99,19 @@ u64 __init kaslr_early_init(u64 dt_phys)
 	 */
 	early_fixmap_init();
 	fdt = fixmap_remap_fdt(dt_phys, &size, PAGE_KERNEL);
-	if (!fdt)
+	if (!fdt) {
+		kaslr_status = KASLR_DISABLED_FDT_REMAP;
 		return 0;
+	}
 
 	/*
 	 * Retrieve (and wipe) the seed from the FDT
 	 */
 	seed = get_kaslr_seed(fdt);
-	if (!seed)
+	if (!seed) {
+		kaslr_status = KASLR_DISABLED_NO_SEED;
 		return 0;
+	}
 
 	/*
 	 * Check if 'nokaslr' appears on the command line, and
@@ -107,8 +119,10 @@ u64 __init kaslr_early_init(u64 dt_phys)
 	 */
 	cmdline = kaslr_get_cmdline(fdt);
 	str = strstr(cmdline, "nokaslr");
-	if (str == cmdline || (str > cmdline && *(str - 1) == ' '))
+	if (str == cmdline || (str > cmdline && *(str - 1) == ' ')) {
+		kaslr_status = KASLR_DISABLED_CMDLINE;
 		return 0;
+	}
 
 	/*
 	 * OK, so we are proceeding with KASLR enabled. Calculate a suitable
@@ -170,3 +184,24 @@ u64 __init kaslr_early_init(u64 dt_phys)
 
 	return offset;
 }
+
+static int __init kaslr_init(void)
+{
+	switch (kaslr_status) {
+	case KASLR_ENABLED:
+		pr_info("KASLR enabled\n");
+		break;
+	case KASLR_DISABLED_CMDLINE:
+		pr_info("KASLR disabled on command line\n");
+		break;
+	case KASLR_DISABLED_NO_SEED:
+		pr_warn("KASLR disabled due to lack of seed\n");
+		break;
+	case KASLR_DISABLED_FDT_REMAP:
+		pr_warn("KASLR disabled due to FDT remapping failure\n");
+		break;
+	}
+
+	return 0;
+}
+core_initcall(kaslr_init)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
