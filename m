Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D8320376
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 12:29:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xlhe2qwtLykQ5F9uoP1wsF3GciRt+qUurLp0AClKlds=; b=uqdSss5EsdhamN
	iMdPb1NxO2PxvxM8ITp1B09z+4UtVnIlGO3tXvrFwlbcRT/VrtTxDrhJeqTb4rZAuJ/i61t+LvEs6
	WHB9nq5UHNb2QU8B7h2AcCsRy14fYDZHX9TZGpm+fpi+wydAQqL0AKmOdNAgrKOf7nGQbbu6LYX4q
	8PoZzxzkcwgUdVw79biBsWfsqOqfnfKfAnw+L7Qxc6pUyThfSbw0O/93pMjD3zoOIdkDeFgiyx8+Y
	CNrc5FRGfZ2XEoHxfMXvMUkm9uINnE6k7QAZsg2rBSrVxDXvako3Nixz5Z5aSkmttg5NVQ1NiQXK2
	0dWaFfaDLZ3dPzRJ5gFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRDdS-00029n-1M; Thu, 16 May 2019 10:29:14 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRDdC-0001zC-Uw
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 10:29:03 +0000
Received: by mail-pf1-x441.google.com with SMTP id z26so1624967pfg.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 03:28:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MnHxDH7/gQC7S9Ex4Yrjn2JKssZnvEJdzim34WmQ+q8=;
 b=Q7r9C3C+1xp3K+F79f6HS9pMPjdOXBJlhNlNH1sNo8Gf28sq+UxJPIbw2WS+1yYLw6
 yZqgEDWASIraQfHYA0liC/dDovipJoQ9hzXfSk4dtix+XDB4gYK6M8Y3wfvVbl2uYTjW
 uf+2pUVkJmyMR0yFOwkMZUe0h831zzwbPUIRs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MnHxDH7/gQC7S9Ex4Yrjn2JKssZnvEJdzim34WmQ+q8=;
 b=e7GeVzG7VGLVPEf/kPVwzQinJKN1aVyFju7u/U+ARF7qFXWRUsLFfUggIfXwPdWn7r
 M08mtvoNJTGV+kga6BPg7kGwOGfwo5ykZN4UC5G95E5zIAN/KKez19EY1LJ43+tN6o+c
 66cdYbAZiiD8VbiQ4ye0CdXE18aPCZTdZ10DOo0rAEi15E94E89FLErIA5v0BhMjrYZE
 Tv1xODvrGXDBe2cncgl7q34OMAF599De7MFKFsXRDrX3/lWBlKcYX0BwgkFDfH73Dmos
 nGnk4GCIC1AT2M/nOD2fOYp9Dts9K3+RI+yNegEIvB4GdW1Tgj3ceG8wF3fli5712Tm8
 8ijw==
X-Gm-Message-State: APjAAAWIIj7ZWE9hCfgkxCxTyEJiCl4krWu/nGC0CzIHYs8Fu/N5VECW
 Xy8V+BQgglZKjn4lO+C/rMa+p/4tzXc=
X-Google-Smtp-Source: APXvYqyyjv4fLjo+oyGYCsVCI5nasI3GONHx4lFzfytCasfenGK3gbTutnpws7AafXrv+jwtMbgFYw==
X-Received: by 2002:a65:5c82:: with SMTP id a2mr50043330pgt.378.1558002537858; 
 Thu, 16 May 2019 03:28:57 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id h123sm9338048pfe.80.2019.05.16.03.28.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 16 May 2019 03:28:57 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 3/3] fdt: add support for rng-seed
Date: Thu, 16 May 2019 18:28:17 +0800
Message-Id: <20190516102817.188519-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190516102817.188519-1-hsinyi@chromium.org>
References: <20190516102817.188519-1-hsinyi@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_032859_323458_2BD4D699 
X-CRM114-Status: GOOD (  17.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

Introducing a chosen node, rng-seed, which is an entropy that can be
passed to kernel called very early to increase initial device
randomness. Bootloader should provide this entropy and the value is
read from /chosen/rng-seed in DT.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
change v2->v3:
1. use arch hook for fdt pgprot change
2. handle CONFIG_KEXEC
---
 Documentation/devicetree/bindings/chosen.txt | 14 +++++
 drivers/of/fdt.c                             | 55 ++++++++++++++++++++
 2 files changed, 69 insertions(+)

diff --git a/Documentation/devicetree/bindings/chosen.txt b/Documentation/devicetree/bindings/chosen.txt
index 45e79172a646..fef5c82672dc 100644
--- a/Documentation/devicetree/bindings/chosen.txt
+++ b/Documentation/devicetree/bindings/chosen.txt
@@ -28,6 +28,20 @@ mode) when EFI_RNG_PROTOCOL is supported, it will be overwritten by
 the Linux EFI stub (which will populate the property itself, using
 EFI_RNG_PROTOCOL).
 
+rng-seed
+-----------
+
+This property served as an entropy to add device randomness. It is parsed
+as a byte array, e.g.
+
+/ {
+	chosen {
+		rng-seed = <0x31 0x95 0x1b 0x3c 0xc9 0xfa 0xb3 ...>;
+	};
+};
+
+This random value should be provided by bootloader.
+
 stdout-path
 -----------
 
diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index e84971d1e9ea..e9862657268d 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -10,6 +10,7 @@
 
 #include <linux/crc32.h>
 #include <linux/kernel.h>
+#include <linux/kexec.h>
 #include <linux/initrd.h>
 #include <linux/memblock.h>
 #include <linux/mutex.h>
@@ -24,6 +25,8 @@
 #include <linux/debugfs.h>
 #include <linux/serial_core.h>
 #include <linux/sysfs.h>
+#include <linux/random.h>
+#include <linux/reboot.h>
 
 #include <asm/setup.h>  /* for COMMAND_LINE_SIZE */
 #include <asm/page.h>
@@ -1087,11 +1090,14 @@ int __init early_init_dt_scan_memory(unsigned long node, const char *uname,
 	return 0;
 }
 
+int rng_seed_size;
+
 int __init early_init_dt_scan_chosen(unsigned long node, const char *uname,
 				     int depth, void *data)
 {
 	int l;
 	const char *p;
+	const void *rng_seed;
 
 	pr_debug("search \"chosen\", depth: %d, uname: %s\n", depth, uname);
 
@@ -1126,6 +1132,16 @@ int __init early_init_dt_scan_chosen(unsigned long node, const char *uname,
 
 	pr_debug("Command line is: %s\n", (char*)data);
 
+	rng_seed = of_get_flat_dt_prop(node, "rng-seed", &rng_seed_size);
+	if (rng_seed && rng_seed_size > 0) {
+		add_device_randomness(rng_seed, rng_seed_size);
+
+		/* try to clear seed so it won't be found. */
+		update_fdt_pgprot(PAGE_KERNEL);
+		fdt_delprop(initial_boot_params, node, "rng-seed");
+		update_fdt_pgprot(PAGE_KERNEL_RO);
+	}
+
 	/* break now */
 	return 1;
 }
@@ -1327,4 +1343,43 @@ static int __init of_fdt_raw_init(void)
 late_initcall(of_fdt_raw_init);
 #endif
 
+#ifdef CONFIG_KEXEC
+static int update_fdt_random_seed(struct notifier_block *nb,
+				  unsigned long code, void *unused)
+{
+	int node;
+	void *rng_seed;
+
+	if (!kexec_in_progress || !rng_seed_size)
+		return NOTIFY_DONE;
+
+	node = fdt_path_offset(initial_boot_params, "/chosen");
+	if (node < 0)
+		node = fdt_path_offset(initial_boot_params, "/chosen@0");
+	if (node < 0)
+		return NOTIFY_DONE;
+
+	rng_seed = kmalloc(rng_seed_size, GFP_ATOMIC);
+	get_random_bytes(rng_seed, rng_seed_size);
+
+	update_fdt_pgprot(PAGE_KERNEL);
+	fdt_setprop(initial_boot_params, node, "rng-seed", rng_seed,
+			rng_seed_size);
+
+	kfree(rng_seed);
+
+	return NOTIFY_DONE;
+}
+
+static struct notifier_block fdt_random_seed_nb = {
+	.notifier_call = update_fdt_random_seed,
+};
+
+static int register_update_fdt_random_seed(void)
+{
+	return register_reboot_notifier(&fdt_random_seed_nb);
+}
+late_initcall(register_update_fdt_random_seed);
+#endif
+
 #endif /* CONFIG_OF_EARLY_FLATTREE */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
