Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE406452D8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:23:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7TuhdDoyoRq3bzoKsnabO2I7tmJo0VFOxIK+JH2kMeE=; b=fP2tj1RKRt0kFD
	hREx6/m7EIb6LB9Lr0UlPAOYkcogallA1ZKL7TYXhD6vNQE5zBuovqLvBqR1/xQGSeM5adNFy+4M9
	2j4FwTsWl/VROYKFrY7PjptSOBYPbfrEshT6gHasgGYuBcilfAMA9SLuvfQ8neHm+lefVhg8HmPWB
	Dvos52RenY/jsrTnSxMcb5iBpJIOoJ5i3YyfHVthAEovJmV7i/uwKVW5rH8SYosLn6TmQjg2JAm+k
	+qrvPqpt4XxZr97vnRZy9mVjqSwIjMYbNXZy6I4YDiUPYNddVPgPeVRxW4iUmU6XPaPuPnn9Pz364
	3QMv8+d9osDsb4KWfMjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbcob-0003br-Fz; Fri, 14 Jun 2019 03:23:45 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbceW-0000uR-Dn
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 03:13:25 +0000
Received: by mail-pg1-x543.google.com with SMTP id f21so683392pgi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:13:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=++nRQWY/k4E+AlroFqtDd4Bo37FS6L7rS4A4U1awWIw=;
 b=vjjNcN5lkAA8AQ/hNlVDweJ2UuEWkofszzzfBowAhwDsqV9CQvglj0JeO4aOtGO6rK
 rZfFNmqiTqHjqKwK6+Wd4nO1EWwWeUDPFAnn8nUFpiwHAS6jyJQZB35sx2wNuCurZ/QJ
 3nTkZAHmXgD3bjUPHhDQweFFZ4zV4ESCgWtIU0UwzBMUn9EguMCIfVYwpgQSxqague1/
 U+qWkH711QbVlbQ/NlJ8itHP1rleWpQbLRsdoXFa+i9bQea1ct5JFDzvtKfICdBix/DI
 qHTar8YR1uVuI+cSGqkV5MNom4CWBrukDUS/rEzf/jHIJE1Bgcy0B7XF2nQ2h+6M4Wyv
 PJkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=++nRQWY/k4E+AlroFqtDd4Bo37FS6L7rS4A4U1awWIw=;
 b=tmfsiFb/wNK0QlS9dFtVvDR8ouUl4gWdaLbSHDky+4qkJCI+4XmEoCN3U6zEeEPMDO
 2pL2EKR6n0Xve7qolo8vq8xddHHH5ytiSUAeW1tKlfOyM5yX7Yf7hWxBJbI45dWpwnSp
 X3jYPik3QGk9l5oL8g9elH2C0yLBY6KpcdPtNtHumJX23eiUjP2/ab7msODNbbC5q4MU
 1TB2V4jiadu9d+4uD6ONstWMkRf4wtRJXexZXlSMZlLCPnKYHVFi/G+kqiHs8sP2KU61
 D1g0ZyULLVqBPdoSGJBXYN2JM3ta+2plKq9JofA0ActhpdOhavuDKlzwYrH5dmXtMhQW
 9MKg==
X-Gm-Message-State: APjAAAUkVcOGv6psw9shAWr0ejEFU9VzIKcSPLxvj2fnL9r0OtUBwK4r
 qPeK3Qyr4PRvAYYkhj+YL3EKsQIfRss=
X-Google-Smtp-Source: APXvYqx4u8/bz5CLdCqQygxAXwJhEyRPT820sErKnl5w+twEyU3DGYqIGjp3qtI8aoA9SO0Ar1FaWg==
X-Received: by 2002:a17:90a:8d0c:: with SMTP id
 c12mr8434015pjo.140.1560481998784; 
 Thu, 13 Jun 2019 20:13:18 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id 3sm1003574pfp.114.2019.06.13.20.13.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 20:13:18 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
 Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 32/45] arm/arm64: KVM: Add smccc accessors to PSCI code
Date: Fri, 14 Jun 2019 08:38:15 +0530
Message-Id: <95a76d0ffea5ef13e92b1ce8b1ada85e530133ff.1560480942.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1560480942.git.viresh.kumar@linaro.org>
References: <cover.1560480942.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_201320_597715_D1C93F3B 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Will Deacon <will.deacon@arm.com>,
 stable@vger.kernel.org, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marc Zyngier <marc.zyngier@arm.com>

commit 84684fecd7ea381824a96634a027b7719587fb77 upstream.

Instead of open coding the accesses to the various registers,
let's add explicit SMCCC accessors.

Reviewed-by: Christoffer Dall <christoffer.dall@linaro.org>
Tested-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
[ v4.4: account for files moved to virt/ upstream ]
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm/kvm/psci.c | 52 ++++++++++++++++++++++++++++++++++++---------
 1 file changed, 42 insertions(+), 10 deletions(-)

diff --git a/arch/arm/kvm/psci.c b/arch/arm/kvm/psci.c
index edf3d7fdcbdb..7ef6cdd22163 100644
--- a/arch/arm/kvm/psci.c
+++ b/arch/arm/kvm/psci.c
@@ -32,6 +32,38 @@
 
 #define AFFINITY_MASK(level)	~((0x1UL << ((level) * MPIDR_LEVEL_BITS)) - 1)
 
+static u32 smccc_get_function(struct kvm_vcpu *vcpu)
+{
+	return vcpu_get_reg(vcpu, 0);
+}
+
+static unsigned long smccc_get_arg1(struct kvm_vcpu *vcpu)
+{
+	return vcpu_get_reg(vcpu, 1);
+}
+
+static unsigned long smccc_get_arg2(struct kvm_vcpu *vcpu)
+{
+	return vcpu_get_reg(vcpu, 2);
+}
+
+static unsigned long smccc_get_arg3(struct kvm_vcpu *vcpu)
+{
+	return vcpu_get_reg(vcpu, 3);
+}
+
+static void smccc_set_retval(struct kvm_vcpu *vcpu,
+			     unsigned long a0,
+			     unsigned long a1,
+			     unsigned long a2,
+			     unsigned long a3)
+{
+	vcpu_set_reg(vcpu, 0, a0);
+	vcpu_set_reg(vcpu, 1, a1);
+	vcpu_set_reg(vcpu, 2, a2);
+	vcpu_set_reg(vcpu, 3, a3);
+}
+
 static unsigned long psci_affinity_mask(unsigned long affinity_level)
 {
 	if (affinity_level <= 3)
@@ -74,7 +106,7 @@ static unsigned long kvm_psci_vcpu_on(struct kvm_vcpu *source_vcpu)
 	unsigned long context_id;
 	phys_addr_t target_pc;
 
-	cpu_id = vcpu_get_reg(source_vcpu, 1) & MPIDR_HWID_BITMASK;
+	cpu_id = smccc_get_arg1(source_vcpu) & MPIDR_HWID_BITMASK;
 	if (vcpu_mode_is_32bit(source_vcpu))
 		cpu_id &= ~((u32) 0);
 
@@ -93,8 +125,8 @@ static unsigned long kvm_psci_vcpu_on(struct kvm_vcpu *source_vcpu)
 			return PSCI_RET_INVALID_PARAMS;
 	}
 
-	target_pc = vcpu_get_reg(source_vcpu, 2);
-	context_id = vcpu_get_reg(source_vcpu, 3);
+	target_pc = smccc_get_arg2(source_vcpu);
+	context_id = smccc_get_arg3(source_vcpu);
 
 	kvm_reset_vcpu(vcpu);
 
@@ -113,7 +145,7 @@ static unsigned long kvm_psci_vcpu_on(struct kvm_vcpu *source_vcpu)
 	 * NOTE: We always update r0 (or x0) because for PSCI v0.1
 	 * the general puspose registers are undefined upon CPU_ON.
 	 */
-	vcpu_set_reg(vcpu, 0, context_id);
+	smccc_set_retval(vcpu, context_id, 0, 0, 0);
 	vcpu->arch.power_off = false;
 	smp_mb();		/* Make sure the above is visible */
 
@@ -133,8 +165,8 @@ static unsigned long kvm_psci_vcpu_affinity_info(struct kvm_vcpu *vcpu)
 	struct kvm *kvm = vcpu->kvm;
 	struct kvm_vcpu *tmp;
 
-	target_affinity = vcpu_get_reg(vcpu, 1);
-	lowest_affinity_level = vcpu_get_reg(vcpu, 2);
+	target_affinity = smccc_get_arg1(vcpu);
+	lowest_affinity_level = smccc_get_arg2(vcpu);
 
 	/* Determine target affinity mask */
 	target_affinity_mask = psci_affinity_mask(lowest_affinity_level);
@@ -208,7 +240,7 @@ int kvm_psci_version(struct kvm_vcpu *vcpu)
 static int kvm_psci_0_2_call(struct kvm_vcpu *vcpu)
 {
 	struct kvm *kvm = vcpu->kvm;
-	unsigned long psci_fn = vcpu_get_reg(vcpu, 0) & ~((u32) 0);
+	unsigned long psci_fn = smccc_get_function(vcpu);
 	unsigned long val;
 	int ret = 1;
 
@@ -275,14 +307,14 @@ static int kvm_psci_0_2_call(struct kvm_vcpu *vcpu)
 		break;
 	}
 
-	vcpu_set_reg(vcpu, 0, val);
+	smccc_set_retval(vcpu, val, 0, 0, 0);
 	return ret;
 }
 
 static int kvm_psci_0_1_call(struct kvm_vcpu *vcpu)
 {
 	struct kvm *kvm = vcpu->kvm;
-	unsigned long psci_fn = vcpu_get_reg(vcpu, 0) & ~((u32) 0);
+	unsigned long psci_fn = smccc_get_function(vcpu);
 	unsigned long val;
 
 	switch (psci_fn) {
@@ -300,7 +332,7 @@ static int kvm_psci_0_1_call(struct kvm_vcpu *vcpu)
 		break;
 	}
 
-	vcpu_set_reg(vcpu, 0, val);
+	smccc_set_retval(vcpu, val, 0, 0, 0);
 	return 1;
 }
 
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
