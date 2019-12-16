Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C4611FCA1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 02:41:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2uUACjSiiW19IhJoBtIB0KUf1k1zdTEdisoiYdL8LsE=; b=D+cFyER+a/xSUP
	6RDya/3Epo+IGCCJrn4efzPZRhY8c7jWgZ1eV0AvRcTitNOgAnYF2ufChQNehB//h4X770z7NXOiW
	yaG8T/YWRClHSE+H7HM9pejH2E5q5iqZXCX57udBi8MTZcz/fB9mYPxQ+VGPrt88ephObNoOqeoNH
	BdzVP7uFrki5uPA/MZz7TNgSwhUiZlM7XRMjNkv2l4mH+okCk3tPBJPC2Cy03TrmbZXs/K3a245+9
	aLqXrtFKdFFR61ENDMv8rBFX0xq80A5DnYNKcaUUZfwy3M1MJU0plx6iSgL0o6XV2SZiLmSDSiJ2t
	mT87QEJTIWfc5kDM4m7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igfNq-0006at-Lz; Mon, 16 Dec 2019 01:41:14 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igfNh-0006a6-P3
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 01:41:07 +0000
Received: by mail-pf1-x442.google.com with SMTP id l127so2909387pfl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Dec 2019 17:41:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=vKWIjxi1nk8Ga7RhWUN0zgtcmVWngyFbgXRZIyxpNMU=;
 b=lDKgLpTl9zI9yi4kWI5u7L1tD+a5HVL6MHYFjwKqRSOT2WAhzY0x8hB9K97268cKdx
 js8uEiCTOCCLlqWgNMyJ389HuFTJYY78c6XA8QXwi0JP0L/S300txtxPaIL7HdlwQw7a
 r01cy3De9AQWUY7FBUyaVOzDycsi3G+hfSmntp4MxviPQ+fczG5ELtGnsXOehsNLEdRx
 XiJ4VENwgVvfsp0OZTq/j5di9YsZBFBsKUkIyUHWJ5a/Q4deIV8h3sh834Rl4/gVXKpb
 rsWUfxPBopo4UmcEMTZxElYUXNUK1+oM3KXxSN51nhx+YBxpMam8DpVN4qBixhseYwFT
 TW3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=vKWIjxi1nk8Ga7RhWUN0zgtcmVWngyFbgXRZIyxpNMU=;
 b=s8IuFw/Ey1s7jGu77XFsAfScgtFfPrVX/59neIYPD5VjMKBYdjlxqU/D1MQ5j7kPhD
 zTZqytNcfcvYNcoYL2E47UmF9IrlGItOyXl+RhN0v87ZvCOOhaeoqSTSIdmsvWmy1siA
 JWeH4sDs4cANDp0T2Dmyz7wVYT0oQj9RbNmmjRgAZL2q/B+oiQr31oPmQxqbxTuqtrFo
 Jc2qb8q2M1fbqZAIoq+ZGUTN/LnBkAIMJl3tGo2C863Ol8kTBl23RJfb5fk3cjAt8vmj
 nRFsPx9FGX5ORJ2HeAXw8OvwOFwnrKDOFurvR+AlBIRERu+LdhFETQFH2bt+1kcavij7
 k2AA==
X-Gm-Message-State: APjAAAUekiksnRRAsFZ11m4MazE5jlxl1Sp2DHrfv2Ua2u+ceMfVnkAx
 EudqpKQYBiWkovFEw0YyFjXVUQ==
X-Google-Smtp-Source: APXvYqzs3ngwhbPfpuEwbRurQH9CB7RzuqXdoRId3UZCBcsAbamV6Ixl1viRAk3ujUTuYhFkNIII8g==
X-Received: by 2002:a63:4f59:: with SMTP id p25mr14957477pgl.230.1576460464331; 
 Sun, 15 Dec 2019 17:41:04 -0800 (PST)
Received: from linaro.org ([121.95.100.191])
 by smtp.googlemail.com with ESMTPSA id
 f127sm17265619pfa.112.2019.12.15.17.41.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 15 Dec 2019 17:41:03 -0800 (PST)
Date: Mon, 16 Dec 2019 10:43:07 +0900
From: AKASHI Takahiro <takahiro.akashi@linaro.org>
To: Bhupesh Sharma <bhsharma@redhat.com>
Subject: Re: [PATCH v2 3/3] arm64: kexec_file: add crash dump support
Message-ID: <20191216014306.GG22427@linaro.org>
Mail-Followup-To: AKASHI Takahiro <takahiro.akashi@linaro.org>,
 Bhupesh Sharma <bhsharma@redhat.com>, catalin.marinas@arm.com,
 will.deacon@arm.com, robh+dt@kernel.org, frowand.list@gmail.com,
 kexec@lists.infradead.org, james.morse@arm.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20191114051510.17037-1-takahiro.akashi@linaro.org>
 <20191114051510.17037-4-takahiro.akashi@linaro.org>
 <679aba8b-c03d-8a15-46f1-3dc158c24fe9@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <679aba8b-c03d-8a15-46f1-3dc158c24fe9@redhat.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_174105_852736_444EB10D 
X-CRM114-Status: GOOD (  23.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
Cc: catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, james.morse@arm.com, frowand.list@gmail.com,
 kexec@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I have forgot to address Bhupesh's comment below in my v3.
I'm going to repost my patch.

Thank you, Bhupesh, for your review.

-Takahiro Akashi

On Thu, Dec 05, 2019 at 02:14:14AM +0530, Bhupesh Sharma wrote:
> On 11/14/2019 10:45 AM, AKASHI Takahiro wrote:
> >Enabling crash dump (kdump) includes
> >* prepare contents of ELF header of a core dump file, /proc/vmcore,
> >   using crash_prepare_elf64_headers(), and
> >* add two device tree properties, "linux,usable-memory-range" and
> >   "linux,elfcorehdr", which represent respectively a memory range
> >   to be used by crash dump kernel and the header's location
> >
> >Signed-off-by: AKASHI Takahiro <takahiro.akashi@linaro.org>
> >Cc: Catalin Marinas <catalin.marinas@arm.com>
> >Cc: Will Deacon <will.deacon@arm.com>
> >Reviewed-by: James Morse <james.morse@arm.com>
> >---
> >  arch/arm64/include/asm/kexec.h         |   4 +
> >  arch/arm64/kernel/kexec_image.c        |   4 -
> >  arch/arm64/kernel/machine_kexec_file.c | 106 ++++++++++++++++++++++++-
> >  3 files changed, 106 insertions(+), 8 deletions(-)
> >
> >diff --git a/arch/arm64/include/asm/kexec.h b/arch/arm64/include/asm/kexec.h
> >index 12a561a54128..d24b527e8c00 100644
> >--- a/arch/arm64/include/asm/kexec.h
> >+++ b/arch/arm64/include/asm/kexec.h
> >@@ -96,6 +96,10 @@ static inline void crash_post_resume(void) {}
> >  struct kimage_arch {
> >  	void *dtb;
> >  	unsigned long dtb_mem;
> >+	/* Core ELF header buffer */
> >+	void *elf_headers;
> >+	unsigned long elf_headers_mem;
> >+	unsigned long elf_headers_sz;
> >  };
> >  extern const struct kexec_file_ops kexec_image_ops;
> >diff --git a/arch/arm64/kernel/kexec_image.c b/arch/arm64/kernel/kexec_image.c
> >index 29a9428486a5..af9987c154ca 100644
> >--- a/arch/arm64/kernel/kexec_image.c
> >+++ b/arch/arm64/kernel/kexec_image.c
> >@@ -47,10 +47,6 @@ static void *image_load(struct kimage *image,
> >  	struct kexec_segment *kernel_segment;
> >  	int ret;
> >-	/* We don't support crash kernels yet. */
> >-	if (image->type == KEXEC_TYPE_CRASH)
> >-		return ERR_PTR(-EOPNOTSUPP);
> >-
> >  	/*
> >  	 * We require a kernel with an unambiguous Image header. Per
> >  	 * Documentation/arm64/booting.rst, this is the case when image_size
> >diff --git a/arch/arm64/kernel/machine_kexec_file.c b/arch/arm64/kernel/machine_kexec_file.c
> >index 7b08bf9499b6..f1d1bb895fd2 100644
> >--- a/arch/arm64/kernel/machine_kexec_file.c
> >+++ b/arch/arm64/kernel/machine_kexec_file.c
> >@@ -17,12 +17,15 @@
> >  #include <linux/memblock.h>
> >  #include <linux/of_fdt.h>
> >  #include <linux/random.h>
> >+#include <linux/slab.h>
> >  #include <linux/string.h>
> >  #include <linux/types.h>
> >  #include <linux/vmalloc.h>
> >  #include <asm/byteorder.h>
> >  /* relevant device tree properties */
> >+#define FDT_PROP_KEXEC_ELFHDR	"linux,elfcorehdr"
> >+#define FDT_PROP_MEM_RANGE	"linux,usable-memory-range"
> >  #define FDT_PROP_INITRD_START	"linux,initrd-start"
> >  #define FDT_PROP_INITRD_END	"linux,initrd-end"
> >  #define FDT_PROP_BOOTARGS	"bootargs"
> >@@ -40,6 +43,10 @@ int arch_kimage_file_post_load_cleanup(struct kimage *image)
> >  	vfree(image->arch.dtb);
> >  	image->arch.dtb = NULL;
> >+	vfree(image->arch.elf_headers);
> >+	image->arch.elf_headers = NULL;
> >+	image->arch.elf_headers_sz = 0;
> >+
> >  	return kexec_image_post_load_cleanup_default(image);
> >  }
> >@@ -55,6 +62,31 @@ static int setup_dtb(struct kimage *image,
> >  	off = ret;
> >+	ret = fdt_delprop(dtb, off, FDT_PROP_KEXEC_ELFHDR);
> >+	if (ret && ret != -FDT_ERR_NOTFOUND)
> >+		goto out;
> >+	ret = fdt_delprop(dtb, off, FDT_PROP_MEM_RANGE);
> >+	if (ret && ret != -FDT_ERR_NOTFOUND)
> >+		goto out;
> >+
> >+	if (image->type == KEXEC_TYPE_CRASH) {
> >+		/* add linux,elfcorehdr */
> >+		ret = fdt_appendprop_addrrange(dtb, 0, off,
> >+				FDT_PROP_KEXEC_ELFHDR,
> >+				image->arch.elf_headers_mem,
> >+				image->arch.elf_headers_sz);
> >+		if (ret)
> >+			return (ret == -FDT_ERR_NOSPACE ? -ENOMEM : -EINVAL);
> >+
> >+		/* add linux,usable-memory-range */
> >+		ret = fdt_appendprop_addrrange(dtb, 0, off,
> >+				FDT_PROP_MEM_RANGE,
> >+				crashk_res.start,
> >+				crashk_res.end - crashk_res.start + 1);
> >+		if (ret)
> >+			return (ret == -FDT_ERR_NOSPACE ? -ENOMEM : -EINVAL);
> >+	}
> >+
> >  	/* add bootargs */
> >  	if (cmdline) {
> >  		ret = fdt_setprop_string(dtb, off, FDT_PROP_BOOTARGS, cmdline);
> >@@ -125,8 +157,8 @@ static int setup_dtb(struct kimage *image,
> >  }
> >  /*
> >- * More space needed so that we can add initrd, bootargs, kaslr-seed, and
> >- * rng-seed.
> >+ * More space needed so that we can add initrd, bootargs, kaslr-seed,
> >+ * rng-seed, userable-memory-range and elfcorehdr.
> 
> nitpick:
> s/userable-memory-range/usable-memory-range
> 
> >   */
> >  #define DTB_EXTRA_SPACE 0x1000
> >@@ -174,6 +206,43 @@ static int create_dtb(struct kimage *image,
> >  	}
> >  }
> >+static int prepare_elf_headers(void **addr, unsigned long *sz)
> >+{
> >+	struct crash_mem *cmem;
> >+	unsigned int nr_ranges;
> >+	int ret;
> >+	u64 i;
> >+	phys_addr_t start, end;
> >+
> >+	nr_ranges = 1; /* for exclusion of crashkernel region */
> >+	for_each_mem_range(i, &memblock.memory, NULL, NUMA_NO_NODE,
> >+					MEMBLOCK_NONE, &start, &end, NULL)
> >+		nr_ranges++;
> >+
> >+	cmem = kmalloc(sizeof(struct crash_mem) +
> >+			sizeof(struct crash_mem_range) * nr_ranges, GFP_KERNEL);
> >+	if (!cmem)
> >+		return -ENOMEM;
> >+
> >+	cmem->max_nr_ranges = nr_ranges;
> >+	cmem->nr_ranges = 0;
> >+	for_each_mem_range(i, &memblock.memory, NULL, NUMA_NO_NODE,
> >+					MEMBLOCK_NONE, &start, &end, NULL) {
> >+		cmem->ranges[cmem->nr_ranges].start = start;
> >+		cmem->ranges[cmem->nr_ranges].end = end - 1;
> >+		cmem->nr_ranges++;
> >+	}
> >+
> >+	/* Exclude crashkernel region */
> >+	ret = crash_exclude_mem_range(cmem, crashk_res.start, crashk_res.end);
> >+
> >+	if (!ret)
> >+		ret =  crash_prepare_elf64_headers(cmem, true, addr, sz);
> >+
> >+	kfree(cmem);
> >+	return ret;
> >+}
> >+
> >  int load_other_segments(struct kimage *image,
> >  			unsigned long kernel_load_addr,
> >  			unsigned long kernel_size,
> >@@ -181,14 +250,43 @@ int load_other_segments(struct kimage *image,
> >  			char *cmdline)
> >  {
> >  	struct kexec_buf kbuf;
> >-	void *dtb = NULL;
> >-	unsigned long initrd_load_addr = 0, dtb_len;
> >+	void *headers, *dtb = NULL;
> >+	unsigned long headers_sz, initrd_load_addr = 0, dtb_len;
> >  	int ret = 0;
> >  	kbuf.image = image;
> >  	/* not allocate anything below the kernel */
> >  	kbuf.buf_min = kernel_load_addr + kernel_size;
> >+	/* load elf core header */
> >+	if (image->type == KEXEC_TYPE_CRASH) {
> >+		ret = prepare_elf_headers(&headers, &headers_sz);
> >+		if (ret) {
> >+			pr_err("Preparing elf core header failed\n");
> >+			goto out_err;
> >+		}
> >+
> >+		kbuf.buffer = headers;
> >+		kbuf.bufsz = headers_sz;
> >+		kbuf.mem = 0;
> 
> With commit c19d050f8088 ("arm64/kexec: Use consistent convention of
> initializing 'kxec_buf.mem' with KEXEC_BUF_MEM_UNKNOWN"), we are trying to
> standardize the way of setting up initial value of 'kbuf.mem'. So we can use
> the following notion (in v3?) instead:
> 		kbuf.mem = KEXEC_BUF_MEM_UNKNOWN;
> 
> >+		kbuf.memsz = headers_sz;
> >+		kbuf.buf_align = SZ_64K; /* largest supported page size */
> >+		kbuf.buf_max = ULONG_MAX;
> >+		kbuf.top_down = true;
> >+
> >+		ret = kexec_add_buffer(&kbuf);
> >+		if (ret) {
> >+			vfree(headers);
> >+			goto out_err;
> >+		}
> >+		image->arch.elf_headers = headers;
> >+		image->arch.elf_headers_mem = kbuf.mem;
> >+		image->arch.elf_headers_sz = headers_sz;
> >+
> >+		pr_debug("Loaded elf core header at 0x%lx bufsz=0x%lx memsz=0x%lx\n",
> >+			 image->arch.elf_headers_mem, headers_sz, headers_sz);
> >+	}
> >+
> >  	/* load initrd */
> >  	if (initrd) {
> >  		kbuf.buffer = initrd;
> >
> 
> Thanks,
> Bhupesh
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
