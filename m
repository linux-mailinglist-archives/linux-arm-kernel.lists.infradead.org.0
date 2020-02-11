Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 330AE1597D3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 19:12:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y4IqyeA4KLqM6PyjMlKHqdBlmwhpAR2aFcwXsVqlL1w=; b=YXGtAWuf1iU39E
	I3QAOJERdZTSE/3tLhY15RlgJSXuiWxIuzZHr/IlnL/IRu+36BZM9QG2o9zh9aKCBQLqpXENx9Dcn
	Mo5ixT1v249nBmimyd7G9sLVq6iwMTB7KzSjaKO+MtzeREWTA1xIZumXDnezs3Qyt05vsh6QACcY4
	OG7j7JTxm3kZmtF6uHwgT+j+3Sz//bKGNkqTp/OcS5YoeJsddmIFL7qix3gI9Sj62v1tV73/dHaTq
	4o3wkYWP+hPxRYS5JxGzXZaI5hNIWCVyb9lgb+KscVNxlqb4yE7lhd10jBXdsBw+yR0l1QsalA1Fg
	REa+7cGlDGBkKFz9UH3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1a11-00073L-QW; Tue, 11 Feb 2020 18:12:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1ZiR-0002rO-VL
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 17:52:57 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1FBD9208C3;
 Tue, 11 Feb 2020 17:52:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581443575;
 bh=CA4QFDAvsJdDu0CZWxaYKhtPg1aoz71bH2Rea05f1TE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=1PvbmRKVluhJPL3BGhvEy54kT1nMoI5UCQbstp7xIpxaqXujz4yt2md6HYkCNsG/9
 PsHr+7jZdL//HiI6MPR22kDumTGQuL4R2VRcdR1AO0byKD7j4tNfohvNKD6Wge67Cy
 H47bpRN9affBJTJHr2HUpga9KPbciqK//Xlgl7zQ=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j1Zfm-004O7k-9X; Tue, 11 Feb 2020 17:50:10 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v2 29/94] KVM: arm64: nv: Forward debug traps to the nested
 guest
Date: Tue, 11 Feb 2020 17:48:33 +0000
Message-Id: <20200211174938.27809-30-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200211174938.27809-1-maz@kernel.org>
References: <20200211174938.27809-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, andre.przywara@arm.com,
 christoffer.dall@arm.com, Dave.Martin@arm.com, jintack@cs.columbia.edu,
 alexandru.elisei@arm.com, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_095256_083614_71A410E2 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 James Morse <james.morse@arm.com>, Alexandru Elisei <alexandru.elisei@arm.com>,
 Jintack Lim <jintack@cs.columbia.edu>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On handling a debug trap, check whether we need to forward it to the
guest before handling it.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/include/asm/kvm_nested.h | 2 ++
 arch/arm64/kvm/emulate-nested.c     | 9 +++++++--
 arch/arm64/kvm/sys_regs.c           | 3 +++
 3 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_nested.h b/arch/arm64/include/asm/kvm_nested.h
index c75e4326a363..5911a713c7dd 100644
--- a/arch/arm64/include/asm/kvm_nested.h
+++ b/arch/arm64/include/asm/kvm_nested.h
@@ -11,6 +11,8 @@ static inline bool nested_virt_in_use(const struct kvm_vcpu *vcpu)
 }
 
 int handle_wfx_nested(struct kvm_vcpu *vcpu, bool is_wfe);
+extern bool __forward_traps(struct kvm_vcpu *vcpu, unsigned int reg,
+			    u64 control_bit);
 extern bool forward_traps(struct kvm_vcpu *vcpu, u64 control_bit);
 extern bool forward_nv_traps(struct kvm_vcpu *vcpu);
 
diff --git a/arch/arm64/kvm/emulate-nested.c b/arch/arm64/kvm/emulate-nested.c
index 957a4a84d802..8380ed810062 100644
--- a/arch/arm64/kvm/emulate-nested.c
+++ b/arch/arm64/kvm/emulate-nested.c
@@ -24,14 +24,14 @@
 
 #include "trace.h"
 
-bool forward_traps(struct kvm_vcpu *vcpu, u64 control_bit)
+bool __forward_traps(struct kvm_vcpu *vcpu, unsigned int reg, u64 control_bit)
 {
 	bool control_bit_set;
 
 	if (!nested_virt_in_use(vcpu))
 		return false;
 
-	control_bit_set = __vcpu_sys_reg(vcpu, HCR_EL2) & control_bit;
+	control_bit_set = __vcpu_sys_reg(vcpu, reg) & control_bit;
 	if (!vcpu_mode_el2(vcpu) && control_bit_set) {
 		kvm_inject_nested_sync(vcpu, kvm_vcpu_get_hsr(vcpu));
 		return true;
@@ -39,6 +39,11 @@ bool forward_traps(struct kvm_vcpu *vcpu, u64 control_bit)
 	return false;
 }
 
+bool forward_traps(struct kvm_vcpu *vcpu, u64 control_bit)
+{
+	return __forward_traps(vcpu, HCR_EL2, control_bit);
+}
+
 bool forward_nv_traps(struct kvm_vcpu *vcpu)
 {
 	return forward_traps(vcpu, HCR_NV);
diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index dd4f8fe143ba..435340a49634 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -672,6 +672,9 @@ static bool trap_debug_regs(struct kvm_vcpu *vcpu,
 			    struct sys_reg_params *p,
 			    const struct sys_reg_desc *r)
 {
+	if (__forward_traps(vcpu, MDCR_EL2, MDCR_EL2_TDA | MDCR_EL2_TDE))
+		return false;
+
 	access_rw(vcpu, p, r);
 	if (p->is_write)
 		vcpu->arch.flags |= KVM_ARM64_DEBUG_DIRTY;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
