Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B8C3C988E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 08:47:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=26/2o1ZUD9SRKe4HdHQYyzGM/92KNAeXS9LaI24SpK4=; b=DIY2EBGvFJX9fZ
	8DQ5ePEL4MtW5Bp5+dn5AiIrzhqsah948jlNgubanIKuVqvSNDRRNIzmyvUyEa7KI8zhYx2tJ0/Eb
	h9/2DVMbMZXL7XLHcbhcJ1Kl+Zgm6Nx5FsnL386tQCgMTFtRl4fhyt5gh0hURUjvoftCwvC2rvCar
	KXy5zv4psgw/69KoB2i6qiJXIE6V1LpIxGCIn9BGC5nw8xMy7nC6RrP9ib+Nf/gIVumKamyCeGjqA
	A1P4xVgf3SThlzWYJ+SptwbCX8PDXBpx0LR1WO/47mVfYT3CGnnNKgNi/W7cLXd3J6e8nK1/3QX6L
	1wKQY1g7oX+nKjVphp9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFutw-0006KO-Vf; Thu, 03 Oct 2019 06:47:49 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFusX-00042k-Ez
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 06:46:23 +0000
Received: by mail-pg1-x542.google.com with SMTP id z12so1114841pgp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 23:46:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=w28l9Bay7xNtt5EXEnd1uzJ8iDtWAmssV5M28OxUAUw=;
 b=KQ2LkOEKTiO6GSVyAcVCwmI6tIIYuy7DboEUKeXPS7BzMWxfmXMGK4XlY2+G43azj7
 lbWDLABCj1KDR3VPgHd0Ok/LMU8p7VvOv86DtsxVtqDxwFP7arJNy173b+On2ikOKiuc
 bLXmZaGH5ckchLB7pXN2xEm6b/fYaac9AJj/o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=w28l9Bay7xNtt5EXEnd1uzJ8iDtWAmssV5M28OxUAUw=;
 b=b3Dxucf5lEH6fSpRD8vq0nQHwfsHoY7fFdrvL6j+TUT1s/sVQGIyj3TbscPuW5P34f
 X8Vnym329sNG12YOqadAEKdmbaa9DZA/OBYQMrQnIvQAzXceQF7Q7TnB1u5ly4B1zoKY
 8XW1u6ExCV3S5rJKP4TfcGtV/UF1iKb85Hxvykg/NgSXwAGllaYYwWUen7A56BpXCMFn
 bGTOUhOQgxHUXACyZhaSL9azRReZ9+qvehSta38Lf0XcKdfkvAHvNOB5rzlEbReh6/fv
 aI05il/hF8v9EmOxIc6s2/+L4Hhgx/eQUqUJaBfAa+BAil8TTrv4nirNp6VbtuMkwsY/
 3K1A==
X-Gm-Message-State: APjAAAW4uJtjDT0I7gphU/w0X64jXSabTFlac+boO5AVpbhhsIZZowwn
 KYdrfZM8YAusPkfQrUtxC8ALnA==
X-Google-Smtp-Source: APXvYqw9CN7jIsE+MsR2uxNhq5HhPqVzRo1QO/rv7lizgNxxfZvpTowoqU4TBvLm2ucXujxNgqGZOA==
X-Received: by 2002:a17:90a:da05:: with SMTP id
 e5mr8479030pjv.141.1570085180342; 
 Wed, 02 Oct 2019 23:46:20 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.121])
 by smtp.gmail.com with ESMTPSA id b18sm1423294pfi.157.2019.10.02.23.46.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Oct 2019 23:46:19 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH v11 5/7] drm/sun4i: sun6i_mipi_dsi: Add VCC-DSI regulator
 support
Date: Thu,  3 Oct 2019 12:15:25 +0530
Message-Id: <20191003064527.15128-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191003064527.15128-1-jagan@amarulasolutions.com>
References: <20191003064527.15128-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_234621_550076_ADA3164F 
X-CRM114-Status: GOOD (  13.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 Jagan Teki <jagan@amarulasolutions.com>, michael@amarulasolutions.com,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allwinner MIPI DSI controllers are supplied with SoC
DSI power rails via VCC-DSI pin.

Add support for this supply pin by adding voltage
regulator handling code to MIPI DSI driver.

Tested-by: Merlijn Wajer <merlijn@wizzup.org>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 14 ++++++++++++++
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h |  2 ++
 2 files changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
index 446dc56cc44b..fe9a3667f3a1 100644
--- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
+++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
@@ -1110,6 +1110,12 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
 		return PTR_ERR(base);
 	}
 
+	dsi->regulator = devm_regulator_get(dev, "vcc-dsi");
+	if (IS_ERR(dsi->regulator)) {
+		dev_err(dev, "Couldn't get VCC-DSI supply\n");
+		return PTR_ERR(dsi->regulator);
+	}
+
 	dsi->regs = devm_regmap_init_mmio_clk(dev, "bus", base,
 					      &sun6i_dsi_regmap_config);
 	if (IS_ERR(dsi->regs)) {
@@ -1183,6 +1189,13 @@ static int sun6i_dsi_remove(struct platform_device *pdev)
 static int __maybe_unused sun6i_dsi_runtime_resume(struct device *dev)
 {
 	struct sun6i_dsi *dsi = dev_get_drvdata(dev);
+	int err;
+
+	err = regulator_enable(dsi->regulator);
+	if (err) {
+		dev_err(dsi->dev, "failed to enable VCC-DSI supply: %d\n", err);
+		return err;
+	}
 
 	reset_control_deassert(dsi->reset);
 	clk_prepare_enable(dsi->mod_clk);
@@ -1215,6 +1228,7 @@ static int __maybe_unused sun6i_dsi_runtime_suspend(struct device *dev)
 
 	clk_disable_unprepare(dsi->mod_clk);
 	reset_control_assert(dsi->reset);
+	regulator_disable(dsi->regulator);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
index 5c3ad5be0690..a01d44e9e461 100644
--- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
+++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
@@ -12,6 +12,7 @@
 #include <drm/drm_connector.h>
 #include <drm/drm_encoder.h>
 #include <drm/drm_mipi_dsi.h>
+#include <linux/regulator/consumer.h>
 
 #define SUN6I_DSI_TCON_DIV	4
 
@@ -23,6 +24,7 @@ struct sun6i_dsi {
 	struct clk		*bus_clk;
 	struct clk		*mod_clk;
 	struct regmap		*regs;
+	struct regulator	*regulator;
 	struct reset_control	*reset;
 	struct phy		*dphy;
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
