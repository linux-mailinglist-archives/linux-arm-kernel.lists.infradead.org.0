Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D3E1640A7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 10:44:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CXc3CQwehw2zIIsFVOtNTCrhPfQ5b5h18fYxIMTzki4=; b=gj9CslPoilzRftLJNVgRCQX5Co
	Pc0ZegZHOmQop7Gk7kjVb1uBn6FpyJw/u3HCI+zhYnK46PNWYCo2nNdKGvdvCWF0LiS/SrmYDzPZv
	lBR4lOXRSaT53tdMn7dZoEx8xgSq7FGt5RO4Xe8MWPVdq4Lsc8fe3OuXZtSnSi+om/xWrtPO/uZvk
	GBCxEp/EdWMvJfPh8HWfvsDuBJHmfZR4jEgRJx2l819v4Lpz6Ieq4RxfVtJoMygAeLJsJtQNGCaPT
	V9ROItyxAfyyi532HzFb1Dgu5zwvvtNtDLJhpD14GWVWEpcHqC7szYc4ObL/9/NnfvjCsQ+pQaGC9
	Z8EpvDFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Ltn-0001wH-E4; Wed, 19 Feb 2020 09:44:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4LtW-0001va-Qt
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 09:43:52 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DA20D24671;
 Wed, 19 Feb 2020 09:43:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582105430;
 bh=IFeKqUgeJV2n7+UfgpcbERriRaaDjRKasrOnKGYW4KE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=p2MTQBZizJ4UrgefK5SkbPxOEESDJrHLVICZbwMsWK7jr1wha9aA37dROV0bjUsKX
 SVTyYC3YVlQYlwSV/GcPiMbRg4+LVDquCGj/r8DlVTcv3HXP5AUYtxk17/YEsqaSRa
 N2IWtLzo9GMmVN8yDtdNa7sROdhZcH5SzHSHcPd4=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH v2 1/4] efi/arm: work around missing cache maintenance in
 decompressor handover
Date: Wed, 19 Feb 2020 10:43:37 +0100
Message-Id: <20200219094340.16597-2-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200219094340.16597-1-ardb@kernel.org>
References: <20200219094340.16597-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_014350_893810_B6A5A84D 
X-CRM114-Status: GOOD (  14.91  )
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
Cc: Nicolas Pitre <nico@fluxnic.net>, Tony Lindgren <tony@atomide.com>,
 Marc Zyngier <maz@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The EFI stub executes within the context of the zImage as it was
loaded by the firmware, which means it is treated as an ordinary
PE/COFF executable, which is loaded into memory, and cleaned to
the PoU to ensure that it can be executed safely while the MMU
and caches are on.

When the EFI stub hands over to the decompressor, we clean the caches
by set/way and disable the MMU and D-cache, to comply with the Linux
boot protocol for ARM. However, cache maintenance by set/way is not
sufficient to ensure that subsequent instruction fetches and data
accesses done with the MMU off see the correct data. This means that
proceeding as we do currently is not safe, especially since we also
perform data accesses with the MMU off, from a literal pool as well as
the stack.

So let's kick this can down the road a bit, and jump into the relocated
zImage before disabling the caches. This removes the requirement to
perform any by-VA cache maintenance on the original PE/COFF executable,
but it does require that the relocated zImage is cleaned to the PoC,
which is currently not the case. This will be addressed in a subsequent
patch.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm/boot/compressed/head.S | 20 ++++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
index 088b0a060876..6c98d3d2de2f 100644
--- a/arch/arm/boot/compressed/head.S
+++ b/arch/arm/boot/compressed/head.S
@@ -1461,6 +1461,19 @@ ENTRY(efi_stub_entry)
 		@ Preserve return value of efi_entry() in r4
 		mov	r4, r0
 		bl	cache_clean_flush
+
+		@ The PE/COFF loader might not have cleaned the code we are
+		@ running beyond the PoU, and so calling cache_off below from
+		@ inside the PE/COFF loader allocated region is unsafe. Let's
+		@ assume our own zImage relocation code did a better job, and
+		@ jump into its version of this routine before proceeding.
+		ldr	r0, [sp]			@ relocated zImage
+		ldr	r1, 0f
+		sub	r1, r0, r1
+		mov	pc, r1				@ no mode switch
+		.align	2
+0:		.long	start - (. + 4)
+
 		bl	cache_off
 
 		@ Set parameters for booting zImage according to boot protocol
@@ -1469,12 +1482,7 @@ ENTRY(efi_stub_entry)
 		mov	r0, #0
 		mov	r1, #0xFFFFFFFF
 		mov	r2, r4
-
-		@ Branch to (possibly) relocated zImage that is in [sp]
-		ldr	lr, [sp]
-		ldr	ip, =start_offset
-		add	lr, lr, ip
-		mov	pc, lr				@ no mode switch
+		b	__efi_start
 
 efi_load_fail:
 		@ Return EFI_LOAD_ERROR to EFI firmware on error.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
