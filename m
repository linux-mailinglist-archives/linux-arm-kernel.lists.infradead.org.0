Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCEE586835
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 19:39:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pmu3buuCHqQbtCWbfhrG4/FmtuwRJP/L62AdSLdDO5o=; b=hQJcKM4moripFO
	ER9/K7Jv1HCX5VT19pAyYnhnlPAtpPapFNvQL5CNS2GYnVVi6jspKPmEXV9aCwJ6F2qKjhcaHi48i
	0qhjOH931OSPP/cnElFPiBUQlIgpuXf542ASVLuP5hPJohMGDdlm8o9svBnNwLyCB/fhoaaKAKSUp
	OiWB1RKSaLr9OiXHq5tTluGqRdJVqQlrCQ+msLiMNCam2vQ6WVXt8JcNokG2EKFZAFij76vS7DYpb
	Jh4EAtNkaE1uHL6Cgz69kwgP4X476/rlxKhKoo0467K3Ck700saRHEzAEGF0X2vrn7x2meLMeAw1H
	rFZgMSJEJBRLm/ob2a6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvmO4-0007bc-Sq; Thu, 08 Aug 2019 17:39:40 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvmNs-0007ZF-UU
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 17:39:30 +0000
Received: by mail-pf1-x441.google.com with SMTP id r1so44486096pfq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 10:39:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DFyYlsPKtD2pIkl+6HQ9NsXCJu2oBYedJ0F8UrzQk24=;
 b=Yh9EIr82yon5IKwUIC8/aoF3FklHeBHZH9PfoCglI1X9pa0gurA07RhtfLxokIKnIz
 81xyPWSnwnZLtp5kryW23U9msxajMEa5GnhdM44fHoSwcv0gQJEdVcOJVV7F2TrigyY7
 Yl3Mm05/ax1pcApFg4xYKIsnxB9O+sRcfZRQ0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DFyYlsPKtD2pIkl+6HQ9NsXCJu2oBYedJ0F8UrzQk24=;
 b=EnxCFdYgFL7oVY4SwQm/Y6eD63bgO+PwwWeQZGIEjugGSm2WWCQgCFmNVAJLoYNIsp
 1rf/tX9k/Mkl4i1Pc/Z0rSgJYEJPxK/8D+SOuGMtfW7he6B60IfZl+Dfocw+OjuTICm8
 l+DBWNzZ/VLU9tiLs8I1oS83eUfObX8TPvaQjdNjMq2DqXcDqVETKViIjRvMjsHsRy6b
 eQE4RKiSc0t8/c9i9Enjj33qFjwJohvIbKA/yY6rBemngsKiDiVABfjk9XhYDdUQn0BJ
 44zEui+b6+M6/VE0tbHkOo1B5yrQ21ecCYo4dNSQizH5Dza+ZaoFqfnsmRD/AwFFv1SZ
 TUng==
X-Gm-Message-State: APjAAAV68BsHwNZremebPYDDGHHRtjXy6a2GNhxmff5A7ZxhjolrGg/3
 CDn30E9CGUGQKOcG13P6Nz/SRFuIRUWYDg==
X-Google-Smtp-Source: APXvYqyEVq5aKjaC1auKdVBOl3Eitrh/DUCGqDLTS3ddRuXoM7KR+75fidcuNyU2aVJLs620qmfVoQ==
X-Received: by 2002:a17:90a:d593:: with SMTP id
 v19mr5186942pju.1.1565285967016; 
 Thu, 08 Aug 2019 10:39:27 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id y12sm105824412pfn.187.2019.08.08.10.39.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 08 Aug 2019 10:39:26 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH RESEND v7 2/3] fdt: add support for rng-seed
Date: Fri,  9 Aug 2019 01:38:05 +0800
Message-Id: <20190808173803.1146-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190808173803.1146-1-hsinyi@chromium.org>
References: <20190808173803.1146-1-hsinyi@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_103928_982375_1BC508BA 
X-CRM114-Status: GOOD (  14.97  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 drivers/of/fdt.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 9cdf14b9aaab..640c817cf65b 100644
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
