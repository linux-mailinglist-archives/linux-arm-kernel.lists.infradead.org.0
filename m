Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68B869A788
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 08:28:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0cG5SIILyBliR0qBBlTEJjRmh4lzK10oEXPwAw9CQhE=; b=kYR339iHHnfH7+
	9NSEy57QYobO/vm60JsMSep6hRUW5gqZ/aK9ifa8dcqRTqIVpqcSnEIMHw15bDtx9NKKxFQuRpMxf
	bkDQxw1Vl4LAGIRLK8SVPt0vgL04wVfMpxwAisavdRIvhp4kL7MVSeWv3TI8tcmc7l8IGA9oLmCiG
	ccDu+zTgxnPq8yWp9rjJ5aDRpWmowa2fPueERMCj4vXQrTwoDG8IT5BTrmJbmLR8Cc7qJZZCqQb6U
	ak2C6eW3ogCtSDk0E0k/cPY6lg8+1u4UORoos9OJZOzdSg19ZqV7RmCiFLMhdVdln6UQm9SfxwNwh
	4IoFsPhcrGguPWXVgGXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i133d-0002rr-7w; Fri, 23 Aug 2019 06:28:21 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i132t-0002RC-3e
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 06:27:36 +0000
Received: by mail-pf1-x444.google.com with SMTP id w26so5750991pfq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 23:27:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0pVReU3L4xNNWo9+KatKn65E5Ld718QqqaoOMK1fJHQ=;
 b=XWLQMu9+3h/iiKrPiQ+ZajD1bYKREAVWGm/oN5kfGiIkOsaUVYdGD9oABeJ9b7IO95
 wRhqWd249jRsuQlRX40CtosYmC+jw3LZvtQL8AMXe8oqmHGDPyr2fP3Cm+1a0czCyU35
 v0Pu4/ZcYMgi0gTjwMpbG7TgTOb7IRXYbkvOs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0pVReU3L4xNNWo9+KatKn65E5Ld718QqqaoOMK1fJHQ=;
 b=cm9zvAJSxsZ9MBWNqRSMU92i50uio/i/VQ/ks8qYiGIigki3it6VvbJY7XXn9mTh+7
 k5PbxgujtudplV1k26Np+Dr0PqufVSzlghsGFA1Yxm4TGll89mG/zKCqr8NDwl5DnJ8m
 NINVKXnkQFkaohwQIuAnXDPWIHfz6CEiiPP4iI52iKKgvpW59CYWjImpDbSyO8o0jdGj
 3exM24jCgeljsv3ENuAnDPwzp9av7Z6OKzfTM05ewTDlYjtcRmMuKMFqGWmJXBVfIKHD
 G75u3JRS72Kz56Ni02cXgqH++XK17ibuVce41dcgGuqG+ZtqjpD6G+zE0iPSMI05/ONP
 mIWg==
X-Gm-Message-State: APjAAAWdWqyZnzRlsferXb6gbdJwFB8VdqeQkR1yNoM4oXZXVcMl9iUz
 ShoQ6zw8ClHoWs0tTxjuWuG6ULEMdiE=
X-Google-Smtp-Source: APXvYqz0Nb4vLW/Rppgb80/OXeYgQhAO9pkk8UoujB6MiOthueFuVt1sTRT03Pr+UQuClClNGMHy1w==
X-Received: by 2002:a17:90a:bf0e:: with SMTP id
 c14mr3519541pjs.140.1566541654373; 
 Thu, 22 Aug 2019 23:27:34 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id q13sm2139671pfl.124.2019.08.22.23.27.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 22 Aug 2019 23:27:33 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org, "Theodore Y . Ts'o" <tytso@mit.edu>
Subject: [PATCH v10 2/3] fdt: add support for rng-seed
Date: Fri, 23 Aug 2019 14:24:51 +0800
Message-Id: <20190823062452.127528-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190823062452.127528-1-hsinyi@chromium.org>
References: <20190823062452.127528-1-hsinyi@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_232735_235285_D27B8387 
X-CRM114-Status: GOOD (  20.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Mukesh Ojha <mojha@codeaurora.org>,
 Grzegorz Halat <ghalat@redhat.com>, "H . Peter Anvin" <hpa@zytor.com>,
 Guenter Roeck <groeck@chromium.org>, Will Deacon <will@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>, Rob Herring <robh@kernel.org>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Anders Roxell <anders.roxell@linaro.org>, Yury Norov <ynorov@marvell.com>,
 Marc Zyngier <maz@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Aaro Koskinen <aaro.koskinen@nokia.com>, Ingo Molnar <mingo@redhat.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Waiman Long <longman@redhat.com>,
 "Paul E . McKenney" <paulmck@linux.vnet.ibm.com>, Wei Li <liwei391@huawei.com>,
 Alexey Dobriyan <adobriyan@gmail.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Len Brown <len.brown@intel.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Rik van Riel <riel@surriel.com>,
 Stephen Boyd <swboyd@chromium.org>, Shaokun Zhang <zhangshaokun@hisilicon.com>,
 Mike Rapoport <rppt@linux.vnet.ibm.com>, Borislav Petkov <bp@alien8.de>,
 Josh Poimboeuf <jpoimboe@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Marcelo Tosatti <mtosatti@redhat.com>, linux-kernel@vger.kernel.org,
 Armijn Hemel <armijn@tjaldur.nl>, Jiri Kosina <jkosina@suse.cz>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Tim Chen <tim.c.chen@linux.intel.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introducing a chosen node, rng-seed, which is an entropy that can be
passed to kernel called very early to increase initial device
randomness. Bootloader should provide this entropy and the value is
read from /chosen/rng-seed in DT.

Obtain of_fdt_crc32 for CRC check after early_init_dt_scan_nodes(),
since early_init_dt_scan_chosen() would modify fdt to erase rng-seed.

Add a new interface add_bootloader_randomness() for rng-seed use case.
Depends on whether the seed is trustworthy, rng seed would be passed to
add_hwgenerator_randomness(). Otherwise it would be passed to
add_device_randomness(). Decision is controlled by kernel config
RANDOM_TRUST_BOOTLOADER.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reviewed-by: Stephen Boyd <swboyd@chromium.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
Change from v9:
* reword kconfig
* use IS_ENABLED for config
---
 drivers/char/Kconfig   |  9 +++++++++
 drivers/char/random.c  | 14 ++++++++++++++
 drivers/of/fdt.c       | 14 ++++++++++++--
 include/linux/random.h |  1 +
 4 files changed, 36 insertions(+), 2 deletions(-)

diff --git a/drivers/char/Kconfig b/drivers/char/Kconfig
index 96156c729a31..df0fc997dc3e 100644
--- a/drivers/char/Kconfig
+++ b/drivers/char/Kconfig
@@ -551,3 +551,12 @@ config RANDOM_TRUST_CPU
 	has not installed a hidden back door to compromise the CPU's
 	random number generation facilities. This can also be configured
 	at boot with "random.trust_cpu=on/off".
+
+config RANDOM_TRUST_BOOTLOADER
+	bool "Trust the bootloader to initialize Linux's CRNG"
+	help
+	Some bootloaders can provide entropy to increase the kernel's initial
+	device randomness. Say Y here to assume the entropy provided by the
+	booloader is trustworthy so it will be added to the kernel's entropy
+	pool. Otherwise, say N here so it will be regarded as device input that
+	only mixes the entropy pool.
\ No newline at end of file
diff --git a/drivers/char/random.c b/drivers/char/random.c
index 5d5ea4ce1442..566922df4b7b 100644
--- a/drivers/char/random.c
+++ b/drivers/char/random.c
@@ -2445,3 +2445,17 @@ void add_hwgenerator_randomness(const char *buffer, size_t count,
 	credit_entropy_bits(poolp, entropy);
 }
 EXPORT_SYMBOL_GPL(add_hwgenerator_randomness);
+
+/* Handle random seed passed by bootloader.
+ * If the seed is trustworthy, it would be regarded as hardware RNGs. Otherwise
+ * it would be regarded as device data.
+ * The decision is controlled by CONFIG_RANDOM_TRUST_BOOTLOADER.
+ */
+void add_bootloader_randomness(const void *buf, unsigned int size)
+{
+	if (IS_ENABLED(CONFIG_RANDOM_TRUST_BOOTLOADER))
+		add_hwgenerator_randomness(buf, size, size * 8);
+	else
+		add_device_randomness(buf, size);
+}
+EXPORT_SYMBOL_GPL(add_bootloader_randomness);
\ No newline at end of file
diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 9cdf14b9aaab..7d97ab6d0e31 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -24,6 +24,7 @@
 #include <linux/debugfs.h>
 #include <linux/serial_core.h>
 #include <linux/sysfs.h>
+#include <linux/random.h>
 
 #include <asm/setup.h>  /* for COMMAND_LINE_SIZE */
 #include <asm/page.h>
@@ -1044,6 +1045,7 @@ int __init early_init_dt_scan_chosen(unsigned long node, const char *uname,
 {
 	int l;
 	const char *p;
+	const void *rng_seed;
 
 	pr_debug("search \"chosen\", depth: %d, uname: %s\n", depth, uname);
 
@@ -1078,6 +1080,14 @@ int __init early_init_dt_scan_chosen(unsigned long node, const char *uname,
 
 	pr_debug("Command line is: %s\n", (char*)data);
 
+	rng_seed = of_get_flat_dt_prop(node, "rng-seed", &l);
+	if (rng_seed && l > 0) {
+		add_bootloader_randomness(rng_seed, l);
+
+		/* try to clear seed so it won't be found. */
+		fdt_nop_property(initial_boot_params, node, "rng-seed");
+	}
+
 	/* break now */
 	return 1;
 }
@@ -1166,8 +1176,6 @@ bool __init early_init_dt_verify(void *params)
 
 	/* Setup flat device-tree pointer */
 	initial_boot_params = params;
-	of_fdt_crc32 = crc32_be(~0, initial_boot_params,
-				fdt_totalsize(initial_boot_params));
 	return true;
 }
 
@@ -1197,6 +1205,8 @@ bool __init early_init_dt_scan(void *params)
 		return false;
 
 	early_init_dt_scan_nodes();
+	of_fdt_crc32 = crc32_be(~0, initial_boot_params,
+				fdt_totalsize(initial_boot_params));
 	return true;
 }
 
diff --git a/include/linux/random.h b/include/linux/random.h
index 1f7dced2bba6..f189c927fdea 100644
--- a/include/linux/random.h
+++ b/include/linux/random.h
@@ -19,6 +19,7 @@ struct random_ready_callback {
 };
 
 extern void add_device_randomness(const void *, unsigned int);
+extern void add_bootloader_randomness(const void *, unsigned int);
 
 #if defined(LATENT_ENTROPY_PLUGIN) && !defined(__CHECKER__)
 static inline void add_latent_entropy(void)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
