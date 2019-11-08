Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC2C8F4C70
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 14:04:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fISdushcCsYoL56jLSzOEkfJwopttDZaQxqRbpsxhMA=; b=KfSNWIiFAzg6cw
	TwMIDS2xOOblKkvqb5jN5hsgHq/kzy5RUwXYvC+vEybLrFNumTI8C81ocVbbxkGA+pvOEb5Lqie//
	0KD9BQii6R7UfBNbR761VIGkUbpR2JsJrImc9rhgtlgadBe70zkPXp4Hg9hywbmZbTaKuUHSTZE1J
	QEZwOhinOMbS2isSIMM6BkbqiCvjBDGIYkl/OC+v9wCWeN6AEM+Rbp0BCggontqM/1I7UINQjgGHw
	52r4LKDv020pTnx/iNwhw744WyPyeiyK9071ymswQMCuPP8MSvSWEN3KaJAzYLxoH2+vdRe1uPPWH
	NHneYZrdgRtgvip0ZSaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT3wF-0006VQ-U0; Fri, 08 Nov 2019 13:04:31 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT3tU-0004IA-Bp
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 13:01:42 +0000
Received: by mail-lj1-x22e.google.com with SMTP id p18so6128625ljc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 05:01:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kyeKnOkwmKeZFZzRl62UDL9FeDrPQAcAwjRLFXYmB4s=;
 b=AWL4BlnxggywgAuCQF9TZmvfyD1xgx+d4KcuFAXs5z0SjvgeOT8ufhw+0kLd6irh+k
 LWFYtzapxaTuBh/+hzavZstnGb4XF7eUmqtgUl25ZK4pjgZG3d9UIH1hjWv04ZBgdYit
 n1G4bDAqkSP9msbsWTTT49q+Qpi/lQ/IdwTJc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kyeKnOkwmKeZFZzRl62UDL9FeDrPQAcAwjRLFXYmB4s=;
 b=B1Dm3WWYI+C8NlVKoFHvB3/IUqrXO33iDvG4ve7WuPKJ1fgb1Z4Wj4aqab7MJZV7Ok
 16El7WBov/nwNNCSbsiHjUhn89GR7FRo8TwLRNY8bLR+LIpsGIl+d5qBYpvTm0vkgb76
 PrMIqMs0MviPIDdH4A10GJnCMqKbFBBft0befCy0OD2QtYkWpK9PFw/c96RpfakjuVvL
 abccurwhKvABDpnvA29ZUyHolDu513w0xUFHycJTvc8tsx82xfyUgVFIjXs8en/iF5yS
 /XNgIT6N/dmymhaIPMhhqMTJH4lToN7CVBfBJLPaETIAF2JIHr5cqxKJ2EGxnOn0ieJW
 0jAg==
X-Gm-Message-State: APjAAAUnsDan3QDrOrb8uauhUhBVG8L1ib3tJO58BOQjr3WQptJkNW19
 6Sqb02qr7d6oz1L+l3K4LDcBiA==
X-Google-Smtp-Source: APXvYqxxzgl3V5o2TwDPF+SxfEJQQMlY/U/MArtCXbnEjF83JFE0HGJ+v+jIFpYrTXQzamx1BSnEhw==
X-Received: by 2002:a2e:558:: with SMTP id 85mr6764276ljf.67.1573218098161;
 Fri, 08 Nov 2019 05:01:38 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id d28sm2454725lfn.33.2019.11.08.05.01.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 05:01:37 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v4 08/47] soc: fsl: qe: drop unneeded #includes
Date: Fri,  8 Nov 2019 14:00:44 +0100
Message-Id: <20191108130123.6839-9-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_050140_439275_64948FFC 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:22e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Scott Wood <oss@buserror.net>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These includes are not actually needed, and asm/rheap.h and
sysdev/fsl_soc.h are PPC-specific, hence prevent compiling QE for
other architectures.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe.c    | 5 -----
 drivers/soc/fsl/qe/qe_io.c | 2 --
 2 files changed, 7 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe.c b/drivers/soc/fsl/qe/qe.c
index 1d8aa62c7ddf..a4763282ea68 100644
--- a/drivers/soc/fsl/qe/qe.c
+++ b/drivers/soc/fsl/qe/qe.c
@@ -26,13 +26,8 @@
 #include <linux/crc32.h>
 #include <linux/mod_devicetable.h>
 #include <linux/of_platform.h>
-#include <asm/irq.h>
-#include <asm/page.h>
-#include <asm/pgtable.h>
 #include <soc/fsl/qe/immap_qe.h>
 #include <soc/fsl/qe/qe.h>
-#include <asm/prom.h>
-#include <asm/rheap.h>
 
 static void qe_snums_init(void);
 static int qe_sdma_init(void);
diff --git a/drivers/soc/fsl/qe/qe_io.c b/drivers/soc/fsl/qe/qe_io.c
index 5e3471ac09dd..f6b10f38b2f4 100644
--- a/drivers/soc/fsl/qe/qe_io.c
+++ b/drivers/soc/fsl/qe/qe_io.c
@@ -18,8 +18,6 @@
 
 #include <asm/io.h>
 #include <soc/fsl/qe/qe.h>
-#include <asm/prom.h>
-#include <sysdev/fsl_soc.h>
 
 #undef DEBUG
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
