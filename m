Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E65A71E8327
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 18:07:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f3GC6054XtfRcGkc1ROc3Pl2L5JUd+evKwmzDdgES28=; b=azInaCj5OgSQvE
	pce3EvLSr67sRR8q6HKLA02xiAC+1KsrCFVYtedjS4hV2ty7Z+z4BcVgq33iumZD1WEP99RobSSmL
	/5dMF2kULngC+UcU05C5rE0n5X7sjFT0SvS0B21NRCjnzrpTxUwCAQHpFFDqctEhi1480aTtfV47q
	sEJksz7qafjP4Ei23038RSOD2YRlSJG5Sy8IsCepqgELzGMi/uXp6Gb8IS1+WceBwzgrwsxlse/PL
	pXQkb37QY0A6Fu5n8pClaZmVBTlN4XyrhgN4hyWI+NTrNkSOnse9/j9ffzfXtvNXVLqw2x2wt/0vb
	k9QbLqnCA0SRKoiG3+ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jehXI-0001Ku-IY; Fri, 29 May 2020 16:07:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jehTs-0004qr-Vz
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 16:03:41 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1EA2520814;
 Fri, 29 May 2020 16:03:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590768215;
 bh=R6r5GkOAL3ZO4KyBEEK8jowTrzETCOs0VNAKSknUigQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=YcnFoBNwGYCJ+0cE90hlmpyIwlOlpZaPDciH/QNLFsc1+flwoV/cQk/HDFiJFGepP
 WqXA+2j9c57PBLjwtboHBVxaCOh1+BEbDsdNpaIY5AhiSMJ4HnP3ykzcRHWnM0qFg1
 OX1N/2u4YrzwnVbKzPSL5qKb6ujntP0wwHZW8+W4=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jehSD-00GJKc-Nk; Fri, 29 May 2020 17:01:54 +0100
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH 14/24] KVM: arm64: Make KVM_CAP_MAX_VCPUS compatible with the
 selected GIC version
Date: Fri, 29 May 2020 17:01:11 +0100
Message-Id: <20200529160121.899083-15-maz@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200529160121.899083-1-maz@kernel.org>
References: <20200529160121.899083-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: pbonzini@redhat.com, alexandru.elisei@arm.com,
 ascull@google.com, ardb@kernel.org, christoffer.dall@arm.com,
 dbrazdil@google.com, tabba@google.com, james.morse@arm.com, giangyi@amazon.com,
 zhukeqian1@huawei.com, mark.rutland@arm.com, suzuki.poulose@arm.com,
 will@kernel.org, yuzenghui@huawei.com, julien.thierry.kdev@gmail.com,
 linux-arm-kernel@lists.infradead.org, kvm@vger.kernel.org,
 kvmarm@lists.cs.columbia.edu
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_090337_138084_33F139C9 
X-CRM114-Status: GOOD (  13.76  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, Will Deacon <will@kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Keqian Zhu <zhukeqian1@huawei.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Jiang Yi <giangyi@amazon.com>,
 James Morse <james.morse@arm.com>, Andrew Scull <ascull@google.com>,
 Zenghui Yu <yuzenghui@huawei.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 David Brazdil <dbrazdil@google.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>, Ard Biesheuvel <ardb@kernel.org>,
 Fuad Tabba <tabba@google.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

KVM_CAP_MAX_VCPUS always return the maximum possible number of
VCPUs, irrespective of the selected interrupt controller. This
is pretty misleading for userspace that selects a GICv2 on a GICv3
system that supports v2 compat: It always gets a maximum of 512
VCPUs, even if the effective limit is 8. The 9th VCPU will fail
to be created, which is unexpected as far as userspace is concerned.

Fortunately, we already have the right information stashed in the
kvm structure, and we can return it as requested.

Reported-by: Ard Biesheuvel <ardb@kernel.org>
Signed-off-by: Marc Zyngier <maz@kernel.org>
Tested-by: Alexandru Elisei <alexandru.elisei@arm.com>
Reviewed-by: Alexandru Elisei <alexandru.elisei@arm.com>
Link: https://lore.kernel.org/r/20200427141507.284985-1-maz@kernel.org
---
 arch/arm64/kvm/arm.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/kvm/arm.c b/arch/arm64/kvm/arm.c
index 0ea9a0266d9a..e01d44df98df 100644
--- a/arch/arm64/kvm/arm.c
+++ b/arch/arm64/kvm/arm.c
@@ -95,6 +95,11 @@ int kvm_vm_ioctl_enable_cap(struct kvm *kvm,
 	return r;
 }
 
+static int kvm_arm_default_max_vcpus(void)
+{
+	return vgic_present ? kvm_vgic_get_max_vcpus() : KVM_MAX_VCPUS;
+}
+
 /**
  * kvm_arch_init_vm - initializes a VM data structure
  * @kvm:	pointer to the KVM struct
@@ -128,8 +133,7 @@ int kvm_arch_init_vm(struct kvm *kvm, unsigned long type)
 	kvm->arch.vmid.vmid_gen = 0;
 
 	/* The maximum number of VCPUs is limited by the host's GIC model */
-	kvm->arch.max_vcpus = vgic_present ?
-				kvm_vgic_get_max_vcpus() : KVM_MAX_VCPUS;
+	kvm->arch.max_vcpus = kvm_arm_default_max_vcpus();
 
 	return ret;
 out_free_stage2_pgd:
@@ -204,10 +208,11 @@ int kvm_vm_ioctl_check_extension(struct kvm *kvm, long ext)
 		r = num_online_cpus();
 		break;
 	case KVM_CAP_MAX_VCPUS:
-		r = KVM_MAX_VCPUS;
-		break;
 	case KVM_CAP_MAX_VCPU_ID:
-		r = KVM_MAX_VCPU_ID;
+		if (kvm)
+			r = kvm->arch.max_vcpus;
+		else
+			r = kvm_arm_default_max_vcpus();
 		break;
 	case KVM_CAP_MSI_DEVID:
 		if (!kvm)
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
