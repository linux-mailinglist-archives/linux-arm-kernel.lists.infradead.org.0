Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 357F01B5FB1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 17:41:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UNHvCiTBfUsj6LI5p9TiYcIYlbUnuIhAt8FL3cUucwk=; b=aZftME83OBnBj1
	AzqyZjLaXH0NBr/G71sESjEY/AGm4KFTy0ZTA60i05oUgxH1Rs/nYcNDkh1fKbrg/cg/7h/i55UD2
	k+oxMWXchVoqjak9j1JDMwk8RAOn3iizms5yaXBbKUAFEwjt5fjRGAHW1TdLDJKglyWmy3ttAY9yS
	7/XnT4EKoSN5ZE+QjbnrgLYwoB6CoOCvCIx04nlyPxWzK8hAhyqERWCB20LJKqbpsKrwnsofgmcOe
	ng37P3ngrHoKrC0RY04WzjBWKIze3xlF1O9fiRJbKMX5/c8vZY7HWlojgM5m+wg38AyMknUniT+TV
	T7EUMiQ6IM3IyOJ4Cv4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRdz0-00078J-M3; Thu, 23 Apr 2020 15:41:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRdxq-0006Jx-7h
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 15:40:35 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CE45D2098B;
 Thu, 23 Apr 2020 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587656433;
 bh=CIXHIahjDbc587eXthk0nO1gMmcVN64S03rXwMxNHH0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FDD0613fVGtdApwkST1M9cLjbjl/aoz9db2wLuf+GQYIHQMrLNTHPlc6xJsPG0pEh
 NVf0O8V60MfOY1/gc1McHsEyag46DKQo6hoEa99quAJjc5bEoTNqIwrG6SQ4GsePNQ
 5pr6g38ePVWopRaosVX9Rv4rZfAspPzMVitIshxs=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jRdxo-005oPM-5k; Thu, 23 Apr 2020 16:40:32 +0100
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH 3/8] KVM: arm64: PSCI: Forbid 64bit functions for 32bit guests
Date: Thu, 23 Apr 2020 16:40:04 +0100
Message-Id: <20200423154009.4113562-4-maz@kernel.org>
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
X-CRM114-CacheID: sfid-20200423_084034_312972_65689443 
X-CRM114-Status: GOOD (  13.08  )
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

Implementing (and even advertising) 64bit PSCI functions to 32bit
guests is at least a bit odd, if not altogether violating the
spec which says ("5.2.1 Register usage in arguments and return values"):

"Adherence to the SMC Calling Conventions implies that any AArch32
caller of an SMC64 function will get a return code of 0xFFFFFFFF(int32).
This matches the NOT_SUPPORTED error code used in PSCI"

Tighten the implementation by pretending these functions are not
there for 32bit guests.

Reviewed-by: Christoffer Dall <christoffer.dall@arm.com>
Reviewed-by: Alexandru Elisei <alexandru.elisei@arm.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 virt/kvm/arm/psci.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/virt/kvm/arm/psci.c b/virt/kvm/arm/psci.c
index 3772717efe3e5..ae364716ee40c 100644
--- a/virt/kvm/arm/psci.c
+++ b/virt/kvm/arm/psci.c
@@ -198,6 +198,21 @@ static void kvm_psci_narrow_to_32bit(struct kvm_vcpu *vcpu)
 		vcpu_set_reg(vcpu, i, lower_32_bits(vcpu_get_reg(vcpu, i)));
 }
 
+static unsigned long kvm_psci_check_allowed_function(struct kvm_vcpu *vcpu, u32 fn)
+{
+	switch(fn) {
+	case PSCI_0_2_FN64_CPU_SUSPEND:
+	case PSCI_0_2_FN64_CPU_ON:
+	case PSCI_0_2_FN64_AFFINITY_INFO:
+		/* Disallow these functions for 32bit guests */
+		if (vcpu_mode_is_32bit(vcpu))
+			return PSCI_RET_NOT_SUPPORTED;
+		break;
+	}
+
+	return 0;
+}
+
 static int kvm_psci_0_2_call(struct kvm_vcpu *vcpu)
 {
 	struct kvm *kvm = vcpu->kvm;
@@ -205,6 +220,10 @@ static int kvm_psci_0_2_call(struct kvm_vcpu *vcpu)
 	unsigned long val;
 	int ret = 1;
 
+	val = kvm_psci_check_allowed_function(vcpu, psci_fn);
+	if (val)
+		goto out;
+
 	switch (psci_fn) {
 	case PSCI_0_2_FN_PSCI_VERSION:
 		/*
@@ -272,6 +291,7 @@ static int kvm_psci_0_2_call(struct kvm_vcpu *vcpu)
 		break;
 	}
 
+out:
 	smccc_set_retval(vcpu, val, 0, 0, 0);
 	return ret;
 }
@@ -289,6 +309,10 @@ static int kvm_psci_1_0_call(struct kvm_vcpu *vcpu)
 		break;
 	case PSCI_1_0_FN_PSCI_FEATURES:
 		feature = smccc_get_arg1(vcpu);
+		val = kvm_psci_check_allowed_function(vcpu, feature);
+		if (val)
+			break;
+
 		switch(feature) {
 		case PSCI_0_2_FN_PSCI_VERSION:
 		case PSCI_0_2_FN_CPU_SUSPEND:
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
