Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17607CBDCC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 16:47:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Wlpg7AaUIgc1q89tlI1iyOSkO+c7RdjAA/rOPfwaR+g=; b=o4qmWKxoIVxHER
	BCDIEx0RU1Sr7nbJfmNrf4BeMsjBXjJpxSEVwBzrzVdKpYwTRZMySVJSUPpjtixoLO6YT6Ch7lox0
	/NpC2Ki7nidLDlWOktC495m4niKxlWg3kz2PKM8n+QtOqoFJHElFViB0EYVvDa/AS7XRx3AzRX+e6
	e1Kq/OjL+vDa10/MvKsHWmm5JNK9eUT5LRZ1Fv6gig+10g2DQKEcn8K8aBkeWxUBhEQeMAQltkTEl
	wCdbDD75tb7uHI1IyhKYBsHlkLQ6hmgzsAJkxTAv497mUJOcf+JKD43gnrT/F1nSVyZXPBqoRQjUu
	+Nfo+Qfk+Dg2XCuXsmfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGOrk-0002gk-DQ; Fri, 04 Oct 2019 14:47:32 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGOrb-0002eo-GY
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 14:47:25 +0000
Received: by mail-wm1-x343.google.com with SMTP id a6so6112889wma.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 07:47:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9118eAxchplUEC3wD7+/3Rk7lFGR/BWjlZfUOnVUzi4=;
 b=aOqqM0bS+MNrX5woXn55Y6mMlkKHv2N9o9db3txnnVtJ/nke80mmIWIvF4LFxgztWp
 aCHW21RbuNKSOtkC2usNceZWmNQbVMu3vio8AU9aQ9vtSghL/TKWzE+AUkrXsLt+MjoO
 FOJUV+BMsGCYjhIVsUXKaYWhHd2pBoKNWaZS9gRabsmXtcLEUIdClfZjBFskufa6VUoB
 55W9zLTKDh3op8RIV4/ZkippwzLFEH+aOL/1E8TeiDqnhD71GN2semNSMNCdy36DLtzW
 OhM0GoKQXTnGj/o24dpb6aA8ODMjONBmawqhnT/jjTkfqXF5vDCYf9/TsV0/7Ub0KjXM
 212w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9118eAxchplUEC3wD7+/3Rk7lFGR/BWjlZfUOnVUzi4=;
 b=dKbjkbQR8ZtXQP22Lj8amoNthKLVPYbezaJGkoyvcYYHa/JapDHsuq92tz6mfRYNQV
 DMJSFteBD5XVvzUzlvBTIPMFTuHlXbi9tS2P+OFIlb51F15rtSROkZEz+ON8YChPT+q+
 meMw6YQVMqiPqgFQ7+dnd/Whjx0m2mOpdfG7Nzq2h85SAX2mQnjFuttQ7SJKoW/JGCcV
 BOB05yk9Bkrnd+wCI06XXCkQMIkIWtA2tmR5EEglym+RrbT5I1hUQ4gmjGGb9lsKdv/s
 811TyfL70bncI1s9tP0xM6Qk58tnVxbxzLQpU9HAXuGpCRFmU3bXkxELEbwSwP1kxlRn
 QUvg==
X-Gm-Message-State: APjAAAWVRfYz5R7Jg3Mg9Djhs3ZW9Yutzugnl0TY7bUKTbQyrBiqJmVX
 8aOXxVsZFd2Jhf/tg6RVWzutsQ==
X-Google-Smtp-Source: APXvYqzxGEB/Jmd5uNbft2qfT6qV6TItO3w9WvQSn/rY8jn52H+gVkuWobFmoGKb7/SQ8cXphGH4lA==
X-Received: by 2002:a7b:cd08:: with SMTP id f8mr10287319wmj.87.1570200441202; 
 Fri, 04 Oct 2019 07:47:21 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id y5sm7994776wma.14.2019.10.04.07.47.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Oct 2019 07:47:20 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Subject: [PATCH] media: meson/ao-cec: move cec_notifier_cec_adap_register
 after hw setup
Date: Fri,  4 Oct 2019 16:47:19 +0200
Message-Id: <20191004144719.11006-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_074723_550260_63EE5651 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Christian Hewitt <christianshewitt@gmail.com>, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When probed after the HDMI notifier, calling cec_notifier_cec_adap_register()
calls the enable() adapter callback, but the HW is not yet set up.

Moving cec_notifier_cec_adap_register() right before cec_register_adapter()
fixes the following crash:
Ignoring spurious kernel translation fault at virtual address 0000000000000008
[...]
Hardware name: Khadas VIM (DT)
[...]
pc : __do_kernel_fault+0xdc/0x120
lr : __do_kernel_fault+0xdc/0x120
[...]
Call trace:
 __do_kernel_fault+0xdc/0x120
 do_page_fault+0x180/0x458
 do_translation_fault+0x64/0x70
 do_mem_abort+0x3c/0x98
 el1_da+0x20/0x94
 meson_ao_cec_adap_enable+0x30/0x218 [ao_cec]
 __cec_s_phys_addr+0x184/0x270
 cec_s_phys_addr+0x44/0x60
 cec_notifier_cec_adap_register+0x68/0x90
 meson_ao_cec_probe+0xb0/0x288 [ao_cec]
[...]
 el0_svc_compat+0x8/0x10

Reported-by: Christian Hewitt <christianshewitt@gmail.com>
Suggested-by: Hans Verkuil <hverkuil@xs4all.nl>
Fixes: 20958f9d5c48 ("media: meson/ao-cec: use cec_notifier_cec_adap_(un)register")
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/media/platform/meson/ao-cec-g12a.c | 36 +++++++++++-----------
 drivers/media/platform/meson/ao-cec.c      | 30 +++++++++---------
 2 files changed, 33 insertions(+), 33 deletions(-)

diff --git a/drivers/media/platform/meson/ao-cec-g12a.c b/drivers/media/platform/meson/ao-cec-g12a.c
index 3b39e875292e..3d8fe854feb0 100644
--- a/drivers/media/platform/meson/ao-cec-g12a.c
+++ b/drivers/media/platform/meson/ao-cec-g12a.c
@@ -662,34 +662,27 @@ static int meson_ao_cec_g12a_probe(struct platform_device *pdev)
 	if (IS_ERR(ao_cec->adap))
 		return PTR_ERR(ao_cec->adap);
 
-	ao_cec->notify = cec_notifier_cec_adap_register(hdmi_dev, NULL,
-							ao_cec->adap);
-	if (!ao_cec->notify) {
-		ret = -ENOMEM;
-		goto out_probe_adapter;
-	}
-
 	ao_cec->adap->owner = THIS_MODULE;
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	base = devm_ioremap_resource(&pdev->dev, res);
 	if (IS_ERR(base)) {
 		ret = PTR_ERR(base);
-		goto out_probe_notify;
+		goto out_probe_adapter;
 	}
 
 	ao_cec->regmap = devm_regmap_init_mmio(&pdev->dev, base,
 					       &meson_ao_cec_g12a_regmap_conf);
 	if (IS_ERR(ao_cec->regmap)) {
 		ret = PTR_ERR(ao_cec->regmap);
-		goto out_probe_notify;
+		goto out_probe_adapter;
 	}
 
 	ao_cec->regmap_cec = devm_regmap_init(&pdev->dev, NULL, ao_cec,
 					   &meson_ao_cec_g12a_cec_regmap_conf);
 	if (IS_ERR(ao_cec->regmap_cec)) {
 		ret = PTR_ERR(ao_cec->regmap_cec);
-		goto out_probe_notify;
+		goto out_probe_adapter;
 	}
 
 	irq = platform_get_irq(pdev, 0);
@@ -699,45 +692,52 @@ static int meson_ao_cec_g12a_probe(struct platform_device *pdev)
 					0, NULL, ao_cec);
 	if (ret) {
 		dev_err(&pdev->dev, "irq request failed\n");
-		goto out_probe_notify;
+		goto out_probe_adapter;
 	}
 
 	ao_cec->oscin = devm_clk_get(&pdev->dev, "oscin");
 	if (IS_ERR(ao_cec->oscin)) {
 		dev_err(&pdev->dev, "oscin clock request failed\n");
 		ret = PTR_ERR(ao_cec->oscin);
-		goto out_probe_notify;
+		goto out_probe_adapter;
 	}
 
 	ret = meson_ao_cec_g12a_setup_clk(ao_cec);
 	if (ret)
-		goto out_probe_notify;
+		goto out_probe_adapter;
 
 	ret = clk_prepare_enable(ao_cec->core);
 	if (ret) {
 		dev_err(&pdev->dev, "core clock enable failed\n");
-		goto out_probe_notify;
+		goto out_probe_adapter;
 	}
 
 	device_reset_optional(&pdev->dev);
 
 	platform_set_drvdata(pdev, ao_cec);
 
+	ao_cec->notify = cec_notifier_cec_adap_register(hdmi_dev, NULL,
+							ao_cec->adap);
+	if (!ao_cec->notify) {
+		ret = -ENOMEM;
+		goto out_probe_core_clk;
+	}
+
 	ret = cec_register_adapter(ao_cec->adap, &pdev->dev);
 	if (ret < 0)
-		goto out_probe_core_clk;
+		goto out_probe_notify;
 
 	/* Setup Hardware */
 	regmap_write(ao_cec->regmap, CECB_GEN_CNTL_REG, CECB_GEN_CNTL_RESET);
 
 	return 0;
 
-out_probe_core_clk:
-	clk_disable_unprepare(ao_cec->core);
-
 out_probe_notify:
 	cec_notifier_cec_adap_unregister(ao_cec->notify);
 
+out_probe_core_clk:
+	clk_disable_unprepare(ao_cec->core);
+
 out_probe_adapter:
 	cec_delete_adapter(ao_cec->adap);
 
diff --git a/drivers/media/platform/meson/ao-cec.c b/drivers/media/platform/meson/ao-cec.c
index 64ed549bf012..03600e8b3ef0 100644
--- a/drivers/media/platform/meson/ao-cec.c
+++ b/drivers/media/platform/meson/ao-cec.c
@@ -624,20 +624,13 @@ static int meson_ao_cec_probe(struct platform_device *pdev)
 	if (IS_ERR(ao_cec->adap))
 		return PTR_ERR(ao_cec->adap);
 
-	ao_cec->notify = cec_notifier_cec_adap_register(hdmi_dev, NULL,
-							ao_cec->adap);
-	if (!ao_cec->notify) {
-		ret = -ENOMEM;
-		goto out_probe_adapter;
-	}
-
 	ao_cec->adap->owner = THIS_MODULE;
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	ao_cec->base = devm_ioremap_resource(&pdev->dev, res);
 	if (IS_ERR(ao_cec->base)) {
 		ret = PTR_ERR(ao_cec->base);
-		goto out_probe_notify;
+		goto out_probe_adapter;
 	}
 
 	irq = platform_get_irq(pdev, 0);
@@ -647,20 +640,20 @@ static int meson_ao_cec_probe(struct platform_device *pdev)
 					0, NULL, ao_cec);
 	if (ret) {
 		dev_err(&pdev->dev, "irq request failed\n");
-		goto out_probe_notify;
+		goto out_probe_adapter;
 	}
 
 	ao_cec->core = devm_clk_get(&pdev->dev, "core");
 	if (IS_ERR(ao_cec->core)) {
 		dev_err(&pdev->dev, "core clock request failed\n");
 		ret = PTR_ERR(ao_cec->core);
-		goto out_probe_notify;
+		goto out_probe_adapter;
 	}
 
 	ret = clk_prepare_enable(ao_cec->core);
 	if (ret) {
 		dev_err(&pdev->dev, "core clock enable failed\n");
-		goto out_probe_notify;
+		goto out_probe_adapter;
 	}
 
 	ret = clk_set_rate(ao_cec->core, CEC_CLK_RATE);
@@ -674,9 +667,16 @@ static int meson_ao_cec_probe(struct platform_device *pdev)
 	ao_cec->pdev = pdev;
 	platform_set_drvdata(pdev, ao_cec);
 
+	ao_cec->notify = cec_notifier_cec_adap_register(hdmi_dev, NULL,
+							ao_cec->adap);
+	if (!ao_cec->notify) {
+		ret = -ENOMEM;
+		goto out_probe_clk;
+	}
+
 	ret = cec_register_adapter(ao_cec->adap, &pdev->dev);
 	if (ret < 0)
-		goto out_probe_clk;
+		goto out_probe_notify;
 
 	/* Setup Hardware */
 	writel_relaxed(CEC_GEN_CNTL_RESET,
@@ -684,12 +684,12 @@ static int meson_ao_cec_probe(struct platform_device *pdev)
 
 	return 0;
 
-out_probe_clk:
-	clk_disable_unprepare(ao_cec->core);
-
 out_probe_notify:
 	cec_notifier_cec_adap_unregister(ao_cec->notify);
 
+out_probe_clk:
+	clk_disable_unprepare(ao_cec->core);
+
 out_probe_adapter:
 	cec_delete_adapter(ao_cec->adap);
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
