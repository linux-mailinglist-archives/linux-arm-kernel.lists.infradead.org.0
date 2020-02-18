Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA0816344B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 22:09:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zJ76ClZODgE2H0CEu6OK3HRycxS1t2sL7FkSEL/hsKY=; b=oirOBmNt9u/VnI
	LT0V962LKaP+kNg2PNjNct2V3ophg/5aPDVh5Ij91op1tvoEewzwvKcAW6WETSSBpsIRr9odCY7FH
	gSYX4A7Ox1X2E96zTdzlTwj6OXQgSbAcuM7284HNhRtIIpEFqeG8VpbjxeinKr1/24i0QwWuQB/Pe
	tLc0glfOThkCTmG0eY7yfIewfVnRTAWqg62SSc3dwRbi6Vs+Qv2Cl3gd83HIp7cw5b0WaFeqPxjWZ
	z4jDdLCI2ir6W+js4MxcVJ14UjGUrlptcJ0WTTPVzBu38G2aItiP4V5/X+EKDWUJjWJ5N2/d0iz8/
	H7u2ceIErlHM8IYFV82g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4A7f-0002jI-LF; Tue, 18 Feb 2020 21:09:39 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4A5t-0000z9-8o
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 21:07:52 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 13:07:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,457,1574150400"; d="scan'208";a="253856426"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.202])
 by orsmga002.jf.intel.com with ESMTP; 18 Feb 2020 13:07:45 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH v6 10/22] KVM: Drop "const" attribute from old memslot in
 commit_memory_region()
Date: Tue, 18 Feb 2020 13:07:24 -0800
Message-Id: <20200218210736.16432-11-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200218210736.16432-1-sean.j.christopherson@intel.com>
References: <20200218210736.16432-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_130749_359044_F4FFF9EB 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, Peter Xu <peterx@redhat.com>,
 linux-mips@vger.kernel.org, Paul Mackerras <paulus@ozlabs.org>,
 kvmarm@lists.cs.columbia.edu, Janosch Frank <frankja@linux.ibm.com>,
 Marc Zyngier <maz@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvm-ppc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>,
 Cornelia Huck <cohuck@redhat.com>, Christoffer Dall <christoffer.dall@arm.com>,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>,
 =?UTF-8?q?Philippe=20Mathieu-Daud=C3=A9?= <f4bug@amsat.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Drop the "const" attribute from @old in kvm_arch_commit_memory_region()
to allow arch specific code to free arch specific resources in the old
memslot without having to cast away the attribute.  Freeing resources in
kvm_arch_commit_memory_region() paves the way for simplifying
kvm_free_memslot() by eliminating the last usage of its @dont param.

Reviewed-by: Peter Xu <peterx@redhat.com>
Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 arch/mips/kvm/mips.c       | 2 +-
 arch/powerpc/kvm/powerpc.c | 2 +-
 arch/s390/kvm/kvm-s390.c   | 2 +-
 arch/x86/kvm/x86.c         | 2 +-
 include/linux/kvm_host.h   | 2 +-
 virt/kvm/arm/mmu.c         | 2 +-
 virt/kvm/kvm_main.c        | 2 +-
 7 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/mips/kvm/mips.c b/arch/mips/kvm/mips.c
index b3243d87097f..c7536aa341d2 100644
--- a/arch/mips/kvm/mips.c
+++ b/arch/mips/kvm/mips.c
@@ -224,7 +224,7 @@ int kvm_arch_prepare_memory_region(struct kvm *kvm,
 
 void kvm_arch_commit_memory_region(struct kvm *kvm,
 				   const struct kvm_userspace_memory_region *mem,
-				   const struct kvm_memory_slot *old,
+				   struct kvm_memory_slot *old,
 				   const struct kvm_memory_slot *new,
 				   enum kvm_mr_change change)
 {
diff --git a/arch/powerpc/kvm/powerpc.c b/arch/powerpc/kvm/powerpc.c
index 48abf1b9ad58..768c4a9269be 100644
--- a/arch/powerpc/kvm/powerpc.c
+++ b/arch/powerpc/kvm/powerpc.c
@@ -701,7 +701,7 @@ int kvm_arch_prepare_memory_region(struct kvm *kvm,
 
 void kvm_arch_commit_memory_region(struct kvm *kvm,
 				   const struct kvm_userspace_memory_region *mem,
-				   const struct kvm_memory_slot *old,
+				   struct kvm_memory_slot *old,
 				   const struct kvm_memory_slot *new,
 				   enum kvm_mr_change change)
 {
diff --git a/arch/s390/kvm/kvm-s390.c b/arch/s390/kvm/kvm-s390.c
index 6638024e440d..78f92c005f93 100644
--- a/arch/s390/kvm/kvm-s390.c
+++ b/arch/s390/kvm/kvm-s390.c
@@ -4532,7 +4532,7 @@ int kvm_arch_prepare_memory_region(struct kvm *kvm,
 
 void kvm_arch_commit_memory_region(struct kvm *kvm,
 				const struct kvm_userspace_memory_region *mem,
-				const struct kvm_memory_slot *old,
+				struct kvm_memory_slot *old,
 				const struct kvm_memory_slot *new,
 				enum kvm_mr_change change)
 {
diff --git a/arch/x86/kvm/x86.c b/arch/x86/kvm/x86.c
index dfca4d9edea7..4f1da1712a61 100644
--- a/arch/x86/kvm/x86.c
+++ b/arch/x86/kvm/x86.c
@@ -10003,7 +10003,7 @@ static void kvm_mmu_slot_apply_flags(struct kvm *kvm,
 
 void kvm_arch_commit_memory_region(struct kvm *kvm,
 				const struct kvm_userspace_memory_region *mem,
-				const struct kvm_memory_slot *old,
+				struct kvm_memory_slot *old,
 				const struct kvm_memory_slot *new,
 				enum kvm_mr_change change)
 {
diff --git a/include/linux/kvm_host.h b/include/linux/kvm_host.h
index 2fd0cf4ac03d..1807feef26a3 100644
--- a/include/linux/kvm_host.h
+++ b/include/linux/kvm_host.h
@@ -678,7 +678,7 @@ int kvm_arch_prepare_memory_region(struct kvm *kvm,
 				enum kvm_mr_change change);
 void kvm_arch_commit_memory_region(struct kvm *kvm,
 				const struct kvm_userspace_memory_region *mem,
-				const struct kvm_memory_slot *old,
+				struct kvm_memory_slot *old,
 				const struct kvm_memory_slot *new,
 				enum kvm_mr_change change);
 bool kvm_largepages_enabled(void);
diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
index 1d97410b3470..97b87037aff3 100644
--- a/virt/kvm/arm/mmu.c
+++ b/virt/kvm/arm/mmu.c
@@ -2251,7 +2251,7 @@ int kvm_mmu_init(void)
 
 void kvm_arch_commit_memory_region(struct kvm *kvm,
 				   const struct kvm_userspace_memory_region *mem,
-				   const struct kvm_memory_slot *old,
+				   struct kvm_memory_slot *old,
 				   const struct kvm_memory_slot *new,
 				   enum kvm_mr_change change)
 {
diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
index 84c03fb60d40..f84bb0442a1b 100644
--- a/virt/kvm/kvm_main.c
+++ b/virt/kvm/kvm_main.c
@@ -985,7 +985,7 @@ static struct kvm_memslots *install_new_memslots(struct kvm *kvm,
 
 static int kvm_set_memslot(struct kvm *kvm,
 			   const struct kvm_userspace_memory_region *mem,
-			   const struct kvm_memory_slot *old,
+			   struct kvm_memory_slot *old,
 			   struct kvm_memory_slot *new, int as_id,
 			   enum kvm_mr_change change)
 {
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
