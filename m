Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B2E20375
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 12:29:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MnsZrCavNE6+LsqpvzW6lSEYdTxpjmQvdFBk61Ey+5Q=; b=kbY6p3xxo8PZ1c
	XQFxYV1ay97VCScTdO9fKy1hzHOvZ2xTRHqNxILLEihIIXrmp3nueYzm9a/yqoiExHRTQmwxVBgUs
	wXfizVN/op1Fgh8S4ws8ZJecLdslJGa7FO9FWy93pedLNzawyt7F6MCkuG4uZp5ea4oYYW3LHBJYi
	q32lG7VG49CMd9ovKJQMw4ZfiiWaYwPx10YNd0ltXY8pRiEixNMz41hzzSWqt9I+SUzO2jKMB642h
	39SinS1Ss1I+XWjFLL1qKolivJKBEbCvzmd9fuMq+Eblf5sj0snASv9sKSYOHfEpB/dJOYIYLBVUa
	JaweCZSr9AfX1UZyg59A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRDdG-0001wb-7G; Thu, 16 May 2019 10:29:02 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRDd6-0001uw-M0
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 10:28:54 +0000
Received: by mail-pl1-x644.google.com with SMTP id c5so1400631pll.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 03:28:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=g6nTVnaTPu6u0ik4+YTeRCBKr6f5B4jeaBgRZ5SbxTw=;
 b=ZQ/kc6aBkZflGhXSDxDpSNRqmjhb6N9q0F7lksh1UBLl2/I6uLpMJ2EFTj5RVV6ZxA
 IcqVwlZFK1fgG3i5YsdnWHnSvAe8T4bmzMowpcI9tL+lc9gEd+w3HwFB2PVGkTmHiNqw
 kznERwYCaREsUwnxdTq4nxj3gvx3GkByAOgng=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=g6nTVnaTPu6u0ik4+YTeRCBKr6f5B4jeaBgRZ5SbxTw=;
 b=qLFfsCQ48bxtItLTJglgEaxioTo+hcuwcwQryHHnkj0QaZVBk/sPXudSd9XW5vyPR0
 qfTH+phtqIo1d6U244QBgPpsCkECWlrW9VBg7VvzI5017pkSn2mBaGZuzZDWpe8IbPd/
 yWDm3zNG26jPo1P/2nrf/PGha/+q75gE4153y5oniMYQ9TwxUWF6kDUpgz3LrCnP7vO1
 cy5iz3oxgIGDjGVnQHuyqs3HgBTq6Gt6cg3gMv5BmwijRBUXPWkVrvq79l7MisAlqEVB
 cf7x6Is/8OY2umueAnR0BlwvOCiqj4OjagLspyqx0ss29AONRTaHe9P27UMGxiFhWEQ+
 FT1A==
X-Gm-Message-State: APjAAAVjh6m45lEnWoQsJluJ0U3tpSNYOMUkN432pQ27UA21UTy6Q88q
 LpYmDq8LDb/BAN97xs8WDeptdimWQjY=
X-Google-Smtp-Source: APXvYqz6D4VCan2gvNE8/0EMna/+ZpJBgnCigTNFcMqpDIsMc91bUoTxMOxk4U2jcWrjaJnlZy8LoA==
X-Received: by 2002:a17:902:9a81:: with SMTP id
 w1mr47668258plp.71.1558002531758; 
 Thu, 16 May 2019 03:28:51 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id h123sm9338048pfe.80.2019.05.16.03.28.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 16 May 2019 03:28:51 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 2/3] arm64: implement update_fdt_pgprot()
Date: Thu, 16 May 2019 18:28:16 +0800
Message-Id: <20190516102817.188519-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190516102817.188519-1-hsinyi@chromium.org>
References: <20190516102817.188519-1-hsinyi@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_032852_717287_06C7342C 
X-CRM114-Status: GOOD (  14.27  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Chintan Pandya <cpandya@codeaurora.org>, Will Deacon <will.deacon@arm.com>,
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

Basically does similar things like __fixmap_remap_fdt(). It's supposed
to be called after fixmap_remap_fdt() is called at least once, so region
checking can be skipped. Since it needs to know dt physical address, make
a copy of the value of __fdt_pointer.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 arch/arm64/kernel/setup.c |  2 ++
 arch/arm64/mm/mmu.c       | 17 +++++++++++++++++
 2 files changed, 19 insertions(+)

diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
index 413d566405d1..207cbb5f7965 100644
--- a/arch/arm64/kernel/setup.c
+++ b/arch/arm64/kernel/setup.c
@@ -66,6 +66,7 @@ static int num_standard_resources;
 static struct resource *standard_resources;
 
 phys_addr_t __fdt_pointer __initdata;
+phys_addr_t fdt_pointer;
 
 /*
  * Standard memory resources
@@ -292,6 +293,7 @@ void __init setup_arch(char **cmdline_p)
 	early_fixmap_init();
 	early_ioremap_init();
 
+	fdt_pointer = __fdt_pointer;
 	setup_machine_fdt(__fdt_pointer);
 
 	parse_early_param();
diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index a170c6369a68..196ab4d9e92a 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -32,6 +32,7 @@
 #include <linux/io.h>
 #include <linux/mm.h>
 #include <linux/vmalloc.h>
+#include <linux/of_fdt.h>
 
 #include <asm/barrier.h>
 #include <asm/cputype.h>
@@ -953,6 +954,22 @@ void *__init fixmap_remap_fdt(phys_addr_t dt_phys)
 	return dt_virt;
 }
 
+extern phys_addr_t fdt_pointer;
+
+/* Should be called after fixmap_remap_fdt() is called. */
+void update_fdt_pgprot(pgprot_t prot)
+{
+	u64 dt_virt_base = __fix_to_virt(FIX_FDT);
+	int offset, size;
+
+	offset = fdt_pointer % SWAPPER_BLOCK_SIZE;
+	size = fdt_totalsize((void *)dt_virt_base + offset);
+
+	update_mapping_prot(round_down(fdt_pointer, SWAPPER_BLOCK_SIZE),
+			dt_virt_base,
+			round_up(offset + size, SWAPPER_BLOCK_SIZE), prot);
+}
+
 int __init arch_ioremap_pud_supported(void)
 {
 	/* only 4k granule supports level 1 block mappings */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
