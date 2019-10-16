Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A607D9B10
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 22:08:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kbKcBrrfRsrGEFgYMqxjfjOCgnYrUa4fgNKfgrgvYTU=; b=Xe5nkF93mH9mHu
	ruRTbcTaOodrx4ARcfNUwtTO0sIwXoZ414dPdegFoGndB5TQwimi60hMsStY63anpcVVZYh/udfOu
	HunmcAHWBhqNCvEGE8gwRA8U8lcmT63/SzJGeM2UzRCi7phxYXs8QFu1xkFaiJirfRf49uRLiq3AC
	KborfPLI3bEybNYqpH0WPxOswAE6Sio6nGAztJkLTvOAh0SIu2qJQ1PkfeGB2kNjTlbo0G60OlVLz
	fwBWgoylrLQgp3ABbjLREb+7KdL3Jc6BclrEdbFkGeVgIcpH4oUIqGZWGceYErnzRRMvkvLxovzn6
	5a+5cos4H2cdJBKJHD2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKpbE-0002yU-Lh; Wed, 16 Oct 2019 20:08:48 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpTn-0004SS-3E
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 20:01:09 +0000
Received: by mail-qk1-x741.google.com with SMTP id x134so24010731qkb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 13:01:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=Mw2OGvuxxY6JH/awUw/bGWWFMEnd2LEcvsmO8uP2qEo=;
 b=ObSNU+VJ5JAoriZOKWgMA4tccsonsqsKMTBl3ohblUD5VWjOPV8nZoi/PDQqVdjq15
 gAVf775SXyp86FPKSJ5r83OiTe2yZxm4BmhSmjg/+quABEkxp0rx+CHe1A9K45Iz4exx
 EflC33ledNGbuLJtqK6ipUpCUnd6YpvKf4uIqG1Wm8iBSNe0/HeR9rz5dHzZy/TbZFpk
 RGBl+zcRoXe6Udf9LADV4V/TXU/404godtCmCSaiNYUG7x9r6a7K6HTsuHe2UvKjoNBj
 INk1vpneu71NKYqm04n1fwr067/Aq9N8RBJy/YyPEP2aFmquwYeugamrv2Px+1YuBuZV
 rX8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Mw2OGvuxxY6JH/awUw/bGWWFMEnd2LEcvsmO8uP2qEo=;
 b=QEANlGksvEJtecTQsdmu2z50eEbbGfmmiYo4rXsHBDS87FhrNy5rMt5KSP/NxN05R7
 AV9LdLpGmDFYWz6NU4zxp+iD1kM1Ii49f/ImRwI8bcZx7YQBZPISQ326/uCCZ3hs24gh
 FZ0QtaKlFGMb0dYnVgh1rr6Rj3t37tO36DKORqyWLMBPe6ycLqfgxKx8UUXJHtjHH0/e
 1KFk8YuC1xkdtGZ+hP32ZwAtLaHb7WFWcSqeSZs2jJS5srL8e2XIvB3vqUCS3NEdb7C3
 qaGMqlYsMmcpFY9YPy3l6V/fkYJodYQydLzxLVtrKM7ttCI4xI2Eq+ag51/f8opRo/SU
 W8hw==
X-Gm-Message-State: APjAAAWcFkodjx3EGbBETPhCLjATNSdk8kycdYoJC+IoPrOySbkNtDV2
 ZnzoJrcdBPYeTLVWlOitRX6Y7Q==
X-Google-Smtp-Source: APXvYqwOlwmF2U4BV9p21G9N2uQpEQW5yv1vW+jWGr0w9W4UuduoHVJQE7h991VZbr2DS/0v1iuEHA==
X-Received: by 2002:a37:e102:: with SMTP id c2mr42357417qkm.269.1571256065848; 
 Wed, 16 Oct 2019 13:01:05 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id c204sm13342030qkb.90.2019.10.16.13.01.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 13:01:05 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com, steve.capper@arm.com, rfontana@redhat.com,
 tglx@linutronix.de
Subject: [PATCH v7 18/25] arm64: kexec: arm64_relocate_new_kernel clean-ups
Date: Wed, 16 Oct 2019 16:00:27 -0400
Message-Id: <20191016200034.1342308-19-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
References: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_130107_178236_EEB0ACF8 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove excessive empty lines from arm64_relocate_new_kernel.
Also, use comments on the same lines with instructions where
appropriate.

Change ENDPROC to END it never returns.

copy_page(dest, src, tmps...)
Increments dest and src by PAGE_SIZE, so no need to store dest
prior to calling copy_page and increment it after. Also, src is not
used after a copy, not need to copy either.

Call raw_dcache_line_size()  only when relocation is actually going to
happen.

Since '.align 3' is intended to align globals at the end of the file,
move it there.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/kernel/relocate_kernel.S | 50 +++++++----------------------
 1 file changed, 11 insertions(+), 39 deletions(-)

diff --git a/arch/arm64/kernel/relocate_kernel.S b/arch/arm64/kernel/relocate_kernel.S
index c1d7db71a726..e9c974ea4717 100644
--- a/arch/arm64/kernel/relocate_kernel.S
+++ b/arch/arm64/kernel/relocate_kernel.S
@@ -8,7 +8,6 @@
 
 #include <linux/kexec.h>
 #include <linux/linkage.h>
-
 #include <asm/assembler.h>
 #include <asm/kexec.h>
 #include <asm/page.h>
@@ -17,25 +16,21 @@
 /*
  * arm64_relocate_new_kernel - Put a 2nd stage image in place and boot it.
  *
- * The memory that the old kernel occupies may be overwritten when coping the
+ * The memory that the old kernel occupies may be overwritten when copying the
  * new image to its final location.  To assure that the
  * arm64_relocate_new_kernel routine which does that copy is not overwritten,
  * all code and data needed by arm64_relocate_new_kernel must be between the
  * symbols arm64_relocate_new_kernel and arm64_relocate_new_kernel_end.  The
  * machine_kexec() routine will copy arm64_relocate_new_kernel to the kexec
- * control_code_page, a special page which has been set up to be preserved
- * during the copy operation.
+ * safe memory that has been set up to be preserved during the copy operation.
  */
 ENTRY(arm64_relocate_new_kernel)
-
 	/* Setup the list loop variables. */
 	mov	x18, x2				/* x18 = dtb address */
 	mov	x17, x1				/* x17 = kimage_start */
 	mov	x16, x0				/* x16 = kimage_head */
-	raw_dcache_line_size x15, x0		/* x15 = dcache line size */
 	mov	x14, xzr			/* x14 = entry ptr */
 	mov	x13, xzr			/* x13 = copy dest */
-
 	/* Clear the sctlr_el2 flags. */
 	mrs	x0, CurrentEL
 	cmp	x0, #CurrentEL_EL2
@@ -46,14 +41,11 @@ ENTRY(arm64_relocate_new_kernel)
 	pre_disable_mmu_workaround
 	msr	sctlr_el2, x0
 	isb
-1:
-
-	/* Check if the new image needs relocation. */
+1:	/* Check if the new image needs relocation. */
 	tbnz	x16, IND_DONE_BIT, .Ldone
-
+	raw_dcache_line_size x15, x1		/* x15 = dcache line size */
 .Lloop:
 	and	x12, x16, PAGE_MASK		/* x12 = addr */
-
 	/* Test the entry flags. */
 .Ltest_source:
 	tbz	x16, IND_SOURCE_BIT, .Ltest_indirection
@@ -69,34 +61,18 @@ ENTRY(arm64_relocate_new_kernel)
 	b.lo    2b
 	dsb     sy
 
-	mov x20, x13
-	mov x21, x12
-	copy_page x20, x21, x0, x1, x2, x3, x4, x5, x6, x7
-
-	/* dest += PAGE_SIZE */
-	add	x13, x13, PAGE_SIZE
+	copy_page x13, x12, x0, x1, x2, x3, x4, x5, x6, x7
 	b	.Lnext
-
 .Ltest_indirection:
 	tbz	x16, IND_INDIRECTION_BIT, .Ltest_destination
-
-	/* ptr = addr */
-	mov	x14, x12
+	mov	x14, x12			/* ptr = addr */
 	b	.Lnext
-
 .Ltest_destination:
 	tbz	x16, IND_DESTINATION_BIT, .Lnext
-
-	/* dest = addr */
-	mov	x13, x12
-
+	mov	x13, x12			/* dest = addr */
 .Lnext:
-	/* entry = *ptr++ */
-	ldr	x16, [x14], #8
-
-	/* while (!(entry & DONE)) */
-	tbz	x16, IND_DONE_BIT, .Lloop
-
+	ldr	x16, [x14], #8			/* entry = *ptr++ */
+	tbz	x16, IND_DONE_BIT, .Lloop	/* while (!(entry & DONE)) */
 .Ldone:
 	/* wait for writes from copy_page to finish */
 	dsb	nsh
@@ -110,16 +86,12 @@ ENTRY(arm64_relocate_new_kernel)
 	mov	x2, xzr
 	mov	x3, xzr
 	br	x17
-
-ENDPROC(arm64_relocate_new_kernel)
-
 .ltorg
-
-.align 3	/* To keep the 64-bit values below naturally aligned. */
+END(arm64_relocate_new_kernel)
 
 .Lcopy_end:
 .org	KEXEC_CONTROL_PAGE_SIZE
-
+.align 3	/* To keep the 64-bit values below naturally aligned. */
 /*
  * arm64_relocate_new_kernel_size - Number of bytes to copy to the
  * control_code_page.
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
