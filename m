Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 952D41CA193
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 05:32:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TjK/mYUxwaa9Z2i3X9Y0Rgkt5gQVlbvzSfAiyNdsPQU=; b=YpTCRf2T2eV+jI
	8ox0y5iN4mFM0l9Yju36uTPVcu59zepc7ltDMMImSdG+8v7946nBBl7jK4JrBspHmjN541YIQtD1L
	6wZOC7sR+BJK+Y7CC6YZxAnwFrYSRZw/e9dq0iogEApJAQjbckTtnDEYr5pMxz4QypK3uJjzwONeV
	zghFCELLjw5AGLtl8z44IlNDlB8lNDrWmr6wDJ494vjw2C9SXpej3YpJ5B7hlLYQ4sJ51rPwRR4Qb
	qhjP86rMsSHGbQsFyITzoMl86f9QOxqQdqYmorxAJGbpBEpScefMgtQyuxLrsOCxI+CwJJMGdtxt/
	gHClxALBjjJU0Zk1/OCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWtkT-00035e-6K; Fri, 08 May 2020 03:32:29 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWtj6-00029v-R5
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 03:31:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588908662;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=uOxS8qUh1P601xhSbaR+Vu3Pd0b4Lw9cqUexthKtkJg=;
 b=BHYgWdtOtGvdau6o/gNuRzFjs2aqbI82AVkPgqi4F4ZrN9aXJ8baFnqE8dqgoyBxXHG6jp
 FUH6oNe9lUimWYCoTY+W5tJPfGlnjpAxMNyapXf/44OCfacD/JZGwLwlKm4ryW/b26LscZ
 0z0XRTTrDUGxDd6yfIpYUdkQPPZeZd0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-188-U2Rao8xiNb2Hn3U1HK1l_A-1; Thu, 07 May 2020 23:30:59 -0400
X-MC-Unique: U2Rao8xiNb2Hn3U1HK1l_A-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 38B041895A29;
 Fri,  8 May 2020 03:30:58 +0000 (UTC)
Received: from localhost.localdomain.com (vpn2-54-199.bne.redhat.com
 [10.64.54.199])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8109699CF;
 Fri,  8 May 2020 03:30:51 +0000 (UTC)
From: Gavin Shan <gshan@redhat.com>
To: kvmarm@lists.cs.columbia.edu
Subject: [PATCH RFCv2 6/9] kvm/arm64: Export kvm_handle_user_mem_abort() with
 prefault mode
Date: Fri,  8 May 2020 13:29:16 +1000
Message-Id: <20200508032919.52147-7-gshan@redhat.com>
In-Reply-To: <20200508032919.52147-1-gshan@redhat.com>
References: <20200508032919.52147-1-gshan@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_203104_988135_078E290B 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.120 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, aarcange@redhat.com, drjones@redhat.com,
 suzuki.poulose@arm.com, maz@kernel.org, linux-kernel@vger.kernel.org,
 eric.auger@redhat.com, james.morse@arm.com, shan.gavin@gmail.com,
 catalin.marinas@arm.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This renames user_mem_abort() to kvm_handle_user_mem_abort(), and
then export it. The function will be used in asynchronous page fault
to populate a page table entry once the corresponding page is populated
from the backup device (e.g. swap partition):

   * Parameter @fault_status is replace by @esr.
   * The parameters are reorder based on their importance.

This shouldn't cause any functional changes.

Signed-off-by: Gavin Shan <gshan@redhat.com>
---
 arch/arm64/include/asm/kvm_host.h |  4 ++++
 virt/kvm/arm/mmu.c                | 14 ++++++++------
 2 files changed, 12 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index 32c8a675e5a4..f77c706777ec 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -437,6 +437,10 @@ int __kvm_arm_vcpu_set_events(struct kvm_vcpu *vcpu,
 			      struct kvm_vcpu_events *events);
 
 #define KVM_ARCH_WANT_MMU_NOTIFIER
+int kvm_handle_user_mem_abort(struct kvm_vcpu *vcpu, unsigned int esr,
+			      struct kvm_memory_slot *memslot,
+			      phys_addr_t fault_ipa, unsigned long hva,
+			      bool prefault);
 int kvm_unmap_hva_range(struct kvm *kvm,
 			unsigned long start, unsigned long end);
 int kvm_set_spte_hva(struct kvm *kvm, unsigned long hva, pte_t pte);
diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
index e462e0368fd9..95aaabb2b1fc 100644
--- a/virt/kvm/arm/mmu.c
+++ b/virt/kvm/arm/mmu.c
@@ -1656,12 +1656,12 @@ static bool fault_supports_stage2_huge_mapping(struct kvm_memory_slot *memslot,
 	       (hva & ~(map_size - 1)) + map_size <= uaddr_end;
 }
 
-static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
-			  struct kvm_memory_slot *memslot, unsigned long hva,
-			  unsigned long fault_status)
+int kvm_handle_user_mem_abort(struct kvm_vcpu *vcpu, unsigned int esr,
+			      struct kvm_memory_slot *memslot,
+			      phys_addr_t fault_ipa, unsigned long hva,
+			      bool prefault)
 {
-	int ret;
-	u32 esr = kvm_vcpu_get_esr(vcpu);
+	unsigned int fault_status = kvm_vcpu_trap_get_fault_type(esr);
 	bool write_fault, writable, force_pte = false;
 	bool exec_fault, needs_exec;
 	unsigned long mmu_seq;
@@ -1674,6 +1674,7 @@ static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
 	pgprot_t mem_type = PAGE_S2;
 	bool logging_active = memslot_is_logging(memslot);
 	unsigned long vma_pagesize, flags = 0;
+	int ret;
 
 	write_fault = kvm_is_write_fault(esr);
 	exec_fault = kvm_vcpu_trap_is_iabt(esr);
@@ -1995,7 +1996,8 @@ int kvm_handle_guest_abort(struct kvm_vcpu *vcpu, struct kvm_run *run)
 		goto out_unlock;
 	}
 
-	ret = user_mem_abort(vcpu, fault_ipa, memslot, hva, fault_status);
+	ret = kvm_handle_user_mem_abort(vcpu, esr, memslot,
+					fault_ipa, hva, false);
 	if (ret == 0)
 		ret = 1;
 out:
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
