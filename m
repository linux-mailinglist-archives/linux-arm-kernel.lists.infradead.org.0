Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 244851D9C9A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 18:28:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yQ6yfe7cyj0ypvbjZRI0sgpxhvC9xX6baQzamICSdjk=; b=ZfdxyXBwaiAf1mkup0q9QVLXWj
	cYd6UbNmmaoXU/z/m7co+oq/D4x5kL50SCYmdNhzf+x6paqrimrsh4wxt6aq29C0aCrmf3xY3RZRq
	lQrVVZY3+tjwZZMbIIdfyA3jFr9MbTQ2bqZ9zEl/9NU5kScce0AjBpK/qTHgBYnmvFqllHhnVBXQE
	8JZwk+ozsidtvI1h1QFeM+71LljziWPcC9ut7QA5TVbAnP/UTncL1l2c41ZiHsMEwgKBHTLkXNXIl
	NKjBJZlldElXzzs/DJ74sIkrmx6SSLQ3GgNjuVmvULlg7K8/taKDFMnOYrfr+Qqoyqc1VazAUngLq
	8CSBDMgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb56S-00050A-6E; Tue, 19 May 2020 16:28:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb55A-00047t-Nn
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 16:27:10 +0000
Received: from e123331-lin.nice.arm.com
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BFAB32081A;
 Tue, 19 May 2020 16:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589905628;
 bh=s8227r3wr+M1LR2ra2WRSSL45hZ8JOxmjLKJcXVBONI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pnzQKbgnZ9/bKF5J4X9LWpbTecFMM8wwtTOIRVCn/Rbu1Fpk666A/MmM0VfFOO9xU
 vO4IPV2b8R9D3fg2xGR5LqG2ems8WsHkLY8th0N/88+pzGSoW2anLQFkz5/llAjL2M
 0FrJTrk40E4JzkCM66Hbo5BegVSBrGph0StCY/8Q=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 4/5] ARM: decompressor: move GOT into .data for EFI enabled
 builds
Date: Tue, 19 May 2020 18:26:44 +0200
Message-Id: <20200519162645.31065-5-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200519162645.31065-1-ardb@kernel.org>
References: <20200519162645.31065-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_092708_801982_34BB116E 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-efi@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>,
 Nicolas Pitre <nico@fluxnic.net>, Heinrich Schuchardt <xypron.glpk@gmx.de>,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We will be running the decompressor in place after a future patch,
instead of copying it around first. This means we no longer have to
disable and re-enable the MMU and caches either. However, this means
we will be loaded with the restricted permissions set by the UEFI
firmware, which means that we have to move the GOT table into the
data section in order for the contents to be writable by the code
itself.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
Reviewed-by: Nicolas Pitre <nico@fluxnic.net>
---
 arch/arm/boot/compressed/vmlinux.lds.S | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/compressed/vmlinux.lds.S b/arch/arm/boot/compressed/vmlinux.lds.S
index b247f399de71..d0619ec05705 100644
--- a/arch/arm/boot/compressed/vmlinux.lds.S
+++ b/arch/arm/boot/compressed/vmlinux.lds.S
@@ -63,9 +63,11 @@ SECTIONS
   _etext = .;
 
   .got.plt		: { *(.got.plt) }
+#ifndef CONFIG_EFI_STUB
   _got_start = .;
   .got			: { *(.got) }
   _got_end = .;
+#endif
 
   /* ensure the zImage file size is always a multiple of 64 bits */
   /* (without a dummy byte, ld just ignores the empty section) */
@@ -74,6 +76,9 @@ SECTIONS
 #ifdef CONFIG_EFI_STUB
   .data : ALIGN(4096) {
     __pecoff_data_start = .;
+    _got_start = .;
+    *(.got)
+    _got_end = .;
     /*
      * The EFI stub always executes from RAM, and runs strictly before the
      * decompressor, so we can make an exception for its r/w data, and keep it
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
