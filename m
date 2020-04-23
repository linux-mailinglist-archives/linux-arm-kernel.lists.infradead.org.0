Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C45C71B5FAF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 17:41:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=id6SocP05St0lhZa8GHWERZYIDQl2Vz/RYKeb+rFFVQ=; b=Np00/Jn9OyNMLW
	qvf+NVoCpv8lwToMp/ptk3aeme1tkNkRTakg/g6oFgVKvW+CNbrXiisEjZvuqV9UppN6TyZ3Yz2ho
	b8fYIN+PdxDzLzkwWb6ejir8wLiN3vPj5NRnYy/8jCw3d52AFogXK6wuMc3+w4EtZ5DvkDTdGbPB4
	U9VG9LL1NeMqxPIG768vXIMpPNqtVzzbc3d2waMczCKJ92zGOnMsVjQQ2cbU6OajAr4P4nBdAKLSb
	7TQV0ItPpIc0Ytdixk2/FFEzySVi1/pAesVV7QdAlx2EqCAlJkMZE8iB8zAwugfXT1st3VbahMHB3
	iVRC+O1QIp22gx7knABw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRdyn-0006sC-Cf; Thu, 23 Apr 2020 15:41:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRdxp-0006JS-Do
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 15:40:34 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0B34920781;
 Thu, 23 Apr 2020 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587656433;
 bh=E7hIDSjhnPmiIoxSDtBaSnp525oAZljrQLvYSUMnRqI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=IOr1AEawHtAGqEWt5ye+aq959VTWkVDQD2fChx+WW/oywhsZNDQntOeSVWZB03BBq
 PvZHChsnt5YsaUMzh01rx5pavN5sWmnoKAcSw7vyFMkJuwwoC8ffuKl4tQZsKOHV18
 sKg9+DkPSmXh7SCoGNO9rYmO/cy96K8kBbtHjxTg=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jRdxn-005oPM-Dr; Thu, 23 Apr 2020 16:40:31 +0100
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH 2/8] KVM: arm64: PSCI: Narrow input registers when using 32bit
 functions
Date: Thu, 23 Apr 2020 16:40:03 +0100
Message-Id: <20200423154009.4113562-3-maz@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200423154009.4113562-1-maz@kernel.org>
References: <20200423154009.4113562-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: pbonzini@redhat.com, alexandru.elisei@arm.com,
 andre.przywara@arm.com, christoffer.dall@arm.com, julien@xen.org,
 yuzenghui@huawei.com, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, kvm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_084033_480964_F8A595C8 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Julien Grall <julien@xen.org>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 =?UTF-8?q?Andr=C3=A9=20Przywara?= <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, Zenghui Yu <yuzenghui@huawei.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When a guest delibarately uses an SMC32 function number (which is allowed),
we should make sure we drop the top 32bits from the input arguments, as they
could legitimately be junk.

Reported-by: Christoffer Dall <christoffer.dall@arm.com>
Reviewed-by: Christoffer Dall <christoffer.dall@arm.com>
Reviewed-by: Alexandru Elisei <alexandru.elisei@arm.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 virt/kvm/arm/psci.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/virt/kvm/arm/psci.c b/virt/kvm/arm/psci.c
index 14a162e295a94..3772717efe3e5 100644
--- a/virt/kvm/arm/psci.c
+++ b/virt/kvm/arm/psci.c
@@ -186,6 +186,18 @@ static void kvm_psci_system_reset(struct kvm_vcpu *vcpu)
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
+		vcpu_set_reg(vcpu, i, lower_32_bits(vcpu_get_reg(vcpu, i)));
+}
+
 static int kvm_psci_0_2_call(struct kvm_vcpu *vcpu)
 {
 	struct kvm *kvm = vcpu->kvm;
@@ -210,12 +222,16 @@ static int kvm_psci_0_2_call(struct kvm_vcpu *vcpu)
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
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
