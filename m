Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56BE3C300A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 11:21:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v75AMELSR1xaLg75t+PuFHh7BF8ejZQLeVG7zVlKkbA=; b=VAkXQE6w9zb6DX
	FdTmXA145jVzA69+Kl2v2mj9Q1s763ulG5Ljb+EthfgwqHjfR4/vx7qBHGLJyrpSjIUYWaYa1J0Pt
	shaoY6hwZJ5GggxOUYEYykt/RAjlKwqVrS0fatYvE+xr9DvIDkvZUribkwsRt13dAOd6K3O9YXvLs
	Yo1/0BRxx83L903pgYq15vX3zTs/YarIz7/nriLSH+bqncLS2iAb3PSNBsY/xeYv24KsQ+x0m1wX6
	WJ90zIZL33xSDttFmUybBWD1yGx4dPyhgpv5OrGi+CDrhFBzWFGzowG46umdZnMmKR/BH2OY7iPkS
	eHilc2MHNNqES/NDUkKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFELQ-0004BY-1L; Tue, 01 Oct 2019 09:21:20 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFELE-0004A1-TM
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 09:21:10 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by cheepnis.misterjones.org with esmtpsa
 (TLSv1.2:DHE-RSA-AES128-GCM-SHA256:128) (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iFEL7-00019A-44; Tue, 01 Oct 2019 11:21:01 +0200
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 3/4] arm64: KVM: Kill hyp_alternate_select()
Date: Tue,  1 Oct 2019 10:20:37 +0100
Message-Id: <20191001092038.17097-4-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191001092038.17097-1-maz@kernel.org>
References: <20191001092038.17097-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: pbonzini@redhat.com, rkrcmar@redhat.com, drjones@redhat.com,
 christoffer.dall@arm.com, yamada.masahiro@socionext.com, yuzenghui@huawei.com,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_022109_101801_50117954 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Andrew Jones <drjones@redhat.com>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Zenghui Yu <yuzenghui@huawei.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

hyp_alternate_select() is now completely unused. Goodbye.

Signed-off-by: Marc Zyngier <maz@kernel.org>
Reviewed-by: Christoffer Dall <christoffer.dall@arm.com>
Reviewed-by: Andrew Jones <drjones@redhat.com>
---
 arch/arm64/include/asm/kvm_hyp.h | 24 ------------------------
 1 file changed, 24 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_hyp.h b/arch/arm64/include/asm/kvm_hyp.h
index 86825aa20852..97f21cc66657 100644
--- a/arch/arm64/include/asm/kvm_hyp.h
+++ b/arch/arm64/include/asm/kvm_hyp.h
@@ -47,30 +47,6 @@
 #define read_sysreg_el2(r)	read_sysreg_elx(r, _EL2, _EL1)
 #define write_sysreg_el2(v,r)	write_sysreg_elx(v, r, _EL2, _EL1)
 
-/**
- * hyp_alternate_select - Generates patchable code sequences that are
- * used to switch between two implementations of a function, depending
- * on the availability of a feature.
- *
- * @fname: a symbol name that will be defined as a function returning a
- * function pointer whose type will match @orig and @alt
- * @orig: A pointer to the default function, as returned by @fname when
- * @cond doesn't hold
- * @alt: A pointer to the alternate function, as returned by @fname
- * when @cond holds
- * @cond: a CPU feature (as described in asm/cpufeature.h)
- */
-#define hyp_alternate_select(fname, orig, alt, cond)			\
-typeof(orig) * __hyp_text fname(void)					\
-{									\
-	typeof(alt) *val = orig;					\
-	asm volatile(ALTERNATIVE("nop		\n",			\
-				 "mov	%0, %1	\n",			\
-				 cond)					\
-		     : "+r" (val) : "r" (alt));				\
-	return val;							\
-}
-
 int __vgic_v2_perform_cpuif_access(struct kvm_vcpu *vcpu);
 
 void __vgic_v3_save_state(struct kvm_vcpu *vcpu);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
