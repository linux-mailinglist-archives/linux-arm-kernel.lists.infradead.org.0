Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8492527AA1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 12:35:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Zc8Z8T3obalPZWN56IZ8WcvDv3GzSKKZRItqhpewf0k=; b=kSHsN61vHLVmltTINOOsqGopk2
	PHTf5Nc3ySNcs0r5Qgd9WUA8kYslc0CigAzSlXx2yTqTUZU9FiTOd2nmw6lWnwMZIOEWeQElqTjV9
	kshItKRMeqoctlqiF0XPWFVhg1pAA6zPLnZo6I/p53xCCQ88ULjDFl/WvLuuNh10VVTuTP9z7Rkrk
	TRLIJrYb6NB222qytMKCHTNLO2poKe+8dCD7d1dtzHxYpzBSeZbIxkqf5TtMMqKoV6q3wbJWDIImy
	Z5ZveBC+hqPaQ99WOEuMyaXUSFCn1KQpkpeE8D1nQPDzjWefZHYIb3eG6sAAQmZbDChLzc6qOKm4t
	S4W26OXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTl4Y-0000dn-GI; Thu, 23 May 2019 10:35:42 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTl4F-0000OQ-ST
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 10:35:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4102DA78;
 Thu, 23 May 2019 03:35:23 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 2CDA03F718;
 Thu, 23 May 2019 03:35:21 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: kvmarm@lists.cs.columbia.edu,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 01/15] KVM: arm64: add {read,
 write}_sysreg_elx_s versions for new registers
Date: Thu, 23 May 2019 11:34:48 +0100
Message-Id: <20190523103502.25925-2-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190523103502.25925-1-sudeep.holla@arm.com>
References: <20190523103502.25925-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_033524_075457_3B537192 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kvm@vger.kernel.org, Suzuki K Pouloze <suzuki.poulose@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Julien Thierry <julien.thierry@arm.com>, Will Deacon <will.deacon@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Sudeep Holla <sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

KVM provides {read,write}_sysreg_el1() to write to ${REG}_EL1 when we
really want to read/write to the EL1 register without any VHE register
redirection.

SPE registers are not supported by many versions of GAS. For this reason
we mostly use mrs_s macro which takes sys_reg() representation.

However these SPE registers using sys_reg representation doesn't work
well with existing {read,write}_sysreg_el1 macros. We need to add
{read,write}_sysreg_el1_s versions so cope up with them.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 arch/arm64/include/asm/kvm_hyp.h | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/include/asm/kvm_hyp.h b/arch/arm64/include/asm/kvm_hyp.h
index 09fe8bd15f6e..f61378b77c9f 100644
--- a/arch/arm64/include/asm/kvm_hyp.h
+++ b/arch/arm64/include/asm/kvm_hyp.h
@@ -35,6 +35,15 @@
 			     : "=r" (reg));				\
 		reg;							\
 	})
+#define read_sysreg_elx_s(r,nvh,vh)					\
+	({								\
+		u64 reg;						\
+		asm volatile(ALTERNATIVE(__mrs_s("%0", r##nvh),		\
+					 __mrs_s("%0", r##vh),		\
+					 ARM64_HAS_VIRT_HOST_EXTN)	\
+			     : "=r" (reg));				\
+		reg;							\
+	})
 
 #define write_sysreg_elx(v,r,nvh,vh)					\
 	do {								\
@@ -44,6 +53,14 @@
 					 ARM64_HAS_VIRT_HOST_EXTN)	\
 					 : : "rZ" (__val));		\
 	} while (0)
+#define write_sysreg_elx_s(v,r,nvh,vh)					\
+	do {								\
+		u64 __val = (u64)(v);					\
+		asm volatile(ALTERNATIVE(__msr_s(r##nvh, "%x0"),	\
+					 __msr_s(r##vh, "%x0"),		\
+					 ARM64_HAS_VIRT_HOST_EXTN)	\
+					 : : "rZ" (__val));		\
+	} while (0)
 
 /*
  * Unified accessors for registers that have a different encoding
@@ -72,7 +89,9 @@
 #define read_sysreg_el0(r)	read_sysreg_elx(r, _EL0, _EL02)
 #define write_sysreg_el0(v,r)	write_sysreg_elx(v, r, _EL0, _EL02)
 #define read_sysreg_el1(r)	read_sysreg_elx(r, _EL1, _EL12)
+#define read_sysreg_el1_s(r)	read_sysreg_elx_s(r, _EL1, _EL12)
 #define write_sysreg_el1(v,r)	write_sysreg_elx(v, r, _EL1, _EL12)
+#define write_sysreg_el1_s(v,r)	write_sysreg_elx_s(v, r, _EL1, _EL12)
 
 /* The VHE specific system registers and their encoding */
 #define sctlr_EL12              sys_reg(3, 5, 1, 0, 0)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
