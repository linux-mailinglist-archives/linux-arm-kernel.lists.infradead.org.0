Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE78E127F64
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 16:34:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f5tUx7Vdcc1tSaCJ6XAGXnZFIlEiNRxoc2Fm5j6aeX0=; b=RyOL+XBqUgcH87
	KOn0Jr+//XckklkBN7ynm+Lr7cY9kOJCR4fBQXrbbpnEAzwfgtMZFqt4VNcO9l+i/ZvYhroUu+Ugf
	h2H+Rnm+y1rbKe++KwlhsASULtxQuvruIln767qCqbFg8ORVlEezV99FHJFCAexnFL1vaJs48mCFR
	4C73u9qir+hB00jcXNI0kJYARIxsD+Hu8fMK5dUB9U13ZlfDXkLBsfFHABYDYUfNshiyeAugctWzs
	NhAe32pVPf1oUAiIrYhL8jDC9ijjuhAIyhPM4tHbC5lJEQNaSldNILTny9a86KlpBVhIIOubDe+NW
	KZvak64S1tqRuglySCNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiKHs-0007Cz-Kf; Fri, 20 Dec 2019 15:33:56 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiKH9-0006hN-Ft
 for linux-arm-kernel@bombadil.infradead.org; Fri, 20 Dec 2019 15:33:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jd6GciWjnG16LOMdwZb3XKeTHNJ5tDDZ5irENosrpEo=; b=bUpDi5/+bTvGar5YGYenuLXIi8
 Ql3I+3+Rfnci5j8w3vEhjnx14ibfRLRG0G5vcXDrawm5TQgGhWqeKWXTEEACJuKeCVBeSSibe6xpa
 vkE9acPSaI7s9cgiHrSFZ3wvjCGUNKnvCCPj+41koQE68Brggs9zh9Ugscy0Dw3ULiRlVDMTGSver
 8/39yITi+b97k0f0ovngSSClzVqP69+UibWQ8ycxELnro2JxWB14sUDsox2OqAZ8OqQOIoH/8QGcG
 d+fxiUYqncDOOe1dAak+Wt5lJ0BEqNP2ScjIFkI4cVSo8mDYxzLa+U5ktXi0nQqXfu2knvf46bQlB
 U80k/7Hg==;
Received: from foss.arm.com ([217.140.110.172])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiJIz-000439-62
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 14:31:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DB5FF11D4;
 Fri, 20 Dec 2019 06:31:00 -0800 (PST)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0EEF63F718;
 Fri, 20 Dec 2019 06:30:58 -0800 (PST)
From: Andrew Murray <andrew.murray@arm.com>
To: Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>
Subject: [PATCH v2 13/18] perf: arm_spe: Add KVM structure for obtaining IRQ
 info
Date: Fri, 20 Dec 2019 14:30:20 +0000
Message-Id: <20191220143025.33853-14-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191220143025.33853-1-andrew.murray@arm.com>
References: <20191220143025.33853-1-andrew.murray@arm.com>
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

KVM requires knowledge of the physical SPE IRQ number such that it can
associate it with any virtual IRQ for guests that require SPE emulation.

Let's create a structure to hold this information and an accessor that
KVM can use to retrieve this information.

We expect that each SPE device will have the same physical PPI number
and thus will warn when this is not the case.

Signed-off-by: Andrew Murray <andrew.murray@arm.com>
---
 drivers/perf/arm_spe_pmu.c | 23 +++++++++++++++++++++++
 include/kvm/arm_spe.h      |  6 ++++++
 2 files changed, 29 insertions(+)

diff --git a/drivers/perf/arm_spe_pmu.c b/drivers/perf/arm_spe_pmu.c
index 4e4984a55cd1..2d24af4cfcab 100644
--- a/drivers/perf/arm_spe_pmu.c
+++ b/drivers/perf/arm_spe_pmu.c
@@ -34,6 +34,9 @@
 #include <linux/smp.h>
 #include <linux/vmalloc.h>
 
+#include <linux/kvm_host.h>
+#include <kvm/arm_spe.h>
+
 #include <asm/barrier.h>
 #include <asm/cpufeature.h>
 #include <asm/mmu.h>
@@ -1127,6 +1130,24 @@ static void arm_spe_pmu_dev_teardown(struct arm_spe_pmu *spe_pmu)
 	free_percpu_irq(spe_pmu->irq, spe_pmu->handle);
 }
 
+#ifdef CONFIG_KVM_ARM_SPE
+static struct arm_spe_kvm_info arm_spe_kvm_info;
+
+struct arm_spe_kvm_info *arm_spe_get_kvm_info(void)
+{
+	return &arm_spe_kvm_info;
+}
+
+static void arm_spe_populate_kvm_info(struct arm_spe_pmu *spe_pmu)
+{
+	WARN_ON_ONCE(arm_spe_kvm_info.physical_irq != 0 &&
+		     arm_spe_kvm_info.physical_irq != spe_pmu->irq);
+	arm_spe_kvm_info.physical_irq = spe_pmu->irq;
+}
+#else
+static void arm_spe_populate_kvm_info(struct arm_spe_pmu *spe_pmu) {}
+#endif
+
 /* Driver and device probing */
 static int arm_spe_pmu_irq_probe(struct arm_spe_pmu *spe_pmu)
 {
@@ -1149,6 +1170,8 @@ static int arm_spe_pmu_irq_probe(struct arm_spe_pmu *spe_pmu)
 	}
 
 	spe_pmu->irq = irq;
+	arm_spe_populate_kvm_info(spe_pmu);
+
 	return 0;
 }
 
diff --git a/include/kvm/arm_spe.h b/include/kvm/arm_spe.h
index d1f3c564dfd0..9c65130d726d 100644
--- a/include/kvm/arm_spe.h
+++ b/include/kvm/arm_spe.h
@@ -17,6 +17,12 @@ struct kvm_spe {
 	bool irq_level;
 };
 
+struct arm_spe_kvm_info {
+	int physical_irq;
+};
+
+struct arm_spe_kvm_info *arm_spe_get_kvm_info(void);
+
 #ifdef CONFIG_KVM_ARM_SPE
 #define kvm_arm_spe_v1_ready(v)		((v)->arch.spe.ready)
 #define kvm_arm_spe_irq_initialized(v)		\
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
