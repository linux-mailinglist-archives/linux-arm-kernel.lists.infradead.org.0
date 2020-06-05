Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B3CC1EF6CF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 13:52:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QdCs7o/wzK440q9ScFr9ye+L32sITdm5g8DqaLoLqCg=; b=qwpSDxWKbEBjeJ
	EQMVsXrhJ9KP3iNmSDItTA1TIbG7aW/FS4WCYB1R5U0MP3sM7dt9k1KlOcbyooC8NRUSTfNnTjG28
	1YyxC1D2rexnJxBrslJs12QnifWnMFrYKLDMKaTHy1ABskRekpuNjCa2MoRGFPoZ006w4O4zSKSmM
	3Mr5Nr8K5h7HdN33JiJmrG/q8sbYC3xxos14dgaQhvYPGpmq/lNASKKLQqT6A899HgW4Rf8fBZ9t4
	G2CBkMMMqb/6zMC8G8kK5lYPSwN7jVa+I/YlUPOy0A7ORFWwpfNx9k2aAufZ3zKGBMmo5g8/ceJFr
	6/+YYJgqIoPaeDhd7jXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhAtT-0001Fp-L2; Fri, 05 Jun 2020 11:52:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhAtM-0001FU-Rq
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 11:52:10 +0000
Received: from localhost.localdomain
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A28952063A;
 Fri,  5 Jun 2020 11:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591357927;
 bh=9gkhKOjy2h7vbwv5PwKaL3fvJoy5px21Yf6PJcY4edo=;
 h=From:To:Cc:Subject:Date:From;
 b=io/0z295FcP3sYkbkD99oa10o3FmjmvCFlswXn4VqG1r3vLLxfwsuZ/lwfDD50pnv
 7BJ9BWjX8yVjhr9/bS6bZEHIc2fhcQX8yprmBaSTSIVRrR75L6yEh/QO90mPSHM1Ad
 dfSXRj9XH2zN0M9flcua/y+oAN3SVkK1Fe/vqfNk=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH] efi/arm: decompressor: deal with HYP mode boot gracefully
Date: Fri,  5 Jun 2020 13:52:00 +0200
Message-Id: <20200605115200.413921-1-ardb@kernel.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_045208_919177_57F0F02A 
X-CRM114-Status: GOOD (  14.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ard Biesheuvel <ardb@kernel.org>, maz@kernel.org, linux@armlinux.org.uk,
 linux-arm-kernel@lists.infradead.org, xypron.glpk@gmx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

EFI on ARM only supports short descriptors, and given that it mandates
that the MMU and caches are on, it is implied that booting in HYP mode
is not supported.

However, implementations of EFI exist (i.e., U-Boot) that ignore this
requirement, which is not entirely unreasonable, given that it does
not make a lot of sense to begin with.

So let's make sure that we can deal with this condition gracefully.
We already tolerate booting the EFI stub with the caches off (even
though this violates the EFI spec as well), and so we should deal
with HYP mode boot with MMU and caches either on or off.

- When the MMU and caches are on, we can ignore the HYP stub altogether,
  since we can just use the existing mappings, and just branch into
  the decompressed kernel as usual after disabling MMU and caches.

- When the MMU and caches are off, we have to drop to SVC mode so that
  we can set up the page tables using short descriptors. In this case,
  we need to install the HYP stub so that we can return to HYP mode
  when handing over to the kernel proper.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm/boot/compressed/head.S | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
index c79db44ba128..986db86ba334 100644
--- a/arch/arm/boot/compressed/head.S
+++ b/arch/arm/boot/compressed/head.S
@@ -1436,6 +1436,35 @@ ENTRY(efi_enter_kernel)
 		mrc	p15, 0, r0, c1, c0, 0	@ read SCTLR
 		tst	r0, #0x1		@ MMU enabled?
 		orreq	r4, r4, #1		@ set LSB if not
+#ifdef CONFIG_ARM_VIRT_EXT
+		@
+		@ The EFI spec does not support booting on ARM in HYP mode,
+		@ since it mandates that the MMU and caches are on, with all
+		@ 32-bit addressable DRAM mapped 1:1 using short descriptors.
+		@ While the EDK2 reference implementation adheres to this,
+		@ U-Boot might decide to enter the EFI stub in HYP mode anyway,
+		@ with the MMU and caches either on or off.
+		@ In the former case, we're better off just carrying on using
+		@ the cached 1:1 mapping that the firmware provided, and pretend
+		@ that we are in SVC mode as far as the decompressor is
+		@ concerned. However, if the caches are off, we need to drop
+		@ into SVC mode now, and let the decompressor set up its cached
+		@ 1:1 mapping as usual.
+		@
+		mov	r0, #SVC_MODE
+		msr	spsr_cxsf, r0		@ record that we are in SVC mode
+		bne	1f			@ skip HYP stub install if MMU is on
+
+		mov	r9, r4			@ preserve image base
+		bl	__hyp_stub_install	@ returns boot mode in r4
+		cmp	r4, #HYP_MODE		@ did we boot in HYP?
+		bne	1f			@ skip drop to SVC if we did not
+
+		safe_svcmode_maskall	r0
+		msr	spsr_cxsf, r4		@ record boot mode
+		mov	r4, r9			@ restore image base
+1:
+#endif
 
 		mov	r0, r8			@ DT start
 		add	r1, r8, r2		@ DT end
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
