Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A566635E5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 14:30:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7no3qoRGn5l4TaxZKOzwdtC9EsbYe+LmcfbId9mjkvg=; b=NbB1NXjn3JGPhG
	7bkOG8tksbOdrrLdttUnwZ5TC3lfW6BPpZhoU0PAi2sL+fv+vjUwb9zyeAz5h8+grBJfpxPF495uL
	qoToR8gubiNrxl+3mce9fJdNjjN9BnVPCJ/Y049did8bxhceqcF2bTu0lBaod2VXC0ue6oON6l6vj
	gCGVaRbtOg0hHEJbR+hH54cj7bDK2ofSE2wKYWE0AheEniLJxpjkICqHh9btHck4CINKdkayG1xyw
	bochhArx0NWGexvZTBe4BJBRQf5qgHYWNBqTzgY+psVHeRXChnukMWGOxmG/j3VV0dBQzpTzDszqn
	mTourv4y6sRdNahtnz9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkpGW-0003OG-Bk; Tue, 09 Jul 2019 12:30:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkpBw-0006sA-Rj
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 12:25:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6AA0815AB;
 Tue,  9 Jul 2019 05:25:52 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com (unknown [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 940AA3F59C;
 Tue,  9 Jul 2019 05:25:50 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 16/18] KVM: doc: Add API documentation on the
 KVM_REG_ARM_WORKAROUNDS register
Date: Tue,  9 Jul 2019 13:25:05 +0100
Message-Id: <20190709122507.214494-17-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190709122507.214494-1-marc.zyngier@arm.com>
References: <20190709122507.214494-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_052553_042139_DD31F58B 
X-CRM114-Status: GOOD (  11.86  )
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
Cc: kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 Julien Thierry <julien.thierry@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Steven Price <steven.price@arm.com>,
 Eric Auger <eric.auger@redhat.com>, James Morse <james.morse@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Andrew Murray <andrew.murray@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andre Przywara <andre.przywara@arm.com>

Add documentation for the newly defined firmware registers to save and
restore any vulnerability mitigation status.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
Reviewed-by: Steven Price <steven.price@arm.com>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 Documentation/virtual/kvm/arm/psci.txt | 31 ++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/Documentation/virtual/kvm/arm/psci.txt b/Documentation/virtual/kvm/arm/psci.txt
index aafdab887b04..559586fc9d37 100644
--- a/Documentation/virtual/kvm/arm/psci.txt
+++ b/Documentation/virtual/kvm/arm/psci.txt
@@ -28,3 +28,34 @@ The following register is defined:
   - Allows any PSCI version implemented by KVM and compatible with
     v0.2 to be set with SET_ONE_REG
   - Affects the whole VM (even if the register view is per-vcpu)
+
+* KVM_REG_ARM_SMCCC_ARCH_WORKAROUND_1:
+  Holds the state of the firmware support to mitigate CVE-2017-5715, as
+  offered by KVM to the guest via a HVC call. The workaround is described
+  under SMCCC_ARCH_WORKAROUND_1 in [1].
+  Accepted values are:
+    KVM_REG_ARM_SMCCC_ARCH_WORKAROUND_1_NOT_AVAIL: KVM does not offer
+      firmware support for the workaround. The mitigation status for the
+      guest is unknown.
+    KVM_REG_ARM_SMCCC_ARCH_WORKAROUND_1_AVAIL: The workaround HVC call is
+      available to the guest and required for the mitigation.
+    KVM_REG_ARM_SMCCC_ARCH_WORKAROUND_1_NOT_REQUIRED: The workaround HVC call
+      is available to the guest, but it is not needed on this VCPU.
+
+* KVM_REG_ARM_SMCCC_ARCH_WORKAROUND_2:
+  Holds the state of the firmware support to mitigate CVE-2018-3639, as
+  offered by KVM to the guest via a HVC call. The workaround is described
+  under SMCCC_ARCH_WORKAROUND_2 in [1].
+  Accepted values are:
+    KVM_REG_ARM_SMCCC_ARCH_WORKAROUND_2_NOT_AVAIL: A workaround is not
+      available. KVM does not offer firmware support for the workaround.
+    KVM_REG_ARM_SMCCC_ARCH_WORKAROUND_2_UNKNOWN: The workaround state is
+      unknown. KVM does not offer firmware support for the workaround.
+    KVM_REG_ARM_SMCCC_ARCH_WORKAROUND_2_AVAIL: The workaround is available,
+      and can be disabled by a vCPU. If
+      KVM_REG_ARM_SMCCC_ARCH_WORKAROUND_2_ENABLED is set, it is active for
+      this vCPU.
+    KVM_REG_ARM_SMCCC_ARCH_WORKAROUND_2_NOT_REQUIRED: The workaround is
+      always active on this vCPU or it is not needed.
+
+[1] https://developer.arm.com/-/media/developer/pdf/ARM_DEN_0070A_Firmware_interfaces_for_mitigating_CVE-2017-5715.pdf
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
