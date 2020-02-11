Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3AC91597CB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 19:10:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8k73PWlG93Ax1yGxDVTlZxXJ7cl3+1WZdTvxNNrQA6Q=; b=VJUKJj/lgV9wtr
	c2H1Xzi5DamCmHt4hxMfVI83cLoEWFliKrd6/FbQ4KGuH55NqiRfF1QQBeavRbmEAdSBa/MO5xbFG
	96Ima9Hkwoxshq2dpqTQJrqceQ9IiI7+XzCDY2rWaMXrPBzP7Shk3jT7V1+qNNHFVyd+k4+XMxg/3
	KiG7c+g5ZREnA/uWRprxUUaYam9u58uBMj2nhUXMtA8abAUM2HJJ01oEcM+iBnF68DswR4q7xZ6tH
	x1c8Bc5NR2LcePb5P19zk2HrByKgTW7bcZetHU/xRAeLHEKfMV7pTeceFZC4TyArZGf0UouDALB/7
	No1nw7YnMv7yIKzLqsjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Zzq-00067f-V4; Tue, 11 Feb 2020 18:10:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1ZiK-0002ku-2u
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 17:52:49 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 78F65206CC;
 Tue, 11 Feb 2020 17:52:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581443567;
 bh=2syRWuDJzfIhjmeHULYOTlZtqJYdWIZ8ljebtdFDvB8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=wp/LuaXqiT/UXN4ujliiqSWSxfUJHNoXMMZhWIP8qPeOZ97PnWgh5aniyzsMv33Sw
 KcYsDjK/qN88AtCWGBO27Zo6QvwPlaCTxD+tsp3lxg1OwJdOXoDKKE7/VXIoq/Kxlf
 v18T2whLoAhs2vv/qOqQMSiaBXxPQkLeNOYkqkc0=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j1Zfm-004O7k-Rb; Tue, 11 Feb 2020 17:50:11 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v2 30/94] KVM: arm64: nv: Configure HCR_EL2 for nested
 virtualization
Date: Tue, 11 Feb 2020 17:48:34 +0000
Message-Id: <20200211174938.27809-31-maz@kernel.org>
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
X-CRM114-CacheID: sfid-20200211_095248_234789_90ACCFF4 
X-CRM114-Status: GOOD (  13.81  )
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

From: Jintack Lim <jintack.lim@linaro.org>

We enable nested virtualization by setting the HCR NV and NV1 bit.

When the virtual E2H bit is set, we can support EL2 register accesses
via EL1 registers from the virtual EL2 by doing trap-and-emulate. A
better alternative, however, is to allow the virtual EL2 to access EL2
register states without trap. This can be easily achieved by not traping
EL1 registers since those registers already have EL2 register states.

Signed-off-by: Jintack Lim <jintack.lim@linaro.org>
Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/kvm/hyp/switch.c | 36 +++++++++++++++++++++++++++++++++---
 1 file changed, 33 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
index ae967e274e08..fd4085ebf062 100644
--- a/arch/arm64/kvm/hyp/switch.c
+++ b/arch/arm64/kvm/hyp/switch.c
@@ -151,9 +151,39 @@ static void __hyp_text __activate_traps(struct kvm_vcpu *vcpu)
 	if (cpus_have_const_cap(ARM64_WORKAROUND_CAVIUM_TX2_219_TVM))
 		hcr |= HCR_TVM;
 
-	/* Trap VM sysreg accesses if an EL2 guest is not using VHE. */
-	if (vcpu_mode_el2(vcpu) && !vcpu_el2_e2h_is_set(vcpu))
-		hcr |= HCR_TVM | HCR_TRVM;
+	if (is_hyp_ctxt(vcpu)) {
+		hcr |= HCR_NV;
+
+		if (!vcpu_el2_e2h_is_set(vcpu)) {
+			/*
+			 * For a guest hypervisor on v8.0, trap and emulate
+			 * the EL1 virtual memory control register accesses.
+			 */
+			hcr |= HCR_TVM | HCR_TRVM | HCR_NV1;
+		} else {
+			/*
+			 * For a guest hypervisor on v8.1 (VHE), allow to
+			 * access the EL1 virtual memory control registers
+			 * natively. These accesses are to access EL2 register
+			 * states.
+			 * Note that we still need to respect the virtual
+			 * HCR_EL2 state.
+			 */
+			u64 vhcr_el2 = __vcpu_sys_reg(vcpu, HCR_EL2);
+
+			/*
+			 * We already set TVM to handle set/way cache maint
+			 * ops traps, this somewhat collides with the nested
+			 * virt trapping for nVHE. So turn this off for now
+			 * here, in the hope that VHE guests won't ever do this.
+			 * TODO: find out whether it's worth to support both
+			 * cases at the same time.
+			 */
+			hcr &= ~HCR_TVM;
+
+			hcr |= vhcr_el2 & (HCR_TVM | HCR_TRVM);
+		}
+	}
 
 	write_sysreg(hcr, hcr_el2);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
