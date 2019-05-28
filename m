Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE1452CB38
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 18:11:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8CL5pet4Sp9ewhM2umHJjU06roBKQxZ9oSU8muYSNLg=; b=QWu9bAvm5PbRDh
	locjIO9pxXzUas5OEfZE9A1HUdnZQ0bz7vnVolvqVIjvSUgEEbE1yCosiyNuq3QBfKnDq0OcB4dcP
	46QB8+Jj8hxZ33QoGpUZfKGGpHQCiNhpE8WpOKezRVxtqd5VzIKrnpe7q4Sb+NcwDyiVWfEoXPVDx
	QzzcU+ITfT3tjzeCsCleS3AK5XRXLElnxAp8Hzd42zemM5u9ieASBUN+5619AuGJxp3fUj8KF/uGU
	Gcv94byRQlmAzQwK5gAcHz1p8pgUCfuo/AP6gAsqBuUnpp6DaVdyNl9PDpsYBoKuV2etm6VrnaCb8
	la1bfrb6THL+jiOc11GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVegm-0004OL-LC; Tue, 28 May 2019 16:11:00 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVegU-0004Hi-5O
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 16:10:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A5E6AA78;
 Tue, 28 May 2019 09:10:41 -0700 (PDT)
Received: from capper-debian.arm.com (unknown [10.37.12.41])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id EFE813F59C;
 Tue, 28 May 2019 09:10:39 -0700 (PDT)
From: Steve Capper <steve.capper@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 01/12] arm/arm64: KVM: Formalise end of direct linear map
Date: Tue, 28 May 2019 17:10:15 +0100
Message-Id: <20190528161026.13193-2-steve.capper@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190528161026.13193-1-steve.capper@arm.com>
References: <20190528161026.13193-1-steve.capper@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_091042_206604_5A180D57 
X-CRM114-Status: GOOD (  14.83  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: crecklin@redhat.com, ard.biesheuvel@linaro.org, marc.zyngier@arm.com,
 catalin.marinas@arm.com, bhsharma@redhat.com, will.deacon@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We assume that the direct linear map ends at ~0 in the KVM HYP map
intersection checking code. This assumption will become invalid later on
for arm64 when the address space of the kernel is re-arranged.

This patch introduces a new constant PAGE_OFFSET_END for both arm and
arm64 and defines it to be ~0UL

Signed-off-by: Steve Capper <steve.capper@arm.com>
---
 arch/arm/include/asm/memory.h   | 1 +
 arch/arm64/include/asm/memory.h | 1 +
 virt/kvm/arm/mmu.c              | 4 ++--
 3 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/memory.h b/arch/arm/include/asm/memory.h
index ed8fd0d19a3e..45c211fd50da 100644
--- a/arch/arm/include/asm/memory.h
+++ b/arch/arm/include/asm/memory.h
@@ -24,6 +24,7 @@
 
 /* PAGE_OFFSET - the virtual address of the start of the kernel image */
 #define PAGE_OFFSET		UL(CONFIG_PAGE_OFFSET)
+#define PAGE_OFFSET_END		(~0UL)
 
 #ifdef CONFIG_MMU
 
diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
index 8ffcf5a512bb..9fd387a63b9b 100644
--- a/arch/arm64/include/asm/memory.h
+++ b/arch/arm64/include/asm/memory.h
@@ -52,6 +52,7 @@
 	(UL(1) << VA_BITS) + 1)
 #define PAGE_OFFSET		(UL(0xffffffffffffffff) - \
 	(UL(1) << (VA_BITS - 1)) + 1)
+#define PAGE_OFFSET_END		(~0UL)
 #define KIMAGE_VADDR		(MODULES_END)
 #define BPF_JIT_REGION_START	(VA_START + KASAN_SHADOW_SIZE)
 #define BPF_JIT_REGION_SIZE	(SZ_128M)
diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
index 74b6582eaa3c..e1a777275b37 100644
--- a/virt/kvm/arm/mmu.c
+++ b/virt/kvm/arm/mmu.c
@@ -2202,10 +2202,10 @@ int kvm_mmu_init(void)
 	kvm_debug("IDMAP page: %lx\n", hyp_idmap_start);
 	kvm_debug("HYP VA range: %lx:%lx\n",
 		  kern_hyp_va(PAGE_OFFSET),
-		  kern_hyp_va((unsigned long)high_memory - 1));
+		  kern_hyp_va(PAGE_OFFSET_END));
 
 	if (hyp_idmap_start >= kern_hyp_va(PAGE_OFFSET) &&
-	    hyp_idmap_start <  kern_hyp_va((unsigned long)high_memory - 1) &&
+	    hyp_idmap_start <  kern_hyp_va(PAGE_OFFSET_END) &&
 	    hyp_idmap_start != (unsigned long)__hyp_idmap_text_start) {
 		/*
 		 * The idmap page is intersecting with the VA space,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
