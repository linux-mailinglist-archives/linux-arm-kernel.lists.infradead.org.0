Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 296751A965E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 10:29:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=p4kn5dHtjGx0hjF3hWuYKVdFRj8i+gpnJHxoP+7bsnE=; b=eAZ
	lB3fiJqzVi1QMJ4SuEmDqlqVAl/0eqITUsxyonRWm6tUuyxB6jcOM8tTiN9rRAxwVVhqBDHUQoHOB
	NC1Z1AxITrKn+SAf9AYcfUS2QDQawXkctlf2h27u9BsIC2zsr/Qt3xcPx2UoXj+9Xzv6uenDiVKaH
	QhfkZWtjSTZMZpzQPc55NQ/Q6MEvTVb+eWqnnI8KosiXp+qCDSYdYxxDovmLXqnOoSEApALagrZ1b
	cFThc2R0ZtkEFWdNaKDZQX+N+WMN6+jJZ6az0R52Rqk72n5T8eQOQJF+9ACcgCh7OyCvPSKD41jEt
	YaTsWX6m1QQ539+FJvTLZuSsnGqVTbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOdQO-0000Tv-Mo; Wed, 15 Apr 2020 08:29:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOdQH-0000TP-LJ
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 08:29:30 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7078220768;
 Wed, 15 Apr 2020 08:29:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586939369;
 bh=rw5LoeURFgsUCgZaUcAkJDJ0k6Fk4oJtPVpSeioJ6Qk=;
 h=From:To:Cc:Subject:Date:From;
 b=pf3trSVgszpDbhaBa1sKkO+oOPZBssEeS2B64aH8obV6IJzHlYR3I7XDWZR6rwU9Z
 TXxHZapLPiUUyan6+BDySLzQ2VR9a/hQ4UOv5Z8RSm9MVfPNdYIUr0mDXhcYr8b77C
 5b3FlmczPYAnz73X5Hf/0Nsa4g0Kn7yAlNEinHyY=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: set TEXT_OFFSET to 0x0 in preparation for removing it
 entirely
Date: Wed, 15 Apr 2020 10:29:22 +0200
Message-Id: <20200415082922.32709-1-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_012929_716872_2EEC1BDA 
X-CRM114-Status: GOOD (  14.47  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, suzuki.poulose@arm.com, catalin.marinas@arm.com,
 james.morse@arm.com, will@kernel.org, Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TEXT_OFFSET on arm64 is a historical artifact from the early days of
the arm64 port where the boot protocol was basically 'copy this image
to the base of memory + 512k', giving us 512 KB of guaranteed BSS space
to put the swapper page tables. When the arm64 port was merged for
v3.10, the Image header already carried the actual value of TEXT_OFFSET,
to allow the bootloader to discover it dynamically rather than hardcode
it to 512 KB.

Today, this memory window is not used for any particular purpose, and
it is simply handed to the page allocator at boot. The only reason it
still exists is because of the 512k misalignment it causes with respect
to the 2 MB aligned virtual base address of the kernel, which affects
the virtual addresses of all statically allocated objects in the kernel
image.

However, with the introduction of KASLR in v4.6, we added the concept of
relocatable kernels, which rewrite all absolute symbol references at
boot anyway, and so the placement of such kernels in the physical address
space is irrelevant, provided that the minimum segment alignment is
honoured (64 KB in most cases, 128 KB for 64k pages kernels with vmap'ed
stacks enabled). This makes 0x0 and 512 KB equally suitable values for
TEXT_OFFSET on the off chance that we are dealing with boot loaders that
ignore the value passed via the header entirely.

Considering that the distros as well as Android ship KASLR-capable
kernels today, and the fact that TEXT_OFFSET was discoverable from the
Image header from the very beginning, let's change this value to 0x0, in
preparation for removing it entirely at a later date.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm64/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 85e4149cc5d5..8e9445faa8ac 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -118,7 +118,7 @@ TEXT_OFFSET := $(shell awk "BEGIN {srand(); printf \"0x%06x\n\", \
 		 int(2 * 1024 * 1024 / (2 ^ $(CONFIG_ARM64_PAGE_SHIFT)) * \
 		 rand()) * (2 ^ $(CONFIG_ARM64_PAGE_SHIFT))}")
 else
-TEXT_OFFSET := 0x00080000
+TEXT_OFFSET := 0x0
 endif
 
 ifeq ($(CONFIG_KASAN_SW_TAGS), y)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
