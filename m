Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C7E514DB97
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 14:27:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3mv0BGtcnWWuo7kdFZ4L8HIH5QbBp6Mj9GzkV4fTI5s=; b=PdLudgAJhLavuJ
	zkQBK05GAmvXnYjJb1pA5LTVQ6lCbw/xN2LqKQD50NhXEKBTiiRuCmjDW3ahI1AezydGhiDRm8gKA
	ZRZUTikaHJ+zjVxisFhmnzNNOjZNJX5drtzW/H/88cBTgC/yFYrhVz8eMxFVdC2WIiduVpp7ER274
	f2orvG+6DkSDaEx2SEfMTSdtcARXjfsbXtSmvVkJP/mC8eJv+iBwuAN6L/ssRXE970rGKOX07UxTt
	9g+rOaAgBaKHaUJMcAxIYwfsRwt/fBP2gpBXtSUFS9EIPfXzN09zKJHpqSXX7b6TgE8zRWwFpjrdd
	2uFOGVCugT0C//dbNtiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix9qO-0004Vw-Kw; Thu, 30 Jan 2020 13:26:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix9pk-00049X-EH
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 13:26:14 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 16E0D2083E;
 Thu, 30 Jan 2020 13:26:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580390770;
 bh=OhoS0JanLTIxVzTGAKDyNXY3oCD/f0UsDdcPTiRDT8s=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DdU75f+3ELw66IIp8E7L6aUqnGFFtL1DLdNBC+YFFOG0RzLCAeAotvkuD3NSF+8XR
 J7tIRQKjKc9KOQxY4ifUpi3w+hYHHzLgqQjmYoMsNL5/BD0nstFKpg6KK9OkOcsuOi
 1zCh62cyu52RBFNc/OgDzQpRim4ENzrK262oM2Bg=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1ix9pg-002BmW-Br; Thu, 30 Jan 2020 13:26:08 +0000
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH 01/23] KVM: arm64: Only sign-extend MMIO up to register width
Date: Thu, 30 Jan 2020 13:25:36 +0000
Message-Id: <20200130132558.10201-2-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200130132558.10201-1-maz@kernel.org>
References: <20200130132558.10201-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: pbonzini@redhat.com, alexandru.elisei@arm.com,
 drjones@redhat.com, andrew.murray@arm.com, beata.michalska@linaro.org,
 christoffer.dall@arm.com, eric.auger@redhat.com, gshan@redhat.com,
 wanghaibin.wang@huawei.com, james.morse@arm.com, broonie@kernel.org,
 mark.rutland@arm.com, rmk+kernel@armlinux.org.uk,
 shannon.zhao@linux.alibaba.com, steven.price@arm.com, will@kernel.org,
 yuehaibing@huawei.com, yuzenghui@huawei.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, stable@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_052612_530511_A03830E9 
X-CRM114-Status: GOOD (  16.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Gavin Shan <gshan@redhat.com>,
 Beata Michalska <beata.michalska@linaro.org>, kvm@vger.kernel.org,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 YueHaibing <yuehaibing@huawei.com>, Steven Price <steven.price@arm.com>,
 Zenghui Yu <yuzenghui@huawei.com>, Haibin Wang <wanghaibin.wang@huawei.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Andrew Jones <drjones@redhat.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Shannon Zhao <shannon.zhao@linux.alibaba.com>,
 Eric Auger <eric.auger@redhat.com>, Russell King <rmk+kernel@armlinux.org.uk>,
 Mark Brown <broonie@kernel.org>, Alexandru Elisei <alexandru.elisei@arm.com>,
 linux-arm-kernel@lists.infradead.org,
 Christoffer Dall <christoffer.dall@arm.com>, stable@vger.kernel.org,
 James Morse <james.morse@arm.com>, Andrew Murray <andrew.murray@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Christoffer Dall <christoffer.dall@arm.com>

On AArch64 you can do a sign-extended load to either a 32-bit or 64-bit
register, and we should only sign extend the register up to the width of
the register as specified in the operation (by using the 32-bit Wn or
64-bit Xn register specifier).

As it turns out, the architecture provides this decoding information in
the SF ("Sixty-Four" -- how cute...) bit.

Let's take advantage of this with the usual 32-bit/64-bit header file
dance and do the right thing on AArch64 hosts.

Signed-off-by: Christoffer Dall <christoffer.dall@arm.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
Cc: stable@vger.kernel.org
Link: https://lore.kernel.org/r/20191212195055.5541-1-christoffer.dall@arm.com
---
 arch/arm/include/asm/kvm_emulate.h   | 5 +++++
 arch/arm/include/asm/kvm_mmio.h      | 2 ++
 arch/arm64/include/asm/kvm_emulate.h | 5 +++++
 arch/arm64/include/asm/kvm_mmio.h    | 6 ++----
 virt/kvm/arm/mmio.c                  | 6 ++++++
 5 files changed, 20 insertions(+), 4 deletions(-)

diff --git a/arch/arm/include/asm/kvm_emulate.h b/arch/arm/include/asm/kvm_emulate.h
index 9b118516d2db..fe55d8737a11 100644
--- a/arch/arm/include/asm/kvm_emulate.h
+++ b/arch/arm/include/asm/kvm_emulate.h
@@ -182,6 +182,11 @@ static inline bool kvm_vcpu_dabt_issext(struct kvm_vcpu *vcpu)
 	return kvm_vcpu_get_hsr(vcpu) & HSR_SSE;
 }
 
+static inline bool kvm_vcpu_dabt_issf(const struct kvm_vcpu *vcpu)
+{
+	return false;
+}
+
 static inline int kvm_vcpu_dabt_get_rd(struct kvm_vcpu *vcpu)
 {
 	return (kvm_vcpu_get_hsr(vcpu) & HSR_SRT_MASK) >> HSR_SRT_SHIFT;
diff --git a/arch/arm/include/asm/kvm_mmio.h b/arch/arm/include/asm/kvm_mmio.h
index 7c0eddb0adb2..32fbf82e3ebc 100644
--- a/arch/arm/include/asm/kvm_mmio.h
+++ b/arch/arm/include/asm/kvm_mmio.h
@@ -14,6 +14,8 @@
 struct kvm_decode {
 	unsigned long rt;
 	bool sign_extend;
+	/* Not used on 32-bit arm */
+	bool sixty_four;
 };
 
 void kvm_mmio_write_buf(void *buf, unsigned int len, unsigned long data);
diff --git a/arch/arm64/include/asm/kvm_emulate.h b/arch/arm64/include/asm/kvm_emulate.h
index 5efe5ca8fecf..f407b6bdad2e 100644
--- a/arch/arm64/include/asm/kvm_emulate.h
+++ b/arch/arm64/include/asm/kvm_emulate.h
@@ -283,6 +283,11 @@ static inline bool kvm_vcpu_dabt_issext(const struct kvm_vcpu *vcpu)
 	return !!(kvm_vcpu_get_hsr(vcpu) & ESR_ELx_SSE);
 }
 
+static inline bool kvm_vcpu_dabt_issf(const struct kvm_vcpu *vcpu)
+{
+	return !!(kvm_vcpu_get_hsr(vcpu) & ESR_ELx_SF);
+}
+
 static inline int kvm_vcpu_dabt_get_rd(const struct kvm_vcpu *vcpu)
 {
 	return (kvm_vcpu_get_hsr(vcpu) & ESR_ELx_SRT_MASK) >> ESR_ELx_SRT_SHIFT;
diff --git a/arch/arm64/include/asm/kvm_mmio.h b/arch/arm64/include/asm/kvm_mmio.h
index 02b5c48fd467..b204501a0c39 100644
--- a/arch/arm64/include/asm/kvm_mmio.h
+++ b/arch/arm64/include/asm/kvm_mmio.h
@@ -10,13 +10,11 @@
 #include <linux/kvm_host.h>
 #include <asm/kvm_arm.h>
 
-/*
- * This is annoying. The mmio code requires this, even if we don't
- * need any decoding. To be fixed.
- */
 struct kvm_decode {
 	unsigned long rt;
 	bool sign_extend;
+	/* Witdth of the register accessed by the faulting instruction is 64-bits */
+	bool sixty_four;
 };
 
 void kvm_mmio_write_buf(void *buf, unsigned int len, unsigned long data);
diff --git a/virt/kvm/arm/mmio.c b/virt/kvm/arm/mmio.c
index 70d3b449692c..1bb71acd53f2 100644
--- a/virt/kvm/arm/mmio.c
+++ b/virt/kvm/arm/mmio.c
@@ -105,6 +105,9 @@ int kvm_handle_mmio_return(struct kvm_vcpu *vcpu, struct kvm_run *run)
 			data = (data ^ mask) - mask;
 		}
 
+		if (!vcpu->arch.mmio_decode.sixty_four)
+			data = data & 0xffffffff;
+
 		trace_kvm_mmio(KVM_TRACE_MMIO_READ, len, run->mmio.phys_addr,
 			       &data);
 		data = vcpu_data_host_to_guest(vcpu, data, len);
@@ -125,6 +128,7 @@ static int decode_hsr(struct kvm_vcpu *vcpu, bool *is_write, int *len)
 	unsigned long rt;
 	int access_size;
 	bool sign_extend;
+	bool sixty_four;
 
 	if (kvm_vcpu_dabt_iss1tw(vcpu)) {
 		/* page table accesses IO mem: tell guest to fix its TTBR */
@@ -138,11 +142,13 @@ static int decode_hsr(struct kvm_vcpu *vcpu, bool *is_write, int *len)
 
 	*is_write = kvm_vcpu_dabt_iswrite(vcpu);
 	sign_extend = kvm_vcpu_dabt_issext(vcpu);
+	sixty_four = kvm_vcpu_dabt_issf(vcpu);
 	rt = kvm_vcpu_dabt_get_rd(vcpu);
 
 	*len = access_size;
 	vcpu->arch.mmio_decode.sign_extend = sign_extend;
 	vcpu->arch.mmio_decode.rt = rt;
+	vcpu->arch.mmio_decode.sixty_four = sixty_four;
 
 	return 0;
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
