Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B5F41A6783
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 16:06:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=d5JBnBQ0YTX6COR6aPQNyGR/CzUa3BLRC2VoKhmUJzg=; b=i4i
	8jRhZV36MPzHH921yLeix6MG1OGi9A1u06J4dTy66erk8tSJMUP0xQ9eFj8yn/SfjzaqaQzZcc5Fu
	xKJJMRTxA1bJWmiDQex1HImU6eNrv/gnIFJ0+EhxcuC503gq+tqHA+AqkaAfjvi3w0tBw8AorNunk
	+wASWqFobqRC5IC365v1jxrpm+P/OBZy64eIx0Zto1cUM2xcih2TUrHxQvVmMHcPKNRWMMZdIGD6u
	3c6sOVXowJe6XvCaEFPEIy04jLrmExX4zkkItxv5Ox3lHKiQZjFWEJ6XI1cw4EyqZ8Dl+gt0GWb9L
	8oECt5H2jfV1GkwdXuUk+YfQpq+P+/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNzj5-0000J3-Pw; Mon, 13 Apr 2020 14:06:15 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNziz-0000I2-2y
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 14:06:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586786766;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=tr36Ztz1zaNKdeDfrf7SQyxfeOTbsC/uHO5FgmoVJ30=;
 b=LSUK3x+Q2IEqcASc7bupgPnLYlO3Bg/nouLKy5jtIQIFFCGmyN6D7KjbOkIyxpVayFVAUh
 Mx5EI6T+C64HX7iyqpsnD2W3Aa+foPKUlZpSbVVlILupqLvoDN4F8qZ52IXcZVjfkzZ7AD
 gvWh4Mz/5/WKsB6DHd+pMXNiR/2JL0g=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-73-uMGeuVTBOPOz_VE0cBUL5w-1; Mon, 13 Apr 2020 10:03:57 -0400
X-MC-Unique: uMGeuVTBOPOz_VE0cBUL5w-1
Received: by mail-wm1-f71.google.com with SMTP id f8so2697120wmh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 07:03:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=DMxjnALOO+13jpd4EXyv1/+VreDyJBNjIrO01oQGGFU=;
 b=jVVkJYJPR7+qj+QhRGMdXI7Np+qZZmLBbyQ1t55B3991jGJoBlfffr7Vh7dVllQ55n
 78hhIx4dILuEKxSvgUQjSmwbLK8mljVpdC6ux5gTIde01BDweaR16muQjbqum6CuJKFb
 VC6jbX4HWPasPre70yODlROCKyelAoVi+Zv8lSR1xsmnwtU56UGyCvxztjOBgyvNNlCh
 EQDic4LW/MW4dhMpmc5gWY59xf5TSiVJC9DUJ0i/F4C5lD9UlD09G4DfgvNraVoMlJMx
 /VBri7zluqNJjNH/cyZeHx7FUDsdwaohiVnNrm33NsWz4w0qJcRAYDhi4CusXrJFPhw/
 zZkQ==
X-Gm-Message-State: AGi0PuZQRfnKiBH9A+amGhVOMGQMSYMRwbW9v9aLLvacfgozvz697K+F
 buf1gccI/nMvKCxj5/wQC1Og2LwO+/NpdH2srcnC2BH52w31l7GnH8jIEqDFtHYiwGuUjajQC3i
 33gTZM7dBJ01mzc/w5w2XhDr+qj0qyveDebU=
X-Received: by 2002:adf:fc4c:: with SMTP id e12mr18660363wrs.265.1586786635621; 
 Mon, 13 Apr 2020 07:03:55 -0700 (PDT)
X-Google-Smtp-Source: APiQypLRZJuELUsSHD7peAwU3uRWTiihVpgUEtD1l8rr9Jo5lHrC+5Swh69bNDnIpYlTippwc8wt9Q==
X-Received: by 2002:adf:fc4c:: with SMTP id e12mr18660255wrs.265.1586786634361; 
 Mon, 13 Apr 2020 07:03:54 -0700 (PDT)
Received: from emanuele-MacBookPro.redhat.com ([194.230.155.239])
 by smtp.gmail.com with ESMTPSA id j10sm11726263wmi.18.2020.04.13.07.03.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Apr 2020 07:03:53 -0700 (PDT)
From: Emanuele Giuseppe Esposito <eesposit@redhat.com>
To: kvm@vger.kernel.org
Subject: [PATCH] kvm_host: unify VM_STAT and VCPU_STAT definitions in a single
 place
Date: Mon, 13 Apr 2020 16:03:32 +0200
Message-Id: <20200413140332.22896-1-eesposit@redhat.com>
X-Mailer: git-send-email 2.17.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_070609_210280_A7B2BD92 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Wanpeng Li <wanpengli@tencent.com>, David Hildenbrand <david@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, linux-mips@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>, kvmarm@lists.cs.columbia.edu,
 Emanuele Giuseppe Esposito <eesposit@redhat.com>, linux-s390@vger.kernel.org,
 Janosch Frank <frankja@linux.ibm.com>, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, Christian Borntraeger <borntraeger@de.ibm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvm-ppc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>,
 Cornelia Huck <cohuck@redhat.com>, linux-kernel@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 James Morse <james.morse@arm.com>, Michael Ellerman <mpe@ellerman.id.au>,
 Paolo Bonzini <pbonzini@redhat.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 linuxppc-dev@lists.ozlabs.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The macros VM_STAT and VCPU_STAT are redundantly implemented in multiple
files, each used by a different architecure to initialize the debugfs
entries for statistics. Since they all have the same purpose, they can be
unified in a single common definition in include/linux/kvm_host.h

Signed-off-by: Emanuele Giuseppe Esposito <eesposit@redhat.com>
---
 arch/arm64/kvm/guest.c    | 23 +++++++--------
 arch/mips/kvm/mips.c      | 61 +++++++++++++++++++--------------------
 arch/powerpc/kvm/book3s.c |  3 --
 arch/powerpc/kvm/booke.c  |  3 --
 arch/s390/kvm/kvm-s390.c  |  3 --
 arch/x86/kvm/x86.c        |  3 --
 include/linux/kvm_host.h  |  3 ++
 7 files changed, 43 insertions(+), 56 deletions(-)

diff --git a/arch/arm64/kvm/guest.c b/arch/arm64/kvm/guest.c
index 23ebe51410f0..3e3aee8b37c0 100644
--- a/arch/arm64/kvm/guest.c
+++ b/arch/arm64/kvm/guest.c
@@ -29,20 +29,17 @@
 
 #include "trace.h"
 
-#define VM_STAT(x) { #x, offsetof(struct kvm, stat.x), KVM_STAT_VM }
-#define VCPU_STAT(x) { #x, offsetof(struct kvm_vcpu, stat.x), KVM_STAT_VCPU }
-
 struct kvm_stats_debugfs_item debugfs_entries[] = {
-	VCPU_STAT(halt_successful_poll),
-	VCPU_STAT(halt_attempted_poll),
-	VCPU_STAT(halt_poll_invalid),
-	VCPU_STAT(halt_wakeup),
-	VCPU_STAT(hvc_exit_stat),
-	VCPU_STAT(wfe_exit_stat),
-	VCPU_STAT(wfi_exit_stat),
-	VCPU_STAT(mmio_exit_user),
-	VCPU_STAT(mmio_exit_kernel),
-	VCPU_STAT(exits),
+	{ "halt_successful_poll", VCPU_STAT(halt_successful_poll) },
+	{ "halt_attempted_poll", VCPU_STAT(halt_attempted_poll) },
+	{ "halt_poll_invalid", VCPU_STAT(halt_poll_invalid) },
+	{ "halt_wakeup", VCPU_STAT(halt_wakeup) },
+	{ "hvc_exit_stat", VCPU_STAT(hvc_exit_stat) },
+	{ "wfe_exit_stat", VCPU_STAT(wfe_exit_stat) },
+	{ "wfi_exit_stat", VCPU_STAT(wfi_exit_stat) },
+	{ "mmio_exit_user", VCPU_STAT(mmio_exit_user) },
+	{ "mmio_exit_kernel", VCPU_STAT(mmio_exit_kernel) },
+	{ "exits", VCPU_STAT(exits) },
 	{ NULL }
 };
 
diff --git a/arch/mips/kvm/mips.c b/arch/mips/kvm/mips.c
index 8f05dd0a0f4e..f14b93d02f02 100644
--- a/arch/mips/kvm/mips.c
+++ b/arch/mips/kvm/mips.c
@@ -39,40 +39,39 @@
 #define VECTORSPACING 0x100	/* for EI/VI mode */
 #endif
 
-#define VCPU_STAT(x) offsetof(struct kvm_vcpu, stat.x)
 struct kvm_stats_debugfs_item debugfs_entries[] = {
-	{ "wait",	  VCPU_STAT(wait_exits),	 KVM_STAT_VCPU },
-	{ "cache",	  VCPU_STAT(cache_exits),	 KVM_STAT_VCPU },
-	{ "signal",	  VCPU_STAT(signal_exits),	 KVM_STAT_VCPU },
-	{ "interrupt",	  VCPU_STAT(int_exits),		 KVM_STAT_VCPU },
-	{ "cop_unusable", VCPU_STAT(cop_unusable_exits), KVM_STAT_VCPU },
-	{ "tlbmod",	  VCPU_STAT(tlbmod_exits),	 KVM_STAT_VCPU },
-	{ "tlbmiss_ld",	  VCPU_STAT(tlbmiss_ld_exits),	 KVM_STAT_VCPU },
-	{ "tlbmiss_st",	  VCPU_STAT(tlbmiss_st_exits),	 KVM_STAT_VCPU },
-	{ "addrerr_st",	  VCPU_STAT(addrerr_st_exits),	 KVM_STAT_VCPU },
-	{ "addrerr_ld",	  VCPU_STAT(addrerr_ld_exits),	 KVM_STAT_VCPU },
-	{ "syscall",	  VCPU_STAT(syscall_exits),	 KVM_STAT_VCPU },
-	{ "resvd_inst",	  VCPU_STAT(resvd_inst_exits),	 KVM_STAT_VCPU },
-	{ "break_inst",	  VCPU_STAT(break_inst_exits),	 KVM_STAT_VCPU },
-	{ "trap_inst",	  VCPU_STAT(trap_inst_exits),	 KVM_STAT_VCPU },
-	{ "msa_fpe",	  VCPU_STAT(msa_fpe_exits),	 KVM_STAT_VCPU },
-	{ "fpe",	  VCPU_STAT(fpe_exits),		 KVM_STAT_VCPU },
-	{ "msa_disabled", VCPU_STAT(msa_disabled_exits), KVM_STAT_VCPU },
-	{ "flush_dcache", VCPU_STAT(flush_dcache_exits), KVM_STAT_VCPU },
+	{ "wait",	  VCPU_STAT(wait_exits) },
+	{ "cache",	  VCPU_STAT(cache_exits) },
+	{ "signal",	  VCPU_STAT(signal_exits) },
+	{ "interrupt",	  VCPU_STAT(int_exits) },
+	{ "cop_unusable", VCPU_STAT(cop_unusable_exits) },
+	{ "tlbmod",	  VCPU_STAT(tlbmod_exits) },
+	{ "tlbmiss_ld",	  VCPU_STAT(tlbmiss_ld_exits) },
+	{ "tlbmiss_st",	  VCPU_STAT(tlbmiss_st_exits) },
+	{ "addrerr_st",	  VCPU_STAT(addrerr_st_exits) },
+	{ "addrerr_ld",	  VCPU_STAT(addrerr_ld_exits) },
+	{ "syscall",	  VCPU_STAT(syscall_exits) },
+	{ "resvd_inst",	  VCPU_STAT(resvd_inst_exits) },
+	{ "break_inst",	  VCPU_STAT(break_inst_exits) },
+	{ "trap_inst",	  VCPU_STAT(trap_inst_exits) },
+	{ "msa_fpe",	  VCPU_STAT(msa_fpe_exits) },
+	{ "fpe",	  VCPU_STAT(fpe_exits) },
+	{ "msa_disabled", VCPU_STAT(msa_disabled_exits) },
+	{ "flush_dcache", VCPU_STAT(flush_dcache_exits) },
 #ifdef CONFIG_KVM_MIPS_VZ
-	{ "vz_gpsi",	  VCPU_STAT(vz_gpsi_exits),	 KVM_STAT_VCPU },
-	{ "vz_gsfc",	  VCPU_STAT(vz_gsfc_exits),	 KVM_STAT_VCPU },
-	{ "vz_hc",	  VCPU_STAT(vz_hc_exits),	 KVM_STAT_VCPU },
-	{ "vz_grr",	  VCPU_STAT(vz_grr_exits),	 KVM_STAT_VCPU },
-	{ "vz_gva",	  VCPU_STAT(vz_gva_exits),	 KVM_STAT_VCPU },
-	{ "vz_ghfc",	  VCPU_STAT(vz_ghfc_exits),	 KVM_STAT_VCPU },
-	{ "vz_gpa",	  VCPU_STAT(vz_gpa_exits),	 KVM_STAT_VCPU },
-	{ "vz_resvd",	  VCPU_STAT(vz_resvd_exits),	 KVM_STAT_VCPU },
+	{ "vz_gpsi",	  VCPU_STAT(vz_gpsi_exits) },
+	{ "vz_gsfc",	  VCPU_STAT(vz_gsfc_exits) },
+	{ "vz_hc",	  VCPU_STAT(vz_hc_exits) },
+	{ "vz_grr",	  VCPU_STAT(vz_grr_exits) },
+	{ "vz_gva",	  VCPU_STAT(vz_gva_exits) },
+	{ "vz_ghfc",	  VCPU_STAT(vz_ghfc_exits) },
+	{ "vz_gpa",	  VCPU_STAT(vz_gpa_exits) },
+	{ "vz_resvd",	  VCPU_STAT(vz_resvd_exits) },
 #endif
-	{ "halt_successful_poll", VCPU_STAT(halt_successful_poll), KVM_STAT_VCPU },
-	{ "halt_attempted_poll", VCPU_STAT(halt_attempted_poll), KVM_STAT_VCPU },
-	{ "halt_poll_invalid", VCPU_STAT(halt_poll_invalid), KVM_STAT_VCPU },
-	{ "halt_wakeup",  VCPU_STAT(halt_wakeup),	 KVM_STAT_VCPU },
+	{ "halt_successful_poll", VCPU_STAT(halt_successful_poll) },
+	{ "halt_attempted_poll", VCPU_STAT(halt_attempted_poll) },
+	{ "halt_poll_invalid", VCPU_STAT(halt_poll_invalid) },
+	{ "halt_wakeup",  VCPU_STAT(halt_wakeup) },
 	{NULL}
 };
 
diff --git a/arch/powerpc/kvm/book3s.c b/arch/powerpc/kvm/book3s.c
index 5690a1f9b976..55cb728ba06e 100644
--- a/arch/powerpc/kvm/book3s.c
+++ b/arch/powerpc/kvm/book3s.c
@@ -36,9 +36,6 @@
 #include "book3s.h"
 #include "trace.h"
 
-#define VM_STAT(x, ...) offsetof(struct kvm, stat.x), KVM_STAT_VM, ## __VA_ARGS__
-#define VCPU_STAT(x, ...) offsetof(struct kvm_vcpu, stat.x), KVM_STAT_VCPU, ## __VA_ARGS__
-
 /* #define EXIT_DEBUG */
 
 struct kvm_stats_debugfs_item debugfs_entries[] = {
diff --git a/arch/powerpc/kvm/booke.c b/arch/powerpc/kvm/booke.c
index 6c18ea88fd25..fb8fa7060804 100644
--- a/arch/powerpc/kvm/booke.c
+++ b/arch/powerpc/kvm/booke.c
@@ -35,9 +35,6 @@
 
 unsigned long kvmppc_booke_handlers;
 
-#define VM_STAT(x) offsetof(struct kvm, stat.x), KVM_STAT_VM
-#define VCPU_STAT(x) offsetof(struct kvm_vcpu, stat.x), KVM_STAT_VCPU
-
 struct kvm_stats_debugfs_item debugfs_entries[] = {
 	{ "mmio",       VCPU_STAT(mmio_exits) },
 	{ "sig",        VCPU_STAT(signal_exits) },
diff --git a/arch/s390/kvm/kvm-s390.c b/arch/s390/kvm/kvm-s390.c
index 19a81024fe16..1a7bf8759750 100644
--- a/arch/s390/kvm/kvm-s390.c
+++ b/arch/s390/kvm/kvm-s390.c
@@ -57,9 +57,6 @@
 #define VCPU_IRQS_MAX_BUF (sizeof(struct kvm_s390_irq) * \
 			   (KVM_MAX_VCPUS + LOCAL_IRQS))
 
-#define VCPU_STAT(x) offsetof(struct kvm_vcpu, stat.x), KVM_STAT_VCPU
-#define VM_STAT(x) offsetof(struct kvm, stat.x), KVM_STAT_VM
-
 struct kvm_stats_debugfs_item debugfs_entries[] = {
 	{ "userspace_handled", VCPU_STAT(exit_userspace) },
 	{ "exit_null", VCPU_STAT(exit_null) },
diff --git a/arch/x86/kvm/x86.c b/arch/x86/kvm/x86.c
index b8124b562dea..fb035d304004 100644
--- a/arch/x86/kvm/x86.c
+++ b/arch/x86/kvm/x86.c
@@ -97,9 +97,6 @@ static u64 __read_mostly efer_reserved_bits = ~((u64)EFER_SCE);
 
 static u64 __read_mostly cr4_reserved_bits = CR4_RESERVED_BITS;
 
-#define VM_STAT(x, ...) offsetof(struct kvm, stat.x), KVM_STAT_VM, ## __VA_ARGS__
-#define VCPU_STAT(x, ...) offsetof(struct kvm_vcpu, stat.x), KVM_STAT_VCPU, ## __VA_ARGS__
-
 #define KVM_X2APIC_API_VALID_FLAGS (KVM_X2APIC_API_USE_32BIT_IDS | \
                                     KVM_X2APIC_API_DISABLE_BROADCAST_QUIRK)
 
diff --git a/include/linux/kvm_host.h b/include/linux/kvm_host.h
index 6d58beb65454..e02d38c7fff1 100644
--- a/include/linux/kvm_host.h
+++ b/include/linux/kvm_host.h
@@ -1130,6 +1130,9 @@ struct kvm_stats_debugfs_item {
 #define KVM_DBGFS_GET_MODE(dbgfs_item)                                         \
 	((dbgfs_item)->mode ? (dbgfs_item)->mode : 0644)
 
+#define VM_STAT(x, ...) offsetof(struct kvm, stat.x), KVM_STAT_VM, ## __VA_ARGS__
+#define VCPU_STAT(x, ...) offsetof(struct kvm_vcpu, stat.x), KVM_STAT_VCPU, ## __VA_ARGS__
+
 extern struct kvm_stats_debugfs_item debugfs_entries[];
 extern struct dentry *kvm_debugfs_dir;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
