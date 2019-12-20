Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E3B127F65
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 16:34:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1cUeHDzaNV8b7L2raE+N7+ataVhPGcI3fUBDxPCrFCE=; b=nWURQp7Gr6vI3e
	GojJDA1eKmFjjqmpNf6VycFMsFI0idzeGo8pETtIh5/JaoA0UPsoJSZ97fkCgtdpmtPpoAL+6m8dp
	qDMIT7kFvpI48c/g8ajPudqBwogsvF+iaaRTbjZwCyJP3G0SeZq6Ez+WuXGLFm3BxsLV5LD7Ny4s2
	drRucXvtELduXhNRWP7rPsiuohQ8y60IJ0mXTM7tpzUXwt08Fh/SPQq47wz09uwW/e4g9a3CHj1E/
	VbO82Xuzj7Flj+XKul/zW0fysndcoMkwqiroXCLCVnMlWbNcXBIFKcaTOzbhFnfN/voi5c/Z6snXt
	8Fo0rxOcc5ga9DDmGM3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiKI7-0007QF-0i; Fri, 20 Dec 2019 15:34:11 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiKHA-0006hN-Tz
 for linux-arm-kernel@bombadil.infradead.org; Fri, 20 Dec 2019 15:33:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tyXcipWvSgJKvjvVdDvo593Z3XPmHSDMoXkO3Ii76Qg=; b=2JRgZF1y6jC924jl7V0Cc+Rcwq
 AVAhLRc4HDL1gUkqovyKR9JcpMrPePLA4mN7gUkeSQvXvGv/DRoWvaoB05x/lBcS3Zn8MzERYahqd
 ml7o4iVkfnpoCwEJQXn7D9OUr7fbaErfKqS3+8Q+1HwY9Cv8T05307jGwx1YgAFVC+T4UhEBcF+jk
 +7hSdezg58xSg5JGh5Tjm4ewy383mMEakiQM6iUVDsy7Tq4YtoIjV2o4hjBf1Tylnl0VLcg0nLQoU
 lfx8WtJx8iCugokySIN5suR+Ww5VjLgxkLNitRES+ZqxGaX5SeyhgbkY0WayampvjqN6WDgS+4vhu
 hXHE9f+g==;
Received: from foss.arm.com ([217.140.110.172])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiJIv-000439-7E
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 14:30:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3A33711D4;
 Fri, 20 Dec 2019 06:30:54 -0800 (PST)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 61B7D3F718;
 Fri, 20 Dec 2019 06:30:52 -0800 (PST)
From: Andrew Murray <andrew.murray@arm.com>
To: Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>
Subject: [PATCH v2 10/18] arm64: KVM/debug: use EL1&0 stage 1 translation
 regime
Date: Fri, 20 Dec 2019 14:30:17 +0000
Message-Id: <20191220143025.33853-11-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191220143025.33853-1-andrew.murray@arm.com>
References: <20191220143025.33853-1-andrew.murray@arm.com>
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sudeep Holla <sudeep.holla@arm.com>

Now that we have all the save/restore mechanism in place, lets enable
the translation regime used by buffer from EL2 stage 1 to EL1 stage 1
on VHE systems.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
[ Reword commit, don't trap to EL2 ]
Signed-off-by: Andrew Murray <andrew.murray@arm.com>
---
 arch/arm64/kvm/hyp/switch.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
index 67b7c160f65b..6c153b79829b 100644
--- a/arch/arm64/kvm/hyp/switch.c
+++ b/arch/arm64/kvm/hyp/switch.c
@@ -100,6 +100,7 @@ static void activate_traps_vhe(struct kvm_vcpu *vcpu)
 
 	write_sysreg(val, cpacr_el1);
 
+	write_sysreg(vcpu->arch.mdcr_el2 | 3 << MDCR_EL2_E2PB_SHIFT, mdcr_el2);
 	write_sysreg(kvm_get_hyp_vector(), vbar_el1);
 }
 NOKPROBE_SYMBOL(activate_traps_vhe);
@@ -117,6 +118,7 @@ static void __hyp_text __activate_traps_nvhe(struct kvm_vcpu *vcpu)
 		__activate_traps_fpsimd32(vcpu);
 	}
 
+	write_sysreg(vcpu->arch.mdcr_el2 | 3 << MDCR_EL2_E2PB_SHIFT, mdcr_el2);
 	write_sysreg(val, cptr_el2);
 
 	if (cpus_have_const_cap(ARM64_WORKAROUND_1319367)) {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
