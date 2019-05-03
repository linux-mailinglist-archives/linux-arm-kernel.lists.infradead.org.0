Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3898612F3D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 15:32:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qqEA2/bpUGJd+SrQY6rpw0S6hO7Wm9VLq0e3Cmdh6Yo=; b=eTaaOW00AvsiBv
	W5FLytH1UkLnxEy5hidub3JIDc4BCwzisgets4dMuQ+q0tRN7rVfYRrvMFhnIov9zKJg4MqvDf9zx
	IuAmq3bfe/l0DIVb9gGVYTAo3kDNT5RUn+C4R73HZQ64WnvzjoT01zgJHtJTFeMDxKSYfnMtNqdit
	E/rx68wdGVgHytXR3VbZpnCJqvo5RGfZTbHdhwBepotFwFoA6zRR5EB3jIShz4b9S473jU8uw/bke
	B5cdU8+egL4Jveodi2fQUk+m8ruwVyp0YFcomyQksTYj8zhVlUrjhQEXiUIRylpwEcf0/+1TKeVa8
	ECtbvZjqd1iUDl9tVmhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMYIf-0002Ze-VO; Fri, 03 May 2019 13:32:30 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMYHL-0000pd-7l
 for linux-arm-kernel@bombadil.infradead.org; Fri, 03 May 2019 13:31:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TUW4t8WOv1X2NXPgHNe3npjrooXdiypVVTW1XIsnwCc=; b=W7VqG4SYVL5GdMRA/k9BZ6ykWr
 wFh1408r2J3LumMlLwc+Rr/EwKv0USe9AE5zoNB/dkQip3fxmrx+67vqdBuNH8/TBJ2Q+poQjm1qo
 5136t37079hDsERpjUFyki9GSrJGp7cQJA0Q33uyNMTmyExCn3Tqo7eLIhgY/LJdSfInPTGrq4JZ3
 gv2PEFngpRsLBIHrO46XKTL8MYpSI4A92LRAjOVojDYq2yjpy1P110KmAZ6Wf7uIo/A4S6SKTqMPc
 DPxiqelLmRUmA8c4isQVKzbISiDOtT3u+CvzKTTKWrk9Jc261Yc830Nggf+4/5j2j67PKH8f7/uGT
 e04EkRiA==;
Received: from foss.arm.com ([217.140.101.70])
 by merlin.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXZV-0005hP-Pw
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 12:45:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9BD6F1682;
 Fri,  3 May 2019 05:45:49 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6478D3F220;
 Fri,  3 May 2019 05:45:46 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 19/56] KVM: arm64: Enumerate SVE register indices for
 KVM_GET_REG_LIST
Date: Fri,  3 May 2019 13:43:50 +0100
Message-Id: <20190503124427.190206-20-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190503124427.190206-1-marc.zyngier@arm.com>
References: <20190503124427.190206-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_084550_000125_92C8EF77 
X-CRM114-Status: GOOD (  19.49  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
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

From: Dave Martin <Dave.Martin@arm.com>

This patch includes the SVE register IDs in the list returned by
KVM_GET_REG_LIST, as appropriate.

On a non-SVE-enabled vcpu, no new IDs are added.

On an SVE-enabled vcpu, IDs for the FPSIMD V-registers are removed
from the list, since userspace is required to access the Z-
registers instead in order to access the V-register content.  For
the variably-sized SVE registers, the appropriate set of slice IDs
are enumerated, depending on the maximum vector length for the
vcpu.

As it currently stands, the SVE architecture never requires more
than one slice to exist per register, so this patch adds no
explicit support for enumerating multiple slices.  The code can be
extended straightforwardly to support this in the future, if
needed.

Signed-off-by: Dave Martin <Dave.Martin@arm.com>
Reviewed-by: Julien Thierry <julien.thierry@arm.com>
Tested-by: zhang.lei <zhang.lei@jp.fujitsu.com>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 arch/arm64/kvm/guest.c | 63 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 63 insertions(+)

diff --git a/arch/arm64/kvm/guest.c b/arch/arm64/kvm/guest.c
index 736d8cb8dad7..2aa80a59e2a2 100644
--- a/arch/arm64/kvm/guest.c
+++ b/arch/arm64/kvm/guest.c
@@ -222,6 +222,13 @@ static int set_core_reg(struct kvm_vcpu *vcpu, const struct kvm_one_reg *reg)
 #define KVM_SVE_ZREG_SIZE KVM_REG_SIZE(KVM_REG_ARM64_SVE_ZREG(0, 0))
 #define KVM_SVE_PREG_SIZE KVM_REG_SIZE(KVM_REG_ARM64_SVE_PREG(0, 0))
 
+/*
+ * number of register slices required to cover each whole SVE register on vcpu
+ * NOTE: If you are tempted to modify this, you must also to rework
+ * sve_reg_to_region() to match:
+ */
+#define vcpu_sve_slices(vcpu) 1
+
 /* Bounds of a single SVE register slice within vcpu->arch.sve_state */
 struct sve_state_reg_region {
 	unsigned int koffset;	/* offset into sve_state in kernel memory */
@@ -411,6 +418,56 @@ static int get_timer_reg(struct kvm_vcpu *vcpu, const struct kvm_one_reg *reg)
 	return copy_to_user(uaddr, &val, KVM_REG_SIZE(reg->id)) ? -EFAULT : 0;
 }
 
+static unsigned long num_sve_regs(const struct kvm_vcpu *vcpu)
+{
+	/* Only the first slice ever exists, for now */
+	const unsigned int slices = vcpu_sve_slices(vcpu);
+
+	if (!vcpu_has_sve(vcpu))
+		return 0;
+
+	return slices * (SVE_NUM_PREGS + SVE_NUM_ZREGS + 1 /* FFR */);
+}
+
+static int copy_sve_reg_indices(const struct kvm_vcpu *vcpu,
+				u64 __user *uindices)
+{
+	/* Only the first slice ever exists, for now */
+	const unsigned int slices = vcpu_sve_slices(vcpu);
+	u64 reg;
+	unsigned int i, n;
+	int num_regs = 0;
+
+	if (!vcpu_has_sve(vcpu))
+		return 0;
+
+	for (i = 0; i < slices; i++) {
+		for (n = 0; n < SVE_NUM_ZREGS; n++) {
+			reg = KVM_REG_ARM64_SVE_ZREG(n, i);
+			if (put_user(reg, uindices++))
+				return -EFAULT;
+
+			num_regs++;
+		}
+
+		for (n = 0; n < SVE_NUM_PREGS; n++) {
+			reg = KVM_REG_ARM64_SVE_PREG(n, i);
+			if (put_user(reg, uindices++))
+				return -EFAULT;
+
+			num_regs++;
+		}
+
+		reg = KVM_REG_ARM64_SVE_FFR(i);
+		if (put_user(reg, uindices++))
+			return -EFAULT;
+
+		num_regs++;
+	}
+
+	return num_regs;
+}
+
 /**
  * kvm_arm_num_regs - how many registers do we present via KVM_GET_ONE_REG
  *
@@ -421,6 +478,7 @@ unsigned long kvm_arm_num_regs(struct kvm_vcpu *vcpu)
 	unsigned long res = 0;
 
 	res += num_core_regs(vcpu);
+	res += num_sve_regs(vcpu);
 	res += kvm_arm_num_sys_reg_descs(vcpu);
 	res += kvm_arm_get_fw_num_regs(vcpu);
 	res += NUM_TIMER_REGS;
@@ -442,6 +500,11 @@ int kvm_arm_copy_reg_indices(struct kvm_vcpu *vcpu, u64 __user *uindices)
 		return ret;
 	uindices += ret;
 
+	ret = copy_sve_reg_indices(vcpu, uindices);
+	if (ret)
+		return ret;
+	uindices += ret;
+
 	ret = kvm_arm_copy_fw_reg_indices(vcpu, uindices);
 	if (ret)
 		return ret;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
