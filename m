Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAD05E4B6B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 14:44:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HDVkgbHfSaAgkslaNYIcspKncTSoNGttjToELNx0+Ks=; b=Vl62VfKZQpKB9n
	OCLXML1i8Gr1fhiXt+gw7EbupwzqA6BajQQ49MAfXaXBTdIAZ1SZ3AR9LmDVzdms9UXVSKHAZ6yZB
	5cBjOfbHu7XKU8Rmc3XFX7lsRSJ2QzP99pxkhyqbB10gN/9xBbvfCeUdhzuPU67/NAjmfqzpkIc80
	7l1mJ0epvdx2OsqqUGu9VHPfVTNTeF0DBeO6yBwclN6yFJ5QOabPyadbbATAb7IOD5JEp+JoGzHjR
	DNeReHHpOKJxkUQZyuEMNtFtLt3BAuKcGBSmwutco1TFGbjaBv+Vlp+3UPV7CElcUxwmcMmC0xMa8
	Mw5L+6VpqmmSxuEBB8MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNywv-0008GD-Qy; Fri, 25 Oct 2019 12:44:13 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNyu3-0006Hx-A7
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 12:41:16 +0000
Received: by mail-lf1-x131.google.com with SMTP id i15so1617654lfo.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 05:41:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/UPJXileKtzgNTX19jaGjS3nvxXYAz4iWZyHIwwRbB8=;
 b=Cq8aDaHNDK2pJ1hz7Tm4r3n2o5xKlVmsy5GVlKTo3nhYXsZFH8YrV9Pe0Z4gso0sNE
 DoDf8PAe7XRAbnp8l7UsufUz5Ne84tTPq53S5Z/aGPYt2iQxgTFPztZHZWQk+5WoKfc6
 7Mv87tKK6TT/Y3EJlKu0GasI85IN6R0054Er8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/UPJXileKtzgNTX19jaGjS3nvxXYAz4iWZyHIwwRbB8=;
 b=fJxrsPONRczx8/dXl5N59kXBjAAtTR3bSSwdvre7lR1rNBy3UdlFEVGjOPnrmEuN40
 fknQFUcw+29SdXdoLNIL+LChVnZtIIr8EdRpK2MrNECl/+Fw5pbyxXMgTHURo9Pey5y9
 HpXB/3RP+O8xMRSWo3+XpFssCdY4iIW2YCaimfo6zFcJDjBGMo2FzUEJp9KW6wi3SbrW
 Et9UV1dhfmoyT/xtj1vcmQP7/47Awi/ot7DABMrildaijtV9q0ZXKO7LL1lN6OpFyDWo
 F00ehLVPmdAKxG++t6nnof6I9P4kbvZB789KqkhH8Trlu85jqOJJWiJVaIIHYMOgxdvX
 UUyA==
X-Gm-Message-State: APjAAAV0PcpC+tuyrZhhZbS1bj9JLojxLPWqh0cyJNO5VQEKqGRsCPtz
 mKXydBNKy0T1qTAN6CtgukKHMQ==
X-Google-Smtp-Source: APXvYqwHXocQXaraXBs+SE4Qhjblpr6C5oHh7mfzGWp34LGpet8GNLf0m9E8p9RMgjBLdwcqkBBDTw==
X-Received: by 2002:a19:655b:: with SMTP id c27mr2621651lfj.122.1572007273137; 
 Fri, 25 Oct 2019 05:41:13 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id 10sm821028lfy.57.2019.10.25.05.41.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 05:41:12 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v2 08/23] soc: fsl: qe: drop unneeded #includes
Date: Fri, 25 Oct 2019 14:40:43 +0200
Message-Id: <20191025124058.22580-9-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191025124058.22580-1-linux@rasmusvillemoes.dk>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191025124058.22580-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_054115_365076_3B92C32A 
X-CRM114-Status: UNSURE (   8.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:131 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Valentin Longchamp <valentin.longchamp@keymile.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 Scott Wood <oss@buserror.net>, linuxppc-dev@lists.ozlabs.org,
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
index 0ddf83d8e3ce..48051a684458 100644
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
index 776a2c9361e1..93ba17d250a3 100644
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
