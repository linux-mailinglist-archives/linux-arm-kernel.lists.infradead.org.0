Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4228D2271F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 May 2019 18:05:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rqEULs6n/rZWABpokhcieQ+eCYYPan9124uH3bL9zfY=; b=M3uhtV8npkYTF6
	PZRdacRrfPvrypQ3X7DE0pIA9r4TPYHHxiGhWD6KBajmNhz00FoTwAMWrPOJ3kFPSuq8oSHvPBN7Z
	8CAr81elgClsdqfSzOqIirXI9CnAndKxUfM7GO6EmRHN9D/9mqqw03M98OQFcoW5zSQWxGgkcpjy0
	YuDjoSkQlZ2qxQXNaRC+iCWGM0/OlBA5i4Q+MErVyUFgQdGcVO7Co9eT2E7/5wPXCzpxqPNbeWCwN
	FipmcTzeCVjyHqJx6oi4Q+WiL22mryo/BhG/u+KYpipZ8ylWLaAvjkouIKkVF91+jtoGZS3Ym+3yO
	wsWoOSw0rBgMU/pRcZCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSOJF-00067v-P7; Sun, 19 May 2019 16:05:13 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSOJ8-0005iM-PS
 for linux-arm-kernel@lists.infradead.org; Sun, 19 May 2019 16:05:08 +0000
Received: by mail-pf1-x441.google.com with SMTP id c6so5989575pfa.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 May 2019 09:05:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HjgKgNWvkrWu2AB4Hfm3UsbNqpkTfiMRDxIt6YpDrD8=;
 b=F1SPpDoL5/a/tOtnEuMPcZHUmxrlYpCW55VLRABVi8Ktcj+pFOspwPpb/QdIdtJBsz
 41Nz2EnmkcnqlqMJ4FH9DYTW9qOWF3B9mwhUR4kc12EXddRoh1xcNY+hvWUgG0kVZaSO
 nmtAnQFNNwpNY2cb4wM/TTE7HA6icohq7g9rs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HjgKgNWvkrWu2AB4Hfm3UsbNqpkTfiMRDxIt6YpDrD8=;
 b=BRzjxhii6fcDnAG4Dz19iX8bu0eIitobA+57Ev1Z4IRuKLv70YBnqdh+KeR3wJQ6M1
 pLPrv37cKZHptMYDeMeGirLaA5AoeKiAVC/lj1zKbbHIgXyFkumNDBcLYTJ6jlk93oWg
 EzLiBo3mCM4VP93beglo39fFB3Wy/KozfxkHqRiHl4JRgAXPBPFkwxcfKgurV6ev84S1
 Ipta8zNgInwac7at5TstCzYs2ysC+ReSuR4cJU2hHGOtN8CvDTDi0Lr8Gfyy8ptqXzlB
 K0qxiR1yaLRo8Rx6rJDLLJ5yBQcqdqn22bNSwbIGWRuIuKOyKFTWy4rD60ETljcbuAFa
 meTA==
X-Gm-Message-State: APjAAAXHHoUv9lsZ6rPfzUqv34YIxg/s9fbNwBs5xQZ+ktui4reKZtYy
 wvY+ie+JCR/DgKz3hCN/m5+TZ+a110k61A==
X-Google-Smtp-Source: APXvYqzq2wiw9TB3Jsn9Sm+quwS8aysurwuin7NtHbnbO84Ogl+zCj5bZND02CjmQyW98Mvom1I2XQ==
X-Received: by 2002:a62:e10f:: with SMTP id q15mr74698143pfh.56.1558281904958; 
 Sun, 19 May 2019 09:05:04 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id b23sm17547007pfi.6.2019.05.19.09.05.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 19 May 2019 09:05:04 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 1/3] amr64: map FDT as RW for early_init_dt_scan()
Date: Mon, 20 May 2019 00:04:44 +0800
Message-Id: <20190519160446.320-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_090506_858938_90F38735 
X-CRM114-Status: GOOD (  15.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
early_init_dt_scan(). However, there might be some code that needs
to modify FDT during init. Map FDT to RW until unflatten DT.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
change log v2->v4:
* v3 abandoned
* add an arg pgprot_t to fixmap_remap_fdt()
---
 arch/arm64/include/asm/mmu.h | 2 +-
 arch/arm64/kernel/setup.c    | 5 ++++-
 arch/arm64/mm/mmu.c          | 4 ++--
 3 files changed, 7 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/include/asm/mmu.h b/arch/arm64/include/asm/mmu.h
index 67ef25d037ea..4499cb00ece7 100644
--- a/arch/arm64/include/asm/mmu.h
+++ b/arch/arm64/include/asm/mmu.h
@@ -137,7 +137,7 @@ extern void init_mem_pgprot(void);
 extern void create_pgd_mapping(struct mm_struct *mm, phys_addr_t phys,
 			       unsigned long virt, phys_addr_t size,
 			       pgprot_t prot, bool page_mappings_only);
-extern void *fixmap_remap_fdt(phys_addr_t dt_phys);
+extern void *fixmap_remap_fdt(phys_addr_t dt_phys, pgprot_t prot);
 extern void mark_linear_text_alias_ro(void);
 
 #define INIT_MM_CONTEXT(name)	\
diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
index 413d566405d1..064df3de1d14 100644
--- a/arch/arm64/kernel/setup.c
+++ b/arch/arm64/kernel/setup.c
@@ -181,7 +181,7 @@ static void __init smp_build_mpidr_hash(void)
 
 static void __init setup_machine_fdt(phys_addr_t dt_phys)
 {
-	void *dt_virt = fixmap_remap_fdt(dt_phys);
+	void *dt_virt = fixmap_remap_fdt(dt_phys, PAGE_KERNEL);
 	const char *name;
 
 	if (!dt_virt || !early_init_dt_scan(dt_virt)) {
@@ -320,6 +320,9 @@ void __init setup_arch(char **cmdline_p)
 	/* Parse the ACPI tables for possible boot-time configuration */
 	acpi_boot_table_init();
 
+	/* remap fdt to RO */
+	fixmap_remap_fdt(__fdt_pointer, PAGE_KERNEL_RO);
+
 	if (acpi_disabled)
 		unflatten_device_tree();
 
diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index a170c6369a68..29648e86f7e5 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -940,12 +940,12 @@ void *__init __fixmap_remap_fdt(phys_addr_t dt_phys, int *size, pgprot_t prot)
 	return dt_virt;
 }
 
-void *__init fixmap_remap_fdt(phys_addr_t dt_phys)
+void *__init fixmap_remap_fdt(phys_addr_t dt_phys, pgprot_t prot)
 {
 	void *dt_virt;
 	int size;
 
-	dt_virt = __fixmap_remap_fdt(dt_phys, &size, PAGE_KERNEL_RO);
+	dt_virt = __fixmap_remap_fdt(dt_phys, &size, prot);
 	if (!dt_virt)
 		return NULL;
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
