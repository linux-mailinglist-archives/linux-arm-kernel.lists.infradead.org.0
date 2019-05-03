Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D901E12EA2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 15:01:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OtKXWR+/l+YWo0wjk7MW35aTUCbT98YGlaH/Ok18d2k=; b=ScjGuyetl03CAn
	3jFzvOEJ99CLT2wYxSeLoBUC+V9h6G9MpFkGqULDCcix9yikZdxekIKmnl4PxaGnM/NGjT6CN97rP
	w/4vcmcxQ/Kx7ItRS9Wi261rsgKkiDUR4Fs57iYbwmOR+G15fWy/RxSP8bEJU8MPuzu3DHSaRIux1
	wD6+KoUfmEZl/EAAcvSFIqSa1uERmrDdmcHQCCxMQRB7GhgtZdFehic0Em+9aW9W0FayTMBlhhgdw
	JM50krYrm6vko8QhykMoe4+RDJ4xhLr8PnaOJZMIqQlgtEDTWTAkBLueTC8mSz7tD+Q+7/aXNbNaS
	D+kpc/DSEkDD/M4yXqyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMXoB-0000XT-IM; Fri, 03 May 2019 13:00:59 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXny-0000KY-Hn
 for linux-arm-kernel@bombadil.infradead.org; Fri, 03 May 2019 13:00:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tB8iLNcABHR5Yzo303t45DlC09ZUzkOzoUuAlStG9Zw=; b=NHP7Fo8qI1UsoN8SiiZuBM1yfL
 JSyheHoeYr4Dk4sszrYiuuhoOP1AW+4z+BdBkrUWPr6BOir9lKNQ0PcO51K3QomS9j5ouxzdYEfoW
 hLRN/VFulLUsqyISdEEYgRZqOEfI25xHQEUuas3qYxaurloe6hb09iQr/Cib8m2TaDMCvaHMJYGAM
 sVkPIlxaRy+VSFAXHB5vL/hILegBJxHaWQLxFCKDtn3KAXjeu55KhRVp19q4k/dj5qJGxMAYnCsh5
 VFcbmXPpJ+BW8L3NC50Gkhp1EIrw4J4dKQXbYO7wc7TdPi4ulx1y/W0JrGytjggMxR2cr26Jr9k6G
 uzziofAA==;
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by casper.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXbY-0002Jf-06
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 12:47:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B596B169E;
 Fri,  3 May 2019 05:47:55 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7DF413F220;
 Fri,  3 May 2019 05:47:52 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 55/56] arm64: KVM: Fix perf cycle counter support for VHE
Date: Fri,  3 May 2019 13:44:26 +0100
Message-Id: <20190503124427.190206-56-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190503124427.190206-1-marc.zyngier@arm.com>
References: <20190503124427.190206-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_134756_195816_66EAAAC3 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-5.0 points, 5.0 required)
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Peter Maydell <peter.maydell@linaro.org>, Andrew Jones <drjones@redhat.com>,
 kvm@vger.kernel.org, Julien Thierry <julien.thierry@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Will Deacon <will.deacon@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 "zhang . lei" <zhang.lei@jp.fujitsu.com>, Julien Grall <julien.grall@arm.com>,
 kvmarm@lists.cs.columbia.edu, Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Andrew Murray <andrew.murray@arm.com>,
 =?UTF-8?q?Alex=20Benn=C3=A9e?= <alex.bennee@linaro.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andrew Murray <andrew.murray@arm.com>

The kvm_vcpu_pmu_{read,write}_evtype_direct functions do not handle
the cycle counter use-case, this leads to inaccurate counts and a
WARN message when using perf with the cycle counter (-e cycle).

Let's fix this by adding a use case for pmccfiltr_el0.

Fixes: 39e3406a090a ("arm64: KVM: Avoid isb's by using direct pmxevtyper sysreg")
Reported-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Andrew Murray <andrew.murray@arm.com>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 arch/arm64/kvm/pmu.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kvm/pmu.c b/arch/arm64/kvm/pmu.c
index cd49db845ef4..3da94a5bb6b7 100644
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
