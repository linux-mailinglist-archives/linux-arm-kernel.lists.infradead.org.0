Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A55FD1C6B86
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 10:22:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yQ6yfe7cyj0ypvbjZRI0sgpxhvC9xX6baQzamICSdjk=; b=VNDz2LdCW495qPnl04hyE2VqYT
	IRkmQaOPaS1XMnk+dOboNHpfgfEzZhrnFXCjj87BfgKA2bExjOY4irCFrCrvoMH9xFT+luTihYSIg
	CTdIqaMSGIb0wAADK8lWo0a95bBavlEbDJUuCv6XtNHjr3rty343uOx1e/8sQonI7ISmXNYX0Y88B
	84V0cHIc8VJ0KW9iXlkI0qF00TnnY0ykywa6ujlk5otqPqrcBB/pw65pDXFW1WGPUqsN3lBBC++4f
	bqFVSJmeSYMKABYmNzFYEh3kJJ+nl49zWLo8TO+1fFPxiqZ258Pnxg+zQc2P7zN1GUUYDKBMb7Yty
	HbwFH2tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWFK7-0004uB-5f; Wed, 06 May 2020 08:22:35 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWFHl-0001dK-3W
 for linux-arm-kernel@bombadil.infradead.org; Wed, 06 May 2020 08:20:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=gS0F8HpgtJQ0I3RvJsKjeUvrwvI720H0oQkARHkLASE=; b=d/Vwjypvr1Mio5+szMgfmdxB6N
 dM6X0cyetaBY+zbQ7VdzzLM5nyN0woYOUmCFHI9b8DEjTV7sXAKcnOw5CUS78zo7nKbarFWAxweu6
 wucRxjCruIwsxs8KQeFcJaMPbwxVqT5AZbQQG88Rmg94PYwxWDAcXWYqmjW1IQ6ktpt3kmPU0zsxv
 hblCsZZwrjrO8aa+hZWdFGZ5ROvrnV788cENfNjZHF0tm3KWk3vqBlkxcYz/0eVRHs9tr1uSqIeVi
 LGKRsHYJyuS15xmBscQVs0XLwAS67x45eQM6cufhYfP8YS2WBXo/QwTxwICp+efY9w4dpH4oFR/gF
 dYLb7emg==;
Received: from mail.kernel.org ([198.145.29.99])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWFHf-0000pT-2Z
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 08:20:06 +0000
Received: from e123331-lin.nice.arm.com
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 12A2F207DD;
 Wed,  6 May 2020 08:19:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588753200;
 bh=s8227r3wr+M1LR2ra2WRSSL45hZ8JOxmjLKJcXVBONI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=h2xi8hwK1/gE7lQNUJRajm7OJOpRAZ4Ex4VugdP6ljnBn3B9u8jnRa9G3ZpSXs6lh
 FGggTfXmnXdse38q0IPNv3vz584+CRWEHgZxdIuZm694tMcmkxq/cGjWtb1WEQohOM
 5QaQ8R5WjE0VYX0/F6ZEWxSTKduJhEPr7ATLw0aE=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH v3 4/5] ARM: decompressor: move GOT into .data for EFI enabled
 builds
Date: Wed,  6 May 2020 10:19:38 +0200
Message-Id: <20200506081939.8986-5-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200506081939.8986-1-ardb@kernel.org>
References: <20200506081939.8986-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_092003_481262_7803B103 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: -7.1 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-7.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Nicolas Pitre <nico@fluxnic.net>, Heinrich Schuchardt <xypron.glpk@gmx.de>,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
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
