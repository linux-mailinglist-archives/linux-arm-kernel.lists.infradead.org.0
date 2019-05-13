Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC3E1B836
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 16:22:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ZuNaLKE8rV+t0Q+AwURFhSo56/PDALAgNFYs84ErkM=; b=S2bcxk6lV/Gsmy
	2zsNoRmJachMWeoSkpES/hUn2ronO5uFxFxvDtzl+AaZ9n+ksvlrTAMDfowxHqhdA6R7xB1O7GqSO
	iRXbTMhwo8WiHYbOmHW++LHHzdyNxPB+qR4rE0WzIKVJAIp7UCWaGDyUMMc2XqK/3PnVHHWphzhx8
	x9+ZZlK6s2PHCUVs9DY/UehTUzJcQjepW10lfgupniT0Fe98+gXe6EEWzcVA3gnM0dXM9QKAqx+L8
	vbBzZ4UOTkl74ljD9L5yPu9TkBOYVXfXtQb7JiPMbfqbxd/DmaXQGJOw6gJoQ4121PhJ7CukBa5oY
	CBpWKahkv5aEmUyHnB2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQBq2-0006BB-7E; Mon, 13 May 2019 14:21:58 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQBpq-00068z-KW
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 14:21:50 +0000
Received: by mail-wr1-x443.google.com with SMTP id w8so13074807wrl.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 07:21:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cSguXg1ULNsLVeUlyV/JBYC1DyTsN/aiCX3xWl5lL/w=;
 b=jleNO/Cdfykym1Iv62B4ZMzaeTMBfgLnbRfEOuZTYHQdFwoD/fE3Nu1uIO83bTuCb0
 WufTyu79QjpzY5s5s1Orw+T6OkXimC1WGuD0yHItW1LPMoPvqskys5DxO8pNyTC4ETUn
 89Ywwrps4NBIRn5o/0NOl6bzkn3fmWkCmrYM3/Grojkmqb4lW1xowhu96CezF4gLiK/1
 pDJQJQvPFq6JEytsSw8z70jl3Aeprsh4UCVcEIAsKpgSj9R8c3+d/jI7Jk6plZr47VhM
 Mb/gptNd4QJJZk6wUuG2U8eo6Ut7BoGxnUESQsUaQv5y5S+4390RDYWn7yytT4L9H7BN
 VSuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cSguXg1ULNsLVeUlyV/JBYC1DyTsN/aiCX3xWl5lL/w=;
 b=O2hC0aL/vMzGOlkAMECTPzs0ST8qOH1cjnjPZ0KExY/FsZWngpz4jIV8q3oda5uMT8
 SOIWPs1yFP5nwpEeeebd7u4r/oLaKn0HIfureeNRTPY5b1ZsUzYVyUyzi6A8Rjt6N6O5
 j61l6l5GiWMokCFiSn4c6UmVoIGO22ytPk3gV3tnv+B3aGsb6QUg0G3agCkBuFtg87eY
 ptLDPAfCqP+SGrR+Q5x2tpLBlv5+6tw4xrlmCO1PCGwN39nWsQs3VrMiAuejLYftAId8
 V4Ob2J4vkWfhpMNo54oKdqD6k9KC+oA2pc5exir3ngzkPyQzRgWdK6PATKZ6Z9aLEQdt
 yq7w==
X-Gm-Message-State: APjAAAWoByhTtSzQDfi9l/ori+xAswF1HVNoHlqpy9PRrI01tfr/YojP
 VmfuTxjTOIgBOURcI5/xeoFc9w==
X-Google-Smtp-Source: APXvYqyb7jvJZ+9TFKgT7DkyliaCtl4ZcjeYhYQ5a7ehr+YjdueGGPUKUKqqrkwlDWYC3gJx5sgcgQ==
X-Received: by 2002:adf:aa0a:: with SMTP id p10mr8675758wrd.125.1557757305028; 
 Mon, 13 May 2019 07:21:45 -0700 (PDT)
Received: from localhost.localdomain
 (aputeaux-684-1-11-31.w90-86.abo.wanadoo.fr. [90.86.214.31])
 by smtp.gmail.com with ESMTPSA id v184sm21133615wma.6.2019.05.13.07.21.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 07:21:44 -0700 (PDT)
From: Fabien Parent <fparent@baylibre.com>
To: dmitry.torokhov@gmail.com, robh+dt@kernel.org, mark.rutland@arm.com,
 matthias.bgg@gmail.com
Subject: [PATCH 2/2] input: keyboard: mtk-pmic-keys: add MT6392 support
Date: Mon, 13 May 2019 16:21:20 +0200
Message-Id: <20190513142120.6527-2-fparent@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190513142120.6527-1-fparent@baylibre.com>
References: <20190513142120.6527-1-fparent@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_072148_974616_7E153ADE 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Fabien Parent <fparent@baylibre.com>, linux-mediatek@lists.infradead.org,
 linux-input@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for MT6392 PMIC's keys.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 drivers/input/keyboard/mtk-pmic-keys.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/input/keyboard/mtk-pmic-keys.c b/drivers/input/keyboard/mtk-pmic-keys.c
index 8e6ebab05ab4..aaf68cbf7e5b 100644
--- a/drivers/input/keyboard/mtk-pmic-keys.c
+++ b/drivers/input/keyboard/mtk-pmic-keys.c
@@ -18,6 +18,7 @@
 #include <linux/interrupt.h>
 #include <linux/kernel.h>
 #include <linux/mfd/mt6323/registers.h>
+#include <linux/mfd/mt6392/registers.h>
 #include <linux/mfd/mt6397/core.h>
 #include <linux/mfd/mt6397/registers.h>
 #include <linux/module.h>
@@ -83,6 +84,16 @@ static const struct mtk_pmic_regs mt6323_regs = {
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
@@ -238,6 +249,9 @@ static const struct of_device_id of_mtk_pmic_keys_match_tbl[] = {
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
