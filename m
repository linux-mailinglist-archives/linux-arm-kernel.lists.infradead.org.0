Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E86C159E32
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 01:42:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QeNrQ2cAJKIMIAYu+UQZ6UXeRpp+2UPeV4tAZ5XndSM=; b=UfBo3lO+sx3c/k
	OEhIu4LJITsBZ4mqqug3GlG83WUDMGUpsHg3aNl1HLQEHpt2iNKBgkldr7rHI9AHCkF6v1yl7k6yO
	qcvenADpSvwxkEYyEjVQ8tqklAQZ73hRdoiz+6JV+YYQKkgwwnOH8i7kywmRk2vxIlqVN39fWKPGL
	E9H52hjnz4/HMVmVDQ8A6wHvreCmaFYWE4HQmbDBhNo4Bur3xJ7TIed3vNgFJKx0NIkBlVJBDQLLA
	5eTv/V+sFnL5GSMbNZtEJaayBhbeT3rL7EGesF+mOPXCCoPpe/JvADPD+uW8HaQv3AGvurGsrgnWV
	5WNPgdqij3DBMbaBZsrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1g6U-0001Fi-4T; Wed, 12 Feb 2020 00:42:10 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1g4f-0008Cb-Kn; Wed, 12 Feb 2020 00:40:19 +0000
Received: by mail-lj1-x244.google.com with SMTP id w1so267896ljh.5;
 Tue, 11 Feb 2020 16:40:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jY/whPnhAuxzTC/NjaKtmOflD4QjDSvq1sNUEMZh1qc=;
 b=XlSNMXMomGlL98MVH2Y38zJT3ch0ovUnYddswlRj7u5ofxM1PB+ri+IOw8xvPX4+cW
 zpqqrQCEBXvephKadYoAWUNAB0t79nwBfEr/CM7bkwJcIrj6/EM+t5DLuJu1P2URhzNl
 IpWbcXL/MfGXqrXPUalE/E1qu8Vbirx3jkfZxzj/DWddR1CI/BoH9S7h5TCWPL4i1SRP
 Qew5KonrCxJbbetz5dLhj/79jC8qxtYICANMMs5VLxPHZCKINfLQaq21y/Nu2HIFfPD7
 3qIl93NiAVU1oqeHJdRRXSLtdQeCeTxCKVb2wgaS9ey5OXNYq1o5Ss+G+6did3W0pMIv
 eRRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jY/whPnhAuxzTC/NjaKtmOflD4QjDSvq1sNUEMZh1qc=;
 b=p01f9S8/yk+szMLjffgbCpC3j5H5hugsehmfktxaSd+zWTm1ICBIMKWN7l2RqNOPRb
 LchWcDgSIMr6xLY+TTpG0jAzC7JX1xniiOPKvAtjVmJykhqTJQo2xfVtrr6P0D1ZuEM3
 tXGTMN0u6vzNmC+c3BgwKBUSUjZPGPfm4WGmoRzk+DNYsTUCQmsbLncIt9ezfGO4PeNk
 PpJzNU4IZuheFX+vgsaHg4bUoviJKxTVHg1k5K6n3LQJD6RG5PAQRMmzELsvtINzSFvg
 KrOTZaaZ2wrK6VJs8GaN+HxF8sR7+hDi2mRtWm+2GkYK85U0HnKVve3AYbgQilSFiDwD
 3gCw==
X-Gm-Message-State: APjAAAVRCdwakSKIZKXk//28reeiomUkBYuBlcGn7iraiRYrHtzcU8Rt
 CICFEweNFYPuZbxrHIetkHP0ujVT
X-Google-Smtp-Source: APXvYqxe6yfLSQK+5DB76pAsO2JVz92J7q3+56L6/lV9a5KfPuaDfJSuV5dzIjVYQ/fXZ7JXD9vMcg==
X-Received: by 2002:a05:651c:321:: with SMTP id
 b1mr5965696ljp.62.1581468016319; 
 Tue, 11 Feb 2020 16:40:16 -0800 (PST)
Received: from z50.gdansk-morena.vectranet.pl
 (109241122244.gdansk.vectranet.pl. [109.241.122.244])
 by smtp.gmail.com with ESMTPSA id e8sm3621935ljb.45.2020.02.11.16.40.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Feb 2020 16:40:15 -0800 (PST)
From: Janusz Krzysztofik <jmkrzyszt@gmail.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>
Subject: [RFC PATCH 03/14] ARM: OMAP1: ams-delta: Provide board specific
 partition info
Date: Wed, 12 Feb 2020 01:39:18 +0100
Message-Id: <20200212003929.6682-4-jmkrzyszt@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200212003929.6682-1-jmkrzyszt@gmail.com>
References: <20200212003929.6682-1-jmkrzyszt@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_164017_699036_A2BF1590 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: 1.4 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 1.0 HK_RANDOM_FROM         From username looks random
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jmkrzyszt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Tony Lindgren <tony@atomide.com>, Janusz Krzysztofik <jmkrzyszt@gmail.com>,
 linux-mtd@lists.infradead.org, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now as the Amstrad Delta NAND driver supports fetching information on
MTD partitions from device platform data, add partition info to the
NAND device configuration.

Signed-off-by: Janusz Krzysztofik <jmkrzyszt@gmail.com>
---
 arch/arm/mach-omap1/board-ams-delta.c | 35 +++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/arch/arm/mach-omap1/board-ams-delta.c b/arch/arm/mach-omap1/board-ams-delta.c
index a2aa7a12b374..f4d2ef97099e 100644
--- a/arch/arm/mach-omap1/board-ams-delta.c
+++ b/arch/arm/mach-omap1/board-ams-delta.c
@@ -17,6 +17,8 @@
 #include <linux/input.h>
 #include <linux/interrupt.h>
 #include <linux/leds.h>
+#include <linux/mtd/nand-gpio.h>
+#include <linux/mtd/partitions.h>
 #include <linux/platform_device.h>
 #include <linux/regulator/consumer.h>
 #include <linux/regulator/fixed.h>
@@ -294,9 +296,42 @@ struct modem_private_data {
 
 static struct modem_private_data modem_priv;
 
+/*
+ * Define partitions for flash device
+ */
+
+static struct mtd_partition partition_info[] = {
+	{ .name		= "Kernel",
+	  .offset	= 0,
+	  .size		= 3 * SZ_1M + SZ_512K },
+	{ .name		= "u-boot",
+	  .offset	= 3 * SZ_1M + SZ_512K,
+	  .size		= SZ_256K },
+	{ .name		= "u-boot params",
+	  .offset	= 3 * SZ_1M + SZ_512K + SZ_256K,
+	  .size		= SZ_256K },
+	{ .name		= "Amstrad LDR",
+	  .offset	= 4 * SZ_1M,
+	  .size		= SZ_256K },
+	{ .name		= "File system",
+	  .offset	= 4 * SZ_1M + 1 * SZ_256K,
+	  .size		= 27 * SZ_1M },
+	{ .name		= "PBL reserved",
+	  .offset	= 32 * SZ_1M - 3 * SZ_256K,
+	  .size		=  3 * SZ_256K },
+};
+
+static struct gpio_nand_platdata nand_platdata = {
+	.parts		= partition_info,
+	.num_parts	= ARRAY_SIZE(partition_info),
+};
+
 static struct platform_device ams_delta_nand_device = {
 	.name	= "ams-delta-nand",
 	.id	= -1,
+	.dev	= {
+		.platform_data = &nand_platdata,
+	},
 };
 
 #define OMAP_GPIO_LABEL		"gpio-0-15"
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
