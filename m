Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CDDD1C10B3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 12:13:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fn2ueAvKx2soc5ukwRAM0CaSelnKVqWyYbSVaNRYUqA=; b=ePbn7irCpwvR8t
	VqR6GiAL4+LaxTechd9ZErw6XIiU3TlMfON4VMQpj47Vu9sDKHnYsqc4x5XckXycJc/vf9KKBudJx
	6iqTofTMIDtEgi4Y1QGGi3IsnF8GwLGd32OyawauQTqzgk9jg7UOQdxJLnD2v7FsXBYj0FzFvBjot
	rTbFthouY3GOWnrOQbWIcgams8jIGCTQCpRk7Y2uI0F7deMSM6B+vlo6U2rNKll4jY/lak62c2kX9
	W+eBR9k0N60os69bsRUp7Vw32ThowmmW2zw47UVOZ4VicUFxV5bZYSakS/WI1yrdb8eKui6jH34s7
	MZO4qeqYO0Tq/hUEypNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUSfY-0005ED-Gv; Fri, 01 May 2020 10:13:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUSeV-0004J6-V0
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 10:12:17 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 89C772192A;
 Fri,  1 May 2020 10:12:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588327935;
 bh=FWdojJjPTloAAYOA1G94z/BC4dOQr1JzzPfiDjmSZ/s=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=g30UCYx5CnN7AuBqp213+FU87CU30LjAik4HXzjMnOd6cerBQdEldONUb07oKgEXp
 qk5BOZB8FtjtrZ3HGVE7+2NoYFAO2gpnFcgYQ4w56PtI7K+Fgolrb/IH/pwYwgmWkG
 nuvVsAx3LgLyFtaRZE22edXOF02HRyemXMAD0Okw=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jUSeU-008J3K-08; Fri, 01 May 2020 11:12:14 +0100
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH 4/4] KVM: arm64: Fix 32bit PC wrap-around
Date: Fri,  1 May 2020 11:12:04 +0100
Message-Id: <20200501101204.364798-5-maz@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200501101204.364798-1-maz@kernel.org>
References: <20200501101204.364798-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: pbonzini@redhat.com, drjones@redhat.com, maskray@google.com,
 mark.rutland@arm.com, ndesaulniers@google.com, will@kernel.org,
 yuzenghui@huawei.com, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, stable@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_031216_028585_683102BD 
X-CRM114-Status: GOOD (  14.89  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Jones <drjones@redhat.com>,
 kvm@vger.kernel.org, Fangrui Song <maskray@google.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>, stable@vger.kernel.org,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Zenghui Yu <yuzenghui@huawei.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In the unlikely event that a 32bit vcpu traps into the hypervisor
on an instruction that is located right at the end of the 32bit
range, the emulation of that instruction is going to increment
PC past the 32bit range. This isn't great, as userspace can then
observe this value and get a bit confused.

Conversly, userspace can do things like (in the context of a 64bit
guest that is capable of 32bit EL0) setting PSTATE to AArch64-EL0,
set PC to a 64bit value, change PSTATE to AArch32-USR, and observe
that PC hasn't been truncated. More confusion.

Fix both by:
- truncating PC increments for 32bit guests
- sanitizing all 32bit regs every time a core reg is changed by
  userspace, and that PSTATE indicates a 32bit mode.

Cc: stable@vger.kernel.org
Acked-by: Will Deacon <will@kernel.org>
Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/kvm/guest.c     | 7 +++++++
 virt/kvm/arm/hyp/aarch32.c | 8 ++++++--
 2 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kvm/guest.c b/arch/arm64/kvm/guest.c
index 23ebe51410f0..50a279d3ddd7 100644
--- a/arch/arm64/kvm/guest.c
+++ b/arch/arm64/kvm/guest.c
@@ -200,6 +200,13 @@ static int set_core_reg(struct kvm_vcpu *vcpu, const struct kvm_one_reg *reg)
 	}
 
 	memcpy((u32 *)regs + off, valp, KVM_REG_SIZE(reg->id));
+
+	if (*vcpu_cpsr(vcpu) & PSR_MODE32_BIT) {
+		int i;
+
+		for (i = 0; i < 16; i++)
+			*vcpu_reg32(vcpu, i) = (u32)*vcpu_reg32(vcpu, i);
+	}
 out:
 	return err;
 }
diff --git a/virt/kvm/arm/hyp/aarch32.c b/virt/kvm/arm/hyp/aarch32.c
index d31f267961e7..25c0e47d57cb 100644
--- a/virt/kvm/arm/hyp/aarch32.c
+++ b/virt/kvm/arm/hyp/aarch32.c
@@ -125,12 +125,16 @@ static void __hyp_text kvm_adjust_itstate(struct kvm_vcpu *vcpu)
  */
 void __hyp_text kvm_skip_instr32(struct kvm_vcpu *vcpu, bool is_wide_instr)
 {
+	u32 pc = *vcpu_pc(vcpu);
 	bool is_thumb;
 
 	is_thumb = !!(*vcpu_cpsr(vcpu) & PSR_AA32_T_BIT);
 	if (is_thumb && !is_wide_instr)
-		*vcpu_pc(vcpu) += 2;
+		pc += 2;
 	else
-		*vcpu_pc(vcpu) += 4;
+		pc += 4;
+
+	*vcpu_pc(vcpu) = pc;
+
 	kvm_adjust_itstate(vcpu);
 }
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
