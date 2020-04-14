Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A161A83E7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 17:57:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i2p1NsDJv/XabbStW01/tBPBu3qbiS06bzCaWFYLFmA=; b=njfnwK8YVLki+F
	sVYeO08YnG1mbdKxAGWzKI4kYXLr6Q4ACorJR9F3NStnXFVMStv4iX9zf3dBMIeS8MnBohteFuSy2
	Ikrovkb45ElJ7hD566ZA7FgF3rTNBr0aMzpKyYOYX9l5gSBb6rVWE5X7mRuNqn9j/gD0Ru/ntOTzs
	e4Vwt1FJ9vQ4EUweHVkt8vg4+AYGPC9gnlqROe4PvGKGkYkTDWUDdpR7MGdbokgtGYXeMJPbMpK5Z
	kt7eCuIgqTilWx9WxnapaKDhCp72R5RWBPCR9YNE2iYrN3+PzrZTf3ncvk6F7AxKhLKEEVPnk98IG
	4oSqS9NljpECENN+VrfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jONw3-0003bQ-6t; Tue, 14 Apr 2020 15:57:15 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jONvp-0003Zq-NG
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 15:57:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586879819;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=IqKKfcaH+P6exaCYuTcxpJiBR+vkLlfZiQPO/qM/6qs=;
 b=dU/aYVbp2svvz3o2xjCL4QidTxj4P6iJ01K0AuPOMdRDHoA2b/cEu3a0Cd6rvqGK/g4msh
 9L9Vg+qTAjQZFgH4qvPWS4fSQ8xj9axUC03/CIwFi8H3MSTRXPR1VQsdQBpMVrHoyf1WRj
 ec15tUFhCeQcc4lT8FWpgl0jFdiMsZM=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-101-dz9NL5XiM_yMovjLnnS2CA-1; Tue, 14 Apr 2020 11:56:55 -0400
X-MC-Unique: dz9NL5XiM_yMovjLnnS2CA-1
Received: by mail-wr1-f72.google.com with SMTP id g6so8908436wru.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 08:56:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oe08nHT0YFTUNv7T5Bw/0FcNuC5hFqGnfJa7ybBFgpg=;
 b=nAtKhDV7mTxsnhHhFeKjSUlGfuXYak0HcIHAtZa9Y2fJ3vN22CLMlm5PR5ospyf4tE
 1WBSrMH5EFlKA3nZ4zZmvjNog+MMSDI4UoEh6daG5758agUGqaotFxDP9hF4XH+NseZr
 ETkaMUcnaGl4DUWOIcbLB+QwexC/JFlIrmgbBOE0ZeDwedV5zZqeuj6n97aVjUwHM81P
 E24THsMCKrtH3RGUmoLl+S1KfUFtQufizHkNDA5dqRKT+fnwPs/n59B6x1k1B8BkMGMQ
 g1YX/9pU+9eXnsYYO5AZK4tpKWcN7uUuuTDkWxf/1r6yS1h9w6GWByeo4wH8kEWbHXHE
 7LAw==
X-Gm-Message-State: AGi0PuYqkRoU3aLls8KCaXciBlhLIS0CIKVQJO2BvilknF1aAdJa57X4
 Pk8oYEEzzmrfbPSwegy1m90D751FbO59Zchds9DAe+9ekHH6HUUZ3AXyHNKrr2c+8PeTvAUUgPW
 hpQXBYuHmFlsE7EZ/jCYY54hsDMiIBeroc1o=
X-Received: by 2002:a7b:c250:: with SMTP id b16mr570091wmj.100.1586879813627; 
 Tue, 14 Apr 2020 08:56:53 -0700 (PDT)
X-Google-Smtp-Source: APiQypIIJFGhe7FS7TJ0jpwjeqAGVSQCIjinsBY1w0yUfN55I6RH8qf8Nj6ETgGZBVwtCZSrRz/M/w==
X-Received: by 2002:a7b:c250:: with SMTP id b16mr570035wmj.100.1586879813227; 
 Tue, 14 Apr 2020 08:56:53 -0700 (PDT)
Received: from localhost.localdomain.com ([194.230.155.210])
 by smtp.gmail.com with ESMTPSA id s6sm18865345wmh.17.2020.04.14.08.56.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 08:56:52 -0700 (PDT)
From: Emanuele Giuseppe Esposito <eesposit@redhat.com>
To: kvm@vger.kernel.org
Subject: [PATCH v2] kvm_host: unify VM_STAT and VCPU_STAT definitions in a
 single place
Date: Tue, 14 Apr 2020 17:56:25 +0200
Message-Id: <20200414155625.20559-1-eesposit@redhat.com>
X-Mailer: git-send-email 2.25.2
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_085701_927310_2209700A 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-kernel@vger.kernel.org, Paul Mackerras <paulus@ozlabs.org>,
 kvmarm@lists.cs.columbia.edu, Emanuele Giuseppe Esposito <eesposit@redhat.com>,
 linux-s390@vger.kernel.org, Janosch Frank <frankja@linux.ibm.com>,
 Marc Zyngier <maz@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>, linux-mips@vger.kernel.org,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvm-ppc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>,
 Cornelia Huck <cohuck@redhat.com>,
 =?UTF-8?q?Philippe=20Mathieu-Daud=C3=A9?= <f4bug@amsat.org>,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 James Morse <james.morse@arm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>
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
 arch/arm64/kvm/guest.c    |  23 ++---
 arch/mips/kvm/mips.c      |  61 ++++++------
 arch/powerpc/kvm/book3s.c |  61 ++++++------
 arch/powerpc/kvm/booke.c  |  41 ++++----
 arch/s390/kvm/kvm-s390.c  | 203 +++++++++++++++++++-------------------
 arch/x86/kvm/x86.c        |  80 +++++++--------
 include/linux/kvm_host.h  |   5 +
 7 files changed, 231 insertions(+), 243 deletions(-)

diff --git a/arch/arm64/kvm/guest.c b/arch/arm64/kvm/guest.c
index 23ebe51410f0..8417b200bec9 100644
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
+	VCPU_STAT("halt_successful_poll", halt_successful_poll),
+	VCPU_STAT("halt_attempted_poll", halt_attempted_poll),
+	VCPU_STAT("halt_poll_invalid", halt_poll_invalid),
+	VCPU_STAT("halt_wakeup", halt_wakeup),
+	VCPU_STAT("hvc_exit_stat", hvc_exit_stat),
+	VCPU_STAT("wfe_exit_stat", wfe_exit_stat),
+	VCPU_STAT("wfi_exit_stat", wfi_exit_stat),
+	VCPU_STAT("mmio_exit_user", mmio_exit_user),
+	VCPU_STAT("mmio_exit_kernel", mmio_exit_kernel),
+	VCPU_STAT("exits", exits),
 	{ NULL }
 };
 
diff --git a/arch/mips/kvm/mips.c b/arch/mips/kvm/mips.c
index 8f05dd0a0f4e..fdf1c14d9205 100644
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
+	VCPU_STAT("wait", wait_exits),
+	VCPU_STAT("cache", cache_exits),
+	VCPU_STAT("signal", signal_exits),
+	VCPU_STAT("interrupt", int_exits),
+	VCPU_STAT("cop_unusable", cop_unusable_exits),
+	VCPU_STAT("tlbmod", tlbmod_exits),
+	VCPU_STAT("tlbmiss_ld", tlbmiss_ld_exits),
+	VCPU_STAT("tlbmiss_st", tlbmiss_st_exits),
+	VCPU_STAT("addrerr_st", addrerr_st_exits),
+	VCPU_STAT("addrerr_ld", addrerr_ld_exits),
+	VCPU_STAT("syscall", syscall_exits),
+	VCPU_STAT("resvd_inst", resvd_inst_exits),
+	VCPU_STAT("break_inst", break_inst_exits),
+	VCPU_STAT("trap_inst", trap_inst_exits),
+	VCPU_STAT("msa_fpe", msa_fpe_exits),
+	VCPU_STAT("fpe", fpe_exits),
+	VCPU_STAT("msa_disabled", msa_disabled_exits),
+	VCPU_STAT("flush_dcache", flush_dcache_exits),
 #ifdef CONFIG_KVM_MIPS_VZ
-	{ "vz_gpsi",	  VCPU_STAT(vz_gpsi_exits),	 KVM_STAT_VCPU },
-	{ "vz_gsfc",	  VCPU_STAT(vz_gsfc_exits),	 KVM_STAT_VCPU },
-	{ "vz_hc",	  VCPU_STAT(vz_hc_exits),	 KVM_STAT_VCPU },
-	{ "vz_grr",	  VCPU_STAT(vz_grr_exits),	 KVM_STAT_VCPU },
-	{ "vz_gva",	  VCPU_STAT(vz_gva_exits),	 KVM_STAT_VCPU },
-	{ "vz_ghfc",	  VCPU_STAT(vz_ghfc_exits),	 KVM_STAT_VCPU },
-	{ "vz_gpa",	  VCPU_STAT(vz_gpa_exits),	 KVM_STAT_VCPU },
-	{ "vz_resvd",	  VCPU_STAT(vz_resvd_exits),	 KVM_STAT_VCPU },
+	VCPU_STAT("vz_gpsi", vz_gpsi_exits),
+	VCPU_STAT("vz_gsfc", vz_gsfc_exits),
+	VCPU_STAT("vz_hc", vz_hc_exits),
+	VCPU_STAT("vz_grr", vz_grr_exits),
+	VCPU_STAT("vz_gva", vz_gva_exits),
+	VCPU_STAT("vz_ghfc", vz_ghfc_exits),
+	VCPU_STAT("vz_gpa", vz_gpa_exits),
+	VCPU_STAT("vz_resvd", vz_resvd_exits),
 #endif
-	{ "halt_successful_poll", VCPU_STAT(halt_successful_poll), KVM_STAT_VCPU },
-	{ "halt_attempted_poll", VCPU_STAT(halt_attempted_poll), KVM_STAT_VCPU },
-	{ "halt_poll_invalid", VCPU_STAT(halt_poll_invalid), KVM_STAT_VCPU },
-	{ "halt_wakeup",  VCPU_STAT(halt_wakeup),	 KVM_STAT_VCPU },
+	VCPU_STAT("halt_successful_poll", halt_successful_poll),
+	VCPU_STAT("halt_attempted_poll", halt_attempted_poll),
+	VCPU_STAT("halt_poll_invalid", halt_poll_invalid),
+	VCPU_STAT("halt_wakeup", halt_wakeup),
 	{NULL}
 };
 
diff --git a/arch/powerpc/kvm/book3s.c b/arch/powerpc/kvm/book3s.c
index 5690a1f9b976..37508a356f28 100644
--- a/arch/powerpc/kvm/book3s.c
+++ b/arch/powerpc/kvm/book3s.c
@@ -36,41 +36,38 @@
 #include "book3s.h"
 #include "trace.h"
 
-#define VM_STAT(x, ...) offsetof(struct kvm, stat.x), KVM_STAT_VM, ## __VA_ARGS__
-#define VCPU_STAT(x, ...) offsetof(struct kvm_vcpu, stat.x), KVM_STAT_VCPU, ## __VA_ARGS__
-
 /* #define EXIT_DEBUG */
 
 struct kvm_stats_debugfs_item debugfs_entries[] = {
-	{ "exits",       VCPU_STAT(sum_exits) },
-	{ "mmio",        VCPU_STAT(mmio_exits) },
-	{ "sig",         VCPU_STAT(signal_exits) },
-	{ "sysc",        VCPU_STAT(syscall_exits) },
-	{ "inst_emu",    VCPU_STAT(emulated_inst_exits) },
-	{ "dec",         VCPU_STAT(dec_exits) },
-	{ "ext_intr",    VCPU_STAT(ext_intr_exits) },
-	{ "queue_intr",  VCPU_STAT(queue_intr) },
-	{ "halt_poll_success_ns",	VCPU_STAT(halt_poll_success_ns) },
-	{ "halt_poll_fail_ns",		VCPU_STAT(halt_poll_fail_ns) },
-	{ "halt_wait_ns",		VCPU_STAT(halt_wait_ns) },
-	{ "halt_successful_poll", VCPU_STAT(halt_successful_poll), },
-	{ "halt_attempted_poll", VCPU_STAT(halt_attempted_poll), },
-	{ "halt_successful_wait",	VCPU_STAT(halt_successful_wait) },
-	{ "halt_poll_invalid", VCPU_STAT(halt_poll_invalid) },
-	{ "halt_wakeup", VCPU_STAT(halt_wakeup) },
-	{ "pf_storage",  VCPU_STAT(pf_storage) },
-	{ "sp_storage",  VCPU_STAT(sp_storage) },
-	{ "pf_instruc",  VCPU_STAT(pf_instruc) },
-	{ "sp_instruc",  VCPU_STAT(sp_instruc) },
-	{ "ld",          VCPU_STAT(ld) },
-	{ "ld_slow",     VCPU_STAT(ld_slow) },
-	{ "st",          VCPU_STAT(st) },
-	{ "st_slow",     VCPU_STAT(st_slow) },
-	{ "pthru_all",       VCPU_STAT(pthru_all) },
-	{ "pthru_host",      VCPU_STAT(pthru_host) },
-	{ "pthru_bad_aff",   VCPU_STAT(pthru_bad_aff) },
-	{ "largepages_2M",    VM_STAT(num_2M_pages, .mode = 0444) },
-	{ "largepages_1G",    VM_STAT(num_1G_pages, .mode = 0444) },
+	VCPU_STAT("exits", sum_exits),
+	VCPU_STAT("mmio", mmio_exits),
+	VCPU_STAT("sig", signal_exits),
+	VCPU_STAT("sysc", syscall_exits),
+	VCPU_STAT("inst_emu", emulated_inst_exits),
+	VCPU_STAT("dec", dec_exits),
+	VCPU_STAT("ext_intr", ext_intr_exits),
+	VCPU_STAT("queue_intr", queue_intr),
+	VCPU_STAT("halt_poll_success_ns", halt_poll_success_ns),
+	VCPU_STAT("halt_poll_fail_ns", halt_poll_fail_ns),
+	VCPU_STAT("halt_wait_ns", halt_wait_ns),
+	VCPU_STAT("halt_successful_poll", halt_successful_poll),
+	VCPU_STAT("halt_attempted_poll", halt_attempted_poll),
+	VCPU_STAT("halt_successful_wait", halt_successful_wait),
+	VCPU_STAT("halt_poll_invalid", halt_poll_invalid),
+	VCPU_STAT("halt_wakeup", halt_wakeup),
+	VCPU_STAT("pf_storage", pf_storage),
+	VCPU_STAT("sp_storage", sp_storage),
+	VCPU_STAT("pf_instruc", pf_instruc),
+	VCPU_STAT("sp_instruc", sp_instruc),
+	VCPU_STAT("ld", ld),
+	VCPU_STAT("ld_slow", ld_slow),
+	VCPU_STAT("st", st),
+	VCPU_STAT("st_slow", st_slow),
+	VCPU_STAT("pthru_all", pthru_all),
+	VCPU_STAT("pthru_host", pthru_host),
+	VCPU_STAT("pthru_bad_aff", pthru_bad_aff),
+	VM_STAT("largepages_2M", num_2M_pages, .mode = 0444),
+	VM_STAT("largepages_1G", num_1G_pages, .mode = 0444),
 	{ NULL }
 };
 
diff --git a/arch/powerpc/kvm/booke.c b/arch/powerpc/kvm/booke.c
index 6c18ea88fd25..c2984cb6dfa7 100644
--- a/arch/powerpc/kvm/booke.c
+++ b/arch/powerpc/kvm/booke.c
@@ -35,29 +35,26 @@
 
 unsigned long kvmppc_booke_handlers;
 
-#define VM_STAT(x) offsetof(struct kvm, stat.x), KVM_STAT_VM
-#define VCPU_STAT(x) offsetof(struct kvm_vcpu, stat.x), KVM_STAT_VCPU
-
 struct kvm_stats_debugfs_item debugfs_entries[] = {
-	{ "mmio",       VCPU_STAT(mmio_exits) },
-	{ "sig",        VCPU_STAT(signal_exits) },
-	{ "itlb_r",     VCPU_STAT(itlb_real_miss_exits) },
-	{ "itlb_v",     VCPU_STAT(itlb_virt_miss_exits) },
-	{ "dtlb_r",     VCPU_STAT(dtlb_real_miss_exits) },
-	{ "dtlb_v",     VCPU_STAT(dtlb_virt_miss_exits) },
-	{ "sysc",       VCPU_STAT(syscall_exits) },
-	{ "isi",        VCPU_STAT(isi_exits) },
-	{ "dsi",        VCPU_STAT(dsi_exits) },
-	{ "inst_emu",   VCPU_STAT(emulated_inst_exits) },
-	{ "dec",        VCPU_STAT(dec_exits) },
-	{ "ext_intr",   VCPU_STAT(ext_intr_exits) },
-	{ "halt_successful_poll", VCPU_STAT(halt_successful_poll) },
-	{ "halt_attempted_poll", VCPU_STAT(halt_attempted_poll) },
-	{ "halt_poll_invalid", VCPU_STAT(halt_poll_invalid) },
-	{ "halt_wakeup", VCPU_STAT(halt_wakeup) },
-	{ "doorbell", VCPU_STAT(dbell_exits) },
-	{ "guest doorbell", VCPU_STAT(gdbell_exits) },
-	{ "remote_tlb_flush", VM_STAT(remote_tlb_flush) },
+	VCPU_STAT("mmio", mmio_exits),
+	VCPU_STAT("sig", signal_exits),
+	VCPU_STAT("itlb_r", itlb_real_miss_exits),
+	VCPU_STAT("itlb_v", itlb_virt_miss_exits),
+	VCPU_STAT("dtlb_r", dtlb_real_miss_exits),
+	VCPU_STAT("dtlb_v", dtlb_virt_miss_exits),
+	VCPU_STAT("sysc", syscall_exits),
+	VCPU_STAT("isi", isi_exits),
+	VCPU_STAT("dsi", dsi_exits),
+	VCPU_STAT("inst_emu", emulated_inst_exits),
+	VCPU_STAT("dec", dec_exits),
+	VCPU_STAT("ext_intr", ext_intr_exits),
+	VCPU_STAT("halt_successful_poll", halt_successful_poll),
+	VCPU_STAT("halt_attempted_poll", halt_attempted_poll),
+	VCPU_STAT("halt_poll_invalid", halt_poll_invalid),
+	VCPU_STAT("halt_wakeup", halt_wakeup),
+	VCPU_STAT("doorbell", dbell_exits),
+	VCPU_STAT("guest doorbell", gdbell_exits),
+	VM_STAT("remote_tlb_flush", remote_tlb_flush),
 	{ NULL }
 };
 
diff --git a/arch/s390/kvm/kvm-s390.c b/arch/s390/kvm/kvm-s390.c
index 19a81024fe16..dbeb7da07f18 100644
--- a/arch/s390/kvm/kvm-s390.c
+++ b/arch/s390/kvm/kvm-s390.c
@@ -57,110 +57,107 @@
 #define VCPU_IRQS_MAX_BUF (sizeof(struct kvm_s390_irq) * \
 			   (KVM_MAX_VCPUS + LOCAL_IRQS))
 
-#define VCPU_STAT(x) offsetof(struct kvm_vcpu, stat.x), KVM_STAT_VCPU
-#define VM_STAT(x) offsetof(struct kvm, stat.x), KVM_STAT_VM
-
 struct kvm_stats_debugfs_item debugfs_entries[] = {
-	{ "userspace_handled", VCPU_STAT(exit_userspace) },
-	{ "exit_null", VCPU_STAT(exit_null) },
-	{ "exit_validity", VCPU_STAT(exit_validity) },
-	{ "exit_stop_request", VCPU_STAT(exit_stop_request) },
-	{ "exit_external_request", VCPU_STAT(exit_external_request) },
-	{ "exit_io_request", VCPU_STAT(exit_io_request) },
-	{ "exit_external_interrupt", VCPU_STAT(exit_external_interrupt) },
-	{ "exit_instruction", VCPU_STAT(exit_instruction) },
-	{ "exit_pei", VCPU_STAT(exit_pei) },
-	{ "exit_program_interruption", VCPU_STAT(exit_program_interruption) },
-	{ "exit_instr_and_program_int", VCPU_STAT(exit_instr_and_program) },
-	{ "exit_operation_exception", VCPU_STAT(exit_operation_exception) },
-	{ "halt_successful_poll", VCPU_STAT(halt_successful_poll) },
-	{ "halt_attempted_poll", VCPU_STAT(halt_attempted_poll) },
-	{ "halt_poll_invalid", VCPU_STAT(halt_poll_invalid) },
-	{ "halt_no_poll_steal", VCPU_STAT(halt_no_poll_steal) },
-	{ "halt_wakeup", VCPU_STAT(halt_wakeup) },
-	{ "instruction_lctlg", VCPU_STAT(instruction_lctlg) },
-	{ "instruction_lctl", VCPU_STAT(instruction_lctl) },
-	{ "instruction_stctl", VCPU_STAT(instruction_stctl) },
-	{ "instruction_stctg", VCPU_STAT(instruction_stctg) },
-	{ "deliver_ckc", VCPU_STAT(deliver_ckc) },
-	{ "deliver_cputm", VCPU_STAT(deliver_cputm) },
-	{ "deliver_emergency_signal", VCPU_STAT(deliver_emergency_signal) },
-	{ "deliver_external_call", VCPU_STAT(deliver_external_call) },
-	{ "deliver_service_signal", VCPU_STAT(deliver_service_signal) },
-	{ "deliver_virtio", VCPU_STAT(deliver_virtio) },
-	{ "deliver_stop_signal", VCPU_STAT(deliver_stop_signal) },
-	{ "deliver_prefix_signal", VCPU_STAT(deliver_prefix_signal) },
-	{ "deliver_restart_signal", VCPU_STAT(deliver_restart_signal) },
-	{ "deliver_program", VCPU_STAT(deliver_program) },
-	{ "deliver_io", VCPU_STAT(deliver_io) },
-	{ "deliver_machine_check", VCPU_STAT(deliver_machine_check) },
-	{ "exit_wait_state", VCPU_STAT(exit_wait_state) },
-	{ "inject_ckc", VCPU_STAT(inject_ckc) },
-	{ "inject_cputm", VCPU_STAT(inject_cputm) },
-	{ "inject_external_call", VCPU_STAT(inject_external_call) },
-	{ "inject_float_mchk", VM_STAT(inject_float_mchk) },
-	{ "inject_emergency_signal", VCPU_STAT(inject_emergency_signal) },
-	{ "inject_io", VM_STAT(inject_io) },
-	{ "inject_mchk", VCPU_STAT(inject_mchk) },
-	{ "inject_pfault_done", VM_STAT(inject_pfault_done) },
-	{ "inject_program", VCPU_STAT(inject_program) },
-	{ "inject_restart", VCPU_STAT(inject_restart) },
-	{ "inject_service_signal", VM_STAT(inject_service_signal) },
-	{ "inject_set_prefix", VCPU_STAT(inject_set_prefix) },
-	{ "inject_stop_signal", VCPU_STAT(inject_stop_signal) },
-	{ "inject_pfault_init", VCPU_STAT(inject_pfault_init) },
-	{ "inject_virtio", VM_STAT(inject_virtio) },
-	{ "instruction_epsw", VCPU_STAT(instruction_epsw) },
-	{ "instruction_gs", VCPU_STAT(instruction_gs) },
-	{ "instruction_io_other", VCPU_STAT(instruction_io_other) },
-	{ "instruction_lpsw", VCPU_STAT(instruction_lpsw) },
-	{ "instruction_lpswe", VCPU_STAT(instruction_lpswe) },
-	{ "instruction_pfmf", VCPU_STAT(instruction_pfmf) },
-	{ "instruction_ptff", VCPU_STAT(instruction_ptff) },
-	{ "instruction_stidp", VCPU_STAT(instruction_stidp) },
-	{ "instruction_sck", VCPU_STAT(instruction_sck) },
-	{ "instruction_sckpf", VCPU_STAT(instruction_sckpf) },
-	{ "instruction_spx", VCPU_STAT(instruction_spx) },
-	{ "instruction_stpx", VCPU_STAT(instruction_stpx) },
-	{ "instruction_stap", VCPU_STAT(instruction_stap) },
-	{ "instruction_iske", VCPU_STAT(instruction_iske) },
-	{ "instruction_ri", VCPU_STAT(instruction_ri) },
-	{ "instruction_rrbe", VCPU_STAT(instruction_rrbe) },
-	{ "instruction_sske", VCPU_STAT(instruction_sske) },
-	{ "instruction_ipte_interlock", VCPU_STAT(instruction_ipte_interlock) },
-	{ "instruction_essa", VCPU_STAT(instruction_essa) },
-	{ "instruction_stsi", VCPU_STAT(instruction_stsi) },
-	{ "instruction_stfl", VCPU_STAT(instruction_stfl) },
-	{ "instruction_tb", VCPU_STAT(instruction_tb) },
-	{ "instruction_tpi", VCPU_STAT(instruction_tpi) },
-	{ "instruction_tprot", VCPU_STAT(instruction_tprot) },
-	{ "instruction_tsch", VCPU_STAT(instruction_tsch) },
-	{ "instruction_sthyi", VCPU_STAT(instruction_sthyi) },
-	{ "instruction_sie", VCPU_STAT(instruction_sie) },
-	{ "instruction_sigp_sense", VCPU_STAT(instruction_sigp_sense) },
-	{ "instruction_sigp_sense_running", VCPU_STAT(instruction_sigp_sense_running) },
-	{ "instruction_sigp_external_call", VCPU_STAT(instruction_sigp_external_call) },
-	{ "instruction_sigp_emergency", VCPU_STAT(instruction_sigp_emergency) },
-	{ "instruction_sigp_cond_emergency", VCPU_STAT(instruction_sigp_cond_emergency) },
-	{ "instruction_sigp_start", VCPU_STAT(instruction_sigp_start) },
-	{ "instruction_sigp_stop", VCPU_STAT(instruction_sigp_stop) },
-	{ "instruction_sigp_stop_store_status", VCPU_STAT(instruction_sigp_stop_store_status) },
-	{ "instruction_sigp_store_status", VCPU_STAT(instruction_sigp_store_status) },
-	{ "instruction_sigp_store_adtl_status", VCPU_STAT(instruction_sigp_store_adtl_status) },
-	{ "instruction_sigp_set_arch", VCPU_STAT(instruction_sigp_arch) },
-	{ "instruction_sigp_set_prefix", VCPU_STAT(instruction_sigp_prefix) },
-	{ "instruction_sigp_restart", VCPU_STAT(instruction_sigp_restart) },
-	{ "instruction_sigp_cpu_reset", VCPU_STAT(instruction_sigp_cpu_reset) },
-	{ "instruction_sigp_init_cpu_reset", VCPU_STAT(instruction_sigp_init_cpu_reset) },
-	{ "instruction_sigp_unknown", VCPU_STAT(instruction_sigp_unknown) },
-	{ "instruction_diag_10", VCPU_STAT(diagnose_10) },
-	{ "instruction_diag_44", VCPU_STAT(diagnose_44) },
-	{ "instruction_diag_9c", VCPU_STAT(diagnose_9c) },
-	{ "diag_9c_ignored", VCPU_STAT(diagnose_9c_ignored) },
-	{ "instruction_diag_258", VCPU_STAT(diagnose_258) },
-	{ "instruction_diag_308", VCPU_STAT(diagnose_308) },
-	{ "instruction_diag_500", VCPU_STAT(diagnose_500) },
-	{ "instruction_diag_other", VCPU_STAT(diagnose_other) },
+	VCPU_STAT("userspace_handled", exit_userspace),
+	VCPU_STAT("exit_null", exit_null),
+	VCPU_STAT("exit_validity", exit_validity),
+	VCPU_STAT("exit_stop_request", exit_stop_request),
+	VCPU_STAT("exit_external_request", exit_external_request),
+	VCPU_STAT("exit_io_request", exit_io_request),
+	VCPU_STAT("exit_external_interrupt", exit_external_interrupt),
+	VCPU_STAT("exit_instruction", exit_instruction),
+	VCPU_STAT("exit_pei", exit_pei),
+	VCPU_STAT("exit_program_interruption", exit_program_interruption),
+	VCPU_STAT("exit_instr_and_program_int", exit_instr_and_program),
+	VCPU_STAT("exit_operation_exception", exit_operation_exception),
+	VCPU_STAT("halt_successful_poll", halt_successful_poll),
+	VCPU_STAT("halt_attempted_poll", halt_attempted_poll),
+	VCPU_STAT("halt_poll_invalid", halt_poll_invalid),
+	VCPU_STAT("halt_no_poll_steal", halt_no_poll_steal),
+	VCPU_STAT("halt_wakeup", halt_wakeup),
+	VCPU_STAT("instruction_lctlg", instruction_lctlg),
+	VCPU_STAT("instruction_lctl", instruction_lctl),
+	VCPU_STAT("instruction_stctl", instruction_stctl),
+	VCPU_STAT("instruction_stctg", instruction_stctg),
+	VCPU_STAT("deliver_ckc", deliver_ckc),
+	VCPU_STAT("deliver_cputm", deliver_cputm),
+	VCPU_STAT("deliver_emergency_signal", deliver_emergency_signal),
+	VCPU_STAT("deliver_external_call", deliver_external_call),
+	VCPU_STAT("deliver_service_signal", deliver_service_signal),
+	VCPU_STAT("deliver_virtio", deliver_virtio),
+	VCPU_STAT("deliver_stop_signal", deliver_stop_signal),
+	VCPU_STAT("deliver_prefix_signal", deliver_prefix_signal),
+	VCPU_STAT("deliver_restart_signal", deliver_restart_signal),
+	VCPU_STAT("deliver_program", deliver_program),
+	VCPU_STAT("deliver_io", deliver_io),
+	VCPU_STAT("deliver_machine_check", deliver_machine_check),
+	VCPU_STAT("exit_wait_state", exit_wait_state),
+	VCPU_STAT("inject_ckc", inject_ckc),
+	VCPU_STAT("inject_cputm", inject_cputm),
+	VCPU_STAT("inject_external_call", inject_external_call),
+	VM_STAT("inject_float_mchk", inject_float_mchk),
+	VCPU_STAT("inject_emergency_signal", inject_emergency_signal),
+	VM_STAT("inject_io", inject_io),
+	VCPU_STAT("inject_mchk", inject_mchk),
+	VM_STAT("inject_pfault_done", inject_pfault_done),
+	VCPU_STAT("inject_program", inject_program),
+	VCPU_STAT("inject_restart", inject_restart),
+	VM_STAT("inject_service_signal", inject_service_signal),
+	VCPU_STAT("inject_set_prefix", inject_set_prefix),
+	VCPU_STAT("inject_stop_signal", inject_stop_signal),
+	VCPU_STAT("inject_pfault_init", inject_pfault_init),
+	VM_STAT("inject_virtio", inject_virtio),
+	VCPU_STAT("instruction_epsw", instruction_epsw),
+	VCPU_STAT("instruction_gs", instruction_gs),
+	VCPU_STAT("instruction_io_other", instruction_io_other),
+	VCPU_STAT("instruction_lpsw", instruction_lpsw),
+	VCPU_STAT("instruction_lpswe", instruction_lpswe),
+	VCPU_STAT("instruction_pfmf", instruction_pfmf),
+	VCPU_STAT("instruction_ptff", instruction_ptff),
+	VCPU_STAT("instruction_stidp", instruction_stidp),
+	VCPU_STAT("instruction_sck", instruction_sck),
+	VCPU_STAT("instruction_sckpf", instruction_sckpf),
+	VCPU_STAT("instruction_spx", instruction_spx),
+	VCPU_STAT("instruction_stpx", instruction_stpx),
+	VCPU_STAT("instruction_stap", instruction_stap),
+	VCPU_STAT("instruction_iske", instruction_iske),
+	VCPU_STAT("instruction_ri", instruction_ri),
+	VCPU_STAT("instruction_rrbe", instruction_rrbe),
+	VCPU_STAT("instruction_sske", instruction_sske),
+	VCPU_STAT("instruction_ipte_interlock", instruction_ipte_interlock),
+	VCPU_STAT("instruction_essa", instruction_essa),
+	VCPU_STAT("instruction_stsi", instruction_stsi),
+	VCPU_STAT("instruction_stfl", instruction_stfl),
+	VCPU_STAT("instruction_tb", instruction_tb),
+	VCPU_STAT("instruction_tpi", instruction_tpi),
+	VCPU_STAT("instruction_tprot", instruction_tprot),
+	VCPU_STAT("instruction_tsch", instruction_tsch),
+	VCPU_STAT("instruction_sthyi", instruction_sthyi),
+	VCPU_STAT("instruction_sie", instruction_sie),
+	VCPU_STAT("instruction_sigp_sense", instruction_sigp_sense),
+	VCPU_STAT("instruction_sigp_sense_running", instruction_sigp_sense_running),
+	VCPU_STAT("instruction_sigp_external_call", instruction_sigp_external_call),
+	VCPU_STAT("instruction_sigp_emergency", instruction_sigp_emergency),
+	VCPU_STAT("instruction_sigp_cond_emergency", instruction_sigp_cond_emergency),
+	VCPU_STAT("instruction_sigp_start", instruction_sigp_start),
+	VCPU_STAT("instruction_sigp_stop", instruction_sigp_stop),
+	VCPU_STAT("instruction_sigp_stop_store_status", instruction_sigp_stop_store_status),
+	VCPU_STAT("instruction_sigp_store_status", instruction_sigp_store_status),
+	VCPU_STAT("instruction_sigp_store_adtl_status", instruction_sigp_store_adtl_status),
+	VCPU_STAT("instruction_sigp_set_arch", instruction_sigp_arch),
+	VCPU_STAT("instruction_sigp_set_prefix", instruction_sigp_prefix),
+	VCPU_STAT("instruction_sigp_restart", instruction_sigp_restart),
+	VCPU_STAT("instruction_sigp_cpu_reset", instruction_sigp_cpu_reset),
+	VCPU_STAT("instruction_sigp_init_cpu_reset", instruction_sigp_init_cpu_reset),
+	VCPU_STAT("instruction_sigp_unknown", instruction_sigp_unknown),
+	VCPU_STAT("instruction_diag_10", diagnose_10),
+	VCPU_STAT("instruction_diag_44", diagnose_44),
+	VCPU_STAT("instruction_diag_9c", diagnose_9c),
+	VCPU_STAT("diag_9c_ignored", diagnose_9c_ignored),
+	VCPU_STAT("instruction_diag_258", diagnose_258),
+	VCPU_STAT("instruction_diag_308", diagnose_308),
+	VCPU_STAT("instruction_diag_500", diagnose_500),
+	VCPU_STAT("instruction_diag_other", diagnose_other),
 	{ NULL }
 };
 
diff --git a/arch/x86/kvm/x86.c b/arch/x86/kvm/x86.c
index b8124b562dea..86d50db85ef4 100644
--- a/arch/x86/kvm/x86.c
+++ b/arch/x86/kvm/x86.c
@@ -97,9 +97,6 @@ static u64 __read_mostly efer_reserved_bits = ~((u64)EFER_SCE);
 
 static u64 __read_mostly cr4_reserved_bits = CR4_RESERVED_BITS;
 
-#define VM_STAT(x, ...) offsetof(struct kvm, stat.x), KVM_STAT_VM, ## __VA_ARGS__
-#define VCPU_STAT(x, ...) offsetof(struct kvm_vcpu, stat.x), KVM_STAT_VCPU, ## __VA_ARGS__
-
 #define KVM_X2APIC_API_VALID_FLAGS (KVM_X2APIC_API_USE_32BIT_IDS | \
                                     KVM_X2APIC_API_DISABLE_BROADCAST_QUIRK)
 
@@ -194,45 +191,44 @@ u64 __read_mostly supported_xss;
 EXPORT_SYMBOL_GPL(supported_xss);
 
 struct kvm_stats_debugfs_item debugfs_entries[] = {
-	{ "pf_fixed", VCPU_STAT(pf_fixed) },
-	{ "pf_guest", VCPU_STAT(pf_guest) },
-	{ "tlb_flush", VCPU_STAT(tlb_flush) },
-	{ "invlpg", VCPU_STAT(invlpg) },
-	{ "exits", VCPU_STAT(exits) },
-	{ "io_exits", VCPU_STAT(io_exits) },
-	{ "mmio_exits", VCPU_STAT(mmio_exits) },
-	{ "signal_exits", VCPU_STAT(signal_exits) },
-	{ "irq_window", VCPU_STAT(irq_window_exits) },
-	{ "nmi_window", VCPU_STAT(nmi_window_exits) },
-	{ "halt_exits", VCPU_STAT(halt_exits) },
-	{ "halt_successful_poll", VCPU_STAT(halt_successful_poll) },
-	{ "halt_attempted_poll", VCPU_STAT(halt_attempted_poll) },
-	{ "halt_poll_invalid", VCPU_STAT(halt_poll_invalid) },
-	{ "halt_wakeup", VCPU_STAT(halt_wakeup) },
-	{ "hypercalls", VCPU_STAT(hypercalls) },
-	{ "request_irq", VCPU_STAT(request_irq_exits) },
-	{ "irq_exits", VCPU_STAT(irq_exits) },
-	{ "host_state_reload", VCPU_STAT(host_state_reload) },
-	{ "fpu_reload", VCPU_STAT(fpu_reload) },
-	{ "insn_emulation", VCPU_STAT(insn_emulation) },
-	{ "insn_emulation_fail", VCPU_STAT(insn_emulation_fail) },
-	{ "irq_injections", VCPU_STAT(irq_injections) },
-	{ "nmi_injections", VCPU_STAT(nmi_injections) },
-	{ "req_event", VCPU_STAT(req_event) },
-	{ "l1d_flush", VCPU_STAT(l1d_flush) },
-	{ "mmu_shadow_zapped", VM_STAT(mmu_shadow_zapped) },
-	{ "mmu_pte_write", VM_STAT(mmu_pte_write) },
-	{ "mmu_pte_updated", VM_STAT(mmu_pte_updated) },
-	{ "mmu_pde_zapped", VM_STAT(mmu_pde_zapped) },
-	{ "mmu_flooded", VM_STAT(mmu_flooded) },
-	{ "mmu_recycled", VM_STAT(mmu_recycled) },
-	{ "mmu_cache_miss", VM_STAT(mmu_cache_miss) },
-	{ "mmu_unsync", VM_STAT(mmu_unsync) },
-	{ "remote_tlb_flush", VM_STAT(remote_tlb_flush) },
-	{ "largepages", VM_STAT(lpages, .mode = 0444) },
-	{ "nx_largepages_splitted", VM_STAT(nx_lpage_splits, .mode = 0444) },
-	{ "max_mmu_page_hash_collisions",
-		VM_STAT(max_mmu_page_hash_collisions) },
+	VCPU_STAT("pf_fixed", pf_fixed),
+	VCPU_STAT("pf_guest", pf_guest),
+	VCPU_STAT("tlb_flush", tlb_flush),
+	VCPU_STAT("invlpg", invlpg),
+	VCPU_STAT("exits", exits),
+	VCPU_STAT("io_exits", io_exits),
+	VCPU_STAT("mmio_exits", mmio_exits),
+	VCPU_STAT("signal_exits", signal_exits),
+	VCPU_STAT("irq_window", irq_window_exits),
+	VCPU_STAT("nmi_window", nmi_window_exits),
+	VCPU_STAT("halt_exits", halt_exits),
+	VCPU_STAT("halt_successful_poll", halt_successful_poll),
+	VCPU_STAT("halt_attempted_poll", halt_attempted_poll),
+	VCPU_STAT("halt_poll_invalid", halt_poll_invalid),
+	VCPU_STAT("halt_wakeup", halt_wakeup),
+	VCPU_STAT("hypercalls", hypercalls),
+	VCPU_STAT("request_irq", request_irq_exits),
+	VCPU_STAT("irq_exits", irq_exits),
+	VCPU_STAT("host_state_reload", host_state_reload),
+	VCPU_STAT("fpu_reload", fpu_reload),
+	VCPU_STAT("insn_emulation", insn_emulation),
+	VCPU_STAT("insn_emulation_fail", insn_emulation_fail),
+	VCPU_STAT("irq_injections", irq_injections),
+	VCPU_STAT("nmi_injections", nmi_injections),
+	VCPU_STAT("req_event", req_event),
+	VCPU_STAT("l1d_flush", l1d_flush),
+	VM_STAT("mmu_shadow_zapped", mmu_shadow_zapped),
+	VM_STAT("mmu_pte_write", mmu_pte_write),
+	VM_STAT("mmu_pte_updated", mmu_pte_updated),
+	VM_STAT("mmu_pde_zapped", mmu_pde_zapped),
+	VM_STAT("mmu_flooded", mmu_flooded),
+	VM_STAT("mmu_recycled", mmu_recycled),
+	VM_STAT("mmu_cache_miss", mmu_cache_miss),
+	VM_STAT("mmu_unsync", mmu_unsync),
+	VM_STAT("remote_tlb_flush", remote_tlb_flush),
+	VM_STAT("largepages", lpages, .mode = 0444),
+	VM_STAT("nx_largepages_splitted", nx_lpage_splits, .mode = 0444),
+	VM_STAT("max_mmu_page_hash_collisions", max_mmu_page_hash_collisions),
 	{ NULL }
 };
 
diff --git a/include/linux/kvm_host.h b/include/linux/kvm_host.h
index 6d58beb65454..2e6ead872957 100644
--- a/include/linux/kvm_host.h
+++ b/include/linux/kvm_host.h
@@ -1130,6 +1130,11 @@ struct kvm_stats_debugfs_item {
 #define KVM_DBGFS_GET_MODE(dbgfs_item)                                         \
 	((dbgfs_item)->mode ? (dbgfs_item)->mode : 0644)
 
+#define VM_STAT(n, x, ...) 													   \
+	{ n, offsetof(struct kvm, stat.x), KVM_STAT_VM, ## __VA_ARGS__ }
+#define VCPU_STAT(n, x, ...)												   \
+	{ n, offsetof(struct kvm_vcpu, stat.x), KVM_STAT_VCPU, ## __VA_ARGS__ }
+
 extern struct kvm_stats_debugfs_item debugfs_entries[];
 extern struct dentry *kvm_debugfs_dir;
 
-- 
2.25.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
