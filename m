Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E53F11EE576
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 15:35:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hBrW0Fm4Ggi/mKUb/16SZJ7H6j6vK2V6+E5tMZNS3Og=; b=rt24MAQejmOFZG
	Pl7D5E+BFoYGfG1RjIWPyvxe0OpSSk0eF519M3winPnZxwOhiGZhpDAr+8TycfM5QaUd3B28x8snZ
	p1DgMOrZHn93+mBmtldhnFyDw36qteUiH3f+UWIkoN/zkD1kj/Wq6LX9cW/K4GxMnhHuI5EpTSLgn
	ookzKUBiZHrYiZAbMCLAX4lUYwxzma8XB2FIGXrN92SLgEskyW8rFJRTp7mLOUHt42mtHctRh6mS3
	X+0ytRyrHmC2zaDn4Wl0ULtPmfvifJn8iUXr5zPReCxpYG/lt1d01iFw2RGS/dG7W0tEUvBQTkZS9
	gAjD2+sZ2tVRkjuzw1Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgq1K-00018t-2K; Thu, 04 Jun 2020 13:34:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgq0V-0000Qk-9R
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 13:34:09 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DAD8F20829;
 Thu,  4 Jun 2020 13:34:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591277647;
 bh=rotJuRrjsUR85tXo2BdW5+A/L5Ugu4nDYunoj5XseZ4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=UCGPpRD9IJ9+GPQ3TWSKTU05OHcM/VphXHokwWzbhrdpLFx/eDNRYwqji0n/HGzVV
 cMjCXN35g+TBwjZkQS/5sIya4Vp88R2C6w6htT97ukxGsKKmGjhQTipyHOHCIqkaQh
 pKPoUb5LNgL6imf5v3AJpUNMyapbYKQ0Erphzs/o=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jgq0T-000G3O-Er; Thu, 04 Jun 2020 14:34:05 +0100
From: Marc Zyngier <maz@kernel.org>
To: kvm@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/3] KVM: arm64: Enforce PtrAuth being disabled if not
 advertized
Date: Thu,  4 Jun 2020 14:33:54 +0100
Message-Id: <20200604133354.1279412-4-maz@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200604133354.1279412-1-maz@kernel.org>
References: <20200604133354.1279412-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: kvm@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com, will@kernel.org,
 catalin.marinas@arm.com, mark.rutland@arm.com, kernel-team@android.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_063407_364300_07AFA60D 
X-CRM114-Status: GOOD (  17.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, kernel-team@android.com,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>,
 Will Deacon <will@kernel.org>, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Even if we don't expose PtrAuth to a guest, the guest can still
write to its SCTIRLE_1 register and set the En{I,D}{A,B} bits
and execute PtrAuth instructions from the NOP space. This has
the effect of trapping to EL2, and we currently inject an UNDEF.
This is definitely the wrong thing to do, as the architecture says
that these instructions should behave as NOPs.

Instead, we can simply reset the offending SCTLR_EL1 bits to
zero, and resume the guest. It can still observe the SCTLR bits
being set and then being cleared by magic, but that's much better
than delivering an unexpected extension.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/kvm/handle_exit.c | 12 ------------
 arch/arm64/kvm/hyp/switch.c  | 18 ++++++++++++++++--
 2 files changed, 16 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/kvm/handle_exit.c b/arch/arm64/kvm/handle_exit.c
index 5a02d4c90559..98d8adf6f865 100644
--- a/arch/arm64/kvm/handle_exit.c
+++ b/arch/arm64/kvm/handle_exit.c
@@ -162,17 +162,6 @@ static int handle_sve(struct kvm_vcpu *vcpu, struct kvm_run *run)
 	return 1;
 }
 
-/*
- * Guest usage of a ptrauth instruction (which the guest EL1 did not turn into
- * a NOP). If we get here, it is that we didn't fixup ptrauth on exit, and all
- * that we can do is give the guest an UNDEF.
- */
-static int kvm_handle_ptrauth(struct kvm_vcpu *vcpu, struct kvm_run *run)
-{
-	kvm_inject_undefined(vcpu);
-	return 1;
-}
-
 static exit_handle_fn arm_exit_handlers[] = {
 	[0 ... ESR_ELx_EC_MAX]	= kvm_handle_unknown_ec,
 	[ESR_ELx_EC_WFx]	= kvm_handle_wfx,
@@ -195,7 +184,6 @@ static exit_handle_fn arm_exit_handlers[] = {
 	[ESR_ELx_EC_BKPT32]	= kvm_handle_guest_debug,
 	[ESR_ELx_EC_BRK64]	= kvm_handle_guest_debug,
 	[ESR_ELx_EC_FP_ASIMD]	= handle_no_fpsimd,
-	[ESR_ELx_EC_PAC]	= kvm_handle_ptrauth,
 };
 
 static exit_handle_fn kvm_get_exit_handler(struct kvm_vcpu *vcpu)
diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
index 2a50b3771c3b..fc09c3dfa466 100644
--- a/arch/arm64/kvm/hyp/switch.c
+++ b/arch/arm64/kvm/hyp/switch.c
@@ -503,8 +503,22 @@ static bool __hyp_text __hyp_handle_ptrauth(struct kvm_vcpu *vcpu)
 	struct kvm_cpu_context *ctxt;
 	u64 val;
 
-	if (!vcpu_has_ptrauth(vcpu))
-		return false;
+	if (!vcpu_has_ptrauth(vcpu)) {
+		if (ec != ESR_ELx_EC_PAC)
+			return false;
+
+		/*
+		 * Interesting situation: the guest has enabled PtrAuth,
+		 * despite KVM not advertising it. Fix SCTLR_El1 on behalf
+		 * of the guest (the bits should behave as RES0 anyway).
+		 */
+		val = read_sysreg_el1(SYS_SCTLR);
+		val &= ~(SCTLR_ELx_ENIA | SCTLR_ELx_ENIB |
+			 SCTLR_ELx_ENDA | SCTLR_ELx_ENDB);
+		write_sysreg_el1(val, SYS_SCTLR);
+
+		return true;
+	}
 
 	switch (ec) {
 	case ESR_ELx_EC_PAC:
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
