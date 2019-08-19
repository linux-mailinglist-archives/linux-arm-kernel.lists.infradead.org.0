Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 079E291DAB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 09:17:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RDhx3fImQVNlkG2NERisDg3bt/4dqclYsKoEFBcrMVQ=; b=rXtP8T3fhvmcog
	uADd2d0dyrgvzRGcv93hA1hGvzxdL+FHrNv4hS+1MKb3YRHf+VUmm22goZCx52CPcWcyUFNUJmCbU
	vGj9vv2bEkGawp8vDoW/Vo1jzI+Cy1Bv1mliO2zwSPNEhEHXfYsHSTnu3nikJ+QIHFheWQMXbh0CK
	OPt0xdFC1Czilwtqzz52gmlesAxCRZhJ4Ax1kCB43NLbwr5EWMKyaPeFuTEHtS2nIHcZwLjEd7qpL
	mmZcektD4PbMKBcMKggC0gsutNqUrpiMw8ZYIwVcumll3Y/q5yloroLyJhkzuqGyZrVkRcNsBPann
	tDAjQayRqMEB3JlHvNNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzbuk-0000Bn-9m; Mon, 19 Aug 2019 07:17:14 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzbu9-0008WO-0M
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 07:16:39 +0000
Received: by mail-pg1-x541.google.com with SMTP id u17so666337pgi.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 00:16:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9cx5J3qJM1mKUm+2sKo6b0vnmeXJUlAVQcqbQi11PCo=;
 b=Nkd7rmP6tZfSZFEVomx+qLhiw//GX1Qn9kJ0y5HoW6q/VKI5A16Y4A0g2PyH95yU/g
 yuXsJyZ6jQ3N7/gNbpjjnKaX3NlTYJksu3zsygI/GtEFSkQABxNwdQwz9b71psMyxnOb
 JgxY6XJYqn+kgdDa5jtlBtAeGSltNwDOfgfyE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9cx5J3qJM1mKUm+2sKo6b0vnmeXJUlAVQcqbQi11PCo=;
 b=MnlSw5umbE3Wj8qlsOUTT2o/RMA8RGY2rvLN1fbxAlUaJVS8WAEHDsGydDEtFxSII6
 Lwab+g9/Gv08DBrzWJE4Qcs4UAIaJx7Op568PRu4zJzZqaOX//UIpm3OpmKlS7x383Gr
 YL04I9uigJfIOcTTfUXjUZ5qjwiUbqQ0lmkm9fsP5yBWywMR0C1wltXrUicps6991Tqp
 MO7rt6U7j+wKbDjmVT1oV/vJor99aFzUw6MOW9hVbbZtRunZ/mDlGM0buoDisLpx0WjO
 PagOJQypO7diOjOkLll8pi9Jald1gBQyb0n/pxASKcwDrhCnEhV6d+FUyAcnvfGB4ohp
 A1kQ==
X-Gm-Message-State: APjAAAUCnX7azE07Q7bDiiZY1xsjJX3Q1JexUYlKfluVbtb1j9yJjL67
 fEkxMMvPux0fuB19HjuZpyyCk7x+vU0=
X-Google-Smtp-Source: APXvYqyXcN/sT3MB06+Iu4VEbQf7G7zGXFXTOMO580qtc7olomGN/Wy8CDcp2kJ5H0aVodXZ0FaiKQ==
X-Received: by 2002:a65:5cca:: with SMTP id b10mr19137680pgt.365.1566198996064; 
 Mon, 19 Aug 2019 00:16:36 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id y9sm14691341pfn.152.2019.08.19.00.16.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 19 Aug 2019 00:16:35 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v8 1/3] arm64: map FDT as RW for early_init_dt_scan()
Date: Mon, 19 Aug 2019 15:16:02 +0800
Message-Id: <20190819071602.139014-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190819071602.139014-1-hsinyi@chromium.org>
References: <20190819071602.139014-1-hsinyi@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_001637_881838_40A883CE 
X-CRM114-Status: GOOD (  16.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Yu Zhao <yuzhao@google.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Stephen Boyd <swboyd@chromium.org>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Mike Rapoport <rppt@linux.ibm.com>, Jun Yao <yaojun8558363@gmail.com>,
 Miles Chen <miles.chen@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 James Morse <james.morse@arm.com>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Laura Abbott <labbott@redhat.com>,
 Frank Rowand <frowand.list@gmail.com>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently in arm64, FDT is mapped to RO before it's passed to
early_init_dt_scan(). However, there might be some codes
(eg. commit "fdt: add support for rng-seed") that need to modify FDT
during init. Map FDT to RO after early fixups are done.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reviewed-by: Stephen Boyd <swboyd@chromium.org>
Reviewed-by: Mike Rapoport <rppt@linux.ibm.com>
---
No change from v7.
---
 arch/arm64/include/asm/mmu.h |  2 +-
 arch/arm64/kernel/kaslr.c    |  5 +----
 arch/arm64/kernel/setup.c    |  9 ++++++++-
 arch/arm64/mm/mmu.c          | 15 +--------------
 4 files changed, 11 insertions(+), 20 deletions(-)

diff --git a/arch/arm64/include/asm/mmu.h b/arch/arm64/include/asm/mmu.h
index fd6161336653..f217e3292919 100644
--- a/arch/arm64/include/asm/mmu.h
+++ b/arch/arm64/include/asm/mmu.h
@@ -126,7 +126,7 @@ extern void init_mem_pgprot(void);
 extern void create_pgd_mapping(struct mm_struct *mm, phys_addr_t phys,
 			       unsigned long virt, phys_addr_t size,
 			       pgprot_t prot, bool page_mappings_only);
-extern void *fixmap_remap_fdt(phys_addr_t dt_phys);
+extern void *fixmap_remap_fdt(phys_addr_t dt_phys, int *size, pgprot_t prot);
 extern void mark_linear_text_alias_ro(void);
 
 #define INIT_MM_CONTEXT(name)	\
diff --git a/arch/arm64/kernel/kaslr.c b/arch/arm64/kernel/kaslr.c
index 5a59f7567f9c..416f537bf614 100644
--- a/arch/arm64/kernel/kaslr.c
+++ b/arch/arm64/kernel/kaslr.c
@@ -62,9 +62,6 @@ static __init const u8 *kaslr_get_cmdline(void *fdt)
 	return default_cmdline;
 }
 
-extern void *__init __fixmap_remap_fdt(phys_addr_t dt_phys, int *size,
-				       pgprot_t prot);
-
 /*
  * This routine will be executed with the kernel mapped at its default virtual
  * address, and if it returns successfully, the kernel will be remapped, and
@@ -93,7 +90,7 @@ u64 __init kaslr_early_init(u64 dt_phys)
 	 * attempt at mapping the FDT in setup_machine()
 	 */
 	early_fixmap_init();
-	fdt = __fixmap_remap_fdt(dt_phys, &size, PAGE_KERNEL);
+	fdt = fixmap_remap_fdt(dt_phys, &size, PAGE_KERNEL);
 	if (!fdt)
 		return 0;
 
diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
index 57ff38600828..56f664561754 100644
--- a/arch/arm64/kernel/setup.c
+++ b/arch/arm64/kernel/setup.c
@@ -170,9 +170,13 @@ static void __init smp_build_mpidr_hash(void)
 
 static void __init setup_machine_fdt(phys_addr_t dt_phys)
 {
-	void *dt_virt = fixmap_remap_fdt(dt_phys);
+	int size;
+	void *dt_virt = fixmap_remap_fdt(dt_phys, &size, PAGE_KERNEL);
 	const char *name;
 
+	if (dt_virt)
+		memblock_reserve(dt_phys, size);
+
 	if (!dt_virt || !early_init_dt_scan(dt_virt)) {
 		pr_crit("\n"
 			"Error: invalid device tree blob at physical address %pa (virtual address 0x%p)\n"
@@ -184,6 +188,9 @@ static void __init setup_machine_fdt(phys_addr_t dt_phys)
 			cpu_relax();
 	}
 
+	/* Early fixups are done, map the FDT as read-only now */
+	fixmap_remap_fdt(dt_phys, &size, PAGE_KERNEL_RO);
+
 	name = of_flat_dt_get_machine_name();
 	if (!name)
 		return;
diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index e67bab4d613e..1586d7fbf26a 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -877,7 +877,7 @@ void __set_fixmap(enum fixed_addresses idx,
 	}
 }
 
-void *__init __fixmap_remap_fdt(phys_addr_t dt_phys, int *size, pgprot_t prot)
+void *__init fixmap_remap_fdt(phys_addr_t dt_phys, int *size, pgprot_t prot)
 {
 	const u64 dt_virt_base = __fix_to_virt(FIX_FDT);
 	int offset;
@@ -930,19 +930,6 @@ void *__init __fixmap_remap_fdt(phys_addr_t dt_phys, int *size, pgprot_t prot)
 	return dt_virt;
 }
 
-void *__init fixmap_remap_fdt(phys_addr_t dt_phys)
-{
-	void *dt_virt;
-	int size;
-
-	dt_virt = __fixmap_remap_fdt(dt_phys, &size, PAGE_KERNEL_RO);
-	if (!dt_virt)
-		return NULL;
-
-	memblock_reserve(dt_phys, size);
-	return dt_virt;
-}
-
 int __init arch_ioremap_p4d_supported(void)
 {
 	return 0;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
