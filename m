Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D7628E23
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 02:04:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O3o2qFju8//AWxbWhEIn3POH2A7BTGKGmckzh/tV1m8=; b=CUM8FqfNb7LBlJ
	JmwRsJ2s/29UM5XLOPlTLSSwT9OXSHNGRM3ZkWy9gQ14BlBphqafrKI2GtonV+nU+zWzF1yHFTcXo
	QyAPxaswsdIUrFHU/Rz1JIoWILpVIzVdRFb82xXZ3xYKW4YRgjK4KAYhi4cIKpdIdyxuT0JA6x2Yy
	+wmaMechfQ/9shxe9WcMe94WI+/xmmRS58mlga49WHP0AAS2896ImQkyHHEnOvzkvAyKRq0zMw5m7
	GR8mcyoJjNcV9QVjUoqcvntSsoTGf+IVwPq6wDdb9tGJ3QvDLPwnd1r4e3ekuql8owMgbyVNWrpAy
	xdLzRJ8ESa+M5GwJ/sdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTxhE-00070I-Fe; Fri, 24 May 2019 00:04:28 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTxh7-0006zs-SX
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 00:04:23 +0000
Received: by mail-pl1-x644.google.com with SMTP id p15so3387306pll.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 17:04:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=message-id:mime-version:content-transfer-encoding:in-reply-to
 :references:subject:from:cc:to:user-agent:date;
 bh=rEVWZ6CY2T1sOfRBqu5yo6RqvdsQIs5DONP6SvlW0AM=;
 b=A5bq+DlVBxOWKQFEMlCo85nduYntCXDn0IbtZJHJoDJIP/A9P/lc9kAhjahRhOg6aB
 fH7uFR5pcQhJ3sY6aV2vpt2VukMXrjAJwGlDtqbrsVuRTUpcapahrz0Ty6z7pFy48Fld
 RS2H0xeriUHh7VouuZMHvoEl+1YhktdsoZ1nI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:mime-version
 :content-transfer-encoding:in-reply-to:references:subject:from:cc:to
 :user-agent:date;
 bh=rEVWZ6CY2T1sOfRBqu5yo6RqvdsQIs5DONP6SvlW0AM=;
 b=ea+9Z8qvKm7J2Ub3VVkFcaqXgBZdr/yVaI6CTq01SCczEfsgZdUNFcFHMHfPwu5Cyt
 m9LUNk7jga3P8XLggeNEAPmPCAxUGRqV1LzMudonfIMtQSQXkN1/H/zQI2B9cc7J7I4l
 GvUVwOjkb6tb4U7tFxYjF72a4fWD/xu/05VJ66HiFYlw7mqwdOTNMOmitFGoCoVM1biP
 KXcNHxzKxp4chqhooFlH05qHGrk38Xj+/sRVz74EJAis+WHqDdlgHhF1zmf9cdlBH/rW
 C3Vbcdqoyiw8xUX7yF/ha1y6ObbkDtAPsWo1km+hJjjnZAMGO7+/szNiWvkftheFnyZx
 toSQ==
X-Gm-Message-State: APjAAAWRQnuSKgFQAoMQHQm3Ly8GAUyeO6CR6Qjykj1LP+BEiwlZKwQJ
 0WrUVPxrgrq7I3Uss+WgFUwBFA==
X-Google-Smtp-Source: APXvYqxdDIMPWrhGLzYtdYHe5gO3o8u8gVa8ZuAXPnAmDPKvtND3h3TrLvLoNFLHzkxdCaNnylHEyQ==
X-Received: by 2002:a17:902:8c8f:: with SMTP id
 t15mr46446795plo.87.1558656260216; 
 Thu, 23 May 2019 17:04:20 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id s12sm425435pji.30.2019.05.23.17.04.19
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 23 May 2019 17:04:19 -0700 (PDT)
Message-ID: <5ce73503.1c69fb81.5f889.1d84@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <20190519160446.320-1-hsinyi@chromium.org>
References: <20190519160446.320-1-hsinyi@chromium.org>
Subject: Re: [PATCH v4 1/3] amr64: map FDT as RW for early_init_dt_scan()
From: Stephen Boyd <swboyd@chromium.org>
To: Hsin-Yi Wang <hsinyi@chromium.org>, linux-arm-kernel@lists.infradead.org
User-Agent: alot/0.8.1
Date: Thu, 23 May 2019 17:04:18 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_170421_947973_B28AEA9C 
X-CRM114-Status: GOOD (  15.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Mike Rapoport <rppt@linux.ibm.com>,
 Jun Yao <yaojun8558363@gmail.com>, Miles Chen <miles.chen@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, James Morse <james.morse@arm.com>,
 Hsin-Yi Wang <hsinyi@chromium.org>, Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Laura Abbott <labbott@redhat.com>,
 Frank Rowand <frowand.list@gmail.com>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Hsin-Yi Wang (2019-05-19 09:04:44)
> diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
> index a170c6369a68..29648e86f7e5 100644
> --- a/arch/arm64/mm/mmu.c
> +++ b/arch/arm64/mm/mmu.c
> @@ -940,12 +940,12 @@ void *__init __fixmap_remap_fdt(phys_addr_t dt_phys, int *size, pgprot_t prot)
>         return dt_virt;
>  }
>  
> -void *__init fixmap_remap_fdt(phys_addr_t dt_phys)
> +void *__init fixmap_remap_fdt(phys_addr_t dt_phys, pgprot_t prot)
>  {
>         void *dt_virt;
>         int size;
>  
> -       dt_virt = __fixmap_remap_fdt(dt_phys, &size, PAGE_KERNEL_RO);
> +       dt_virt = __fixmap_remap_fdt(dt_phys, &size, prot);
>         if (!dt_virt)
>                 return NULL;
>  

Sorry, I'm still confused why we want to call memblock_reserve() again.
Why not avoid it?

diff --git a/arch/arm64/include/asm/mmu.h b/arch/arm64/include/asm/mmu.h
index 67ef25d037ea..d0d9de9da5c1 100644
--- a/arch/arm64/include/asm/mmu.h
+++ b/arch/arm64/include/asm/mmu.h
@@ -137,7 +137,7 @@ extern void init_mem_pgprot(void);
 extern void create_pgd_mapping(struct mm_struct *mm, phys_addr_t phys,
 			       unsigned long virt, phys_addr_t size,
 			       pgprot_t prot, bool page_mappings_only);
-extern void *fixmap_remap_fdt(phys_addr_t dt_phys);
+extern void *__fixmap_remap_fdt(phys_addr_t dt_phys, int *size, pgprot_t prot);
 extern void mark_linear_text_alias_ro(void);
 
 #define INIT_MM_CONTEXT(name)	\
diff --git a/arch/arm64/kernel/kaslr.c b/arch/arm64/kernel/kaslr.c
index b09b6f75f759..0701c2cf1534 100644
--- a/arch/arm64/kernel/kaslr.c
+++ b/arch/arm64/kernel/kaslr.c
@@ -65,9 +65,6 @@ static __init const u8 *kaslr_get_cmdline(void *fdt)
 	return default_cmdline;
 }
 
-extern void *__init __fixmap_remap_fdt(phys_addr_t dt_phys, int *size,
-				       pgprot_t prot);
-
 /*
  * This routine will be executed with the kernel mapped at its default virtual
  * address, and if it returns successfully, the kernel will be remapped, and
diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
index 413d566405d1..3e97354566ff 100644
--- a/arch/arm64/kernel/setup.c
+++ b/arch/arm64/kernel/setup.c
@@ -181,9 +181,13 @@ static void __init smp_build_mpidr_hash(void)
 
 static void __init setup_machine_fdt(phys_addr_t dt_phys)
 {
-	void *dt_virt = fixmap_remap_fdt(dt_phys);
+	int size;
+	void *dt_virt = __fixmap_remap_fdt(dt_phys, &size, PAGE_KERNEL);
 	const char *name;
 
+	if (dt_virt)
+		memblock_reserve(dt_phys, size);
+
 	if (!dt_virt || !early_init_dt_scan(dt_virt)) {
 		pr_crit("\n"
 			"Error: invalid device tree blob at physical address %pa (virtual address 0x%p)\n"
@@ -195,6 +199,9 @@ static void __init setup_machine_fdt(phys_addr_t dt_phys)
 			cpu_relax();
 	}
 
+	/* Early fixups are done, map the FDT as read-only now */
+	__fixmap_remap_fdt(dt_phys, &size, PAGE_KERNEL_RO);
+
 	name = of_flat_dt_get_machine_name();
 	if (!name)
 		return;
diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index a170c6369a68..ddf6086cd9dd 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -940,19 +940,6 @@ void *__init __fixmap_remap_fdt(phys_addr_t dt_phys, int *size, pgprot_t prot)
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
 int __init arch_ioremap_pud_supported(void)
 {
 	/* only 4k granule supports level 1 block mappings */

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
