Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82846162595
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 12:34:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=9Wi9sz0Hl82ksHNOCMIpGmrq6Tb97DX2Gokd/bZvN8g=; b=X+q
	ZVXsKUWQ8C337krWJiUpwxo0HCk8748Zois3sHpdahonC2BzkTECy8Og9ZAiKhSYqMV208ChAx/Jd
	7TIUADCIi8J2jrAKPnTv54lg18pbYGd1sM7Y9xivwhymoMNvD7Ts23De+bbFa1jSxi9dWLXcxsAww
	X5hIRiBRsi00OpVk0PCmbp59NnMDlEEEMJDcL4q2mc9y0kMHSsm6t/2JgyhsnXKjQwe2TgWn3e5xg
	TFDTWOVWHBTvaWDP+GT24YNq2hH9qnRZrIsglqlZkp2kLptyGrVzOWOdLnGGPD15FT9Wg1nhaHntP
	Gj8aj12ROmET7EvnWmn9ZuZa0GUdBRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j418v-0006lX-2F; Tue, 18 Feb 2020 11:34:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j418n-0006kz-EB
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 11:34:14 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E75D121D56;
 Tue, 18 Feb 2020 11:34:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582025653;
 bh=AdgygElFjm+9+VrUlac437cYd/rQkrwPTj+u9i3/SSw=;
 h=From:To:Cc:Subject:Date:From;
 b=SE1sAy3CDFfufWhk8g9D3KU1M8JIQb7e3vt/C3wWuSkCDeWCBcu/Aqz9xvmSK/2Bm
 hzjaFn8ZepB6CGmDumIEYq1aI6ejIzHNqCGEqr/35jgOzj2WkPU3afk4ETjiJ9Zi5f
 Mqo33c+TL85bMcGGOrU2474Iq8ItVxsfpv5nMrOg=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH] efi/arm: work around missing cache maintenance in
 decompressor handover
Date: Tue, 18 Feb 2020 12:34:05 +0100
Message-Id: <20200218113405.31342-1-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_033413_505366_3CE63FCB 
X-CRM114-Status: GOOD (  12.49  )
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
Cc: maz@kernel.org, ilias.apalodimas@linaro.org,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
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
 arch/arm/boot/compressed/head.S | 19 +++++++++++++------
 1 file changed, 13 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
index 088b0a060876..4010f6e4b047 100644
--- a/arch/arm/boot/compressed/head.S
+++ b/arch/arm/boot/compressed/head.S
@@ -1458,6 +1458,18 @@ ENTRY(efi_stub_entry)
 		cmn	r0, #1
 		beq	efi_load_fail
 
+		@ The PE/COFF loader might not have cleaned the code we are
+		@ running beyond the PoU, and so calling cache_off below from
+		@ inside the PE/COFF loader allocated region is unsafe. Let's
+		@ assume our own zImage relocation code did a better job, and
+		@ jump into it before proceeding.
+		ldr	lr, [sp]			@ relocated zImage
+		ldr	ip, 0f
+		sub	lr, lr, ip
+		mov	pc, lr				@ no mode switch
+		.align	2
+0:		.long	start - (. + 4)
+
 		@ Preserve return value of efi_entry() in r4
 		mov	r4, r0
 		bl	cache_clean_flush
@@ -1469,12 +1481,7 @@ ENTRY(efi_stub_entry)
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
