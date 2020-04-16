Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F21A1AC261
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 15:28:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=t/wRWabKJE3iaEXvfkv4tnz6dVFrgIshZmQvqHJRD5A=; b=KgT
	DdW/NeQAJvCwgo5FLvtexR2XCiyvn7rt8MAibqtgbYHURf6ZiHMTFZ1CPviPwzziuI8ZhGgBiJN5+
	qBkeobvz6IrRD5ctxWaCgefTnJ8KeWyQT5bcycII0k12xOPiUE//t+RGEaAPvR+aK82A09DzZgtaf
	tXZSn4h/VOeeTsdKQknVjDsq68hPpDt94dDyO4lZYqPmA3eWtgkHrYTJ8N3GC7zXO/NDIohvNjGDU
	65ZZPE01GfhVZBNAxgPjTsLU4H39BMjysgpXrWNkAcrIGdy89moYG6Zqdyeadg2wyTb2oES8AUMHz
	9dOWHrbz+kFO2tZFC/Bovj4kT9hfuog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP4Yj-0008It-Gf; Thu, 16 Apr 2020 13:28:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP4YZ-0008IO-3Z
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 13:27:52 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9914E217D8;
 Thu, 16 Apr 2020 13:27:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587043668;
 bh=qHQLbK1KT0MgDv8iH2Tw2FNmP/fsrQpBK7sdwgMtLZ4=;
 h=From:To:Cc:Subject:Date:From;
 b=iax3vUTpec/czv7y9KKXls2JWoSO9q9XxQTxiQLEXOtN7EZUPJJXWri6pMSvccEvl
 8vVqL62sl++XGpFMze27kHxfWMM/6sTH9msWfIQpv2FYpyQHA0dntgLh7d9izYeOnR
 Y2nlZbrhJYkV2JnfuEaX+HBaJBJITmvkezLzX00I=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64/kernel: vmlinux.lds: drop redundant discard/keep macros
Date: Thu, 16 Apr 2020 15:27:30 +0200
Message-Id: <20200416132730.25290-1-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_062751_163984_C9265C30 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, suzuki.poulose@arm.com, catalin.marinas@arm.com,
 james.morse@arm.com, will@kernel.org, Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ARM_EXIT_KEEP and ARM_EXIT_DISCARD are always defined in the same way,
so we don't really need them in the first place.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm64/kernel/vmlinux.lds.S | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
index 1d399db0644f..04ea6160d444 100644
--- a/arch/arm64/kernel/vmlinux.lds.S
+++ b/arch/arm64/kernel/vmlinux.lds.S
@@ -17,10 +17,6 @@
 
 #include "image.h"
 
-/* .exit.text needed in case of alternative patching */
-#define ARM_EXIT_KEEP(x)	x
-#define ARM_EXIT_DISCARD(x)
-
 OUTPUT_ARCH(aarch64)
 ENTRY(_text)
 
@@ -95,8 +91,6 @@ SECTIONS
 	 * order of matching.
 	 */
 	/DISCARD/ : {
-		ARM_EXIT_DISCARD(EXIT_TEXT)
-		ARM_EXIT_DISCARD(EXIT_DATA)
 		EXIT_CALL
 		*(.discard)
 		*(.discard.*)
@@ -161,7 +155,7 @@ SECTIONS
 
 	__exittext_begin = .;
 	.exit.text : {
-		ARM_EXIT_KEEP(EXIT_TEXT)
+		EXIT_TEXT
 	}
 	__exittext_end = .;
 
@@ -188,7 +182,7 @@ SECTIONS
 		*(.init.rodata.* .init.bss)	/* from the EFI stub */
 	}
 	.exit.data : {
-		ARM_EXIT_KEEP(EXIT_DATA)
+		EXIT_DATA
 	}
 
 	PERCPU_SECTION(L1_CACHE_BYTES)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
