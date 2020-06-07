Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E08051F0B96
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  7 Jun 2020 15:59:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nPkBgdWJFGdMMJk9LJ+aYG12YukfaMgba+FrP+tXZ0g=; b=Ks7LV5SapoElZr
	aAANSonPOk1tyiGJHgb2yJCuEfmajtt9q49Pq0IOB+wZ487zN5EZ8owP5cZBLuKTbusKNfTv1fBdd
	rX70zgEdZo+xNwMiCmz61kN9+lmMyBEc1FJICLsHW/tKVJ1xu8aa3sisnHwsI91caDAVqdZig7+Zs
	D9SNb1X3U9E2Zp+6Db6yH7/NHR1oH/gOaIcGXVwMPkFSC22SjmG7FCVEMnRHvuc+Kji8LxcQ0BUBW
	YfWaHObUzED5+RTJGjg5lAb4PBV+zykUqI9V+i95YhidGuokemLNtiMP/q3PWnO5q6t54mPNibVD1
	4luXeXWoXT2fQFNN6UrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhvpp-0008OE-2h; Sun, 07 Jun 2020 13:59:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhvp5-0007rS-26
 for linux-arm-kernel@lists.infradead.org; Sun, 07 Jun 2020 13:58:55 +0000
Received: from dogfood.home (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr
 [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AC85D20723;
 Sun,  7 Jun 2020 13:58:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591538327;
 bh=1uYwfpxT3Azd8kSnfp0VKbMgutEcoJC6q+mEDBLy3z8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pfyFy5RSNdiFfuihy406Sh1Ua7anaiS6zFDyWwaTdzrhWrf/qgrnpgRkPyuazIYl/
 fz2mtligGgZdbbUlOaaPpzlF2OG67ChZhd+eSH8WDZVya9Z6VGyKAK0jWQ+J8GrXJE
 P2jPyQ8dKWSXNlSEW6zuSSmFOXylEYn0AgrAYO9o=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH v2 1/2] efi/arm: decompressor: deal with HYP mode boot
 gracefully
Date: Sun,  7 Jun 2020 15:58:33 +0200
Message-Id: <20200607135834.898294-2-ardb@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200607135834.898294-1-ardb@kernel.org>
References: <20200607135834.898294-1-ardb@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_065851_138944_A3745CD0 
X-CRM114-Status: GOOD (  14.42  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
requirement, which is not entirely unreasonable, given that it makes
HYP mode inaccessible to the operating system.

So let's make sure that we can deal with this condition gracefully.
We already tolerate booting the EFI stub with the caches off (even
though this violates the EFI spec as well), and so we should deal
with HYP mode boot with MMU and caches either on or off.

- When the MMU and caches are on, we can ignore the HYP stub altogether,
  since we can carry on executing at HYP. We do need to ensure that we
  disable the MMU at HYP before entering the kernel proper.

- When the MMU and caches are off, we have to drop to SVC mode so that
  we can set up the page tables using short descriptors. In this case,
  we need to install the HYP stub as usual, so that we can return to HYP
  mode before handing over to the kernel proper.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm/boot/compressed/head.S | 61 ++++++++++++++++++++
 1 file changed, 61 insertions(+)

diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
index c79db44ba128..3476e85c31e7 100644
--- a/arch/arm/boot/compressed/head.S
+++ b/arch/arm/boot/compressed/head.S
@@ -1410,7 +1410,11 @@ memdump:	mov	r12, r0
 __hyp_reentry_vectors:
 		W(b)	.			@ reset
 		W(b)	.			@ undef
+#ifdef CONFIG_EFI_STUB
+		W(b)	__enter_kernel_from_hyp	@ hvc from HYP
+#else
 		W(b)	.			@ svc
+#endif
 		W(b)	.			@ pabort
 		W(b)	.			@ dabort
 		W(b)	__enter_kernel		@ hyp
@@ -1429,14 +1433,71 @@ __enter_kernel:
 reloc_code_end:
 
 #ifdef CONFIG_EFI_STUB
+__enter_kernel_from_hyp:
+		mrc	p15, 4, r0, c1, c0, 0	@ read HSCTLR
+		bic	r0, r0, #0x5		@ disable MMU and caches
+		mcr	p15, 4, r0, c1, c0, 0	@ write HSCTLR
+		isb
+		b	__enter_kernel
+
 ENTRY(efi_enter_kernel)
 		mov	r4, r0			@ preserve image base
 		mov	r8, r1			@ preserve DT pointer
 
+ ARM(		adrl	r0, call_cache_fn	)
+ THUMB(		adr	r0, call_cache_fn	)
+		adr	r1, 0f			@ clean the region of code we
+		bl	cache_clean_flush	@ may run with the MMU off
+
+#ifdef CONFIG_ARM_VIRT_EXT
+		@
+		@ The EFI spec does not support booting on ARM in HYP mode,
+		@ since it mandates that the MMU and caches are on, with all
+		@ 32-bit addressable DRAM mapped 1:1 using short descriptors.
+		@
+		@ While the EDK2 reference implementation adheres to this,
+		@ U-Boot might decide to enter the EFI stub in HYP mode
+		@ anyway, with the MMU and caches either on or off.
+		@
+		mrs	r0, cpsr		@ get the current mode
+		msr	spsr_cxsf, r0		@ record boot mode
+		and	r0, r0, #MODE_MASK	@ are we running in HYP mode?
+		cmp	r0, #HYP_MODE
+		bne	.Lefi_svc
+
+		mrc	p15, 4, r1, c1, c0, 0	@ read HSCTLR
+		tst	r1, #0x1		@ MMU enabled at HYP?
+		beq	1f
+
+		@
+		@ When running in HYP mode with the caches on, we're better
+		@ off just carrying on using the cached 1:1 mapping that the
+		@ firmware provided. Set up the HYP vectors so HVC instructions
+		@ issued from HYP mode take us to the correct handler code. We
+		@ will disable the MMU before jumping to the kernel proper.
+		@
+		adr	r0, __hyp_reentry_vectors
+		mcr	p15, 4, r0, c12, c0, 0	@ set HYP vector base (HVBAR)
+		isb
+		b	.Lefi_hyp
+
+		@
+		@ When running in HYP mode with the caches off, we need to drop
+		@ into SVC mode now, and let the decompressor set up its cached
+		@ 1:1 mapping as usual.
+		@
+1:		mov	r9, r4			@ preserve image base
+		bl	__hyp_stub_install	@ install HYP stub vectors
+		safe_svcmode_maskall	r1	@ drop to SVC mode
+		orr	r4, r9, #1		@ restore image base and set LSB
+		b	.Lefi_hyp
+.Lefi_svc:
+#endif
 		mrc	p15, 0, r0, c1, c0, 0	@ read SCTLR
 		tst	r0, #0x1		@ MMU enabled?
 		orreq	r4, r4, #1		@ set LSB if not
 
+.Lefi_hyp:
 		mov	r0, r8			@ DT start
 		add	r1, r8, r2		@ DT end
 		bl	cache_clean_flush
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
