Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C54B0163192
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 21:02:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PLW6qEtxKPWyjo3owrzSgeKN/9Oy9wYKlvuoNC3uE84=; b=eKiPW1RwecE8Ar
	kt0OdAdHwm2ntvdkWmxBwSjdCgpvRSMxdiamhVd+J29wckyrXUUxpPpc+Yh2sdR6gNZXHptfsBXYi
	7+2lJXXLo0IzSVyLhTheVhZnRHBQfy0Kss5cKI0XNEfBdR2cUCmmP+/6tmXHwgAAVMwLQtewkQPBQ
	vmfV/0XTq+6D0+5YLp17CfXL1osmHPBzGZcDmafJUmvLAeDH7v8BgqOxlr2LBe9ph1YxLN4m38C6C
	SW+Wo3jktpBqybzFM3zU2HcYmJpMgi2zvB1Ttta6LlICd19pvZU8j+9X2ZJnKbBtNbiBz9atdFppe
	9N/rg4kWOAFB5Rq8fJTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4949-0000xm-Js; Tue, 18 Feb 2020 20:01:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j491Z-0005im-0e
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 19:59:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3B29BFEC;
 Tue, 18 Feb 2020 11:59:16 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B0ECB3F68F;
 Tue, 18 Feb 2020 11:59:15 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Herbert Xu <herbert@gondor.apana.org.au>,
 "David S. Miller" <davem@davemloft.net>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Marc Zyngier <maz@kernel.org>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: [PATCH 10/18] arm64: head: Annotate stext and preserve_boot_args as
 code
Date: Tue, 18 Feb 2020 19:58:34 +0000
Message-Id: <20200218195842.34156-11-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200218195842.34156-1-broonie@kernel.org>
References: <20200218195842.34156-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_115917_158518_C6555854 
X-CRM114-Status: GOOD (  10.08  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Brown <broonie@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In an effort to clarify and simplify the annotation of assembly
functions new macros have been introduced. These replace ENTRY and
ENDPROC with two different annotations for normal functions and those
with unusual calling conventions.  Neither stext nor preserve_boot_args
is called with the usual AAPCS calling conventions and they should
therefore be annotated as code.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/kernel/head.S | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
index 716c946c98e9..c334863991e7 100644
--- a/arch/arm64/kernel/head.S
+++ b/arch/arm64/kernel/head.S
@@ -105,7 +105,7 @@ pe_header:
 	 *  x24        __primary_switch() .. relocate_kernel()
 	 *                                        current RELR displacement
 	 */
-ENTRY(stext)
+SYM_CODE_START(stext)
 	bl	preserve_boot_args
 	bl	el2_setup			// Drop to EL1, w0=cpu_boot_mode
 	adrp	x23, __PHYS_OFFSET
@@ -120,12 +120,12 @@ ENTRY(stext)
 	 */
 	bl	__cpu_setup			// initialise processor
 	b	__primary_switch
-ENDPROC(stext)
+SYM_CODE_END(stext)
 
 /*
  * Preserve the arguments passed by the bootloader in x0 .. x3
  */
-preserve_boot_args:
+SYM_CODE_START_LOCAL(preserve_boot_args)
 	mov	x21, x0				// x21=FDT
 
 	adr_l	x0, boot_args			// record the contents of
@@ -137,7 +137,7 @@ preserve_boot_args:
 
 	mov	x1, #0x20			// 4 x 8 bytes
 	b	__inval_dcache_area		// tail call
-ENDPROC(preserve_boot_args)
+SYM_CODE_END(preserve_boot_args)
 
 /*
  * Macro to create a table entry to the next page.
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
