Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 584251AE9F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 02:39:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aKKcHwn3Kw/Ed3AXcuvSDnnhsU2D4/+PFXA2U8v7K2M=; b=pVxdMkrJx6K/2J
	1wZOumZw4AFWKZa+BYmKvbRuaP9RYT0a5zOXw/vAOMSs576R5M7L/KZnr+N6IIL/0Cw2MFGMmoDaS
	YDN0VTTPJUeocEVSVtIgVg6VsAdlDiqRrqzvHB3jQ8KA5XeVdtWS0QQYSzbN9uZlmKbzw0dP2Tt9J
	5XLb9Xtee5Y0J+f6GXg44O94hHbg9XOdkPtCx36sEJ2A5oSdGQw73e2JW4M5DtxUo0Q+1rpP9lMAV
	irxIHY93qKhemqEmgnOm0qF2OJRKJVgWLhl5owKP93aMn61xnxhiicW5PT2H/Wi81PCfonKkujkEd
	9eUHyTq6tDs4XqVRJRig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPyzr-0007Z0-6C; Mon, 13 May 2019 00:39:15 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPyzj-0007Yd-LV
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 00:39:09 +0000
Received: by mail-pf1-x442.google.com with SMTP id y2so757275pfg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 May 2019 17:39:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IgOJ9QLzOUW01yLV2OfG7YkSkZvw2ViCiy6aBBS6YFQ=;
 b=PAJDB8sdHVi0D44H/07DcJs+vX7Cb6MzLOV7JTtIBdbHIYzaIGW6owURsu25tGJfP9
 Y8tm7gC8gBtob9CnxVZrElnfLEKoMkVic3khHAFKYDIS4xHKxMSValMptyH9vg4JGMsA
 cd04NRnP/ULXmIzpZPHml84TD4lCSO7ftc7/U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IgOJ9QLzOUW01yLV2OfG7YkSkZvw2ViCiy6aBBS6YFQ=;
 b=W7z0j+158kRKxjTuSTCVsWTjpiYaX8vQjjZm7Q8XUq2ynF2J75Jvd/MpphSnBRWxaQ
 uQ7rVM6K3Ia4hUmMVsbzaajSfOGERKT/1x52caTzVHX+3M7T7Kqm5xbCvS80jevtgEq2
 naWqdbdXq+66YFhmxu4WVjSMCvKUMEk9lhdPFx302HQXEvKCDNXIxLbGYOWA7uwkk/m/
 hO50wUTIVIu8AYAorskoW7JBszyqrw3b0lS0Vy5Pm23qxdEfMylz/bTi9r0lJShI0WNA
 QfxJsZiq4aA7f8Fb/ynEYhrTX01Pl2zxREpyqgE0OX0s/60HvoBnpDiaw/eShBQgO/Qi
 HyvA==
X-Gm-Message-State: APjAAAXqBgt/O2CIhg9cWlE/ANcynnk3z8KYauV7AQSYW0m/i/kbKmP/
 YTI5Af2D+5jheaCsB1bSiUURghWOG5w=
X-Google-Smtp-Source: APXvYqx8VoaPUnB/vcidvsLO44Gv71Rvn/n97EeuUINg+y35uX61qP9+WW9jO9KRmilThstyUVqPNw==
X-Received: by 2002:a62:36c1:: with SMTP id d184mr7952363pfa.49.1557707946437; 
 Sun, 12 May 2019 17:39:06 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id a9sm14619577pgw.72.2019.05.12.17.39.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 12 May 2019 17:39:05 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/2] fdt: add support for rng-seed
Date: Mon, 13 May 2019 08:38:18 +0800
Message-Id: <20190513003819.356-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_173907_740254_28EBF9D2 
X-CRM114-Status: GOOD (  14.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 boot-architecture@lists.linaro.org, Michal Hocko <mhocko@suse.com>,
 Kees Cook <keescook@chromium.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, Stephen Boyd <swboyd@chromium.org>,
 Miles Chen <miles.chen@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 James Morse <james.morse@arm.com>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Mike Rapoport <rppt@linux.ibm.com>,
 Frank Rowand <frowand.list@gmail.com>
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
change log:
v1->v2:
* call function in early_init_dt_scan_chosen
* will add doc to devicetree-org/dt-schema on github if this is accepted
---
 Documentation/devicetree/bindings/chosen.txt | 14 ++++++++++++++
 drivers/of/fdt.c                             | 11 +++++++++++
 2 files changed, 25 insertions(+)

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
index de893c9616a1..96ea5eba9dd5 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -24,6 +24,7 @@
 #include <linux/debugfs.h>
 #include <linux/serial_core.h>
 #include <linux/sysfs.h>
+#include <linux/random.h>
 
 #include <asm/setup.h>  /* for COMMAND_LINE_SIZE */
 #include <asm/page.h>
@@ -1079,6 +1080,7 @@ int __init early_init_dt_scan_chosen(unsigned long node, const char *uname,
 {
 	int l;
 	const char *p;
+	const void *rng_seed;
 
 	pr_debug("search \"chosen\", depth: %d, uname: %s\n", depth, uname);
 
@@ -1113,6 +1115,15 @@ int __init early_init_dt_scan_chosen(unsigned long node, const char *uname,
 
 	pr_debug("Command line is: %s\n", (char*)data);
 
+	rng_seed = of_get_flat_dt_prop(node, "rng-seed", &l);
+	if (!rng_seed || l == 0)
+		return 1;
+
+	/* try to clear seed so it won't be found. */
+        fdt_nop_property(initial_boot_params, node, "rng-seed");
+
+        add_device_randomness(rng_seed, l);
+
 	/* break now */
 	return 1;
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
