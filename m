Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 042E819B42F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 18:59:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WTvERJbxuKt8hAtczaL9Lm3Cj2whPewreNXhxKuMyEs=; b=EEQfujvVN/HQIq
	dRORqU8fdOCBce0+LE1pKDb247qGjWEIBd8RdJCIylreajaDCh4NpG1+XOy1DMdurhPwV+KPl0lJW
	7/t/0OFGU1/3v/OutffKUjMmMDE6/WWK5RmMz0wnWZ9XKQhbnsyfq4X7t1j05CSaI0M4YQVkSSONv
	QBCRxV3PbWSswBm2hFJ4UZS0j0hHfHtTZTes5i3pkC2ytKTM2gHSYs/crVpQfqpmsKBOxMsaTIdnG
	r11uMp8ooZ/DPQEbfhYYfHiHEmCbsO3fXCFj2dcVVQiBKAddpzpDlXsZk+lNnEGeHwWHe+Y1Di2J2
	8aXcoE+eUQWz7GhJAyyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJghZ-0007CK-QS; Wed, 01 Apr 2020 16:58:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJghD-00073N-Jt
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 16:58:36 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 27DFE20714;
 Wed,  1 Apr 2020 16:58:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585760311;
 bh=FuGfYh1+EXJyAtf5C2GDqinq2NnOg9RLDsgqd9Et3Fc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=i28ZEb0cbGWPWRXxU2+ocBpFuSiIGV3bRbJUY/uTnhC2OaYZvpgPpBAAmKBvgHsg8
 IhxMs03xJXiVPZ4SVzWURn8PR6Mttt+C1AXPzpBP5JWJDt3dc6REQuFkWCOQNs1/yz
 T159f8D3kIbJ+77A/BnSFuoATrUrPIq7qb2SIxKs=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jJghB-00Haev-Bt; Wed, 01 Apr 2020 17:58:29 +0100
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH 1/2] KVM: arm64: PSCI: Narrow input registers when using 32bit
 functions
Date: Wed,  1 Apr 2020 17:58:15 +0100
Message-Id: <20200401165816.530281-2-maz@kernel.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200401165816.530281-1-maz@kernel.org>
References: <20200401165816.530281-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, Christoffer.Dall@arm.com,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 christoffer.dall@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_095835_016494_87A132AB 
X-CRM114-Status: GOOD (  12.21  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: James Morse <james.morse@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When a guest delibarately uses an SSMC32 function number (which is allowed),
we should make sure we drop the top 32bits from the input arguments, as they
could legitimately be junk.

Reported-by: Christoffer Dall <christoffer.dall@arm.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 virt/kvm/arm/psci.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/virt/kvm/arm/psci.c b/virt/kvm/arm/psci.c
index 17e2bdd4b76f..69ff4a51ceb5 100644
--- a/virt/kvm/arm/psci.c
+++ b/virt/kvm/arm/psci.c
@@ -187,6 +187,18 @@ static void kvm_psci_system_reset(struct kvm_vcpu *vcpu)
 	kvm_prepare_system_event(vcpu, KVM_SYSTEM_EVENT_RESET);
 }
 
+static void kvm_psci_narrow_to_32bit(struct kvm_vcpu *vcpu)
+{
+	int i;
+
+	/*
+	 * Zero the input registers' upper 32 bits. They will be fully
+	 * zeroed on exit, so we're fine changing them in place.
+	 */
+	for (i = 1; i < 4; i++)
+		vcpu_set_reg(vcpu, i, (u32)vcpu_get_reg(vcpu, i));
+}
+
 static int kvm_psci_0_2_call(struct kvm_vcpu *vcpu)
 {
 	struct kvm *kvm = vcpu->kvm;
@@ -211,12 +223,16 @@ static int kvm_psci_0_2_call(struct kvm_vcpu *vcpu)
 		val = PSCI_RET_SUCCESS;
 		break;
 	case PSCI_0_2_FN_CPU_ON:
+		kvm_psci_narrow_to_32bit(vcpu);
+		fallthrough;
 	case PSCI_0_2_FN64_CPU_ON:
 		mutex_lock(&kvm->lock);
 		val = kvm_psci_vcpu_on(vcpu);
 		mutex_unlock(&kvm->lock);
 		break;
 	case PSCI_0_2_FN_AFFINITY_INFO:
+		kvm_psci_narrow_to_32bit(vcpu);
+		fallthrough;
 	case PSCI_0_2_FN64_AFFINITY_INFO:
 		val = kvm_psci_vcpu_affinity_info(vcpu);
 		break;
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
