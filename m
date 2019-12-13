Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A250611EA4C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 19:29:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+hJrBiwse03R/WPb3LqFDa58IQaRsOiv0R5r69fRFlk=; b=Q4JLm9TsJbgILB
	4v2lJ0a7ZAUEDTNMlcuQUO8U03gHsTc2BrGSCyCYZ20RNT/Fk2aP1u8ZAbxX3I4R7r6bnwnv2ZAkA
	CEdqlRBWTJysevKfgnM8KuMLPXPeX2Z+dH1+C6YI1WkBQHHypHLbfVRLj/UjNsljhhZqTK0y+czOE
	MMrGr20RjSirxQ/FoMMJb4CNkpeBGtDrBFFVOv8fjz0j/rl9DgZ/KFlc1fcMsVamSqh7CrDTKyGrA
	sBnTFJtgae+ByzWsjG9Jd3+RWVsmCMP3yirwtLMJZgq2x8ldGhQB13VP78xmltuQ/3vs7rvjWBj2f
	RBENyegz/GR+V3b1P7rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifpgU-0000yJ-0A; Fri, 13 Dec 2019 18:29:02 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifpfj-0000Yu-J5
 for linux-arm-kernel@bombadil.infradead.org; Fri, 13 Dec 2019 18:28:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iY4r/Cpja2MTp9nLPxqT5+JkzLwYwSxRg9yYMap58ig=; b=uwFbY0f5MPFL4Jl4U1+MWJ3yEv
 ROvu/7t6VcUhoZDBYzB8wHhEPzik6lDzDLSfJoshcmRJ3cXDhEX6Q/uY3ljQaChPfvxyW6CMjTvAn
 7NCrHfNlw8jHgV+qlbAdUDzkUlambZpDcCTGB1M0EGnPaqDzhsYfww6LSH1zk1bzHBEB1Ox4nuOs4
 GBqD3n1Qgvunx57NUlzIUFiQkT0YATThNxQFQ00HXwAazNSbxQjJyyadm3cV4Po8TnPfQtwO/Ia42
 43rsoZhtwB1XZttwmyComb2dhQKSGo3634M/n0nolCDM2PRuLf2Jsj6Jc888XAIMdwZiXJQf9fl9N
 LeIXxozg==;
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifpg8-0006IE-DY
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 18:28:44 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by cheepnis.misterjones.org with esmtpsa
 (TLSv1.2:DHE-RSA-AES128-GCM-SHA256:128) (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1ifpdI-0001O7-2m; Fri, 13 Dec 2019 19:25:44 +0100
From: Marc Zyngier <maz@kernel.org>
To: 
Subject: [PATCH 5/7] KVM: arm/arm64: Elide both CMOs and TBLIs on freeing the
 whole Stage-2
Date: Fri, 13 Dec 2019 18:25:01 +0000
Message-Id: <20191213182503.14460-6-maz@kernel.org>
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
X-CRM114-CacheID: sfid-20191213_182840_534021_AB46F185 
X-CRM114-Status: GOOD (  12.03  )
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

When freeing the whole of a VM's Stage-2 page tables, there is
little point in doing cache maintenance on each and every page
(the guest won't be running anymore, let alone having its MMU
off). As for TLBs, there is no point in invalidating individual
pages, as we can replace the whole thing with a VMALL operation,
which invalidates all the TLBs for this VM in one go.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 virt/kvm/arm/mmu.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
index 4399866842dc..d7c710491d26 100644
--- a/virt/kvm/arm/mmu.c
+++ b/virt/kvm/arm/mmu.c
@@ -1016,10 +1016,13 @@ void kvm_free_stage2_pgd(struct kvm *kvm)
 
 	spin_lock(&kvm->mmu_lock);
 	if (kvm->arch.pgd) {
-		unmap_stage2_range(kvm, 0, kvm_phys_size(kvm), 0);
+		unmap_stage2_range(kvm, 0, kvm_phys_size(kvm),
+				   KVM_UNMAP_ELIDE_CMO | KVM_UNMAP_ELIDE_TBLI);
 		pgd = READ_ONCE(kvm->arch.pgd);
 		kvm->arch.pgd = NULL;
 		kvm->arch.pgd_phys = 0;
+
+		kvm_flush_remote_tlbs(kvm);
 	}
 	spin_unlock(&kvm->mmu_lock);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
