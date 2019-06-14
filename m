Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED65E463CF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 18:17:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=M8Q9qNMBfCF+vD0zukW2QT5ddBwzp/8CtVyQWDYW/6o=; b=MB4
	vwVmdVrW2PLBt2t7MHBAi5gzhbpaSpzDYuRqy2GCPPt8b6LN3sP1oACmoG7uL0Ws8JXPhrlzAEtgS
	2dxPvf9PO3sZfhVKs/QzvHK/9wRFBNWLeMFz1QRw3VHGP2O4hDEAnCptaOH25Fgu2Cw2C4IIOmxIB
	2yc1aEjyUt3SKUrBl/i3dp0nCCz2Wwp+22LOxAnjutwMgGIDy0s97I8uCWb34cZbtbOBJQ2zAvmpC
	9W6r3hgcq+vcSgk+1YPcTt+lGYveH5r5zHdYMzAl31+jheQf5/glryMDeFMuxUYIr1BE9E2T8/yhm
	8OVbAWNH2E3t0h8ERCmNrA4LUq0Xz3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbotS-0003UV-Fq; Fri, 14 Jun 2019 16:17:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbotH-0003TS-3U
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 16:17:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E495128;
 Fri, 14 Jun 2019 09:17:20 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A76A73F694;
 Fri, 14 Jun 2019 09:17:18 -0700 (PDT)
From: Will Deacon <will.deacon@arm.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] MAINTAINERS: Update my email address to use @kernel.org
Date: Fri, 14 Jun 2019 17:17:07 +0100
Message-Id: <20190614161707.24380-1-will.deacon@arm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_091723_240303_2551C663 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Andrew Morton <akpm@linux-foundation.org>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Joerg Roedel <joro@8bytes.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Will Deacon <will.deacon@arm.com>, Russell King <linux@armlinux.org.uk>,
 Peter Zijlstra <peterz@infradead.org>, arm-soc <arm@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Thomas Gleixner <tglx@linutronix.de>,
 "Paul E . McKenney" <paulmck@linux.vnet.ibm.com>,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

My @arm.com address will stop working at the end of August, so update to
my @kernel.org address where you'll still be able to reach me.

When I say "stop working" I really mean "will go to my line manager", so
send patches there at your peril because they may reply with roadmaps
and spreadsheets. You have been warned.

Cc: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Marc Zyngier <marc.zyngier@arm.com>
Cc: Russell King <linux@armlinux.org.uk>
Cc: "Paul E . McKenney" <paulmck@linux.vnet.ibm.com>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Ingo Molnar <mingo@kernel.org>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Stephen Rothwell <sfr@canb.auug.org.au>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Joerg Roedel <joro@8bytes.org>
Cc: arm-soc <arm@kernel.org>
Signed-off-by: Will Deacon <will.deacon@arm.com>
---

Unless Linus wants to pick this up directly, I can include it in the
arm64 pull request next week. Just thought I'd send it out now as an
'FYI' for the people on CC.

 .mailmap    |  1 +
 MAINTAINERS | 16 ++++++++--------
 2 files changed, 9 insertions(+), 8 deletions(-)

diff --git a/.mailmap b/.mailmap
index 07a777f9d687..6b06a19e5033 100644
--- a/.mailmap
+++ b/.mailmap
@@ -238,6 +238,7 @@ Vlad Dogaru <ddvlad@gmail.com> <vlad.dogaru@intel.com>
 Vladimir Davydov <vdavydov.dev@gmail.com> <vdavydov@virtuozzo.com>
 Vladimir Davydov <vdavydov.dev@gmail.com> <vdavydov@parallels.com>
 Takashi YOSHII <takashi.yoshii.zj@renesas.com>
+Will Deacon <will@kernel.org> <will.deacon@arm.com>
 Yakir Yang <kuankuan.y@gmail.com> <ykk@rock-chips.com>
 Yusuke Goda <goda.yusuke@renesas.com>
 Gustavo Padovan <gustavo@las.ic.unicamp.br>
diff --git a/MAINTAINERS b/MAINTAINERS
index 5cfbea4ce575..651545fc87ca 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1233,7 +1233,7 @@ F:	arch/arm/lib/floppydma.S
 F:	arch/arm/include/asm/floppy.h
 
 ARM PMU PROFILING AND DEBUGGING
-M:	Will Deacon <will.deacon@arm.com>
+M:	Will Deacon <will@kernel.org>
 M:	Mark Rutland <mark.rutland@arm.com>
 S:	Maintained
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
@@ -1305,7 +1305,7 @@ F:	Documentation/devicetree/bindings/interrupt-controller/arm,vic.txt
 F:	drivers/irqchip/irq-vic.c
 
 ARM SMMU DRIVERS
-M:	Will Deacon <will.deacon@arm.com>
+M:	Will Deacon <will@kernel.org>
 R:	Robin Murphy <robin.murphy@arm.com>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
@@ -2539,7 +2539,7 @@ F:	drivers/i2c/busses/i2c-xiic.c
 
 ARM64 PORT (AARCH64 ARCHITECTURE)
 M:	Catalin Marinas <catalin.marinas@arm.com>
-M:	Will Deacon <will.deacon@arm.com>
+M:	Will Deacon <will@kernel.org>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 S:	Maintained
@@ -2723,7 +2723,7 @@ S:	Maintained
 F:	drivers/net/wireless/atmel/atmel*
 
 ATOMIC INFRASTRUCTURE
-M:	Will Deacon <will.deacon@arm.com>
+M:	Will Deacon <will@kernel.org>
 M:	Peter Zijlstra <peterz@infradead.org>
 R:	Boqun Feng <boqun.feng@gmail.com>
 L:	linux-kernel@vger.kernel.org
@@ -9110,7 +9110,7 @@ F:	drivers/misc/lkdtm/*
 LINUX KERNEL MEMORY CONSISTENCY MODEL (LKMM)
 M:	Alan Stern <stern@rowland.harvard.edu>
 M:	Andrea Parri <andrea.parri@amarulasolutions.com>
-M:	Will Deacon <will.deacon@arm.com>
+M:	Will Deacon <will@kernel.org>
 M:	Peter Zijlstra <peterz@infradead.org>
 M:	Boqun Feng <boqun.feng@gmail.com>
 M:	Nicholas Piggin <npiggin@gmail.com>
@@ -9218,7 +9218,7 @@ F:	Documentation/admin-guide/LSM/LoadPin.rst
 LOCKING PRIMITIVES
 M:	Peter Zijlstra <peterz@infradead.org>
 M:	Ingo Molnar <mingo@redhat.com>
-M:	Will Deacon <will.deacon@arm.com>
+M:	Will Deacon <will@kernel.org>
 L:	linux-kernel@vger.kernel.org
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git locking/core
 S:	Maintained
@@ -10539,7 +10539,7 @@ F:	arch/arm/boot/dts/mmp*
 F:	arch/arm/mach-mmp/
 
 MMU GATHER AND TLB INVALIDATION
-M:	Will Deacon <will.deacon@arm.com>
+M:	Will Deacon <will@kernel.org>
 M:	"Aneesh Kumar K.V" <aneesh.kumar@linux.ibm.com>
 M:	Andrew Morton <akpm@linux-foundation.org>
 M:	Nick Piggin <npiggin@gmail.com>
@@ -12029,7 +12029,7 @@ S:	Maintained
 F:	drivers/pci/controller/dwc/*layerscape*
 
 PCI DRIVER FOR GENERIC OF HOSTS
-M:	Will Deacon <will.deacon@arm.com>
+M:	Will Deacon <will@kernel.org>
 L:	linux-pci@vger.kernel.org
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
