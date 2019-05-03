Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD9B12E47
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 14:47:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TmuWFZ8+FkeweJuYQ7OhF5R0151KZTNTOptPDFj3IBM=; b=NTJBkkJE14NZm7
	QsUFHEPkH1uw9AV+L8XJdE3Pir5XFUO9ZMm2EaJvrxiRAKrxVqfrpZmgWg2Zccpn7lAR2n4ujQj7+
	h778HXBjeMHlZWJWocoLqczVpsQQ7jtwYozL5YtiAojuAdu6c0iVe66SD5Uju/82OqPIOWhgK5rjy
	XGCd5xUTwvZ0RdxoOgeYsgJvv49Bom4HWfbmLH2tigY6rrF3Ndp+r7kk5yiOnyhHvESTDp1wYhEvj
	rKFMW/07pxZVS+1DGFgxsMrva3a75/YE3vrHTso2jjV0K4cAeMoGX3zOhYGKdtoJs4t0ePMZOBlTm
	6MJIxcxsHORf3DNpiYXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMXaw-0006aE-ND; Fri, 03 May 2019 12:47:18 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXZL-0002bL-5i
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 12:46:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1ED44165C;
 Fri,  3 May 2019 05:45:39 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DB6713F220;
 Fri,  3 May 2019 05:45:35 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 16/56] KVM: arm64: Factor out core register ID enumeration
Date: Fri,  3 May 2019 13:43:47 +0100
Message-Id: <20190503124427.190206-17-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190503124427.190206-1-marc.zyngier@arm.com>
References: <20190503124427.190206-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_054539_793820_8A59AA09 
X-CRM114-Status: GOOD (  15.59  )
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

In preparation for adding logic to filter out some KVM_REG_ARM_CORE
registers from the KVM_GET_REG_LIST output, this patch factors out
the core register enumeration into a separate function and rebuilds
num_core_regs() on top of it.

This may be a little more expensive (depending on how good a job
the compiler does of specialising the code), but KVM_GET_REG_LIST
is not a hot path.

This will make it easier to consolidate ID filtering code in one
place.

No functional change.

Signed-off-by: Dave Martin <Dave.Martin@arm.com>
Reviewed-by: Julien Thierry <julien.thierry@arm.com>
Tested-by: zhang.lei <zhang.lei@jp.fujitsu.com>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 arch/arm64/kvm/guest.c | 33 +++++++++++++++++++++++++--------
 1 file changed, 25 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/kvm/guest.c b/arch/arm64/kvm/guest.c
index 3e38eb28b03c..a391a61b1033 100644
--- a/arch/arm64/kvm/guest.c
+++ b/arch/arm64/kvm/guest.c
@@ -23,6 +23,7 @@
 #include <linux/err.h>
 #include <linux/kvm_host.h>
 #include <linux/module.h>
+#include <linux/stddef.h>
 #include <linux/string.h>
 #include <linux/vmalloc.h>
 #include <linux/fs.h>
@@ -194,9 +195,28 @@ int kvm_arch_vcpu_ioctl_set_regs(struct kvm_vcpu *vcpu, struct kvm_regs *regs)
 	return -EINVAL;
 }
 
+static int kvm_arm_copy_core_reg_indices(u64 __user *uindices)
+{
+	unsigned int i;
+	int n = 0;
+	const u64 core_reg = KVM_REG_ARM64 | KVM_REG_SIZE_U64 | KVM_REG_ARM_CORE;
+
+	for (i = 0; i < sizeof(struct kvm_regs) / sizeof(__u32); i++) {
+		if (uindices) {
+			if (put_user(core_reg | i, uindices))
+				return -EFAULT;
+			uindices++;
+		}
+
+		n++;
+	}
+
+	return n;
+}
+
 static unsigned long num_core_regs(void)
 {
-	return sizeof(struct kvm_regs) / sizeof(__u32);
+	return kvm_arm_copy_core_reg_indices(NULL);
 }
 
 /**
@@ -276,15 +296,12 @@ unsigned long kvm_arm_num_regs(struct kvm_vcpu *vcpu)
  */
 int kvm_arm_copy_reg_indices(struct kvm_vcpu *vcpu, u64 __user *uindices)
 {
-	unsigned int i;
-	const u64 core_reg = KVM_REG_ARM64 | KVM_REG_SIZE_U64 | KVM_REG_ARM_CORE;
 	int ret;
 
-	for (i = 0; i < sizeof(struct kvm_regs) / sizeof(__u32); i++) {
-		if (put_user(core_reg | i, uindices))
-			return -EFAULT;
-		uindices++;
-	}
+	ret = kvm_arm_copy_core_reg_indices(uindices);
+	if (ret)
+		return ret;
+	uindices += ret;
 
 	ret = kvm_arm_copy_fw_reg_indices(vcpu, uindices);
 	if (ret)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
