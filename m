Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A03C51597BF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 19:09:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CZarh711BWx5Y2cBb05G2y4GDD0ZyBA9DIuohjgbxlg=; b=bGEHhIUgI9fXgX
	AFnMygIXF4HrnocUi7KW566eeSf+DUXpLt7eWnz4LIqz1y12VrEAmvtDBVEdO5dqEeodO+QbiUOps
	98/G/9p/MtUQQzWuyXchaGhLW8asXC75ucRWJ1/okEgyUvtHk22C09I+MG5dWAJ2n7mTyEigPEpRm
	JKADhrQ5vWKkPg9Y0+9GlFCKnAkNlVOqjx6FsSFUUIubL7gKTuX7f/BBPR1U89bK1rZsXIcr7CKey
	MxYcxd1/V4Tizpv9gQbGzqrTSBxT1vAp7bhlG6IUQvbO6BRC3uIxSE2p1x+sOdfW3gt2JN+8nLjhs
	U/kPR8BIHr1Zyjv0UVIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Zy3-0003jC-7J; Tue, 11 Feb 2020 18:09:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1ZiA-0002da-Ts
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 17:52:41 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2D66B206CC;
 Tue, 11 Feb 2020 17:52:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581443558;
 bh=OwafM765g44dtTZG0G56l5d9Hi2ub1Xv9jM+/4NgrPQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=OwQooSZohfofco8TorjBM9oVwEOkbR1XgI4BStYPcGYGSFNoIWJN8p1q2ejnfdyK4
 nY7d4jOXzbaVy5pLhO2Eup3mYMf8NpneB4N90OT9gpHA0M3pmX+B/SvD0YEDKsZO3I
 IXyrtFWraDVObSh3HmgF7E67w7hoRQbx9+OH7hbY=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j1Zfc-004O7k-0L; Tue, 11 Feb 2020 17:50:00 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v2 11/94] KVM: arm64: nv: Handle trapped ERET from virtual EL2
Date: Tue, 11 Feb 2020 17:48:15 +0000
Message-Id: <20200211174938.27809-12-maz@kernel.org>
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
X-CRM114-CacheID: sfid-20200211_095239_114709_0FCB4A0B 
X-CRM114-Status: GOOD (  12.88  )
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

From: Christoffer Dall <christoffer.dall@arm.com>

When a guest hypervisor running virtual EL2 in EL1 executes an ERET
instruction, we will have set HCR_EL2.NV which traps ERET to EL2, so
that we can emulate the exception return in software.

Signed-off-by: Christoffer Dall <christoffer.dall@arm.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/include/asm/esr.h     |  5 +++++
 arch/arm64/include/asm/kvm_arm.h |  2 +-
 arch/arm64/kvm/handle_exit.c     | 10 ++++++++++
 3 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/esr.h b/arch/arm64/include/asm/esr.h
index cb29253ae86b..b15921dc889a 100644
--- a/arch/arm64/include/asm/esr.h
+++ b/arch/arm64/include/asm/esr.h
@@ -249,6 +249,11 @@
 		(((e) & ESR_ELx_SYS64_ISS_OP2_MASK) >>		\
 		 ESR_ELx_SYS64_ISS_OP2_SHIFT))
 
+/* ISS field definitions for ERET/ERETAA/ERETAB trapping */
+
+#define ESR_ELx_ERET_ISS_ERET_ERETAx	0x2
+#define ESR_ELx_ERET_ISS_ERETA_ERATAB	0x1
+
 /*
  * ISS field definitions for floating-point exception traps
  * (FP_EXC_32/FP_EXC_64).
diff --git a/arch/arm64/include/asm/kvm_arm.h b/arch/arm64/include/asm/kvm_arm.h
index 93469ac81fef..084844ec0b06 100644
--- a/arch/arm64/include/asm/kvm_arm.h
+++ b/arch/arm64/include/asm/kvm_arm.h
@@ -322,7 +322,7 @@
 	ECN(SP_ALIGN), ECN(FP_EXC32), ECN(FP_EXC64), ECN(SERROR), \
 	ECN(BREAKPT_LOW), ECN(BREAKPT_CUR), ECN(SOFTSTP_LOW), \
 	ECN(SOFTSTP_CUR), ECN(WATCHPT_LOW), ECN(WATCHPT_CUR), \
-	ECN(BKPT32), ECN(VECTOR32), ECN(BRK64)
+	ECN(BKPT32), ECN(VECTOR32), ECN(BRK64), ECN(ERET)
 
 #define CPACR_EL1_FPEN		(3 << 20)
 #define CPACR_EL1_TTA		(1 << 28)
diff --git a/arch/arm64/kvm/handle_exit.c b/arch/arm64/kvm/handle_exit.c
index be5acf72c81e..c3398e6ebbbe 100644
--- a/arch/arm64/kvm/handle_exit.c
+++ b/arch/arm64/kvm/handle_exit.c
@@ -210,6 +210,15 @@ static int kvm_handle_ptrauth(struct kvm_vcpu *vcpu, struct kvm_run *run)
 	return 1;
 }
 
+static int kvm_handle_eret(struct kvm_vcpu *vcpu, struct kvm_run *run)
+{
+	if (kvm_vcpu_get_hsr(vcpu) & ESR_ELx_ERET_ISS_ERET_ERETAx)
+		return kvm_handle_ptrauth(vcpu, run);
+
+	kvm_emulate_nested_eret(vcpu);
+	return 1;
+}
+
 static exit_handle_fn arm_exit_handlers[] = {
 	[0 ... ESR_ELx_EC_MAX]	= kvm_handle_unknown_ec,
 	[ESR_ELx_EC_WFx]	= kvm_handle_wfx,
@@ -224,6 +233,7 @@ static exit_handle_fn arm_exit_handlers[] = {
 	[ESR_ELx_EC_SMC64]	= handle_smc,
 	[ESR_ELx_EC_SYS64]	= kvm_handle_sys_reg,
 	[ESR_ELx_EC_SVE]	= handle_sve,
+	[ESR_ELx_EC_ERET]	= kvm_handle_eret,
 	[ESR_ELx_EC_IABT_LOW]	= kvm_handle_guest_abort,
 	[ESR_ELx_EC_DABT_LOW]	= kvm_handle_guest_abort,
 	[ESR_ELx_EC_SOFTSTP_LOW]= kvm_handle_guest_debug,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
