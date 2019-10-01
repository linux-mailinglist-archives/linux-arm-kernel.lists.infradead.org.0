Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD75C300B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 11:21:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mk0WZNrsRecK3D5p1RO7BaSstsU+pDn4qhBeMM46fOA=; b=KYICJmNh96PNBp
	jFPMf/WdOyxgNIihNsZsOMtHZgPpBX1HoZtOWEq7nh5pqC0m09znweHvWiO0D7Xbiiom/vEHtuckT
	n7qjhCaokgOtz3Im3EN771mhHVhVwB1ZOS+e2+lCbQaFOdiYpAX6mU0i/8/QpIZSO/MQZ3p5lFriG
	8L9u48DPSmL7wy2j/ZudHQnqMRvuVMvypd/zC/n2w30ambqtwt8Fsaj3i2XH/S5qlvf2f07h6/ypw
	5azRKKXMJrf5fJ2sbyhZQP4qF3jTtrIKKjmb1nvyxTaxIyrRRpkgwiHIJGHyn2Y/dZ8F/VjJl8NXf
	chHLY4YGvpR+ok1x7LYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFELf-0004Qj-LH; Tue, 01 Oct 2019 09:21:35 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFELE-00049y-TL
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 09:21:10 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by cheepnis.misterjones.org with esmtpsa
 (TLSv1.2:DHE-RSA-AES128-GCM-SHA256:128) (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iFEL5-00019A-Lt; Tue, 01 Oct 2019 11:20:59 +0200
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 1/4] arm64: KVM: Drop hyp_alternate_select for checking for
 ARM64_WORKAROUND_834220
Date: Tue,  1 Oct 2019 10:20:35 +0100
Message-Id: <20191001092038.17097-2-maz@kernel.org>
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
X-CRM114-CacheID: sfid-20191001_022109_102698_B0ED4E68 
X-CRM114-Status: UNSURE (   9.36  )
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

There is no reason for using hyp_alternate_select when checking
for ARM64_WORKAROUND_834220, as each of the capabilities is
also backed by a static key. Just replace the KVM-specific
construct with cpus_have_const_cap(ARM64_WORKAROUND_834220).

Signed-off-by: Marc Zyngier <maz@kernel.org>
Reviewed-by: Christoffer Dall <christoffer.dall@arm.com>
Reviewed-by: Andrew Jones <drjones@redhat.com>
---
 arch/arm64/kvm/hyp/switch.c | 17 ++---------------
 1 file changed, 2 insertions(+), 15 deletions(-)

diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
index adaf266d8de8..a15baca9aca0 100644
--- a/arch/arm64/kvm/hyp/switch.c
+++ b/arch/arm64/kvm/hyp/switch.c
@@ -229,20 +229,6 @@ static void __hyp_text __hyp_vgic_restore_state(struct kvm_vcpu *vcpu)
 	}
 }
 
-static bool __hyp_text __true_value(void)
-{
-	return true;
-}
-
-static bool __hyp_text __false_value(void)
-{
-	return false;
-}
-
-static hyp_alternate_select(__check_arm_834220,
-			    __false_value, __true_value,
-			    ARM64_WORKAROUND_834220);
-
 static bool __hyp_text __translate_far_to_hpfar(u64 far, u64 *hpfar)
 {
 	u64 par, tmp;
@@ -298,7 +284,8 @@ static bool __hyp_text __populate_fault_info(struct kvm_vcpu *vcpu)
 	 * resolve the IPA using the AT instruction.
 	 */
 	if (!(esr & ESR_ELx_S1PTW) &&
-	    (__check_arm_834220()() || (esr & ESR_ELx_FSC_TYPE) == FSC_PERM)) {
+	    (cpus_have_const_cap(ARM64_WORKAROUND_834220) ||
+	     (esr & ESR_ELx_FSC_TYPE) == FSC_PERM)) {
 		if (!__translate_far_to_hpfar(far, &hpfar))
 			return false;
 	} else {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
