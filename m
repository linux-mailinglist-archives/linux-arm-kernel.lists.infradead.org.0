Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B153241B3A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 06:34:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RPiWxgOqr4UB5/eeMRvv8CMX7elL0ixNjJW2u/Czqm8=; b=KCTfT2Gr9qU+U4
	0//mES0c0HFVMLr4kyotL53mtcTHwHMz9tx2IJa97kiMp6AgQJLoThnP3VSYiSE49/7CUwKeU5a4w
	JZF2LMj9cNOqp/VrIPAeVy5t4dq7Hz/GPEouVi48KbZFBLLzwPbSoKUpq/JZ3pqYo/AgHtSt1R03F
	LfNmSbR5rf+XMNyjztllXjqgX/LBjc79mudRFDY1bmrjjNeVFAr9PAVjqQDdS47/50+JgdoFd2t0Q
	O4IMExn07JKIYzPA41z4KWGzxm/pK7fjtHjArefuXfeYVTp+hUoc4ysmsPlSWaOqQnGd46jP/x5uS
	u+5mdK33ysoEKs6d2ZOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hauyK-0006JS-Ts; Wed, 12 Jun 2019 04:34:52 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hauyA-0006Hm-1r
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 04:34:43 +0000
Received: by mail-pl1-x644.google.com with SMTP id s24so6058637plr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 21:34:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FXV5Ws8+r5RPo/nKXnoHiLtGYbtFqiKOKRPXyhCi7kk=;
 b=WF6XEcrjnYm/TJx+cI4M997rrpyH1cFTH/f3AQedIs7pSSTy79gf+vaznSHQIU0Ezg
 ayYK7Azudp1Y8gy7eeukeYwME2A85H/PSOe3OM5sjWoSvbRQ/iRC3xvytM4I2hRtcL0H
 2zFtgHFPl3zJ4Q+z9IKlwaWjBy24AtA4JKSR4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FXV5Ws8+r5RPo/nKXnoHiLtGYbtFqiKOKRPXyhCi7kk=;
 b=Gm3VG0PXMwBKqrfp2XuPyHNo4lwhe6THs94UCiDspAESo9QIIihOtz9P27QCcIKE5L
 qlOuq4rQr0va+mpUw6GWZpCk/LSJMnwwIPA41rMcNdTnFhfGEV8KCWipGAgyh6qWx14T
 6kARN9o95pdgh3qgZ1QKcoUp5Cm32ZV5OsZsy3S5CSiUJ6iC3e30UGO3iVjuchXqlYvw
 sM4+j9QRQ4s0aJrto3/7WBC/j/+mAogRRUc3me4ZGnQ3u+LVEg1sXTnGedXWGxONzpWD
 xzejeuyF0O+TUNOPeE9nmLMjJ5N4HyTNBLVhX9ljB9Zyo3qPzdd1I2OBoCeH9wNOdAXq
 YuuQ==
X-Gm-Message-State: APjAAAXd1X1HxjDNgKeve/bILVMhHU8Teo146zIl86z/Qj/+5fIeklNU
 r/wNW6xhtxnyyjWPRE8vfRRgImqxYfVsXw==
X-Google-Smtp-Source: APXvYqz0+oRQaQKhKlFNFx2+LDkTLS6Wb5yc/KHLfWZ3BuaHUGMHH37CG2EOx1uhfwpyGdes4XBmEw==
X-Received: by 2002:a17:902:b705:: with SMTP id
 d5mr44143880pls.274.1560314080888; 
 Tue, 11 Jun 2019 21:34:40 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id k8sm15285998pfi.168.2019.06.11.21.34.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 11 Jun 2019 21:34:40 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v6 2/3] fdt: add support for rng-seed
Date: Wed, 12 Jun 2019 12:33:00 +0800
Message-Id: <20190612043258.166048-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190612043258.166048-1-hsinyi@chromium.org>
References: <20190612043258.166048-1-hsinyi@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_213442_173021_A8CB11A3 
X-CRM114-Status: GOOD (  14.73  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
---
change log v5->v6:
* remove Documentation change
---
 drivers/of/fdt.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 3d36b5afd9bd..369130dbd42c 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -24,6 +24,7 @@
 #include <linux/debugfs.h>
 #include <linux/serial_core.h>
 #include <linux/sysfs.h>
+#include <linux/random.h>
 
 #include <asm/setup.h>  /* for COMMAND_LINE_SIZE */
 #include <asm/page.h>
@@ -1052,6 +1053,7 @@ int __init early_init_dt_scan_chosen(unsigned long node, const char *uname,
 {
 	int l;
 	const char *p;
+	const void *rng_seed;
 
 	pr_debug("search \"chosen\", depth: %d, uname: %s\n", depth, uname);
 
@@ -1086,6 +1088,14 @@ int __init early_init_dt_scan_chosen(unsigned long node, const char *uname,
 
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
