Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB6398C4F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 09:19:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TstLvbFbfFnI7WMTrM+cMA+XcNlb566p9Ng64i4ucc4=; b=LvM9yQgCdbSL3N
	sjhxPal/SV8c3wTAy236zKHA5rzx2eUNtR/+fDsa/+ZFDxN4u5LmZkqGXGRWs99Af9tLnzkw7qLwP
	Ui75PbUjNVYch/mUlGiaYtA6dxP+92rA4OoOpwWTJhzSV709wpmcX/qzd7oJFajCCjC5C66ZIElWP
	mXakIlNYu5QRhE6Y9qSMuLlUTz0Qe2bQJ6EiZIE+VtZvKf7mxcd3B55177YH0pK/YT++hLUy592hl
	vWVxKkc4ROHaaHZ4PX5nkyNtp3FE1t7F8BE6gGBFpoUQpKP1WCYQH+mJy1o4jltcJusGoxAlW1VGR
	/rODSMqeg9RXr1IdRgYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0hN2-0001uS-LO; Thu, 22 Aug 2019 07:18:56 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0hKw-0001Qa-1n
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 07:16:48 +0000
Received: by mail-pf1-x441.google.com with SMTP id o70so3316325pfg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 00:16:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=u1M0h1fse5fWcD6TExQsXpSrhJTc/UmTdvcIiT+sTi4=;
 b=jyOzhTFhEpT0F8vv04j2INavdeUrerCYnwz08j2DyPbn/ksQ1D/zzsYav4RTqZ3jvh
 met3GnRNZPdjm/iarcVQbwLySgdKIjkUnfqolpTzUJziFzR3D7wTvFDDsydcFGYVPwws
 I6sGoA3MwMa88O6C9ba2arRlSpOy3xm2L2HbA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=u1M0h1fse5fWcD6TExQsXpSrhJTc/UmTdvcIiT+sTi4=;
 b=EMTCkENmSHOLBlSbjfVjSJvBTmmr+8kXEXARHnckKK9rt8AczVxGGHMv0vtEWpf+gw
 d53yHqq6K5qB1/sICSPUy7gOAEVPK8g9U81z11PvJlwY3yhS4VI1W+2DggM3t0gcKQLu
 1Rj88US0JjT44eN3PJRjtkiLk5OmKaEwBdLtQiVT7bxLqHHV350Xwx/TCHcl4OpDUOQt
 NqTN3t07gbmzIyoMJ71k/WBWuqgpc+Sh826alLpRtfpoM1Jd5S9niYR98+bxm7edqQmW
 6XVaj7IBUa2e/Ci01YTca90u2j2v87/1a4aAGQwuGWL5gkykDEQ/rT4aHPqbHwist6mE
 1hhQ==
X-Gm-Message-State: APjAAAWonYEic5AYZrFk5/4A+OHxvUGnXhlI2Lp2bN403WRG5wBMWDC/
 SjQIl9DOOKI9NW4Bmm5mBdRKTWFUrPc=
X-Google-Smtp-Source: APXvYqywLFIAaNaYsXu1OfGGVmmvmZGXRzd+bHimaWcDa4BRxGcbhjI6qIAuKVbwffys+v10Uq3gKA==
X-Received: by 2002:a63:ed55:: with SMTP id m21mr32583711pgk.343.1566458205158; 
 Thu, 22 Aug 2019 00:16:45 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id w26sm30233450pfq.100.2019.08.22.00.16.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 22 Aug 2019 00:16:44 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org, "Theodore Y . Ts'o" <tytso@mit.edu>
Subject: [PATCH v9 2/3] fdt: add support for rng-seed
Date: Thu, 22 Aug 2019 15:15:22 +0800
Message-Id: <20190822071522.143986-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190822071522.143986-1-hsinyi@chromium.org>
References: <20190822071522.143986-1-hsinyi@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_001646_356728_EC6FEB0C 
X-CRM114-Status: GOOD (  21.78  )
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
Change from v8:
* Add a new interface add_bootloader_randomness
* Add a new kernel config
---
 drivers/char/Kconfig   | 10 ++++++++++
 drivers/char/random.c  | 15 +++++++++++++++
 drivers/of/fdt.c       | 14 ++++++++++++--
 include/linux/random.h |  1 +
 4 files changed, 38 insertions(+), 2 deletions(-)

diff --git a/drivers/char/Kconfig b/drivers/char/Kconfig
index 96156c729a31..5974a5906fd0 100644
--- a/drivers/char/Kconfig
+++ b/drivers/char/Kconfig
@@ -551,3 +551,13 @@ config RANDOM_TRUST_CPU
 	has not installed a hidden back door to compromise the CPU's
 	random number generation facilities. This can also be configured
 	at boot with "random.trust_cpu=on/off".
+
+config RANDOM_TRUST_BOOTLOADER
+	bool "Trust the bootloader to initialize Linux's CRNG"
+	default n
+	help
+	Bootloader could provide rng-seed set in /chosen/rng-seed in DT to help
+	increase initial device randomness. Assume the entropy provided is
+	trustworthy, it would be regarded as true hardware RNGs and update the
+	entropy estimate. Otherwise it would be regarded as device input that
+	could help mix the entropy pool, but won't be added to actual entropy.
\ No newline at end of file
diff --git a/drivers/char/random.c b/drivers/char/random.c
index 5d5ea4ce1442..29d3ff3de1e1 100644
--- a/drivers/char/random.c
+++ b/drivers/char/random.c
@@ -2445,3 +2445,18 @@ void add_hwgenerator_randomness(const char *buffer, size_t count,
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
+#ifdef CONFIG_RANDOM_TRUST_BOOTLOADER
+	add_hwgenerator_randomness(buf, size, size * 8);
+#else
+	add_device_randomness(buf, size);
+#endif
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
