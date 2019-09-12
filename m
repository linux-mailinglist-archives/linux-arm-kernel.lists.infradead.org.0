Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F0DAB0888
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 08:00:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jo4vhvNY399Ks95jZ+efb7ojs+40KXa+RgMnCgBUS2A=; b=huSjBLiKrVmMXT
	54SeSsLkM7xXF4yCXktKThe5g8Gp5Bj3ndotHyQVnhUdG4CW7dX56xxD5J7+Z61jXm4kXRVM57hV4
	whSEzDq4jWwI7y9WK0dx41rmccDeUzZGhmMxKaOR38Tc+WAC7NiLerBjet1KVsz1FTESRvsqNsTOJ
	l2TIPzV4jLJy36/+P/6qUcvwCB/FZPeX4A1/pB6LUa7Mi76n0e3jJGkXTgLti1uBKrGuxRspALSg1
	u2Tf28Kb/7RzAVyNfkasItFMMvfod76KuCA4awmTEDlJEigHkVoo0Nzhb7cF5IdHvH4MF97RAetJ7
	LfC0PM1JLMKznmA51PbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8I9h-0003CD-Si; Thu, 12 Sep 2019 06:00:34 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8I8v-0001UI-Ss
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 05:59:47 +0000
Received: by mail-pf1-x441.google.com with SMTP id q21so15232823pfn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 22:59:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FxFE8kRj/EbRgKoWP35uNVOjcf/RHJrS7TO4gPoF1aw=;
 b=eBDesVj3g+SbqAKG8q2xV8P2B/mupoEtGicY3Is/+aV/JLmtliD/CQj1oHz5AbTGzT
 ibeR+rVsYLMo2C6oEn3s7NCJLs8Z9tToLUbJZBP6WvV+0QBx2hcmhfNM/7LYDc5n2RmY
 cZoj8I/SJrol5TJQR3Bn4K+0e/5hXi1dkfiGlwNWQQIP3trO1v3hQFjlOqxjRmFIaPJO
 No8MV7FL7eXNx7wBqMopi0DAxFyySodWwynsSEFmtDXTBQJNuktqXOa/pKR6L6BZcxk/
 ZGxt5OVSHPNSl1ybKJhTalSIwduOPKikGWAF6yPVoK/teypHOhztCG1Bxg8gYA8rDw/J
 jceQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FxFE8kRj/EbRgKoWP35uNVOjcf/RHJrS7TO4gPoF1aw=;
 b=FihDSw8yWImGRFS9IWeWfY1liQtSsuQ6dcePQIlOBYFjgHAQk9qlJiinMbTT1DHHKY
 jP5JbOjPpiIwZAGkndENgPT07Em+v8tXDkyuUCvMi/bspeSphz3xO3j29H6qOiFS6bWf
 /bAQBT7QMmuEtp7V+jgfcrwwkI0g7oFfFhMnzSL8XtxuXCpRaKN48/KHzw6uARFM2dcE
 uGr4qEaRaGXFsrscWe9ENLE7t6k8Lt8fF20Ysl6eQydC1++NdafpdOVHbioxnhe/W6ex
 SXjPv0UZyIS6i0+GIcFIeVNPHNRWPffXUoJHpeFxfl4Mnfzb6b3Ivx7OouK77YOR2hos
 GSYA==
X-Gm-Message-State: APjAAAWiLjtk201y6PlDYuHyYVRP69GCQo/RBESSeQG3MfzkQBjiZrOw
 +Rw6MmQ10zsVlRLihJaCbllELg==
X-Google-Smtp-Source: APXvYqzrUMHEJKlllEkbtSJF1fAnGNVZUDuEsmrY+s0nLn1qDSccMEfHsDcRj8CGFkCxHj7Q65zOwQ==
X-Received: by 2002:a62:5c82:: with SMTP id
 q124mr47525159pfb.177.1568267985462; 
 Wed, 11 Sep 2019 22:59:45 -0700 (PDT)
Received: from linaro.org ([121.95.100.191])
 by smtp.googlemail.com with ESMTPSA id
 l62sm36827139pfl.167.2019.09.11.22.59.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Sep 2019 22:59:45 -0700 (PDT)
From: AKASHI Takahiro <takahiro.akashi@linaro.org>
To: catalin.marinas@arm.com, will.deacon@arm.com, robh+dt@kernel.org,
 frowand.list@gmail.com
Subject: [PATCH 3/3] arm64: kexec_file: add crash dump support
Date: Thu, 12 Sep 2019 15:01:50 +0900
Message-Id: <20190912060150.10818-4-takahiro.akashi@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190912060150.10818-1-takahiro.akashi@linaro.org>
References: <20190912060150.10818-1-takahiro.akashi@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_225945_975716_FCC1358F 
X-CRM114-Status: GOOD (  19.17  )
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
Cc: kexec@lists.infradead.org, james.morse@arm.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 AKASHI Takahiro <takahiro.akashi@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enabling crash dump (kdump) includes
* prepare contents of ELF header of a core dump file, /proc/vmcore,
  using crash_prepare_elf64_headers(), and
* add two device tree properties, "linux,usable-memory-range" and
  "linux,elfcorehdr", which represent respectively a memory range
  to be used by crash dump kernel and the header's location

Signed-off-by: AKASHI Takahiro <takahiro.akashi@linaro.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Reviewed-by: James Morse <james.morse@arm.com>
---
 arch/arm64/include/asm/kexec.h         |   4 +
 arch/arm64/kernel/kexec_image.c        |   4 -
 arch/arm64/kernel/machine_kexec_file.c | 105 ++++++++++++++++++++++++-
 3 files changed, 106 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/include/asm/kexec.h b/arch/arm64/include/asm/kexec.h
index 12a561a54128..d24b527e8c00 100644
--- a/arch/arm64/include/asm/kexec.h
+++ b/arch/arm64/include/asm/kexec.h
@@ -96,6 +96,10 @@ static inline void crash_post_resume(void) {}
 struct kimage_arch {
 	void *dtb;
 	unsigned long dtb_mem;
+	/* Core ELF header buffer */
+	void *elf_headers;
+	unsigned long elf_headers_mem;
+	unsigned long elf_headers_sz;
 };
 
 extern const struct kexec_file_ops kexec_image_ops;
diff --git a/arch/arm64/kernel/kexec_image.c b/arch/arm64/kernel/kexec_image.c
index 2514fd6f12cb..60cedfa9529b 100644
--- a/arch/arm64/kernel/kexec_image.c
+++ b/arch/arm64/kernel/kexec_image.c
@@ -47,10 +47,6 @@ static void *image_load(struct kimage *image,
 	struct kexec_segment *kernel_segment;
 	int ret;
 
-	/* We don't support crash kernels yet. */
-	if (image->type == KEXEC_TYPE_CRASH)
-		return ERR_PTR(-EOPNOTSUPP);
-
 	/*
 	 * We require a kernel with an unambiguous Image header. Per
 	 * Documentation/arm64/booting.rst, this is the case when image_size
diff --git a/arch/arm64/kernel/machine_kexec_file.c b/arch/arm64/kernel/machine_kexec_file.c
index 58871333737a..f5276e27c12b 100644
--- a/arch/arm64/kernel/machine_kexec_file.c
+++ b/arch/arm64/kernel/machine_kexec_file.c
@@ -17,12 +17,15 @@
 #include <linux/memblock.h>
 #include <linux/of_fdt.h>
 #include <linux/random.h>
+#include <linux/slab.h>
 #include <linux/string.h>
 #include <linux/types.h>
 #include <linux/vmalloc.h>
 #include <asm/byteorder.h>
 
 /* relevant device tree properties */
+#define FDT_PROP_KEXEC_ELFHDR	"linux,elfcorehdr"
+#define FDT_PROP_MEM_RANGE	"linux,usable-memory-range"
 #define FDT_PROP_INITRD_START	"linux,initrd-start"
 #define FDT_PROP_INITRD_END	"linux,initrd-end"
 #define FDT_PROP_BOOTARGS	"bootargs"
@@ -38,6 +41,10 @@ int arch_kimage_file_post_load_cleanup(struct kimage *image)
 	vfree(image->arch.dtb);
 	image->arch.dtb = NULL;
 
+	vfree(image->arch.elf_headers);
+	image->arch.elf_headers = NULL;
+	image->arch.elf_headers_sz = 0;
+
 	return kexec_image_post_load_cleanup_default(image);
 }
 
@@ -53,6 +60,31 @@ static int setup_dtb(struct kimage *image,
 
 	off = ret;
 
+	ret = fdt_delprop(dtb, off, FDT_PROP_KEXEC_ELFHDR);
+	if (ret && ret != -FDT_ERR_NOTFOUND)
+		goto out;
+	ret = fdt_delprop(dtb, off, FDT_PROP_MEM_RANGE);
+	if (ret && ret != -FDT_ERR_NOTFOUND)
+		goto out;
+
+	if (image->type == KEXEC_TYPE_CRASH) {
+		/* add linux,elfcorehdr */
+		ret = fdt_appendprop_addrrange(dtb, 0, off,
+				FDT_PROP_KEXEC_ELFHDR,
+				image->arch.elf_headers_mem,
+				image->arch.elf_headers_sz);
+		if (ret)
+			return (ret == -FDT_ERR_NOSPACE ? -ENOMEM : -EINVAL);
+
+		/* add linux,usable-memory-range */
+		ret = fdt_appendprop_addrrange(dtb, 0, off,
+				FDT_PROP_MEM_RANGE,
+				crashk_res.start,
+				crashk_res.end - crashk_res.start + 1);
+		if (ret)
+			return (ret == -FDT_ERR_NOSPACE ? -ENOMEM : -EINVAL);
+	}
+
 	/* add bootargs */
 	if (cmdline) {
 		ret = fdt_setprop_string(dtb, off, FDT_PROP_BOOTARGS, cmdline);
@@ -110,7 +142,8 @@ static int setup_dtb(struct kimage *image,
 }
 
 /*
- * More space needed so that we can add initrd, bootargs and kaslr-seed.
+ * More space needed so that we can add initrd, bootargs, kaslr-seed,
+ * userable-memory-range and elfcorehdr.
  */
 #define DTB_EXTRA_SPACE 0x1000
 
@@ -158,6 +191,43 @@ static int create_dtb(struct kimage *image,
 	}
 }
 
+static int prepare_elf_headers(void **addr, unsigned long *sz)
+{
+	struct crash_mem *cmem;
+	unsigned int nr_ranges;
+	int ret;
+	u64 i;
+	phys_addr_t start, end;
+
+	nr_ranges = 1; /* for exclusion of crashkernel region */
+	for_each_mem_range(i, &memblock.memory, NULL, NUMA_NO_NODE,
+					MEMBLOCK_NONE, &start, &end, NULL)
+		nr_ranges++;
+
+	cmem = kmalloc(sizeof(struct crash_mem) +
+			sizeof(struct crash_mem_range) * nr_ranges, GFP_KERNEL);
+	if (!cmem)
+		return -ENOMEM;
+
+	cmem->max_nr_ranges = nr_ranges;
+	cmem->nr_ranges = 0;
+	for_each_mem_range(i, &memblock.memory, NULL, NUMA_NO_NODE,
+					MEMBLOCK_NONE, &start, &end, NULL) {
+		cmem->ranges[cmem->nr_ranges].start = start;
+		cmem->ranges[cmem->nr_ranges].end = end - 1;
+		cmem->nr_ranges++;
+	}
+
+	/* Exclude crashkernel region */
+	ret = crash_exclude_mem_range(cmem, crashk_res.start, crashk_res.end);
+
+	if (!ret)
+		ret =  crash_prepare_elf64_headers(cmem, true, addr, sz);
+
+	kfree(cmem);
+	return ret;
+}
+
 int load_other_segments(struct kimage *image,
 			unsigned long kernel_load_addr,
 			unsigned long kernel_size,
@@ -165,14 +235,43 @@ int load_other_segments(struct kimage *image,
 			char *cmdline)
 {
 	struct kexec_buf kbuf;
-	void *dtb = NULL;
-	unsigned long initrd_load_addr = 0, dtb_len;
+	void *headers, *dtb = NULL;
+	unsigned long headers_sz, initrd_load_addr = 0, dtb_len;
 	int ret = 0;
 
 	kbuf.image = image;
 	/* not allocate anything below the kernel */
 	kbuf.buf_min = kernel_load_addr + kernel_size;
 
+	/* load elf core header */
+	if (image->type == KEXEC_TYPE_CRASH) {
+		ret = prepare_elf_headers(&headers, &headers_sz);
+		if (ret) {
+			pr_err("Preparing elf core header failed\n");
+			goto out_err;
+		}
+
+		kbuf.buffer = headers;
+		kbuf.bufsz = headers_sz;
+		kbuf.mem = 0;
+		kbuf.memsz = headers_sz;
+		kbuf.buf_align = SZ_64K; /* largest supported page size */
+		kbuf.buf_max = ULONG_MAX;
+		kbuf.top_down = true;
+
+		ret = kexec_add_buffer(&kbuf);
+		if (ret) {
+			vfree(headers);
+			goto out_err;
+		}
+		image->arch.elf_headers = headers;
+		image->arch.elf_headers_mem = kbuf.mem;
+		image->arch.elf_headers_sz = headers_sz;
+
+		pr_debug("Loaded elf core header at 0x%lx bufsz=0x%lx memsz=0x%lx\n",
+			 image->arch.elf_headers_mem, headers_sz, headers_sz);
+	}
+
 	/* load initrd */
 	if (initrd) {
 		kbuf.buffer = initrd;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
