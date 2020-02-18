Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF5C162AF0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 17:45:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fS37CM/+7edq0rf63+OtfKUs5Ugd5mYn/IrK386jOfg=; b=JcflcyZB75Sh39bhiOffG2dmhv
	OeOp9sFKhaFYWiMxo4EqdbyoM94L8yqumA8auPqDxpAgf6Fyns2kwE6woGIx2iX/PBurgWYdDNVxp
	JvATjx38bTnmnxBNmaO8R/3oCGvGyZK9SSZPfeT5WJl9dWASf6eAqkrvFrYurlWbDEyd5+Nxn4sM3
	cX4AN5QOwTVxkeeHOeytXlTcaxmf/EPxkhKB8/zNzdvuOu7Gwse/4GNnR8LNtI/pvwpkSvBAfjsNK
	nvNj4aQMRzW19PMoxwaJq3J/DtisQt3mcdcoUpXsLOKOljqzv4xLgSM79SgZDjt5P9X1dY6J1WRFv
	6PqBkrNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j460I-0006kz-9P; Tue, 18 Feb 2020 16:45:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j45zu-0006cK-Ft
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 16:45:23 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C63CD22B48;
 Tue, 18 Feb 2020 16:45:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582044322;
 bh=hm+90oUf47SPlQ5U0GH9SzXcGf83AzvmE+6vDU7VQQg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=EFJ8So8YFCpjuTqC6XE7Acup/qcg1SPKdPJj78HPvjVRUgD8LZRFI+AFPjJuhlfma
 ZnOHOKKA9dFUlQ+lY8uDfTr5L7CiEPdpiCjVR8zYPV/PDCzMOkhDMe9vhY+gRsWdqQ
 04AD36HBBEW99KviUT+Cr/r3e7oIky3qHFTIEVls=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH 1/2] ARM: decompressor: prepare cache_clean_flush for doing
 by-VA maintenance
Date: Tue, 18 Feb 2020 17:44:29 +0100
Message-Id: <20200218164430.32671-2-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200218164430.32671-1-ardb@kernel.org>
References: <20200218164430.32671-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_084522_549526_17780895 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Nicolas Pitre <nico@fluxnic.net>, Marc Zyngier <maz@kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In preparation of turning the decompressor's cache clean/flush
operations into proper by-VA maintenance for v7 cores, pass the
start and end addresses of the regions that need cache maintenance
into cache_clean_flush in registers r0 and r1.

Currently, all implementations of cache_clean_flush ignore these
values, so no functional change is expected as a result of this
patch.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm/boot/compressed/head.S | 28 +++++++++++++++++---
 1 file changed, 25 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
index 7b86a2e1acce..935799b92198 100644
--- a/arch/arm/boot/compressed/head.S
+++ b/arch/arm/boot/compressed/head.S
@@ -525,12 +525,15 @@ dtb_check_done:
 		/* cache_clean_flush may use the stack, so relocate it */
 		add	sp, sp, r6
 #endif
-
+		mov	r0, r9
+		ldr	r1, 0f
+		add	r1, r1, r0
 		bl	cache_clean_flush
 
 		badr	r0, restart
 		add	r0, r0, r6
 		mov	pc, r0
+0:		.long	_edata - restart
 
 wont_overwrite:
 /*
@@ -622,6 +625,21 @@ not_relocated:	mov	r0, #0
 		add	r2, sp, #0x10000	@ 64k max
 		mov	r3, r7
 		bl	decompress_kernel
+
+		mov	r0, r4			@ base of inflated image
+		adr	r1, LC0			@ actual LC0
+		ldr	r2, [r1]		@ linktime LC0
+		sub	r2, r1, r2		@ LC0 delta
+		ldr	r1, [r1, #16]		@ link time inflated size offset
+		ldr	r1, [r1, r2]		@ actual inflated size (LE)
+#ifdef __ARMEB__
+		/* convert to big endian */
+		eor	r2, r1, r1, ror #16
+		bic	r2, r2, #0x00ff0000
+		mov	r1, r1, ror #8
+		eor	r1, r1, r2, lsr #8
+#endif
+		add	r1, r1, r0		@ end of inflated image
 		bl	cache_clean_flush
 		bl	cache_off
 
@@ -1439,6 +1457,7 @@ reloc_code_end:
 #ifdef CONFIG_EFI_STUB
 		.align	2
 _start:		.long	start - .
+__edata:	.long	_edata - .
 
 ENTRY(efi_stub_entry)
 		@ allocate space on stack for passing current zImage address
@@ -1470,8 +1489,11 @@ ENTRY(efi_stub_entry)
 		.align	2
 0:		.long	start - (. + 4)
 
-		@ Preserve return value of efi_entry() in r4
-		mov	r4, r0
+		mov	r4, r0				@ preserve DTB pointer
+		mov	r0, r1				@ start of image
+		adr	r2, __edata
+		ldr	r1, [r2]
+		add	r1, r1, r2			@ end of image
 		bl	cache_clean_flush
 		bl	cache_off
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
