Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFAD611E7BC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 17:07:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y48BPJHtk6NgHde9gjQZEwX0g05JOVxtrAHppdPrs6U=; b=gJpVwFKK5/+DW8
	HpxNGqmYxzrWW8x8KFKqVeZYkxR7owCXIJWupxRk9F4hPz3NwWUTJ25wocje0Ufk9tqliEkSsg8UH
	HD6rki4lCyaSRggD0llwnY0cH1hbB0OgzIodFHq2Du6gzFKIWQcbjNIAsAKVmSeHc1Dt/7+JWvyPq
	kWHHFgpc0R9d2Fu6J35xoOJvCmuhQnzIGZpKDHddEO1KZ8OcMl2g/9m4zG7z6NfCXMgH5Hk6gRbzH
	JJ2Pr4gGzyN2PyOR0pRlgxODJL7dTECc4gVWZzcBNOq812jkMLeSz0p0KlpaFY9nuJKpXtfWVWNpP
	FLM8oDWEWkIYWQSbGsdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifnTA-0004Vx-Pt; Fri, 13 Dec 2019 16:07:08 +0000
Received: from mail-yb1-xb41.google.com ([2607:f8b0:4864:20::b41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifnRx-0003gX-RN
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 16:05:55 +0000
Received: by mail-yb1-xb41.google.com with SMTP id i72so963418ybg.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 08:05:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+VnUOz+8D3V2uKNqlxwDzqgg2+EXtUFjH7t7xpLJ+2k=;
 b=OJSd4RbR4A1qe4EmWcAK5phI498i9Zr0SDiK6+YbkjrNCjzLgglR4miia93Tl0KE5D
 dhc9HDuU/T7vqbpOxN6K+Vki4L622Gm0bWuCieWjqJyloY3eNXP5ouN1+fumHz1bHy19
 fqZE98HtZ9ht9b9s3nueTUf3u3Lbz/eyL4ksPDPq/PBMZ/fx0Bo+MICSYzUnKf949b6r
 eR06o96BwwKrVtQEVicodx91aPfHQMf6bRyWUmZnq6IDzlFni5MdkZwsRISCEE/h+82M
 yxJ9vAtFCphgEA90dT0sRC9tOPsg23JO1ZyyEshVlolOjR1HRukqQht35BW8eDiBfhDx
 H9rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+VnUOz+8D3V2uKNqlxwDzqgg2+EXtUFjH7t7xpLJ+2k=;
 b=KjbBPyCdjw2HoXv2uzA2KVMCALmVhwxdB51QfbjL7cWxYI6NWiLCDIoGLSCVjMYPHZ
 /VXUCeFuObXKayIF6NirzRCfGlbgkzVU6p50YFW5PVpro1azC83CZ+kKkMCdAhpIacjK
 VMkPc21QBYsW5fZGNjcxibA649QBX4lJz4d5AL0jjFLaz7ZszSRAt+TN84Gxvsr60r+8
 31Wy7DsX/h5Q6uri69V1rYodlF1A2k5DGKxL6QJC1xU1jyL1ORRrWyf+ZzxD5WDO3FvZ
 pdcHkH4xspBlXdpq9+Sb4YLM6Aa+g69C6icgd1u8Yp9QePPtOjGswdiCalP2Loo8bHax
 bwFA==
X-Gm-Message-State: APjAAAWz0qQM5wApTQVpw3iRjNktMZEkg2ZvH2jdtMS/a9wKEXHKDMwb
 GRn7sVv7blIlPKNmZGC1RXW64D6W
X-Google-Smtp-Source: APXvYqyH3cGVtkwoXj9l+rC5v9ceK5lYYEdVaYLTgOykQHR8iMWh+Pf+vCEY+WRK1WooF03tCRXT6w==
X-Received: by 2002:a25:b108:: with SMTP id g8mr9228296ybj.518.1576253152035; 
 Fri, 13 Dec 2019 08:05:52 -0800 (PST)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id v38sm3984694ywh.63.2019.12.13.08.05.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 08:05:51 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 1/7] soc: imx: gpcv2: Rename imx8mq-power.h to imx8m-power.h
Date: Fri, 13 Dec 2019 10:05:36 -0600
Message-Id: <20191213160542.15757-2-aford173@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191213160542.15757-1-aford173@gmail.com>
References: <20191213160542.15757-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_080553_903031_E7B0BBAD 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 peng.fan@nxp.com, Fabio Estevam <festevam@gmail.com>, ping.bai@nxp.com,
 Adam Ford <aford173@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In preparation to add support for i.MX8M Mini, this renames
the existing file to be more generic, so it doesn't become
necessary to include multiple files to accomplish the same
task in the future.

Signed-off-by: Adam Ford <aford173@gmail.com>
---
V2:  No Change

 arch/arm64/boot/dts/freescale/imx8mq.dtsi                   | 2 +-
 drivers/soc/imx/gpcv2.c                                     | 2 +-
 include/dt-bindings/power/{imx8mq-power.h => imx8m-power.h} | 0
 3 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index 55a3d1c4bdf0..f73045539fb1 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -5,7 +5,7 @@
  */
 
 #include <dt-bindings/clock/imx8mq-clock.h>
-#include <dt-bindings/power/imx8mq-power.h>
+#include <dt-bindings/power/imx8m-power.h>
 #include <dt-bindings/reset/imx8mq-reset.h>
 #include <dt-bindings/gpio/gpio.h>
 #include "dt-bindings/input/input.h"
diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
index b0dffb06c05d..250f740d2314 100644
--- a/drivers/soc/imx/gpcv2.c
+++ b/drivers/soc/imx/gpcv2.c
@@ -15,7 +15,7 @@
 #include <linux/regmap.h>
 #include <linux/regulator/consumer.h>
 #include <dt-bindings/power/imx7-power.h>
-#include <dt-bindings/power/imx8mq-power.h>
+#include <dt-bindings/power/imx8m-power.h>
 
 #define GPC_LPCR_A_CORE_BSC			0x000
 
diff --git a/include/dt-bindings/power/imx8mq-power.h b/include/dt-bindings/power/imx8m-power.h
similarity index 100%
rename from include/dt-bindings/power/imx8mq-power.h
rename to include/dt-bindings/power/imx8m-power.h
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
