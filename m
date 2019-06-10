Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D323BE95
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 23:26:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VgMvk9q5PvLfB7QDtT5A2hNM24Xfv89GJWnmgpLHgbo=; b=YeMIQ20pvMggQG
	3NjNkslT0Qu9gx89JUwFUQe4id1atouWC4k+8eNlzHC/JrP80ICK9YjwL1+9XanG+EVADU0unxa6B
	K95AwmvdB4bdx7mZskZ3ENYlI3Q50r+qrj4434Fqrug+UXAaXNIl6vQ63oXW/xHsVH6A2Zvd4u03/
	ZrPKo9VDjr7AZfaPIDIO/gTJ40Hb0onwrrbhVLH18kgU9aYD39CZcpplWhapnl0hy3dDP9WbObq8J
	t4pv0OzsHRxxoXjA0ViofHzRxjDqz2MAF1/ICuQjj2gPDfirLSl6Q3dHKPLdFSHab8hZ1VCFoHZEh
	ima4OJPiVtCViK4Zi/ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haRnp-0006TP-VS; Mon, 10 Jun 2019 21:26:05 +0000
Received: from 089144193064.atnat0002.highway.a1.net ([89.144.193.64]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1haRis-0000rG-Fv; Mon, 10 Jun 2019 21:20:59 +0000
From: Christoph Hellwig <hch@lst.de>
To: Greg Ungerer <gerg@linux-m68k.org>
Subject: [PATCH 15/15] riscv: add binfmt_flat support
Date: Mon, 10 Jun 2019 23:20:15 +0200
Message-Id: <20190610212015.9157-16-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190610212015.9157-1-hch@lst.de>
References: <20190610212015.9157-1-hch@lst.de>
MIME-Version: 1.0
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
Cc: uclinux-h8-devel@lists.sourceforge.jp, linux-xtensa@linux-xtensa.org,
 Michal Simek <monstr@monstr.eu>, linux-c6x-dev@linux-c6x.org,
 linux-sh@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-m68k@lists.linux-m68k.org, linux-riscv@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the generic support with arguments are on the stack.  Same as arm
and m68k.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/riscv/Kconfig            | 2 ++
 arch/riscv/include/asm/Kbuild | 1 +
 2 files changed, 3 insertions(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 0c4b12205632..2e3b60cdeef4 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -17,7 +17,9 @@ config RISCV
 	select OF
 	select OF_EARLY_FLATTREE
 	select OF_IRQ
+	select ARCH_HAS_BINFMT_FLAT
 	select ARCH_WANT_FRAME_POINTERS
+	select BINFMT_FLAT_ARGVP_ENVP_ON_STACK
 	select CLONE_BACKWARDS
 	select COMMON_CLK
 	select GENERIC_CLOCKEVENTS
diff --git a/arch/riscv/include/asm/Kbuild b/arch/riscv/include/asm/Kbuild
index 5ee646619cc3..1efaeddf1e4b 100644
--- a/arch/riscv/include/asm/Kbuild
+++ b/arch/riscv/include/asm/Kbuild
@@ -5,6 +5,7 @@ generic-y += compat.h
 generic-y += device.h
 generic-y += div64.h
 generic-y += extable.h
+generic-y += flat.h
 generic-y += dma.h
 generic-y += dma-contiguous.h
 generic-y += dma-mapping.h
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
