Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 984F5159E46
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 01:45:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c0iO4ay74XxWXNLfpt0GHdayPoDR885Y2fHB8CKVz9k=; b=uu+vh94oNh2EeD
	d43HMN/6huT5O1wunU3OgL0Se/4N3n+ucwFmPLfQPMCIJFwDS3vYgh/DFA8LmyGSJq335DbmzjQc6
	WSB39zLUS3OxNKpkiZux3+CzkqAwBfF3ZM0QO7nD8Mt/jwLhJ95d5Jb+Md9qxBO097Zs4i7r0S75a
	Ut6Y0kjEdy1qSdBJVG3E0UEm8Rv3lOPvOU5AKkJwVfCOHXC7o7ZbgUy+1/l7akEoisrtY8SpMiIl0
	4btBnXRVC1+qWxXv1ADUz8Zpve8uuC33YHtUbjhekQ5pLeOIj8H/YpPMkm8EP3AIs7jGQtlakCHe7
	+wTa9/8U+yzy6ug2C/Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1g9h-0005Is-BC; Wed, 12 Feb 2020 00:45:29 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1g4r-0008LD-C9; Wed, 12 Feb 2020 00:40:31 +0000
Received: by mail-lf1-x141.google.com with SMTP id r14so275179lfm.5;
 Tue, 11 Feb 2020 16:40:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=v/6tTpO3ty9Ickxrg60llaPHKJlLlwszXGl2q4ZEWdA=;
 b=XXy+baYR3VmU8+0MGUBmeB6Ufp/HhTXjpTNcm302ZvTcMx1EevlSI36N7AfkUkFY+L
 hikN/KF45d4Z3VpgD4ep9+f5bnN6R9yOvtZD6IKtW6JF30+QsQdYKL6ANu3J23pA2zPC
 vMQdRiXUl7QMICn0fkSYS4MjnkQ9yGjELAbk761xAGcGiTv5ew4ysYqRn60qsjpToxZp
 LdP4g+dkLb2RagCz7Srr7VCQBngZBot1UyOaQ/WSyyXpNmSVXCy6qUaKuJrhOHfOetnx
 +nI6CWdxR8IatlCyIFlRpeJ+xQEWEj9sCVcSc1FKF4cqaFeyYI/kEQKixttD8PiMxyIe
 HjJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=v/6tTpO3ty9Ickxrg60llaPHKJlLlwszXGl2q4ZEWdA=;
 b=Dxk4U1xzFoKO9qZt8AFeEiB1XsADuLZSSq70bouPfyEoX/LWFwyNHqTiN+6J0QI4mV
 u4IE0tfo+V1iNlUsvdl4U04AUHWVnMTiaZhoQXug6jAyQMWKfMR7EwQuxJphGa4HEAd2
 ro3chNzbjFyJcCfpiwtvK0hcPC1hvkAUQUqTuvteBPgss6yHR1lUNCfrZo3xZ+j8RgHr
 rADYySnrNehu1MAtEL5y9QxdsYMHQM7Ycr+P8hlklx0MZlVe7z3vK1hTf1JsxC80TTIH
 5+JKIPNvMF/tiwPgcCes4xvxiqRqMnyELQ3Irtx7OJMnpk7vLI+Bu86MEmw2IHa6HA/d
 bMig==
X-Gm-Message-State: APjAAAX1z5RGt9xZsx9ICLT+km39Ql5/1+ZnwNxDdcAenOHuElGX3xvL
 HPPdA8wOdGAwVkB/EISuzPc=
X-Google-Smtp-Source: APXvYqzJQMZWjP7I8oQrWw3hIto+GJNhsSDnYXYqbb56cNLMkwksMbMcf+Z2BxWEJFVtQsbKN+icfg==
X-Received: by 2002:ac2:5f74:: with SMTP id c20mr5161323lfc.15.1581468026840; 
 Tue, 11 Feb 2020 16:40:26 -0800 (PST)
Received: from z50.gdansk-morena.vectranet.pl
 (109241122244.gdansk.vectranet.pl. [109.241.122.244])
 by smtp.gmail.com with ESMTPSA id e8sm3621935ljb.45.2020.02.11.16.40.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Feb 2020 16:40:26 -0800 (PST)
From: Janusz Krzysztofik <jmkrzyszt@gmail.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>
Subject: [RFC PATCH 11/14] mtd: rawnand: ams-delta: Support custom driver
 initialisation
Date: Wed, 12 Feb 2020 01:39:26 +0100
Message-Id: <20200212003929.6682-12-jmkrzyszt@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200212003929.6682-1-jmkrzyszt@gmail.com>
References: <20200212003929.6682-1-jmkrzyszt@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_164029_447478_E5310F5E 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: 1.4 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
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

In preparation for extending the driver with custom I/O support, try to
obtain device specific initialisation routine from a matching device
table entry and run it as an additional step of device probe.

Signed-off-by: Janusz Krzysztofik <jmkrzyszt@gmail.com>
---
 drivers/mtd/nand/raw/ams-delta.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/mtd/nand/raw/ams-delta.c b/drivers/mtd/nand/raw/ams-delta.c
index 9857ce25debf..97e3b6629c72 100644
--- a/drivers/mtd/nand/raw/ams-delta.c
+++ b/drivers/mtd/nand/raw/ams-delta.c
@@ -22,6 +22,7 @@
 #include <linux/mtd/nand-gpio.h>
 #include <linux/mtd/rawnand.h>
 #include <linux/mtd/partitions.h>
+#include <linux/of_device.h>
 #include <linux/platform_device.h>
 #include <linux/sizes.h>
 
@@ -230,6 +231,7 @@ static int ams_delta_init(struct platform_device *pdev)
 	struct nand_chip *this;
 	struct mtd_info *mtd;
 	struct gpio_descs *data_gpiods;
+	int (*probe)(struct platform_device *pdev, struct ams_delta_nand *priv);
 	int err = 0;
 
 	if (pdata) {
@@ -319,6 +321,15 @@ static int ams_delta_init(struct platform_device *pdev)
 	priv->data_gpiods = data_gpiods;
 	priv->data_in = true;
 
+	if (pdev->id_entry)
+		probe = (void *) pdev->id_entry->driver_data;
+	else
+		probe = of_device_get_match_data(&pdev->dev);
+	if (probe)
+		err = probe(pdev, priv);
+	if (err)
+		return err;
+
 	/* Initialize the NAND controller object embedded in ams_delta_nand. */
 	priv->base.ops = &ams_delta_ops;
 	nand_controller_init(&priv->base);
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
