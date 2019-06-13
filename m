Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0896D43338
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 09:17:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uzO24ZYc9N41YxHYF9lilwnp/59jyWzpRD6xlfET6KE=; b=NQUlFAtzKhclo+
	iqmON1EKLvy1QVnyhCuUutH0ohjj8plpaz9BJaQUT/rK4hsNWU+3sti/okJFfODICnUount2coWHN
	0C/QG50kWesHEc5mpjMcuXrui0PchivE1EgBFIYowKAZmWENpIFXStvSP7ifjaru303KyPcpDOj0L
	hW68o13dtJqKdAExFo6q4Kxs+NtcQo8NRHKn8QJ5UaZV348K9hwopAFU1ldTI3ltWGxEqrNa/E/uA
	2CdaUhFuhe9qwKIFRlo7dMhWyKr0MeUfWhaboUd73SYvMsQ+VtpfZ7ADvVxgK9seZq4UHJe/5GRvT
	ilOGRsTY5wNtMxiPsnpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbJyo-00042X-4V; Thu, 13 Jun 2019 07:17:02 +0000
Received: from mpp-cp1-natpool-1-013.ethz.ch ([82.130.71.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbJs1-0004Zl-6O; Thu, 13 Jun 2019 07:10:02 +0000
From: Christoph Hellwig <hch@lst.de>
To: Greg Ungerer <gerg@linux-m68k.org>
Subject: [PATCH 17/17] riscv: add binfmt_flat support
Date: Thu, 13 Jun 2019 09:09:03 +0200
Message-Id: <20190613070903.17214-18-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190613070903.17214-1-hch@lst.de>
References: <20190613070903.17214-1-hch@lst.de>
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

Just use the generic definitions.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/riscv/Kconfig            | 1 +
 arch/riscv/include/asm/Kbuild | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 0c4b12205632..2c19baa8d6c3 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -17,6 +17,7 @@ config RISCV
 	select OF
 	select OF_EARLY_FLATTREE
 	select OF_IRQ
+	select ARCH_HAS_BINFMT_FLAT
 	select ARCH_WANT_FRAME_POINTERS
 	select CLONE_BACKWARDS
 	select COMMON_CLK
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
