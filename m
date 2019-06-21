Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D63714E5A5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 12:13:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FrAuyjnhuWOF8h9ZKizGzkSIWNbSAXQurCrmGLX9o1c=; b=Kqh9chucws4B4d
	waknO/4wtxK8gSqg2aAOVgOcqGjFvVjVe2C9YUPh+BhmTsYLR3DZjNXnwxG3caPVgkaMTtiMEoO/C
	tWzbJcGGhrW28F4W9Iy4WkbhHz06gqz3QUdUSWWiSapyRYlMXH++IktCvIzGQ8TmBFNTNxY+Pdq7j
	A1R33lK+3swGLYcels1RHnOO9M4gwkzhaUPw/e5xq3Mkr2J8jLxveNgCaWorwMSGODWPC8g4HvdJq
	48Fcx/soGILW9ra87JI/coONSMWkCdFXFNzNeHmgR/u/qdBJU3HM5Pjj6IdLfQM9p/YmyfAKr/q2g
	namCSjoKSfBeBlDdi8Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGYO-0000Qw-86; Fri, 21 Jun 2019 10:13:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heG2C-0000Xf-F7
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:40:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 51752142F;
 Fri, 21 Jun 2019 02:40:40 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F176A3F246;
 Fri, 21 Jun 2019 02:40:38 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH 56/59] arm64: KVM: nv: Honor SCTLR_EL2.SPAN on entering vEL2
Date: Fri, 21 Jun 2019 10:38:40 +0100
Message-Id: <20190621093843.220980-57-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190621093843.220980-1-marc.zyngier@arm.com>
References: <20190621093843.220980-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_024040_637442_DF468E7D 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Julien Thierry <julien.thierry@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 James Morse <james.morse@arm.com>, Jintack Lim <jintack@cs.columbia.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On entering vEL2, we must honor the SCTLR_EL2.SPAN bit so that
PSTATE.PAN reflect the expected setting.

Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 arch/arm64/kvm/emulate-nested.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kvm/emulate-nested.c b/arch/arm64/kvm/emulate-nested.c
index c406fd688b9f..e37af2749b38 100644
--- a/arch/arm64/kvm/emulate-nested.c
+++ b/arch/arm64/kvm/emulate-nested.c
@@ -127,9 +127,11 @@ void kvm_emulate_nested_eret(struct kvm_vcpu *vcpu)
 static void enter_el2_exception(struct kvm_vcpu *vcpu, u64 esr_el2,
 				enum exception_type type)
 {
+	u64 spsr = *vcpu_cpsr(vcpu);
+
 	trace_kvm_inject_nested_exception(vcpu, esr_el2, type);
 
-	vcpu_write_sys_reg(vcpu, *vcpu_cpsr(vcpu), SPSR_EL2);
+	vcpu_write_sys_reg(vcpu, spsr, SPSR_EL2);
 	vcpu_write_sys_reg(vcpu, *vcpu_pc(vcpu), ELR_EL2);
 	vcpu_write_sys_reg(vcpu, esr_el2, ESR_EL2);
 
@@ -137,6 +139,15 @@ static void enter_el2_exception(struct kvm_vcpu *vcpu, u64 esr_el2,
 	/* On an exception, PSTATE.SP becomes 1 */
 	*vcpu_cpsr(vcpu) = PSR_MODE_EL2h;
 	*vcpu_cpsr(vcpu) |= PSR_A_BIT | PSR_F_BIT | PSR_I_BIT | PSR_D_BIT;
+
+	/*
+	 * If SPAN is clear, set the PAN bit on exception entry
+	 * if SPAN is set, copy the PAN bit across
+	 */
+	if (!(vcpu_read_sys_reg(vcpu, SCTLR_EL2) & SCTLR_EL1_SPAN))
+		*vcpu_cpsr(vcpu) |= PSR_PAN_BIT;
+	else
+		*vcpu_cpsr(vcpu) |= (spsr & PSR_PAN_BIT);
 }
 
 /*
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
