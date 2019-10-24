Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A21C9E2EE0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 12:29:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Dr81SOPSr+3Bku+QHhKTYVtZlleftBY9UZLQnc97PDs=; b=luOLNHdUnQ9qTKi9au42ow7iiA
	2rtWaJd3GofxY2jmFirx0bHttRvLUNv+s5w6Quztjhfa4yRWyDzLFQcbqwsnh1oBVHaa5nyegOs1O
	9Hgq638ldAVJNGFMpuKQ621Q3Q+9B+DLiCiLUCalVsk7kzMkT0wxRXXEN4XtTO/JHGRj07u3BO8sO
	KTrX9FMsB1LPLYhqfZKHh6MkFVxlFY2bIiGxI5+lg9j78WwxdbnMNCCMaXpobnBLuY0qW7J8ijCl3
	ZajnuujFRW1sGYI1mc5596hxpV2wFLJ8JZovV727j0VMBNj2XJjxHRdyi4S/4AyRMIDYABzov+Pew
	8pjCCbqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNaMw-00069K-My; Thu, 24 Oct 2019 10:29:26 +0000
Received: from out30-132.freemail.mail.aliyun.com ([115.124.30.132])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNaLV-0004uq-RW
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 10:28:04 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R561e4; CH=green; DM=||false|;
 FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e01422; MF=shannon.zhao@linux.alibaba.com;
 NM=1; PH=DS; RN=8; SR=0; TI=SMTPD_---0Tg2bjwt_1571912873; 
Received: from localhost(mailfrom:shannon.zhao@linux.alibaba.com
 fp:SMTPD_---0Tg2bjwt_1571912873) by smtp.aliyun-inc.com(127.0.0.1);
 Thu, 24 Oct 2019 18:27:54 +0800
From: Shannon Zhao <shannon.zhao@linux.alibaba.com>
To: kvmarm@lists.cs.columbia.edu, maz@kernel.org, james.morse@arm.com,
 suzuki.poulose@arm.com, christoffer.dall@arm.com
Subject: [PATCH RFC 6/7] KVM: arm/arm64: Move target table register into
 register table init function
Date: Thu, 24 Oct 2019 18:27:49 +0800
Message-Id: <1571912870-18471-7-git-send-email-shannon.zhao@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1571912870-18471-1-git-send-email-shannon.zhao@linux.alibaba.com>
References: <1571912870-18471-1-git-send-email-shannon.zhao@linux.alibaba.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_032758_082210_B2C9F2C9 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.132 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This prepares for making kvm arm compile as a module.

Signed-off-by: Shannon Zhao <shannon.zhao@linux.alibaba.com>
---
 arch/arm/kvm/coproc.c                | 3 +++
 arch/arm/kvm/coproc.h                | 3 +++
 arch/arm/kvm/coproc_a15.c            | 4 +---
 arch/arm/kvm/coproc_a7.c             | 4 +---
 arch/arm64/kvm/sys_regs.c            | 1 +
 arch/arm64/kvm/sys_regs.h            | 2 ++
 arch/arm64/kvm/sys_regs_generic_v8.c | 5 +----
 7 files changed, 12 insertions(+), 10 deletions(-)

diff --git a/arch/arm/kvm/coproc.c b/arch/arm/kvm/coproc.c
index 07745ee..58e48b1 100644
--- a/arch/arm/kvm/coproc.c
+++ b/arch/arm/kvm/coproc.c
@@ -1404,6 +1404,9 @@ void kvm_coproc_table_init(void)
 {
 	unsigned int i;
 
+	coproc_a7_init();
+	coproc_a15_init();
+
 	/* Make sure tables are unique and in order. */
 	BUG_ON(check_reg_table(cp15_regs, ARRAY_SIZE(cp15_regs)));
 	BUG_ON(check_reg_table(invariant_cp15, ARRAY_SIZE(invariant_cp15)));
diff --git a/arch/arm/kvm/coproc.h b/arch/arm/kvm/coproc.h
index 637065b..592118c 100644
--- a/arch/arm/kvm/coproc.h
+++ b/arch/arm/kvm/coproc.h
@@ -127,4 +127,7 @@ bool access_vm_reg(struct kvm_vcpu *vcpu,
 		   const struct coproc_params *p,
 		   const struct coproc_reg *r);
 
+void coproc_a7_init(void);
+void coproc_a15_init(void);
+
 #endif /* __ARM_KVM_COPROC_LOCAL_H__ */
diff --git a/arch/arm/kvm/coproc_a15.c b/arch/arm/kvm/coproc_a15.c
index 36bf154..ece74b2f 100644
--- a/arch/arm/kvm/coproc_a15.c
+++ b/arch/arm/kvm/coproc_a15.c
@@ -31,9 +31,7 @@
 	.num = ARRAY_SIZE(a15_regs),
 };
 
-static int __init coproc_a15_init(void)
+void coproc_a15_init(void)
 {
 	kvm_register_target_coproc_table(&a15_target_table);
-	return 0;
 }
-late_initcall(coproc_a15_init);
diff --git a/arch/arm/kvm/coproc_a7.c b/arch/arm/kvm/coproc_a7.c
index 40f643e..74616f5 100644
--- a/arch/arm/kvm/coproc_a7.c
+++ b/arch/arm/kvm/coproc_a7.c
@@ -34,9 +34,7 @@
 	.num = ARRAY_SIZE(a7_regs),
 };
 
-static int __init coproc_a7_init(void)
+void coproc_a7_init(void)
 {
 	kvm_register_target_coproc_table(&a7_target_table);
-	return 0;
 }
-late_initcall(coproc_a7_init);
diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index 2071260..9dd164d 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -2738,6 +2738,7 @@ void kvm_sys_reg_table_init(void)
 	unsigned int i;
 	struct sys_reg_desc clidr;
 
+	sys_reg_genericv8_init();
 	/* Make sure tables are unique and in order. */
 	BUG_ON(check_sysreg_table(sys_reg_descs, ARRAY_SIZE(sys_reg_descs)));
 	BUG_ON(check_sysreg_table(cp14_regs, ARRAY_SIZE(cp14_regs)));
diff --git a/arch/arm64/kvm/sys_regs.h b/arch/arm64/kvm/sys_regs.h
index 9bca031..f11cb63 100644
--- a/arch/arm64/kvm/sys_regs.h
+++ b/arch/arm64/kvm/sys_regs.h
@@ -140,6 +140,8 @@ const struct sys_reg_desc *find_reg_by_id(u64 id,
 					  const struct sys_reg_desc table[],
 					  unsigned int num);
 
+void sys_reg_genericv8_init(void);
+
 #define Op0(_x) 	.Op0 = _x
 #define Op1(_x) 	.Op1 = _x
 #define CRn(_x)		.CRn = _x
diff --git a/arch/arm64/kvm/sys_regs_generic_v8.c b/arch/arm64/kvm/sys_regs_generic_v8.c
index 2b4a3e2..3e4bacd 100644
--- a/arch/arm64/kvm/sys_regs_generic_v8.c
+++ b/arch/arm64/kvm/sys_regs_generic_v8.c
@@ -61,7 +61,7 @@ static void reset_actlr(struct kvm_vcpu *vcpu, const struct sys_reg_desc *r)
 	},
 };
 
-static int __init sys_reg_genericv8_init(void)
+void sys_reg_genericv8_init(void)
 {
 	unsigned int i;
 
@@ -81,7 +81,4 @@ static int __init sys_reg_genericv8_init(void)
 					  &genericv8_target_table);
 	kvm_register_target_sys_reg_table(KVM_ARM_TARGET_GENERIC_V8,
 					  &genericv8_target_table);
-
-	return 0;
 }
-late_initcall(sys_reg_genericv8_init);
-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
