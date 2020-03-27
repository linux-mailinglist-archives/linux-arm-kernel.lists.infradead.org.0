Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC4C71955DB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 12:00:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/SLP+bNN6aG9TPfl2WOCwpYUU2PGBNbwjsFQUroP9FA=; b=O1ctoy+apuOfSbPws/SkSMG9e7
	9h7OQeeelrNQNSwQJaQoVuq4ZrAOUVE6tHzb7vSUArnNrPzFyOdXmRw1rM3gVC49HP0ads4mIin3K
	beZxdEPwZWkz2cQV2fkv+0sL9S/IPCVeTltXUKPaYe1CYno6MmerWcAhV+ZrQJX/6nEy++LUxHVMU
	IoxiG/pNPtFyeli8WXy1ia9LwS0VAuBwwy+8fgvR457Bn/fRZQnWyEdPK1p3M8ZFlLGmqNdnTReer
	T605x6w3TDk/7qbAnmiJC1MNRxoKEF6qXqyuljwBjslkhcLvkSLAsVD1wRceRZzJ58gVzZ45BhUcN
	0VgbQ3kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHmj7-0008Uj-4f; Fri, 27 Mar 2020 11:00:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHmi3-0006ZW-Kg
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 10:59:33 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1AE692073B;
 Fri, 27 Mar 2020 10:59:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585306770;
 bh=6oNWheLakWrFr/1PDp8ZzyS/LoXFLuI0dbimeVrZQLg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=n5p5aPlFPAeu6r57DZONexiXxPmh+dZOPd13m859D0/52ghhQfFdKKSnWXLl+xmnO
 +tp28j7BOl8BOjAAR7qxWp0yxKO3bsLWn12lByZFjIpHRp8h5e8M1e/B2VIFv/LtnT
 M8XjMydtHPBRazTrAkepr2IzKrFxwBii7cdNrAEI=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/5] ARM: decompressor: move GOT into .data for EFI enabled
 builds
Date: Fri, 27 Mar 2020 11:59:05 +0100
Message-Id: <20200327105906.2665-5-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200327105906.2665-1-ardb@kernel.org>
References: <20200327105906.2665-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_035931_766938_F18D32DA 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-efi@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>,
 Nicolas Pitre <nico@fluxnic.net>, Linus Walleij <linus.walleij@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Ard Biesheuvel <ardb@kernel.org>
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
