Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D680158A6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 06:54:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BnZ1KgdzarIUYFVl0Rg1a/eB5WdrjkhTdMPW8Hf4DfQ=; b=a6+MHLPbYM9EP3
	VZR4hMxSJqb3+XRV6pQEZYeRup4hkh3UiUJUQoQ5D0gEl3m4dCC1KSyquQ76u4bd5S+mAJ/O+llPS
	GIWPJw9JKugMxa9fLRaz6O7fOuiPUYqaPQ44ZW/FI3FnmbAYGQKU/q1XVU+KMMFG+Yx4QJohLBmtJ
	5VQyc8FK8uAdmdgcxwys9PiiEwlRYiuxorvB9R+aJ44CZ4D2KORevY7kTESD0/4apOgO//LC+Rm2D
	K4/jacxssGasCsGOr66O+KzA6wrXQHjfpbPFN/QZtWou71qkSS1OwcmoIRw0vgT1qDBCTsc943LzX
	Lzso7Rwjw+OXQ0FDXDDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNs7r-0002Zd-V8; Tue, 07 May 2019 04:54:47 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNs7l-0002Yn-02
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 04:54:42 +0000
Received: by mail-pl1-x644.google.com with SMTP id x15so7511838pln.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 21:54:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=38RWjgCCoqTDs9WWdGrvN90MmbgyDENeZWWwktqdhr8=;
 b=W++urFVAUjLmLOLkV3WhQSOmCHTEqyZleYLFYcJS1FJFHR9VMWwE43/CQVnp7clqZJ
 0to4FXahT9R0KcfAE2AZ3Dx7hr2fppYi+cmSE03lpJwnqcUbFTNyJ4UDEb05UUdlSiOb
 y3/mI3LdK44NbhX+H6KrvLW0JGYY6V9AfZyks=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=38RWjgCCoqTDs9WWdGrvN90MmbgyDENeZWWwktqdhr8=;
 b=f5DqfCMORMgeO6+wPpCsvKjEmT16GRYUJtX0SI/UUJzV5fi02j4wNklJeIjbRo8t2G
 mdGZJiVj06lTFJehLG0SdqreiNuik4RVhB6ftyR09m/aGEQmIgmy6q/g0L6U4Kknjiy9
 nftF1FhZSenUgepq+E7+6W0UKu9bn0B6mOzFrGwVKPKKWO9qkTE2sQaFXdnsj764Jhg5
 GpZeHVgNTsJU7UuKZG4sYg0rYwffJoz1jlbZLk7jaFHeU2bkE09kIoM19IA1JCBIGnch
 DbN1q/PrWVMxkYxG3KngKUOr1tJGpaWexT2Jw+P7aMYtMuGk8Plqfnf/oh2R6e04uyVa
 hYjA==
X-Gm-Message-State: APjAAAXQz0hu6JawpGpoULQFB8wajwSNfw0xwk9D0x3C2Ol9QWshPOPv
 2ialbrzXS927WVC+VOwnHHWBcuq32hU=
X-Google-Smtp-Source: APXvYqx/d4EzgjZah9buZEK+LtAIbXk1JKtst2Fa3PFYVbMVoteyW6i+8kXaXNoaF1nYlrVVmSIR9Q==
X-Received: by 2002:a17:902:2a26:: with SMTP id
 i35mr38742318plb.229.1557204879208; 
 Mon, 06 May 2019 21:54:39 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id 13sm14970025pfi.172.2019.05.06.21.54.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 06 May 2019 21:54:38 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: add support for rng-seed
Date: Tue,  7 May 2019 12:54:33 +0800
Message-Id: <20190507045433.542-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_215441_067986_A136EE4F 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Michal Hocko <mhocko@suse.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Mike Rapoport <rppt@linux.ibm.com>,
 Rob Herring <robh+dt@kernel.org>, James Morse <james.morse@arm.com>,
 Hsin-Yi Wang <hsinyi@chromium.org>, Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Stephen Boyd <swboyd@chromium.org>,
 Frank Rowand <frowand.list@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introducing a chosen node, rng-seed, which is an 64 bytes entropy
that can be passed to kernel called very early to increase device
randomness. Bootloader should provide this entropy and the value is
read from /chosen/rng-seed in DT.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>

---
 Documentation/devicetree/bindings/chosen.txt | 14 +++++++++
 arch/arm64/kernel/setup.c                    |  2 ++
 drivers/of/fdt.c                             | 33 ++++++++++++++++++++
 include/linux/of_fdt.h                       |  1 +
 4 files changed, 50 insertions(+)

diff --git a/Documentation/devicetree/bindings/chosen.txt b/Documentation/devicetree/bindings/chosen.txt
index 45e79172a646..bfd360691650 100644
--- a/Documentation/devicetree/bindings/chosen.txt
+++ b/Documentation/devicetree/bindings/chosen.txt
@@ -28,6 +28,20 @@ mode) when EFI_RNG_PROTOCOL is supported, it will be overwritten by
 the Linux EFI stub (which will populate the property itself, using
 EFI_RNG_PROTOCOL).
 
+rng-seed
+-----------
+
+This property served as an entropy to add device randomness. It is parsed
+as a 64 byte value, e.g.
+
+/ {
+	chosen {
+		rng-seed = <0x31951b3c 0xc9fab3a5 0xffdf1660 ...>
+	};
+};
+
+This random value should be provided by bootloader.
+
 stdout-path
 -----------
 
diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
index 413d566405d1..ade4261516dd 100644
--- a/arch/arm64/kernel/setup.c
+++ b/arch/arm64/kernel/setup.c
@@ -292,6 +292,8 @@ void __init setup_arch(char **cmdline_p)
 	early_fixmap_init();
 	early_ioremap_init();
 
+	early_init_dt_rng_seed(__fdt_pointer);
+
 	setup_machine_fdt(__fdt_pointer);
 
 	parse_early_param();
diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index de893c9616a1..74e2c0c80b91 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -22,6 +22,7 @@
 #include <linux/slab.h>
 #include <linux/libfdt.h>
 #include <linux/debugfs.h>
+#include <linux/random.h>
 #include <linux/serial_core.h>
 #include <linux/sysfs.h>
 
@@ -1117,6 +1118,38 @@ int __init early_init_dt_scan_chosen(unsigned long node, const char *uname,
 	return 1;
 }
 
+extern void *__init __fixmap_remap_fdt(phys_addr_t dt_phys, int *size,
+				       pgprot_t prot);
+
+void __init early_init_dt_rng_seed(u64 dt_phys)
+{
+	void *fdt;
+	int node, size, i;
+	fdt64_t *prop;
+	u64 rng_seed[8];
+
+	fdt = __fixmap_remap_fdt(dt_phys, &size, PAGE_KERNEL);
+	if (!fdt)
+		return;
+
+	node = fdt_path_offset(fdt, "/chosen");
+	if (node < 0)
+		return;
+
+	prop = fdt_getprop_w(fdt, node, "rng-seed", &size);
+	if (!prop || size != sizeof(u64) * 8)
+		return;
+
+	for (i = 0; i < 8; i++) {
+		rng_seed[i] = fdt64_to_cpu(*(prop + i));
+		/* clear seed so it won't be found. */
+		*(prop + i) = 0;
+	}
+	add_device_randomness(rng_seed, size);
+
+	return;
+}
+
 #ifndef MIN_MEMBLOCK_ADDR
 #define MIN_MEMBLOCK_ADDR	__pa(PAGE_OFFSET)
 #endif
diff --git a/include/linux/of_fdt.h b/include/linux/of_fdt.h
index a713e5d156d8..a4548dd6351e 100644
--- a/include/linux/of_fdt.h
+++ b/include/linux/of_fdt.h
@@ -71,6 +71,7 @@ extern uint32_t of_get_flat_dt_phandle(unsigned long node);
 
 extern int early_init_dt_scan_chosen(unsigned long node, const char *uname,
 				     int depth, void *data);
+extern void early_init_dt_rng_seed(u64 dt_phys);
 extern int early_init_dt_scan_memory(unsigned long node, const char *uname,
 				     int depth, void *data);
 extern int early_init_dt_scan_chosen_stdout(void);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
