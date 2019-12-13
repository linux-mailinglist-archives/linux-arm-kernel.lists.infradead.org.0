Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D15811EA4E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 19:29:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aoLpGohiClY2vUTHi3Ufok+UKjaep0KRhYYJ5S0skpU=; b=umyAWlWT+7Pvpt
	WbMqr4Gy3eBtmie2YpMD+g0V69a+2HjUk8qwQ3rmCoQo4zp1Rbjrzzm2yyRXkWZOLtWiCVoiQjf9x
	ifiqK6FXqn7ng1zoA92+QMJiPQYvOQHbGHZ11eBKW5xcZAR75Sp7S2TZwfhS8hbUrjlghbrYABhSg
	aFMugr8KKs96ANoGbs7KsvcK8nsMIIIWnwGKd5ktgdKltGOerXEJb732ntFB1PsolByKANySWQZGF
	/y3bzLn2M+F1VKaUefEfNzifgqoIJDIcY6HbxoRv5Y3Ywwx6C3JACF8woxao8nrLD/e9J3lGhrGRB
	IHRKLfzynifOaDpuzSog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifpgx-0001SZ-Ja; Fri, 13 Dec 2019 18:29:31 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifpfl-0000Zr-0m
 for linux-arm-kernel@bombadil.infradead.org; Fri, 13 Dec 2019 18:28:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=b9+9cTCzO5ftesHUHdPxVL5ofeKDIArOvIRxuM9BuSQ=; b=l4QP2crCLrcLoT8EteMRG2pgwX
 yl2ytP9AcjCJQZsX0mAdvnpBu6eDV8Zz7B6+l28ioafKdlRZ4HG6KcsN2JYn+rgJMN1i0bBXgbEVW
 r+PVLCxQdUGSI4fAUepGUllRPXIANvBwXylIjM9OpKr08P0vz4xAfDQidWWTypSjH02IFE5uKPg+u
 vq0epAsCgTGOH3mMwd+LRsd+ZSez2zIcsbF9olB+f7PWAP0fRs6BvRwqQ0zwUApT68orzhVeM4hMT
 Hvr4avgSyIcLLoxJhjfXqXQ318nJskO3/Pc1haKfLYc9MiK6LOkCDDAkKU0OvNF7yshZxve12XC2P
 lFpI0bWg==;
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifpgA-0006JP-0T
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 18:28:45 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by cheepnis.misterjones.org with esmtpsa
 (TLSv1.2:DHE-RSA-AES128-GCM-SHA256:128) (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1ifpdG-0001O7-Df; Fri, 13 Dec 2019 19:25:42 +0100
From: Marc Zyngier <maz@kernel.org>
To: 
Subject: [PATCH 3/7] KVM: arm/arm64: Condition cache maintenance on unmap with
 a flag
Date: Fri, 13 Dec 2019 18:24:59 +0000
Message-Id: <20191213182503.14460-4-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191213182503.14460-1-maz@kernel.org>
References: <20191213182503.14460-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, jhogan@kernel.org, paulus@ozlabs.org,
 pbonzini@redhat.com, rkrcmar@redhat.com, sean.j.christopherson@intel.com,
 vkuznets@redhat.com, wanpengli@tencent.com, jmattson@google.com,
 joro@8bytes.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, linux-mips@vger.kernel.org,
 kvm-ppc@vger.kernel.org, kvm@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_182842_091449_CF54C8C9 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (1.0 points, 5.0 required)
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
Cc: kvm-ppc@vger.kernel.org, Wanpeng Li <wanpengli@tencent.com>,
 kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 James Hogan <jhogan@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>,
 linux-mips@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 Paul Mackerras <paulus@ozlabs.org>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, Paolo Bonzini <pbonzini@redhat.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to allow the elision of cache maintenance operations
on unmap, add a new flag (KVM_UNMAP_ELIDE_CMO) that a caller
can use to indicate that CMOs are not required.

Nobody is passing this flag yet, hence no functional change.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 virt/kvm/arm/mmu.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
index 0fed7c19c6d5..ebf8c87cc007 100644
--- a/virt/kvm/arm/mmu.c
+++ b/virt/kvm/arm/mmu.c
@@ -35,6 +35,9 @@ static unsigned long io_map_base;
 
 #define hyp_pgd_order get_order(PTRS_PER_PGD * sizeof(pgd_t))
 
+/* Flags controlling S2 unmapping */
+#define KVM_UNMAP_ELIDE_CMO		(1UL << 0)
+
 #define KVM_S2PTE_FLAG_IS_IOMAP		(1UL << 0)
 #define KVM_S2_FLAG_LOGGING_ACTIVE	(1UL << 1)
 
@@ -253,7 +256,8 @@ static void unmap_stage2_ptes(struct kvm *kvm, pmd_t *pmd,
 			kvm_tlb_flush_vmid_ipa(kvm, addr);
 
 			/* No need to invalidate the cache for device mappings */
-			if (!kvm_is_device_pfn(pte_pfn(old_pte)))
+			if (!kvm_is_device_pfn(pte_pfn(old_pte)) &&
+			    !(flags & KVM_UNMAP_ELIDE_CMO))
 				kvm_flush_dcache_pte(old_pte);
 
 			put_page(virt_to_page(pte));
@@ -281,7 +285,8 @@ static void unmap_stage2_pmds(struct kvm *kvm, pud_t *pud,
 				pmd_clear(pmd);
 				kvm_tlb_flush_vmid_ipa(kvm, addr);
 
-				kvm_flush_dcache_pmd(old_pmd);
+				if (!(flags & KVM_UNMAP_ELIDE_CMO))
+					kvm_flush_dcache_pmd(old_pmd);
 
 				put_page(virt_to_page(pmd));
 			} else {
@@ -310,7 +315,8 @@ static void unmap_stage2_puds(struct kvm *kvm, pgd_t *pgd,
 
 				stage2_pud_clear(kvm, pud);
 				kvm_tlb_flush_vmid_ipa(kvm, addr);
-				kvm_flush_dcache_pud(old_pud);
+				if (!(flags & KVM_UNMAP_ELIDE_CMO))
+					kvm_flush_dcache_pud(old_pud);
 				put_page(virt_to_page(pud));
 			} else {
 				unmap_stage2_pmds(kvm, pud, addr, next, flags);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
