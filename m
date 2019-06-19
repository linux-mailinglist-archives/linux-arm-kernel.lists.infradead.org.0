Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED5924BB51
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 16:22:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DYuXYJmtzI8A+k22sClszNEaiTglYJ/4owORvZefeBY=; b=U6rN3+MgTo5QoE
	I0tHiNRa1Kb/dtdZout2gnDL1Q+EKMhcj8CWNAeQNpdvcs77Tgz/yp/SqFLqw/R7Mt5fLo4Xmam4y
	1xU+La037pWQ7iQJvCaF5v1zQS7kBdxjpVyotONCT1Qtkm89FoqAliE4K1W0GpHMVMmWK8FDdh9K2
	Su8Zhm2Zv3naae7KXs9KvAV9YtaDZOe+cRFFZh0P+C2vm/6jcI1MAGnOwAQB4gimo9OZM6PiV3LZ/
	9azJ9H/g6n7f/uhgM5r1ZSHeIICwrUb6y85c1CyZ/X2CeiItkd2ey5tXS1spzULikfx9pOK1I7BXv
	Y5gzFh2znHrm+Afm+YmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdbTM-0007Pa-RB; Wed, 19 Jun 2019 14:22:00 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdbRq-00066c-S9
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 14:20:32 +0000
Received: by mail-wr1-x442.google.com with SMTP id r16so430534wrl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 07:20:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5HyKzjCvcphbyNNVjsqXzUyUkExzumkqB7IfOWgPvTo=;
 b=NpRVQ17FE5ogKoQQdxGUdIBHv8s9KiTNDLw6TjNwtqmrDSa/H59OeSGW/8/xZt6sqx
 d2g4gqYlR0FSHvHrdWyDROEB0p0ZV5/Hmw0p/4fjYjnkah50Tzac3NmNfkUBoQPSIfUx
 GBnSl0tQnsP47cLz3hH8S7FF+pYLgQ92s49MY7UTKHM4KJtfisGXxXnhA+tcErqNU4qH
 3aV9K5QKBIITdl1HO8D9fSh6KMv3ObN6M+bDo2CwtseqdiVJxVJol2dnOhWZWHGVCYa7
 gzrSNlEEQMoW4XE+YfJojJEwo12iEhM3UyVY2dxAh4bsWIGtwfzgk4IOubb4D9qT/qbv
 CYrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5HyKzjCvcphbyNNVjsqXzUyUkExzumkqB7IfOWgPvTo=;
 b=jUNT7jBDF/6l/TKrZ7M3kgQqMVLs0d1ndSx1v4quNza1S9GRWduN22gspTtk+YFxg5
 eAvrveOo8spUQ7PM9EXODB1RD9Q0QgaPKNfhKbiE3JZni7/J7ZNfCs/XYaIZf594mRvh
 lIu91yoAvIN8Y4jbEwQ3atnPdrQ4b+pDVncuOkoh8Ee1KetWjnpsNaWMmLeCk+ecImpP
 9q3gasQAxb1B5ormtDVSXCrCXkmmzlhZnez2TioD6nMgZxSnqUiogA9sYqwYe3kd9zRr
 aJ+2O5yGEHYX4CDp2rTv62kfijvH38y775cm1rXj/GtguBA3GSzmOVpESHs2CqIF/IO0
 aJsA==
X-Gm-Message-State: APjAAAVZFbpa+Z60I4k3ZbUfOpqVQ7PkYQfP42jiapp3wLxupIt/2A8x
 7Ee0K5oRFxNTfthxAw9Z33hn8Q==
X-Google-Smtp-Source: APXvYqx6Yw2wyn2+H8rXu2ONXIf87Boyl/ltH9hFj1h3tSdJaTazjnpi0uNBoPDWXMZhECDHL1E6Qg==
X-Received: by 2002:adf:a345:: with SMTP id d5mr9180977wrb.234.1560954024807; 
 Wed, 19 Jun 2019 07:20:24 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id o20sm24209979wrh.8.2019.06.19.07.20.23
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 19 Jun 2019 07:20:24 -0700 (PDT)
From: Fabien Parent <fparent@baylibre.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, matthias.bgg@gmail.com,
 lee.jones@linaro.org, lgirdwood@gmail.com, broonie@kernel.org
Subject: [PATCH v4 6/7] input: keyboard: mtk-pmic-keys: add MT6392 support
Date: Wed, 19 Jun 2019 16:20:12 +0200
Message-Id: <20190619142013.20913-7-fparent@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190619142013.20913-1-fparent@baylibre.com>
References: <20190619142013.20913-1-fparent@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_072027_048936_1707B031 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, dmitry.torokhov@gmail.com,
 linux-kernel@vger.kernel.org, Fabien Parent <fparent@baylibre.com>,
 linux-mediatek@lists.infradead.org, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for MT6392 PMIC's keys.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
Acked-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>
---

V4:
	* Patch was previously sent separately but merge to this patch series
	  since there is a hard dependency on the MFD patch.

---
 drivers/input/keyboard/mtk-pmic-keys.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/input/keyboard/mtk-pmic-keys.c b/drivers/input/keyboard/mtk-pmic-keys.c
index 746ff06eaf8d..91ddf0dd5e44 100644
--- a/drivers/input/keyboard/mtk-pmic-keys.c
+++ b/drivers/input/keyboard/mtk-pmic-keys.c
@@ -9,6 +9,7 @@
 #include <linux/interrupt.h>
 #include <linux/kernel.h>
 #include <linux/mfd/mt6323/registers.h>
+#include <linux/mfd/mt6392/registers.h>
 #include <linux/mfd/mt6397/core.h>
 #include <linux/mfd/mt6397/registers.h>
 #include <linux/module.h>
@@ -74,6 +75,16 @@ static const struct mtk_pmic_regs mt6323_regs = {
 	.pmic_rst_reg = MT6323_TOP_RST_MISC,
 };
 
+static const struct mtk_pmic_regs mt6392_regs = {
+	.keys_regs[MTK_PMIC_PWRKEY_INDEX] =
+		MTK_PMIC_KEYS_REGS(MT6392_CHRSTATUS,
+		0x2, MT6392_INT_MISC_CON, 0x10),
+	.keys_regs[MTK_PMIC_HOMEKEY_INDEX] =
+		MTK_PMIC_KEYS_REGS(MT6392_CHRSTATUS,
+		0x4, MT6392_INT_MISC_CON, 0x8),
+	.pmic_rst_reg = MT6392_TOP_RST_MISC,
+};
+
 struct mtk_pmic_keys_info {
 	struct mtk_pmic_keys *keys;
 	const struct mtk_pmic_keys_regs *regs;
@@ -229,6 +240,9 @@ static const struct of_device_id of_mtk_pmic_keys_match_tbl[] = {
 	}, {
 		.compatible = "mediatek,mt6323-keys",
 		.data = &mt6323_regs,
+	}, {
+		.compatible = "mediatek,mt6392-keys",
+		.data = &mt6392_regs,
 	}, {
 		/* sentinel */
 	}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
