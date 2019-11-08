Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0FE5F4E91
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 15:43:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OaOl7wY5162WLNm5h+4bX9iYnZWuKCPigGwNiQHbKC8=; b=oA8nyHv8uUi4tmqc25MZEVov1I
	taN0WPktGIV7tNb6RmytjrYWn7nz4BxoH7vbsWcCBcf7chzBbTrDBKWklBlYIJ2UShlfsDAaqqXLP
	53BsfQer8TEyezje6ZUz2x61/q3eYYVojnvITqOXfTnsY35sWYWuAYXHn/0b0fBwgxfFWHf8gYM96
	cOlgf4Qck1lMtcblm2hnxUA/+bP+VIukJw6Ra6AM/FzHw8tX4iD5zw+WFfHmPRIiTl3tBueCmVMPI
	LBiX2r0iVoJtBu/PTfvECop/QeuXrK+HU6F9hSyZH514vZGmSOaWptwj3Gov+BcA6lK2EuQTj/eKD
	RsNXT6HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT5UK-00089S-Cq; Fri, 08 Nov 2019 14:43:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT5TS-0007ba-I7
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 14:42:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D80CD7A7;
 Fri,  8 Nov 2019 06:42:51 -0800 (PST)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.44])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BAD8A3F719;
 Fri,  8 Nov 2019 06:42:50 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Andrew Jones <drjones@redhat.com>,
	Paolo Bonzini <pbonzini@redhat.com>
Subject: [kvm-unit-tests PATCH 01/17] arm: gic: Enable GIC MMIO tests for
 GICv3 as well
Date: Fri,  8 Nov 2019 14:42:24 +0000
Message-Id: <20191108144240.204202-2-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191108144240.204202-1-andre.przywara@arm.com>
References: <20191108144240.204202-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_064254_697385_9BC3C0E4 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Marc Zyngier <maz@kernel.org>, Alexandru Elisei <alexandru.elisei@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 kvm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

So far the GIC MMIO tests were only enabled for a GICv2 guest. Modern
machines tend to have a GICv3-only GIC, so can't run those tests.
It turns out that most GIC distributor registers we test in the unit
tests are actually the same in GICv3, so we can just enable those tests
for GICv3 guests as well.
The only exception is the CPU number in the TYPER register, which is
only valid in the GICv2 compat mode (ARE=0), which KVM does not support.
So we protect this test against running on a GICv3 guest.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 arm/gic.c            | 13 +++++++++++--
 arm/unittests.cfg    | 26 ++++++++++++++++++++++----
 lib/arm/asm/gic-v3.h |  2 ++
 3 files changed, 35 insertions(+), 6 deletions(-)

diff --git a/arm/gic.c b/arm/gic.c
index adb6aa4..04b3337 100644
--- a/arm/gic.c
+++ b/arm/gic.c
@@ -6,6 +6,7 @@
  *   + MMIO access tests
  * GICv3
  *   + test sending/receiving IPIs
+ *   + MMIO access tests
  *
  * Copyright (C) 2016, Red Hat Inc, Andrew Jones <drjones@redhat.com>
  *
@@ -496,7 +497,14 @@ static void gic_test_mmio(void)
 		idreg = gic_dist_base + GICD_ICPIDR2;
 		break;
 	case 0x3:
-		report_abort("GICv3 MMIO tests NYI");
+		/*
+		 * We only test generic registers or those affecting
+		 * SPIs, so don't need to consider the SGI base in
+		 * the redistributor here.
+		 */
+		gic_dist_base = gicv3_dist_base();
+		idreg = gic_dist_base + GICD_PIDR2;
+		break;
 	default:
 		report_abort("GIC version %d not supported", gic_version());
 	}
@@ -505,7 +513,8 @@ static void gic_test_mmio(void)
 	nr_irqs = GICD_TYPER_IRQS(reg);
 	report_info("number of implemented SPIs: %d", nr_irqs - GIC_FIRST_SPI);
 
-	test_typer_v2(reg);
+	if (gic_version() == 0x2)
+		test_typer_v2(reg);
 
 	report_info("IIDR: 0x%08x", readl(gic_dist_base + GICD_IIDR));
 
diff --git a/arm/unittests.cfg b/arm/unittests.cfg
index daeb5a0..12ac142 100644
--- a/arm/unittests.cfg
+++ b/arm/unittests.cfg
@@ -86,28 +86,46 @@ smp = $((($MAX_SMP < 8)?$MAX_SMP:8))
 extra_params = -machine gic-version=2 -append 'ipi'
 groups = gic
 
-[gicv2-mmio]
+[gicv3-ipi]
+file = gic.flat
+smp = $MAX_SMP
+extra_params = -machine gic-version=3 -append 'ipi'
+groups = gic
+
+[gicv2-max-mmio]
 file = gic.flat
 smp = $((($MAX_SMP < 8)?$MAX_SMP:8))
 extra_params = -machine gic-version=2 -append 'mmio'
 groups = gic
 
+[gicv3-max-mmio]
+file = gic.flat
+smp = $MAX_SMP
+extra_params = -machine gic-version=3 -append 'mmio'
+groups = gic
+
 [gicv2-mmio-up]
 file = gic.flat
 smp = 1
 extra_params = -machine gic-version=2 -append 'mmio'
 groups = gic
 
+[gicv3-mmio-up]
+file = gic.flat
+smp = 1
+extra_params = -machine gic-version=3 -append 'mmio'
+groups = gic
+
 [gicv2-mmio-3p]
 file = gic.flat
 smp = $((($MAX_SMP < 3)?$MAX_SMP:3))
 extra_params = -machine gic-version=2 -append 'mmio'
 groups = gic
 
-[gicv3-ipi]
+[gicv3-mmio-3p]
 file = gic.flat
-smp = $MAX_SMP
-extra_params = -machine gic-version=3 -append 'ipi'
+smp = $((($MAX_SMP < 3)?$MAX_SMP:3))
+extra_params = -machine gic-version=2 -append 'mmio'
 groups = gic
 
 [gicv2-active]
diff --git a/lib/arm/asm/gic-v3.h b/lib/arm/asm/gic-v3.h
index 347be2f..ed6a5ad 100644
--- a/lib/arm/asm/gic-v3.h
+++ b/lib/arm/asm/gic-v3.h
@@ -23,6 +23,8 @@
 #define GICD_CTLR_ENABLE_G1A		(1U << 1)
 #define GICD_CTLR_ENABLE_G1		(1U << 0)
 
+#define GICD_PIDR2			0xffe8
+
 /* Re-Distributor registers, offsets from RD_base */
 #define GICR_TYPER			0x0008
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
