Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C0222FD5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 11:08:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QBtT1lptEbkxaYGb8SOlcfJboco5+djD3bulGfIPXpI=; b=Mal/PPTXWP1bvb
	lE0UpDILPWOTbfpzTF1ufTuFCqfjAEcHjAy/+cIgYLP/xlqoTdHeELIAwF1tsdNhBlvIBovoBPymO
	OCkwqzAolmmB0ZqSd15XvdH7H+3iB/obgElOSYYrgqyK+9VePHggr9Q244hkDj0Q19blU9KXqvKk3
	45sBgKUKg/ewRUzI949VgKwYENxp5WbSKh41+Tz+N53hl9OGyEKUP6QIhixwFDu2Bs/ZiptKdL/hg
	Gu6aSlPxAk5aBO01nRjpan8hE7KSmfSVRvzdwHV04SKzJpviohCyPRVc7rml4GuwHyh60AyOTi1f6
	B6Kh5lLKrTaJIO+RGAqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSeHs-0003tr-4f; Mon, 20 May 2019 09:08:52 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSeHA-0003Ko-Bb
 for linux-arm-kernel@bombadil.infradead.org; Mon, 20 May 2019 09:08:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xEFhsAjZ+Xzcbx2mHUcUiTH2Zxcv+pD6TtDJ+37nOCw=; b=bcci216byLoKF5k/TgR7dKN2uR
 5XJsT9r4PArm9pYkI/iZq2/iy0O6i9SNLnsF5NIBxwIH3qJCLUALaH6krGKw3ct8Fctm1+KcfmV+p
 PXVfFxtEjyR87G12kPsyeb041HmQHHl89K9KrsSLo4ECHZjKi5dIdDiD0PodM7w74K1TA9ReA0PH0
 0hrkgGpBrHLvMiqT71O1x/alfDPA0uhC1FdivSetgikOdqCPd1mhgSQofMvOONNXWmxtpP+eDzAQP
 QtA4RtqrnvOxXukxYKcWNNfZPpwfcNaiZjTs6Zqh3DbovEqxNlZ5WRsYd+FNr6sDVApkZjOSzySZU
 Jai2J6wA==;
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSeH6-0008Kq-RP
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 09:08:06 +0000
Received: by mail-pf1-x441.google.com with SMTP id g3so6911256pfi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 02:08:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xEFhsAjZ+Xzcbx2mHUcUiTH2Zxcv+pD6TtDJ+37nOCw=;
 b=pkRCUHr3PbHTjPtc0qjpfo1lrEPZql2aeKEwix+ScaX1hHjAmL8U69LjgqUEDGAHHZ
 vGACrzd6Kmoy1bkgevpRYfNdHQnemycdG4G1VtfGtCdNjhb2as9Ypzh0BOVLPtzBINyi
 lyIN9ZuCYdiVQB/9yqx/RnaZks4NbxiNnbEPg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xEFhsAjZ+Xzcbx2mHUcUiTH2Zxcv+pD6TtDJ+37nOCw=;
 b=pTViPl3wREduUCgYY4mWOvfK06/I6ZPzEv7LRaXQCB5mV4pb1qlncY7vLgFqXPn3Sd
 FBw/Ca/XDC5ZSOJJZS0JfGq1+y7N6MjbpR3H9W5WEIYVCMcadVOy8YKs8GFkYej2Chsd
 rJzk+iHYdJblxXDqVW88nzRvFdTdO7RJMtFkgHnH6gCb7EYbx/mt5doGu3j9V1qN+qNh
 5yrL6pxhW34xrsopgeTSo5+3GpTwafRyAPreLDWtOw4s5fpZCBUuDZKFu8tPYnr++z8X
 4NmD+EccXIOzwwg7CIUFHuggpZCkBGrnXf6VmiC8KfP7W6tt6awTYUn50CwEttYsCEwH
 zFNw==
X-Gm-Message-State: APjAAAUZEWmJyPFvIMxch3UAU9Cw7ypMKQnizL1/43j1KuAczWrycr+O
 pe4G0ckpZ7eemdRa3Xnq2vv2Fg==
X-Google-Smtp-Source: APXvYqwqd4qJH6N7Gr6VNXBwWrTXaJZVOL3zSzQQK/VIAilUj4DHIF2KXdm0VmOuIoTm6pT2UMghGQ==
X-Received: by 2002:a63:3ece:: with SMTP id
 l197mr36282516pga.268.1558343279532; 
 Mon, 20 May 2019 02:07:59 -0700 (PDT)
Received: from localhost.localdomain ([183.82.227.193])
 by smtp.gmail.com with ESMTPSA id d15sm51671614pfm.186.2019.05.20.02.07.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 02:07:59 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Chen-Yu Tsai <wens@csie.org>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v10 09/11] drm/sun4i: sun6i_mipi_dsi: Add VCC-DSI regulator
 support
Date: Mon, 20 May 2019 14:33:16 +0530
Message-Id: <20190520090318.27570-10-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190520090318.27570-1-jagan@amarulasolutions.com>
References: <20190520090318.27570-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_100804_905349_FEBE8999 
X-CRM114-Status: GOOD (  17.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: bshah@mykolab.com, powerpan@qq.com, linux-sunxi@googlegroups.com,
 Jagan Teki <jagan@amarulasolutions.com>, michael@amarulasolutions.com,
 linux-amarula@amarulasolutions.com
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
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h |  3 +++
 2 files changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
index 5584e9c2f8bd..a5d73a283ed7 100644
--- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
+++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
@@ -1150,6 +1150,12 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
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
@@ -1223,6 +1229,13 @@ static int sun6i_dsi_remove(struct platform_device *pdev)
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
@@ -1255,6 +1268,7 @@ static int __maybe_unused sun6i_dsi_runtime_suspend(struct device *dev)
 
 	clk_disable_unprepare(dsi->mod_clk);
 	reset_control_assert(dsi->reset);
+	regulator_disable(dsi->regulator);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
index 156523859d82..c76b71259d2e 100644
--- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
+++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
@@ -13,6 +13,8 @@
 #include <drm/drm_encoder.h>
 #include <drm/drm_mipi_dsi.h>
 
+#include <linux/regulator/consumer.h>
+
 struct sun6i_dsi {
 	struct drm_connector	connector;
 	struct drm_encoder	encoder;
@@ -21,6 +23,7 @@ struct sun6i_dsi {
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
