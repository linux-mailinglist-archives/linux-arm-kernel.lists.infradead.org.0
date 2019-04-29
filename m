Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A15C4EAAE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 21:13:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SiS7scAKOpLB+3An3bcuvIIlg+7xzLXY/MMcubDTnfs=; b=pyTA/9V87ovWjp
	fJYgbiqOwmfjNQYEAs+A2inLSGlmzYm3slhEuqk0wFsQIhPg0zFMUaYgwVYE/9znBMxndb1q1/Ah6
	0IdAxmR96HXfCjaENuCxVjnQ3h5Q09namxktRUYw05hnYFXla2OJNoS44pQjeF2s2qCeMBGXJl8gC
	l8InyW7O4sy8tfzRZnVmaCwSl45S9tEloOk/2zJVGuTaykCDUPgunNDWirEtWupPfG4S/idGhksr1
	naLctLhLidodeCacZxITOYWG2KybYn3NQCh3Qt/SdFJOKYabjflgq8LnxI4W8qpx8OVRgu2WEtEXN
	E/XgrT31FKDtH783/2Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLBiM-0005Kr-DN; Mon, 29 Apr 2019 19:13:22 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLBiG-0005KU-6o
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 19:13:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 875E6374;
 Mon, 29 Apr 2019 12:13:15 -0700 (PDT)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1B6073F5C1;
 Mon, 29 Apr 2019 12:13:13 -0700 (PDT)
From: Andrew Murray <andrew.murray@arm.com>
To: Marc Zyngier <marc.zyngier@arm.com>
Subject: [PATCH] arm64: KVM: fix perf cycle counter support for VHE
Date: Mon, 29 Apr 2019 20:13:05 +0100
Message-Id: <20190429191305.21000-1-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_121316_250099_4D4F4390 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The kvm_vcpu_pmu_{read,write}_evtype_direct functions do not handle
the cycle counter use-case, this leads to inaccurate counts and a
WARN message when using perf with the cycle counter (-e cycle).

Let's fix this by adding a use case for pmccfiltr_el0.

Reported-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Andrew Murray <andrew.murray@arm.com>
---
 arch/arm64/kvm/pmu.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kvm/pmu.c b/arch/arm64/kvm/pmu.c
index 4d55193ccc71..e790051ed6ae 100644
--- a/arch/arm64/kvm/pmu.c
+++ b/arch/arm64/kvm/pmu.c
@@ -134,12 +134,15 @@ void __hyp_text __pmu_switch_to_host(struct kvm_cpu_context *host_ctxt)
 	PMEVTYPER_##readwrite##_CASE(30)
 
 /*
- * Read a value direct from PMEVTYPER<idx>
+ * Read a value direct from PMEVTYPER<idx> where idx is 0-30
+ * or PMCCFILTR_EL0 where idx is ARMV8_PMU_CYCLE_IDX (31).
  */
 static u64 kvm_vcpu_pmu_read_evtype_direct(int idx)
 {
 	switch (idx) {
 	PMEVTYPER_CASES(READ);
+	case ARMV8_PMU_CYCLE_IDX:
+		return read_sysreg(pmccfiltr_el0);
 	default:
 		WARN_ON(1);
 	}
@@ -148,12 +151,16 @@ static u64 kvm_vcpu_pmu_read_evtype_direct(int idx)
 }
 
 /*
- * Write a value direct to PMEVTYPER<idx>
+ * Write a value direct to PMEVTYPER<idx> where idx is 0-30
+ * or PMCCFILTR_EL0 where idx is ARMV8_PMU_CYCLE_IDX (31).
  */
 static void kvm_vcpu_pmu_write_evtype_direct(int idx, u32 val)
 {
 	switch (idx) {
 	PMEVTYPER_CASES(WRITE);
+	case ARMV8_PMU_CYCLE_IDX:
+		write_sysreg(val, pmccfiltr_el0);
+		break;
 	default:
 		WARN_ON(1);
 	}
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
