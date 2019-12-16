Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88AAE11FCC2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 03:12:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ewnW5ZhTuHNPAulKn/nh2XwjImfjbgR7ZmdhtdRfuXE=; b=PUV/NJZG9c+wVf
	FeV6J62Oo+4JBwSMooiTzQeTV0T0Gyo7mqkIdADS6s/ipHeVLpnfIFxZm8zzFjsFa6b6qmVSUXpIN
	Waplch0dO03hw+6WoX6Ir0cLiV/esp1z8nvOQoe6e64ESVEuO92pepFlbPCds7sqSeccgBXmGj2k6
	d3u6xVIwNvZcV9VfJxK1bkF24tLsjqRFRzay160e7l7DgcrNQSx0h6/TLZo11t+kBnrRI+HGH4IaM
	Uzh48rMAL/R7n4aNM+yb4FIgRMeioe1M+lX9KqpEhc4YNH0eY6ciq5AZh/V0hF3rn1PrecseGn5UR
	YQVWE7roVZvAVayrqS5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igfrU-0000Oc-Ai; Mon, 16 Dec 2019 02:11:52 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igfqf-0008PI-SL
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 02:11:04 +0000
Received: by mail-pg1-x542.google.com with SMTP id r11so2763006pgf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Dec 2019 18:11:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rouuj09csn2DMCPTLoONYfkkA03lZ638co9mw+fOrww=;
 b=gPcvLo1sEZC65zlj2YVQF5YP2VbweT+rSoVFIUvpg8G8bf8ftaINGHlAvM8+NxGtF4
 b/R85r8yD1hWVZydnMwMbsz6AZI0QgEnpLLBaIslO4msjO5ycygiak/gPUvfjkJ1CLMq
 dtPcG6dES2iSxEI/QYHZ+dQF1Td2r7pf+oesnNkberseieIZDMrBENWwDhcW4TvX/OST
 vIEtoWxHezDFjlFcu5WdpV5OV0cn5PjpXTQmbtVyCO+AVWG9R8NlPsGkPYsSp8PngmOO
 WMp+Or8DFkANt2cd2NGXT3x2oJVCXnQolpsKsTu9zo897GOqpb/j/cKQ6WpFPRL2povX
 5++A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rouuj09csn2DMCPTLoONYfkkA03lZ638co9mw+fOrww=;
 b=QB/hEgFNwt1X3kQlJxVR9cDPBl27Kebx8jZF7zKziHhTM0QJzAvE8o2XfyAV5RN6CM
 j/jrnE3Wa9HauYiffVC8TTJtdLgj2MaScY80azE22hBBONfCHdMI5riHRMVzzS+mKXMo
 3PS/GEp0oVgxdsMtvl4tuctGNPCQZfwUUmyFEBE+63Qd0kNJeyUbuY5HTMvmMvBL7Co7
 tDusHfHSjHuy1jSp9KZPD4r82XICGJ6HiFx+43zdEenzJXBJAN2OKrwv5hpyoJykva3w
 pMYoUNzrpqSz43/3ndvweiBa+kp7tcv0ufIZ6/NZZJvjz3qbNv9t+8Az3I3PZREyqacw
 85tA==
X-Gm-Message-State: APjAAAUQfjR7gOCCwdarHY2yrzGzdUzNQItHUn6LvvF/JxBeWOD4vnjG
 NbYcnlE0ZFNGVE9ebKfzA27zWw==
X-Google-Smtp-Source: APXvYqyrI7ubwkGo1O338HO8iuOcDy1z6i98R+HSi9cV41Jg4uPjhLpcurYt5dJT3On0EaPsoYsjag==
X-Received: by 2002:a63:4f54:: with SMTP id p20mr15428804pgl.246.1576462260969; 
 Sun, 15 Dec 2019 18:11:00 -0800 (PST)
Received: from linaro.org ([121.95.100.191])
 by smtp.googlemail.com with ESMTPSA id o19sm18241044pjr.2.2019.12.15.18.11.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 15 Dec 2019 18:11:00 -0800 (PST)
From: AKASHI Takahiro <takahiro.akashi@linaro.org>
To: catalin.marinas@arm.com, will.deacon@arm.com, robh+dt@kernel.org,
 frowand.list@gmail.com
Subject: [PATCH v4 2/2] arm64: kexec_file: add crash dump support
Date: Mon, 16 Dec 2019 11:12:47 +0900
Message-Id: <20191216021247.24950-3-takahiro.akashi@linaro.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191216021247.24950-1-takahiro.akashi@linaro.org>
References: <20191216021247.24950-1-takahiro.akashi@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_181101_940640_40D8241F 
X-CRM114-Status: GOOD (  20.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: bhsharma@redhat.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, AKASHI Takahiro <takahiro.akashi@linaro.org>,
 james.morse@arm.com, linux-arm-kernel@lists.infradead.org
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
Tested-and-reviewed-by: Bhupesh Sharma <bhsharma@redhat.com>
---
 arch/arm64/include/asm/kexec.h         |   4 +
 arch/arm64/kernel/kexec_image.c        |   4 -
 arch/arm64/kernel/machine_kexec_file.c | 106 ++++++++++++++++++++++++-
 3 files changed, 106 insertions(+), 8 deletions(-)

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
index 29a9428486a5..af9987c154ca 100644
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
index 7b08bf9499b6..dd3ae8081b38 100644
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
@@ -40,6 +43,10 @@ int arch_kimage_file_post_load_cleanup(struct kimage *image)
 	vfree(image->arch.dtb);
 	image->arch.dtb = NULL;
 
+	vfree(image->arch.elf_headers);
+	image->arch.elf_headers = NULL;
+	image->arch.elf_headers_sz = 0;
+
 	return kexec_image_post_load_cleanup_default(image);
 }
 
@@ -55,6 +62,31 @@ static int setup_dtb(struct kimage *image,
 
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
@@ -125,8 +157,8 @@ static int setup_dtb(struct kimage *image,
 }
 
 /*
- * More space needed so that we can add initrd, bootargs, kaslr-seed, and
- * rng-seed.
+ * More space needed so that we can add initrd, bootargs, kaslr-seed,
+ * rng-seed, userable-memory-range and elfcorehdr.
  */
 #define DTB_EXTRA_SPACE 0x1000
 
@@ -174,6 +206,43 @@ static int create_dtb(struct kimage *image,
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
@@ -181,14 +250,43 @@ int load_other_segments(struct kimage *image,
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
+		kbuf.mem = KEXEC_BUF_MEM_UNKNOWN;
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
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
