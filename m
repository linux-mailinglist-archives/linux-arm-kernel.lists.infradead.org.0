Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5CC71734E5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 11:03:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+ON5IU8N+20xXxLJcA4MQiEqV/9m5DBBIOQl11jg/QY=; b=ddF5vLQkA0WgXfH6OG256clAMT
	R6ce0ouYlDjRb+IoC3DDTEVpYM7pYNRe4qizzEyWrgFy+1Vh6FTWNhdmjx4zzm+b3laKReYRYuWxX
	SvugtLLekaX7kTGm82wgJLeQa5CPnMMk4d8iGPFk9G/dpoUJNfQPjPeyq7+Nt3zaWP+pyJbcqDwS/
	2WfIecyfSL7CBIVmvCW7jGiXMW39Hslid3Z9eIGmy8OY/Yb+La9p4yVG0JcijB7a+v3UpV7f8010n
	so+yswkYuB7ZfqD1tqdJAz1b5ScpwNdZHxAOM7IzJWnHI+uD8PFzREiCSkO095yp/ne3oAeaHTE4y
	+tNPhliQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7cUM-0003AW-T5; Fri, 28 Feb 2020 10:03:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7cTs-0002ud-5F
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 10:02:53 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 20A52246AA;
 Fri, 28 Feb 2020 10:02:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582884171;
 bh=SJlSXAj88NxcUgayRsmVia+8rhay30lruXWP/iqAjMI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=qiq0HqtAsBE3WSrUd2FGpjZzf0Vl9gLNfbSt8CW9TaEhxLREAbTh9Yt4S90mq5ftq
 sd0GV8mRsu2xpp7w7Jmm4aHyYnMcaP0UeNq5HOd2eB6xZmNGz3NGa5EgoTcM0yYThI
 SMbaIPdGP+5/6SZa3UAsWmd8dHHYHssYna5sxWBc=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH efi-next 1/3] efi/arm: clean EFI stub exit code from cache
 instead of avoiding it
Date: Fri, 28 Feb 2020 11:02:42 +0100
Message-Id: <20200228100244.10979-2-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200228100244.10979-1-ardb@kernel.org>
References: <20200228100244.10979-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_020252_213737_81A0A987 
X-CRM114-Status: GOOD (  13.14  )
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

Commit c7225494b ("efi/arm: Work around missing cache maintenance in
decompressor handover") modified the handover code written in assembler
to work around the missing cache maintenance of the piece of code that
is executed after the MMU and caches are turned off. Due to the fact
that this sequence incorporates a subroutine call, cleaning that code
from the cache is not a matter of simply passing the start and end of
the currently running subroutine into cache_clean_flush(), which is why
instead, the code jumps across into the cleaned copy of the image.

However, this assumes that this copy is executable, and this means we
expect EFI_LOADER_DATA regions to be executable as well, which is not
a reasonable assumption to make, even if this is true for most UEFI
implementations today.

So change this back, and add a cache_clean_flush() call to cover the
remaining code in the subroutine, and any code it may execute in the
context of cache_off().

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm/boot/compressed/head.S | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
index 36ffbeecd30b..04f77214f050 100644
--- a/arch/arm/boot/compressed/head.S
+++ b/arch/arm/boot/compressed/head.S
@@ -1452,13 +1452,11 @@ ENTRY(efi_enter_kernel)
 
 		@ The PE/COFF loader might not have cleaned the code we are
 		@ running beyond the PoU, and so calling cache_off below from
-		@ inside the PE/COFF loader allocated region is unsafe. Let's
-		@ assume our own zImage relocation code did a better job, and
-		@ jump into its version of this routine before proceeding.
-		ldr	r1, .Ljmp
-		sub	r1, r7, r1
-		mov	pc, r1				@ no mode switch
-0:
+		@ inside the PE/COFF loader allocated region is unsafe unless
+		@ we explicitly clean it to the PoC.
+		adr	r0, call_cache_fn		@ region of code we will
+		adr	r1, 0f				@ run with MMU off
+		bl	cache_clean_flush
 		bl	cache_off
 
 		@ Set parameters for booting zImage according to boot protocol
@@ -1467,10 +1465,10 @@ ENTRY(efi_enter_kernel)
 		mov	r0, #0
 		mov	r1, #0xFFFFFFFF
 		mov	r2, r4
-		b	__efi_start
+		add	r7, r7, #(__efi_start - start)
+		mov	pc, r7				@ no mode switch
 ENDPROC(efi_enter_kernel)
-		.align	2
-.Ljmp:		.long	start - 0b
+0:
 #endif
 
 		.align
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
