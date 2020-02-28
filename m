Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E46911734E7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 11:03:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=M4LGfg1zfM2/2US0rIKPNC8oD8nXdY2Hs5OiadZlt0s=; b=mQ5v2Kr5udCUdzkbVWkvhfPVTJ
	K+f2KAi0XDlsZ6mtF6T/KIxAkJYeyKRNRny69ZgpLmBp3Jwb4wZlvUKImCyc5UZZmC9WCQP8grXi5
	b4wPw/Z+4V1mNRPnogW/oKdsiqbZjZgXELRf4QSNzs9eH2YMgkXMhqqQ32uVKwECFYE24DUYjsMAU
	TJVPrEiLAvoUDFqeGdzboycaxPNucp0/rnCl1d197AXihLSy2RaOqMZwxEHyrup3GHW1q6KSOyBoJ
	ZRktgajagygB6s3Xx5xtJC4g+7CvOaIHKIhS/0kdMy5kT8fIbuBj3bVLpBCGdIlNFT4oJSVkhQ63v
	Bo0QRDoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7cUg-0003Nh-3Q; Fri, 28 Feb 2020 10:03:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7cTt-0002uw-BA
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 10:02:54 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4D05A246AE;
 Fri, 28 Feb 2020 10:02:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582884173;
 bh=ZHt5qBqIY9ONXAk9yRqbEabkxPlfdSFC1tszWNA9yCY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=m9x3lO5xp4b1B7I25UDFPakVH4paJw42sYPRwSkVMhqsqU7sExpKcjGT9VWWFKrG/
 pt+iiuYARsC1bRg9/YFGK94oO8kgznQWmVSGbocqVzulFNNwGn33K+dmvwvZapKWT7
 EyhNg9f/vsTFd40tlRUooybGu74Jnchk98hQkQtM=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH efi-next 2/3] efi/arm64: clean EFI stub exit code from cache
 instead of avoiding it
Date: Fri, 28 Feb 2020 11:02:43 +0100
Message-Id: <20200228100244.10979-3-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200228100244.10979-1-ardb@kernel.org>
References: <20200228100244.10979-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_020253_399177_DACD4B26 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit 9f9223778 ("efi/libstub/arm: Make efi_entry() an ordinary PE/COFF
entrypoint") modified the handover code written in assembler, and for
maintainability, aligned the logic with the logic used in the 32-bit ARM
version, which is to avoid cache maintenance on the remaining instructions
in the subroutine that will be executed with the MMU and caches off, and
instead, branch into the relocated copy of the kernel image.

However, this assumes that this copy is executable, and this means we
expect EFI_LOADER_DATA regions to be executable as well, which is not
a reasonable assumption to make, even if this is true for most UEFI
implementations today.

So change this back, and add a __flush_dcache_area() call to cover the
remaining code in the subroutine.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm64/kernel/efi-entry.S  | 18 +++++++++---------
 arch/arm64/kernel/image-vars.h |  2 +-
 2 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/kernel/efi-entry.S b/arch/arm64/kernel/efi-entry.S
index 4cfd03c35c49..d5dee064975f 100644
--- a/arch/arm64/kernel/efi-entry.S
+++ b/arch/arm64/kernel/efi-entry.S
@@ -19,7 +19,8 @@ ENTRY(efi_enter_kernel)
 	 * point stored in x0. Save those values in registers which are
 	 * callee preserved.
 	 */
-	mov	x19, x0			// relocated Image address
+	ldr	w2, =stext_offset
+	add	x19, x0, x2		// relocated Image entrypoint
 	mov	x20, x1			// DTB address
 
 	/*
@@ -29,15 +30,14 @@ ENTRY(efi_enter_kernel)
 	ldr	w1, =kernel_size
 	bl	__flush_dcache_area
 	ic	ialluis
-	dsb	sy
 
 	/*
-	 * Jump across, into the copy of the image that we just cleaned
-	 * to the PoC, so that we can safely disable the MMU and caches.
+	 * Flush the remainder of this routine to the PoC
+	 * so that we can safely disable the MMU and caches.
 	 */
-	ldr	w0, .Ljmp
-	sub	x0, x19, w0, sxtw
-	br	x0
+	adr	x0, 0f
+	ldr	w1, 3f
+	bl	__flush_dcache_area
 0:
 	/* Turn off Dcache and MMU */
 	mrs	x0, CurrentEL
@@ -63,6 +63,6 @@ ENTRY(efi_enter_kernel)
 	mov	x1, xzr
 	mov	x2, xzr
 	mov	x3, xzr
-	b	stext
+	br	x19
 ENDPROC(efi_enter_kernel)
-.Ljmp:	.long	_text - 0b
+3:	.long	. - 0b
diff --git a/arch/arm64/kernel/image-vars.h b/arch/arm64/kernel/image-vars.h
index 9a7aef0d6f70..28bf98f84adf 100644
--- a/arch/arm64/kernel/image-vars.h
+++ b/arch/arm64/kernel/image-vars.h
@@ -13,6 +13,7 @@
 #ifdef CONFIG_EFI
 
 __efistub_kernel_size		= _edata - _text;
+__efistub_stext_offset		= stext - _text;
 
 
 /*
@@ -43,7 +44,6 @@ __efistub___memset		= __pi_memset;
 #endif
 
 __efistub__text			= _text;
-__efistub_stext			= stext;
 __efistub__end			= _end;
 __efistub__edata		= _edata;
 __efistub_screen_info		= screen_info;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
