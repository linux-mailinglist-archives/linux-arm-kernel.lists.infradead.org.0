Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D99F511652E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 04:02:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uEdOOvQfIOWj5F2kukueKPvpRmhYRPMiuD0IJwzLRf8=; b=TxlJvLHkN6dBy2
	ETE8TyaRFhjbXiNXmW2PNct9L2ibxACtB3vDBd0URa9bLqVHqZFqRJtEmh3uwBMNihfvquaix3fhi
	KQMMCIUxD+u3CRC3Epf4Ts+eTm+8HZ1o+F6ndweqLDYFh2/OJHGvdKQ95f3RiCAKT2mJFMjkhu173
	UhZPyICYxqHZhqgr4iVyTwRfH9NmiV4naktMJMfLzfHH1iYyhoHlX7l/MZBEB3y07u/8PwzArAHAh
	EIPP3fTbka+tCM8GQk4hvgHAgzAdgiRprp0k3F8/9Sy8WJ1pVHvc3DQQ+qqWad6Z2SODQbfcy7EiD
	l3KG8MiHuRHZfHoMIssQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ie9Jq-0006LB-EX; Mon, 09 Dec 2019 03:02:42 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ie9JY-00069K-Bp
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 03:02:25 +0000
Received: by mail-pg1-x541.google.com with SMTP id l24so6364299pgk.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 08 Dec 2019 19:02:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3FqOO3wE0tn2QZf6UyRIRojyX4xpI+NMDGsdK9w/Ap4=;
 b=mhExn69WBmHBESFt1kIaGlKEdtVe/i5Vgkp7eu8YMclVAMDegJkLMfclMCIgtyazfI
 b6bESJ1o1e6qyzDAXET8Nn9VmdMgWHdUzAhh6nUcy+zOUzMfvA6EErA24TTqdUxwGgVL
 ONw9363URg5l+xWM8acqZx8CyPwgxgwTA+wS252KtfXfoDyHZxb/KJk4T18mOkPNWlZA
 XjryhXj+d6UMVWcf1c4vWY4qxD/qSdC13hqxRQ4j0xdJtOvrMiBvQy0kiwOVMxNCEZ7+
 41KAvVcarkRe9lB14/lFzwhV73IBZAcR1OMqcmqm3mud/RyBsmEM92xv9xQmR1eMkLJa
 OcxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3FqOO3wE0tn2QZf6UyRIRojyX4xpI+NMDGsdK9w/Ap4=;
 b=Az4FdeQ3hyDp4xxa0iAXDL863eMMKOYwmiRQZgkbSxBrMEZDzn4vb0Lcl2Ul2JCCIC
 oNHKqyiHNEjJF1vcXqbQNWDrWhCfE1qn4yOcdRlSHfl0dFi0ARdBvPmwMcEX/SOm9DAI
 xmhyUiKxTrxrJfBPxXLKu6/1NVr9fn5cAxKK0J1epgEoPPsJCvCh9vlaCcN1/lu0ScOq
 Vqt8MrRcZyEsfC4Gbn1I6nknOmej01SnbSuKxIO7p2Lq+dMJjn3Luk6BraHrvHbZhcO3
 bnufiRrwjkpLFZbJk3gXtuMoyrlmoJYBtivCyn4H07S52TvoBNXOFnUoi+WsPIISIw13
 tFjQ==
X-Gm-Message-State: APjAAAUsJHlHBuVxqMbD1yhLOoQo4EbWgJjm4ITdaYlIf2Usbk4PXGV9
 JPM8xasndhcxwHNVcNCkoc+OYA==
X-Google-Smtp-Source: APXvYqxZsY4uqLOpisCtOZNKEdJ3FgiBq1GlA/9MSZaWOtU0pz8n9rOYtSAydnEby2zUtslCi8FiRA==
X-Received: by 2002:a63:dc41:: with SMTP id f1mr16838812pgj.119.1575860539860; 
 Sun, 08 Dec 2019 19:02:19 -0800 (PST)
Received: from linaro.org ([121.95.100.191])
 by smtp.googlemail.com with ESMTPSA id y76sm15454209pfc.87.2019.12.08.19.02.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 08 Dec 2019 19:02:19 -0800 (PST)
From: AKASHI Takahiro <takahiro.akashi@linaro.org>
To: catalin.marinas@arm.com, will.deacon@arm.com, robh+dt@kernel.org,
 frowand.list@gmail.com
Subject: [PATCH v3 1/2] libfdt: include fdt_addresses.c
Date: Mon,  9 Dec 2019 12:03:44 +0900
Message-Id: <20191209030345.5735-2-takahiro.akashi@linaro.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191209030345.5735-1-takahiro.akashi@linaro.org>
References: <20191209030345.5735-1-takahiro.akashi@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_190224_423624_FAF419E8 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kexec@lists.infradead.org, james.morse@arm.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 AKASHI Takahiro <takahiro.akashi@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In the implementation of kexec_file_loaded-based kdump for arm64,
fdt_appendprop_addrrange() will be needed.

So include fdt_addresses.c in making libfdt.

Signed-off-by: AKASHI Takahiro <takahiro.akashi@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Frank Rowand <frowand.list@gmail.com>
---
 lib/Makefile        | 2 +-
 lib/fdt_addresses.c | 2 ++
 2 files changed, 3 insertions(+), 1 deletion(-)
 create mode 100644 lib/fdt_addresses.c

diff --git a/lib/Makefile b/lib/Makefile
index 93217d44237f..c20b1debe9b4 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -223,7 +223,7 @@ KASAN_SANITIZE_stackdepot.o := n
 KCOV_INSTRUMENT_stackdepot.o := n
 
 libfdt_files = fdt.o fdt_ro.o fdt_wip.o fdt_rw.o fdt_sw.o fdt_strerror.o \
-	       fdt_empty_tree.o
+	       fdt_empty_tree.o fdt_addresses.o
 $(foreach file, $(libfdt_files), \
 	$(eval CFLAGS_$(file) = -I $(srctree)/scripts/dtc/libfdt))
 lib-$(CONFIG_LIBFDT) += $(libfdt_files)
diff --git a/lib/fdt_addresses.c b/lib/fdt_addresses.c
new file mode 100644
index 000000000000..23610bcf390b
--- /dev/null
+++ b/lib/fdt_addresses.c
@@ -0,0 +1,2 @@
+#include <linux/libfdt_env.h>
+#include "../scripts/dtc/libfdt/fdt_addresses.c"
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
