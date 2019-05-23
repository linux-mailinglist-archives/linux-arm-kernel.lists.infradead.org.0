Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B664627AC5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 12:36:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nuzWoEoeZSYv/30YEqncq6A7Kn+LGldbRmaOnSLqntA=; b=OPy6znLurxbh/Ux8Z9fTLeMAi9
	Jgr6BMW3dZU57sRgosAdk3ImDBd12V6KorFLZtwT5lu3PpXVBCrUQ/nbIlfDT6XjulGS4KkmUX4sN
	4D93thJ9gNgZ/8RjPE5qkk8MgOql9kD7VoXDH1eOnyz6sHoBWBfqkEOoxUlCTelRgLxC2cEz0UIQA
	1mbWFu4OgEdIxOXE62xQwLq3vnGMeilht0OlybLZrF5KDzP5WfffIo+ppXkf+VB9RhL+/5ToWvbZM
	eyMCjDBVtfQuW9naJ7cTmyVXv3XtZH5r0FgFIsYwsVtaQdnkfleBO42YJRKmXoXCUlfFZ4EmMakW7
	lqVwg5Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTl5i-0002A4-5y; Thu, 23 May 2019 10:36:54 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTl4R-0000dN-5F
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 10:35:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 04C95341;
 Thu, 23 May 2019 03:35:35 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E58CD3F718;
 Thu, 23 May 2019 03:35:32 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: kvmarm@lists.cs.columbia.edu,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 06/15] arm64: KVM/VHE: enable the use PMSCR_EL12 on VHE
 systems
Date: Thu, 23 May 2019 11:34:53 +0100
Message-Id: <20190523103502.25925-7-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190523103502.25925-1-sudeep.holla@arm.com>
References: <20190523103502.25925-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_033535_203546_FD637638 
X-CRM114-Status: GOOD (  13.24  )
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

Currently, we are just using PMSCR_EL1 in the host for non VHE systems.
We already have the {read,write}_sysreg_el*() accessors for accessing
particular ELs' sysregs in the presence of VHE.

Lets just define PMSCR_EL12 and start making use of it here which will
access the right register on both VHE and non VHE systems. This change
is required to add SPE guest support on VHE systems.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 arch/arm64/include/asm/kvm_hyp.h | 1 +
 arch/arm64/kvm/hyp/debug-sr.c    | 6 +++---
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_hyp.h b/arch/arm64/include/asm/kvm_hyp.h
index f61378b77c9f..782955db61dd 100644
--- a/arch/arm64/include/asm/kvm_hyp.h
+++ b/arch/arm64/include/asm/kvm_hyp.h
@@ -103,6 +103,7 @@
 #define afsr1_EL12              sys_reg(3, 5, 5, 1, 1)
 #define esr_EL12                sys_reg(3, 5, 5, 2, 0)
 #define far_EL12                sys_reg(3, 5, 6, 0, 0)
+#define SYS_PMSCR_EL12          sys_reg(3, 5, 9, 9, 0)
 #define mair_EL12               sys_reg(3, 5, 10, 2, 0)
 #define amair_EL12              sys_reg(3, 5, 10, 3, 0)
 #define vbar_EL12               sys_reg(3, 5, 12, 0, 0)
diff --git a/arch/arm64/kvm/hyp/debug-sr.c b/arch/arm64/kvm/hyp/debug-sr.c
index 50009766e5e5..fa51236ebcb3 100644
--- a/arch/arm64/kvm/hyp/debug-sr.c
+++ b/arch/arm64/kvm/hyp/debug-sr.c
@@ -89,8 +89,8 @@ static void __hyp_text __debug_save_spe_nvhe(u64 *pmscr_el1)
 		return;
 
 	/* Yes; save the control register and disable data generation */
-	*pmscr_el1 = read_sysreg_s(SYS_PMSCR_EL1);
-	write_sysreg_s(0, SYS_PMSCR_EL1);
+	*pmscr_el1 = read_sysreg_el1_s(SYS_PMSCR);
+	write_sysreg_el1_s(0, SYS_PMSCR);
 	isb();
 
 	/* Now drain all buffered data to memory */
@@ -107,7 +107,7 @@ static void __hyp_text __debug_restore_spe_nvhe(u64 pmscr_el1)
 	isb();
 
 	/* Re-enable data generation */
-	write_sysreg_s(pmscr_el1, SYS_PMSCR_EL1);
+	write_sysreg_el1_s(pmscr_el1, SYS_PMSCR);
 }
 
 static void __hyp_text __debug_save_state(struct kvm_vcpu *vcpu,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
