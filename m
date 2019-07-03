Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF9275DD3F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 06:03:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GcgdQjEaF0RC09LMxZdqrirOCSLzDYVLVV61h+W2v0I=; b=mmiFPgoCv53MVL
	RhFFFRp1wY1imJ5HaCKfK6Z/FwXGLmf9cTLfhD9a3NP/3Hu39eDxfJCE59w1EzbfVjgDSx8H5nj8k
	L/p/prgeeZ0znG+WEvmZ5L72qaXw4OWt0I0x90xU7DpEcVHI7acS8WDhBx7ShcLD2EsnyC66u74Zh
	CRaLk19wjJaV5yJ59kZWDgl+KMMVw8PZ4eqv4+er2zhL2S5YBRSsE3Bvj2pehsU4j7sqLgcFXyyT+
	xRsxvR0009nIzngHWKKpgpJ4QVw2a0+AkRG9TH5o17k2gvCr1lh7WTENkNywLTGXQpAdjIWQUUSpU
	y+Mn/HfnhlG453/8n8ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiWU9-00055r-4L; Wed, 03 Jul 2019 04:03:09 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiWTt-000555-SG
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 04:02:55 +0000
Received: by mail-pl1-x643.google.com with SMTP id k8so458581plt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 21:02:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=D0DdOpMQGVeAdF8kK+Kt9fgmekxnUEujrSDi9AB3YmM=;
 b=Q3x9sXJvjIsCzqPkwq91GFznkehlCZyQIblUxwqegBXIDgIUasLe9okJjER1twbMfm
 nWjqNor3p1Clensei6236mF0jhvK+Sz6FDfN6WVrsJSiR0TJYu/hCDDyIKsI81w9QiZw
 hBV7oc1Qdq03EnAcOb1WkjushbCfRrm8Rx+WU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=D0DdOpMQGVeAdF8kK+Kt9fgmekxnUEujrSDi9AB3YmM=;
 b=mQHy9l3D4vBmX6j61ZvzPaTwwF1g40ZZilbEKuH/qv2RVwgkHSewOC98X+WXXB80fA
 ENafXhKX/G1lGCleV2Pcf6seN7OzSbv+eFp/3LpX9Q0GJ6HUicFX34Wu1IdF9nJQjVIv
 h0yCsW8btM/VUSjm1lflWhe5mGAO3jby5a4lAQtm3/Fr3w2PQkHgBZZqcrYTNN+4j3gr
 QwJNWm0NkoSEIR+gWchgwpQ8k2Fh+cV+JEYtVtgRZaiBbeQ93QQBd/PLM3yDNapApdKG
 qSkay8+bhngwDr16iDFiaG0TEjG3vdmrLXz1Jn/7Osj+9Wp+Nk1Mekm60LyONbVxejzo
 ks2Q==
X-Gm-Message-State: APjAAAW5QdcKiG178ffwjtmGoqY4mt1Vu8v2oN7r5WPm6pVy0z7fk/ke
 BF3N6qWpe0bW2NbApOJcFcamlztDlYlNrg==
X-Google-Smtp-Source: APXvYqznyDfHYKikQKIqHH4oCiI9Z/+57ZuJwCnQCjDdBHt1Eb4/rlbJGAPXvGWmfJKbFYSPdnrnww==
X-Received: by 2002:a17:902:a414:: with SMTP id
 p20mr37549962plq.187.1562126572996; 
 Tue, 02 Jul 2019 21:02:52 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id w16sm608327pfj.85.2019.07.02.21.02.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 02 Jul 2019 21:02:52 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v7 2/3] fdt: add support for rng-seed
Date: Wed,  3 Jul 2019 12:01:37 +0800
Message-Id: <20190703040135.169843-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190703040135.169843-1-hsinyi@chromium.org>
References: <20190703040135.169843-1-hsinyi@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_210253_916281_3DD5308F 
X-CRM114-Status: GOOD (  14.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Reviewed-by: Stephen Boyd <swboyd@chromium.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
No change since v6.
---
 drivers/of/fdt.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index cd17dc62a719..7be50e287ba6 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -24,6 +24,7 @@
 #include <linux/debugfs.h>
 #include <linux/serial_core.h>
 #include <linux/sysfs.h>
+#include <linux/random.h>
 
 #include <asm/setup.h>  /* for COMMAND_LINE_SIZE */
 #include <asm/page.h>
@@ -1043,6 +1044,7 @@ int __init early_init_dt_scan_chosen(unsigned long node, const char *uname,
 {
 	int l;
 	const char *p;
+	const void *rng_seed;
 
 	pr_debug("search \"chosen\", depth: %d, uname: %s\n", depth, uname);
 
@@ -1077,6 +1079,14 @@ int __init early_init_dt_scan_chosen(unsigned long node, const char *uname,
 
 	pr_debug("Command line is: %s\n", (char*)data);
 
+	rng_seed = of_get_flat_dt_prop(node, "rng-seed", &l);
+	if (rng_seed && l > 0) {
+		add_device_randomness(rng_seed, l);
+
+		/* try to clear seed so it won't be found. */
+		fdt_nop_property(initial_boot_params, node, "rng-seed");
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
