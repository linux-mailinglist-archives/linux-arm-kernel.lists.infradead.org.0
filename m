Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A1422720
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 May 2019 18:05:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KN01NZoootDbSFOa9As8JBBPu8xrOAtTiE/gwpfat0E=; b=ZZ1QMty3+4KaWn
	dzUBvkhg2p/SHRCsjbZShOMFryrOuuhwkPJ4xByy/4qdpbxhuC2+Ki2ufipcwQ4B+7NjxK7/4K5B9
	6MxbMJm7SKRvb6oeYthkYwnzR+P334iKwnautM+TvjF4dMrn9HTUNr6RQtAWuYANecPBBzV7rxCUf
	H3Y5gfzo0j5nBx9FoyTju6iqUObSNr65G6MtBsDu7cRRANRX0eq7eLlCTaCMPlvBPp3iQ+T2wNSqw
	iO40f2k399lQyzF+gSZJFhu1AhjDfXPS7Xi4qWRy2xxNcEkPMsn+1Wa75pogRrba21xkuQxwdk66Y
	OlTLBLUREcOBPNMdghrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSOJS-0006FM-4M; Sun, 19 May 2019 16:05:26 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSOJE-00069A-0Y
 for linux-arm-kernel@lists.infradead.org; Sun, 19 May 2019 16:05:15 +0000
Received: by mail-pf1-x444.google.com with SMTP id t87so6014264pfa.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 May 2019 09:05:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gCFKWEfomzC/p8Cp2zu9+tMCVjDMCf+wEVZ+N8bS+5w=;
 b=T/7IReFvKjKaF14U1oGtHscyU/22SyS4d7KmRC5r07CtvxiAbogbfeuIroE/8H2wz0
 nLTWIIZriLKgXnWDXlyBKjqUAsl9SsAMjTTs4IMZaZBFvDrupg39ZL7WTW3wXN2yB8aj
 f8BzAcUBvMPTNeGH08JCB9Xs2xfvt2oFwNK1Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gCFKWEfomzC/p8Cp2zu9+tMCVjDMCf+wEVZ+N8bS+5w=;
 b=SPjzfkYbPYVHSaXhr2CCIS3OmHVrJsuFH1iR6vblM/Zp/NMuDTHDqqtTH4rcx779/Q
 nA2spXTmYqLHU+SXe9IAgPE6gUDzQ2nV2dEXyZdvnoWQzmUlDHCMfXCMOnhbG3+oali/
 KVfbC1csCgz/yzI9OMdSmB2CuE3nk5hMH628NelzHANXeLeyygQNhtA7c38nAf6cyFsD
 dNE6vj3J1F3BdXs94ZMWUw3M6s+UmBqsfydMt3ef7N4vrQchxJ6H5UuBZgqr/6aCgiUR
 mpi0F2ZRt7AY0KHJRtCNmz7TbBP4i/Xayz8edPQuQrtQbGeCHC43cp8brqwqyT99t9D+
 QYIg==
X-Gm-Message-State: APjAAAUh4XRd06I7UlO59zseuI0U0V9g3c2gdIFUAaIE8jiJ/G1sDTgk
 FgzVB5PAxmvTqk7lfsoexeq+KKrk78W6ng==
X-Google-Smtp-Source: APXvYqy+Gmvo5+tw39P1k0XyadavsTQNx3uwPq73xdTjt//OfTcVKyZMNiRhgh9F9ySQ8HBIePPR/g==
X-Received: by 2002:a63:a08:: with SMTP id 8mr69721219pgk.46.1558281910923;
 Sun, 19 May 2019 09:05:10 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id b23sm17547007pfi.6.2019.05.19.09.05.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 19 May 2019 09:05:10 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 2/3] fdt: add support for rng-seed
Date: Mon, 20 May 2019 00:04:45 +0800
Message-Id: <20190519160446.320-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190519160446.320-1-hsinyi@chromium.org>
References: <20190519160446.320-1-hsinyi@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_090512_231439_CB208B31 
X-CRM114-Status: GOOD (  15.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Mike Rapoport <rppt@linux.ibm.com>, Jun Yao <yaojun8558363@gmail.com>,
 Miles Chen <miles.chen@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 James Morse <james.morse@arm.com>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Andrew Murray <andrew.murray@arm.com>,
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
change log v2->v4:
* v3 abandoned
* fix doc error
---
 Documentation/devicetree/bindings/chosen.txt | 14 ++++++++++++++
 drivers/of/fdt.c                             | 10 ++++++++++
 2 files changed, 24 insertions(+)

diff --git a/Documentation/devicetree/bindings/chosen.txt b/Documentation/devicetree/bindings/chosen.txt
index 45e79172a646..678e81bc4383 100644
--- a/Documentation/devicetree/bindings/chosen.txt
+++ b/Documentation/devicetree/bindings/chosen.txt
@@ -28,6 +28,20 @@ mode) when EFI_RNG_PROTOCOL is supported, it will be overwritten by
 the Linux EFI stub (which will populate the property itself, using
 EFI_RNG_PROTOCOL).
 
+rng-seed
+-----------
+
+This property serves as an entropy to add device randomness. It is parsed
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
index de893c9616a1..7f3d72921b23 100644
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
 
@@ -1113,6 +1115,14 @@ int __init early_init_dt_scan_chosen(unsigned long node, const char *uname,
 
 	pr_debug("Command line is: %s\n", (char*)data);
 
+	rng_seed = of_get_flat_dt_prop(node, "rng-seed", &l);
+	if (rng_seed && l > 0) {
+		add_device_randomness(rng_seed, l);
+
+		/* try to clear seed so it won't be found. */
+		fdt_delprop(initial_boot_params, node, "rng-seed");
+	}
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
