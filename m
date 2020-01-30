Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A512E14DBE6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 14:30:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tq3G1yxqyXWt2uVDV3BqUyE60ACu+nvJusN+olQT7eE=; b=EWZ8e55kXX8sF6
	7B41ylX20TFQgj3sUWTvunak2AlAEdnCpPcGx/Y1WSLeZTR/YJEAAy9UMD2kPpWiWI+J8as91R8q0
	kHJjPc7lJvKqRMw17D+I+SKnBQ94E6di/0JN5BozXkGLp7vCFy+s0RVdqae8u4Z8JJl5YQKV9WO2p
	aNpfY/YKi9Qf8GNr7XgOdsFvc/lh9olhRFkaAoGpiXD5KyOQK+W8DEFBYabNWNVEwTc1rOmvXn9TI
	SMbyo5U8uCBXO2VMEa7rKwXy8BvxoPpjGKwqfK4MaU7Otblam+HhCo3+KPJcEwiJGhfvjZ63RSVyD
	44ryHxDEYBCxAYd2wdlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix9tr-0007zH-GP; Thu, 30 Jan 2020 13:30:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix9si-0007E5-Dt
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 13:29:18 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 88289214DB;
 Thu, 30 Jan 2020 13:29:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580390955;
 bh=CbHPtKyFMFA04kYNssF+KSdsLNo857UpAUH3+sLYGIA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=le+aD9REqLdsgjil37xhXT7cIq94yWkXuMK0l2vqeDcxZ4U+P4XEbCgAVccrgY4SJ
 CjHBxbQeMN11XGhs749HXQMnOQBlzOKl+i9xX04CVijrKcdnq1+4s9i24hKB71rEeT
 ABjHUkpK9P/J9ANynN9AnAo3ztYxWfeWtbf7NE40=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1ix9pv-002BmW-Gq; Thu, 30 Jan 2020 13:26:23 +0000
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH 14/23] arm64: KVM: Add UAPI notes for swapped registers
Date: Thu, 30 Jan 2020 13:25:49 +0000
Message-Id: <20200130132558.10201-15-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200130132558.10201-1-maz@kernel.org>
References: <20200130132558.10201-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: pbonzini@redhat.com, alexandru.elisei@arm.com,
 drjones@redhat.com, andrew.murray@arm.com, beata.michalska@linaro.org,
 christoffer.dall@arm.com, eric.auger@redhat.com, gshan@redhat.com,
 wanghaibin.wang@huawei.com, james.morse@arm.com, broonie@kernel.org,
 mark.rutland@arm.com, rmk+kernel@armlinux.org.uk,
 shannon.zhao@linux.alibaba.com, steven.price@arm.com, will@kernel.org,
 yuehaibing@huawei.com, yuzenghui@huawei.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_052916_567118_3550234B 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Gavin Shan <gshan@redhat.com>,
 Beata Michalska <beata.michalska@linaro.org>, kvm@vger.kernel.org,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 YueHaibing <yuehaibing@huawei.com>, Steven Price <steven.price@arm.com>,
 Zenghui Yu <yuzenghui@huawei.com>, Haibin Wang <wanghaibin.wang@huawei.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Andrew Jones <drjones@redhat.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Shannon Zhao <shannon.zhao@linux.alibaba.com>,
 Eric Auger <eric.auger@redhat.com>, Russell King <rmk+kernel@armlinux.org.uk>,
 Mark Brown <broonie@kernel.org>, Alexandru Elisei <alexandru.elisei@arm.com>,
 linux-arm-kernel@lists.infradead.org,
 Christoffer Dall <christoffer.dall@arm.com>, James Morse <james.morse@arm.com>,
 Andrew Murray <andrew.murray@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andrew Jones <drjones@redhat.com>

Two UAPI system register IDs do not derive their values from the
ARM system register encodings. This is because their values were
accidentally swapped. As the IDs are API, they cannot be changed.
Add WARNING notes to point them out.

Suggested-by: Marc Zyngier <maz@kernel.org>
Signed-off-by: Andrew Jones <drjones@redhat.com>
[maz: turned XXX into WARNING]
Signed-off-by: Marc Zyngier <maz@kernel.org>
Link: https://lore.kernel.org/r/20200120130825.28838-1-drjones@redhat.com
---
 Documentation/virt/kvm/api.txt    |  9 +++++++++
 arch/arm64/include/uapi/asm/kvm.h | 12 ++++++++++--
 2 files changed, 19 insertions(+), 2 deletions(-)

diff --git a/Documentation/virt/kvm/api.txt b/Documentation/virt/kvm/api.txt
index ebb37b34dcfc..3a0c819c3573 100644
--- a/Documentation/virt/kvm/api.txt
+++ b/Documentation/virt/kvm/api.txt
@@ -2196,6 +2196,15 @@ arm64 CCSIDR registers are demultiplexed by CSSELR value:
 arm64 system registers have the following id bit patterns:
   0x6030 0000 0013 <op0:2> <op1:3> <crn:4> <crm:4> <op2:3>
 
+WARNING:
+     Two system register IDs do not follow the specified pattern.  These
+     are KVM_REG_ARM_TIMER_CVAL and KVM_REG_ARM_TIMER_CNT, which map to
+     system registers CNTV_CVAL_EL0 and CNTVCT_EL0 respectively.  These
+     two had their values accidentally swapped, which means TIMER_CVAL is
+     derived from the register encoding for CNTVCT_EL0 and TIMER_CNT is
+     derived from the register encoding for CNTV_CVAL_EL0.  As this is
+     API, it must remain this way.
+
 arm64 firmware pseudo-registers have the following bit pattern:
   0x6030 0000 0014 <regno:16>
 
diff --git a/arch/arm64/include/uapi/asm/kvm.h b/arch/arm64/include/uapi/asm/kvm.h
index 820e5751ada7..ba85bb23f060 100644
--- a/arch/arm64/include/uapi/asm/kvm.h
+++ b/arch/arm64/include/uapi/asm/kvm.h
@@ -220,10 +220,18 @@ struct kvm_vcpu_events {
 #define KVM_REG_ARM_PTIMER_CVAL		ARM64_SYS_REG(3, 3, 14, 2, 2)
 #define KVM_REG_ARM_PTIMER_CNT		ARM64_SYS_REG(3, 3, 14, 0, 1)
 
-/* EL0 Virtual Timer Registers */
+/*
+ * EL0 Virtual Timer Registers
+ *
+ * WARNING:
+ *      KVM_REG_ARM_TIMER_CVAL and KVM_REG_ARM_TIMER_CNT are not defined
+ *      with the appropriate register encodings.  Their values have been
+ *      accidentally swapped.  As this is set API, the definitions here
+ *      must be used, rather than ones derived from the encodings.
+ */
 #define KVM_REG_ARM_TIMER_CTL		ARM64_SYS_REG(3, 3, 14, 3, 1)
-#define KVM_REG_ARM_TIMER_CNT		ARM64_SYS_REG(3, 3, 14, 3, 2)
 #define KVM_REG_ARM_TIMER_CVAL		ARM64_SYS_REG(3, 3, 14, 0, 2)
+#define KVM_REG_ARM_TIMER_CNT		ARM64_SYS_REG(3, 3, 14, 3, 2)
 
 /* KVM-as-firmware specific pseudo-registers */
 #define KVM_REG_ARM_FW			(0x0014 << KVM_REG_ARM_COPROC_SHIFT)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
