Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04D11D9B1F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 22:11:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WmVmm0nGL1UU0EjyM3Jvd2Zqu50qO8imrAGa2Wh1Bpw=; b=BHDjpdxJ/BhCJY
	9I0hEBayr4Q3j0O6BviDaLHH0p7nnLFDNLIKGjxkmEVw7LKYqtzLhTo8xQht2gWeExJjU/OgAHNNt
	8kPszpblfJyalXgFiaoNh2+W4QMdxzLNXtlXpA1Pu3o5Yr/Gz0S1jfJy+UlQNKWkDB/UffA4ttQVT
	sa1spv3pZROMYBGVHzw/YPc6g/+N8UhHBMvkz9eTzbp2zZrc1pHlLJzsInuWsfLZY2mVZWJByJ4dn
	OA77P2TxdfTGSg3VEK50T0TsnPknQR9+AnOFZevo0px53E0cTXFi7EL2mc+tWSEQ7oEDdwZotszvy
	wL5coWOcW4OceLjhnIww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKpdZ-0005uE-UL; Wed, 16 Oct 2019 20:11:13 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpTu-0004a9-VU
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 20:01:18 +0000
Received: by mail-qt1-x843.google.com with SMTP id m15so38055618qtq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 13:01:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=uFvf/fXznSnIHF7tnFK87S0+X7xt7Kheg1PwfwzAB1w=;
 b=aP7fs4faRfvESpCSQvMzu2kYpom8AcZbECTaP6g9QcH2usBGWsH6vHV95nyhtBjABo
 7+fY57pBpeIcsukuKgcsw4e1zLLFY8fUa+03K3SyOUSkR5UcQSGip8n9VevkPK5PoY8W
 CLcIwncsSdUOUj3YNrok1BWN2YYnbnMWquAJGTlpeSvsKscjcXkrvJcoG9bFYucZgiFA
 KNuYCVyXVpKTmJBLmxjlmPdhRKi2DkgrcAQnL4RoNVM8DYhKwRBNi3iVkyFzsLMHScmy
 HhnUoDK3HO5Gz8GL2R7sSj2PXmXBc+lfOAW52ffPN2A8BZ9B2FCL/xGE5mROZRipMeyb
 iEtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uFvf/fXznSnIHF7tnFK87S0+X7xt7Kheg1PwfwzAB1w=;
 b=O4EKon437EGK3DkSyb15Ajy3rb2kvnPzq4t4rtZGX1ENtve5xLR5pbAqAgxNfGeiXp
 ehomWtBmF99S5aDU3uNZUNQbtMZEs1LjDPYBtERZ0HTgzLVd6YMD0fa2cdlEV16Kdpib
 2C6cO0JFSkwuKkIfVH9QctMUmXthNdypJMGEKPFN6rOnWil0RmgiEsYm+riz7s1yEMYr
 c+iOzS9zaE/tuW5eSrb3qLJmdwqHZL+XaRZvVWD232cRUHEMaB57Kwt+YVH0pvKafKra
 BSayTjcaqTtwgJAmoAXhr9Z+zDZThbgr20T4F7/cjBgOPZYmuE2DHPpYuTSLe0HG/IP5
 BAvg==
X-Gm-Message-State: APjAAAUFPuHIt73jUCHEqm6ShYXatigkDDk7DKPnVXVBK07pH1aXqZpd
 0dJXAT6LVxFj3wVnDzZhWMEZ0Q==
X-Google-Smtp-Source: APXvYqyQE0hatidBKOwaY2TrTHlSI+T2qJiEPKvWKsbUagw1I5BzNoRHbfRQOkaJ2BZWJ8GKry4SMQ==
X-Received: by 2002:aed:3fdb:: with SMTP id w27mr47685828qth.223.1571256073488; 
 Wed, 16 Oct 2019 13:01:13 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id c204sm13342030qkb.90.2019.10.16.13.01.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 13:01:12 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com, steve.capper@arm.com, rfontana@redhat.com,
 tglx@linutronix.de
Subject: [PATCH v7 23/25] arm64: kexec: configure trans_pgd page table for
 kexec
Date: Wed, 16 Oct 2019 16:00:32 -0400
Message-Id: <20191016200034.1342308-24-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
References: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_130115_080291_99DC7DF0 
X-CRM114-Status: GOOD (  16.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Configure a page table located in kexec-safe memory that has
the following mappings:

1. identity mapping for text of relocation function with executable
   permission.
2. identity mapping for argument for relocation function.
3. linear mappings for all source ranges
4. linear mappings for all destination ranges.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/include/asm/kexec.h    |  14 ++++
 arch/arm64/kernel/asm-offsets.c   |   5 ++
 arch/arm64/kernel/machine_kexec.c | 104 +++++++++++++++++++++++++++++-
 3 files changed, 122 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/kexec.h b/arch/arm64/include/asm/kexec.h
index 414a0a41a60a..df911a4aa8ce 100644
--- a/arch/arm64/include/asm/kexec.h
+++ b/arch/arm64/include/asm/kexec.h
@@ -98,6 +98,10 @@ extern const unsigned long kexec_kern_reloc_offset;
 extern const unsigned long kexec_el2_vectors_offset;
 #endif
 
+#define KEXEC_SRC_START	PAGE_OFFSET
+#define KEXEC_DST_START	(PAGE_OFFSET + \
+			((UL(0xffffffffffffffff) - PAGE_OFFSET) >> 1) + 1)
+
 /*
  * kern_reloc_arg is passed to kernel relocation function as an argument.
  * head		kimage->head, allows to traverse through relocation segments.
@@ -108,6 +112,11 @@ extern const unsigned long kexec_el2_vectors_offset;
  * el2_vector	If present means that relocation routine will go to EL1
  *		from EL2 to do the copy, and then back to EL2 to do the jump
  *		to new world.
+ * trans_ttbr0	idmap for relocation function and its argument
+ * trans_ttbr1	linear map for source/destination addresses.
+ * src_addr	linear map for source pages.
+ * dst_addr	linear map for destination pages.
+ * copy_len	Number of bytes that need to be copied
  */
 struct kern_reloc_arg {
 	phys_addr_t head;
@@ -117,6 +126,11 @@ struct kern_reloc_arg {
 	phys_addr_t kern_arg2;
 	phys_addr_t kern_arg3;
 	phys_addr_t el2_vector;
+	phys_addr_t trans_ttbr0;
+	phys_addr_t trans_ttbr1;
+	void *src_addr;
+	void *dst_addr;
+	unsigned long copy_len;
 };
 
 #define ARCH_HAS_KIMAGE_ARCH
diff --git a/arch/arm64/kernel/asm-offsets.c b/arch/arm64/kernel/asm-offsets.c
index ad7764d68904..4147d9d70c1c 100644
--- a/arch/arm64/kernel/asm-offsets.c
+++ b/arch/arm64/kernel/asm-offsets.c
@@ -136,6 +136,11 @@ int main(void)
   DEFINE(KEXEC_KRELOC_KERN_ARG2,	offsetof(struct kern_reloc_arg, kern_arg2));
   DEFINE(KEXEC_KRELOC_KERN_ARG3,	offsetof(struct kern_reloc_arg, kern_arg3));
   DEFINE(KEXEC_KRELOC_EL2_VECTOR,	offsetof(struct kern_reloc_arg, el2_vector));
+  DEFINE(KEXEC_KRELOC_TRANS_TTBR0,	offsetof(struct kern_reloc_arg, trans_ttbr0));
+  DEFINE(KEXEC_KRELOC_TRANS_TTBR1,	offsetof(struct kern_reloc_arg, trans_ttbr1));
+  DEFINE(KEXEC_KRELOC_SRC_ADDR,	offsetof(struct kern_reloc_arg, src_addr));
+  DEFINE(KEXEC_KRELOC_DST_ADDR,	offsetof(struct kern_reloc_arg, dst_addr));
+  DEFINE(KEXEC_KRELOC_COPY_LEN,	offsetof(struct kern_reloc_arg, copy_len));
 #endif
   return 0;
 }
diff --git a/arch/arm64/kernel/machine_kexec.c b/arch/arm64/kernel/machine_kexec.c
index ac6ade7c96ff..8edcc4be0b15 100644
--- a/arch/arm64/kernel/machine_kexec.c
+++ b/arch/arm64/kernel/machine_kexec.c
@@ -20,6 +20,7 @@
 #include <asm/mmu.h>
 #include <asm/mmu_context.h>
 #include <asm/page.h>
+#include <asm/trans_pgd.h>
 
 #include "cpu-reset.h"
 
@@ -70,10 +71,102 @@ static void *kexec_page_alloc(void *arg)
 	return page_address(page);
 }
 
+/*
+ * Map source segments starting from KEXEC_SRC_START, and map destination
+ * segments starting from KEXEC_DST_START, and return size of copy in
+ * *copy_len argument.
+ * Relocation function essentially needs to do:
+ * memcpy(KEXEC_DST_START, KEXEC_SRC_START, copy_len);
+ */
+static int map_segments(struct kimage *kimage, pgd_t *pgdp,
+			struct trans_pgd_info *info,
+			unsigned long *copy_len)
+{
+	unsigned long *ptr = 0;
+	unsigned long dest = 0;
+	unsigned long src_va = KEXEC_SRC_START;
+	unsigned long dst_va = KEXEC_DST_START;
+	unsigned long len = 0;
+	unsigned long entry, addr;
+	int rc;
+
+	for (entry = kimage->head; !(entry & IND_DONE); entry = *ptr++) {
+		addr = entry & PAGE_MASK;
+
+		switch (entry & IND_FLAGS) {
+		case IND_DESTINATION:
+			dest = addr;
+			break;
+		case IND_INDIRECTION:
+			ptr = __va(addr);
+			if (rc)
+				return rc;
+			break;
+		case IND_SOURCE:
+			rc = trans_pgd_map_page(info, pgdp, __va(addr),
+						src_va, PAGE_KERNEL);
+			if (rc)
+				return rc;
+			rc = trans_pgd_map_page(info, pgdp, __va(dest),
+						dst_va, PAGE_KERNEL);
+			if (rc)
+				return rc;
+			dest += PAGE_SIZE;
+			src_va += PAGE_SIZE;
+			dst_va += PAGE_SIZE;
+			len += PAGE_SIZE;
+		}
+	}
+	*copy_len = len;
+
+	return 0;
+}
+
+static int mmu_relocate_setup(struct kimage *kimage, void *reloc_code,
+			      struct kern_reloc_arg *kern_reloc_arg)
+{
+	struct trans_pgd_info info = {
+		.trans_alloc_page	= kexec_page_alloc,
+		.trans_alloc_arg	= kimage,
+	};
+
+	pgd_t *trans_ttbr0 = kexec_page_alloc(kimage);
+	pgd_t *trans_ttbr1 = kexec_page_alloc(kimage);
+	int rc;
+
+	if (!trans_ttbr0 || !trans_ttbr1)
+		return -ENOMEM;
+
+	rc = map_segments(kimage, trans_ttbr1, &info,
+			  &kern_reloc_arg->copy_len);
+	if (rc)
+		return rc;
+
+	/* Map relocation function va == pa */
+	rc = trans_pgd_map_page(&info, trans_ttbr0,  reloc_code,
+				__pa(reloc_code), PAGE_KERNEL_EXEC);
+	if (rc)
+		return rc;
+
+	/* Map relocation function argument va == pa */
+	rc = trans_pgd_map_page(&info, trans_ttbr0, kern_reloc_arg,
+				__pa(kern_reloc_arg), PAGE_KERNEL);
+	if (rc)
+		return rc;
+
+	kern_reloc_arg->trans_ttbr0 = phys_to_ttbr(__pa(trans_ttbr0));
+	kern_reloc_arg->trans_ttbr1 = phys_to_ttbr(__pa(trans_ttbr1));
+	kern_reloc_arg->src_addr = (void *)KEXEC_SRC_START;
+	kern_reloc_arg->dst_addr = (void *)KEXEC_DST_START;
+
+	return 0;
+}
+
 int machine_kexec_post_load(struct kimage *kimage)
 {
 	void *reloc_code = page_to_virt(kimage->control_code_page);
 	struct kern_reloc_arg *kern_reloc_arg = kexec_page_alloc(kimage);
+	int rc = 0;
 
 	if (!kern_reloc_arg)
 		return -ENOMEM;
@@ -89,9 +182,18 @@ int machine_kexec_post_load(struct kimage *kimage)
 		kern_reloc_arg->el2_vector = __pa(reloc_code)
 						+ kexec_el2_vectors_offset;
 	}
+
+	/*
+	 * If relocation is not needed, we do not need to enable MMU in
+	 * relocation routine, therefore do not create page tables for
+	 * scenarios such as crash kernel
+	 */
+	if (!(kimage->head & IND_DONE))
+		rc = mmu_relocate_setup(kimage, reloc_code, kern_reloc_arg);
+
 	kexec_image_info(kimage);
 
-	return 0;
+	return rc;
 }
 
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
