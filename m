Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC5097ADF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 15:35:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oi+GuoZ4SoiekHAKWRIqdU+33Xcre3RlvOy9YDnivFE=; b=knvfcpvWT/OW2T
	T8KqN9BRZ1dmeqVBTIBRsEOF8VIvAHVLhinF5PE9cJWQrJjSlrZ29PwNbekxKxgjMTu8JEj3csyN2
	i3GphLLoSVEqHHXG0uww/t0hZy461M6S2RSBKY05T8hfmN5zJq1nPOJAyKPaEfNZt5q1Ty5pW5zho
	qW4L0Kqetl5h5QpCMl6QTQs23yImzwLYqGltqDbKnzZlxIhmYM46y5ajdDkj3Y+Doyd7cKyA9Pra3
	LEjvnFPVR/nlXAfyKvNr7PfO9ttJkkLzPIRY3Q1uE0KQ2U+hV2MopISDqhTPg0WXJHGblFWt3QWDe
	EKGAMEXhhX8yfZlpnPwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Qm2-0004tM-Bx; Wed, 21 Aug 2019 13:35:38 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Qlm-0004rg-U8
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 13:35:24 +0000
Received: by mail-wm1-x342.google.com with SMTP id g67so2182224wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 06:35:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0t4aa0Nv5R8QXQNa/4oL6xU4iyivDyRHdq6FaUcWExA=;
 b=MugviQXwXIBfUUUyWP6IHkNeW27sYjjEDQvAu4Kqob99Oy6JHdWu/IdUGUPeGCGfzg
 WFe8n/8fdU5BNw46pZoFnqoh17GFEAWHNYYMB5ey8cmfJyChzzPTerVgUwihnNtzfhsy
 7oabi4p6oa09XswN7VE1sWLIwcfHKwBY3kxU36yVKXTtwqrYIsrKSf3YNHAAECz3jrKp
 HCVNvRt/TRFJX6uK9kuKspP8m1jpIkq5AuZO4qt/oyLDdcgtuYSMq3DbN3nQGmCJxEZC
 E1IwJhAeHhQ7mJ2e3Wx94g3emNxDJKAZ7M2SxHXeXgLDWGP3z7NPXU/m+tUvtVPkA/CB
 EU5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0t4aa0Nv5R8QXQNa/4oL6xU4iyivDyRHdq6FaUcWExA=;
 b=VjPU83o+/3DxJ8PbxItEfZW0G0q4v23nczrRMrtL1ODPSqKBZSGgv05RZ1VWzZaRHN
 E9nFK2mtJaBuSHPT45h2wmT3N6KAJYbDd5x2V3Yv/amrzrz1zZ37rIfSUTTYtmxmRoPO
 FcdF1PYNc7hOfN+lcZiQnAhfBW4bze0HZKf7Orjo2fzgBxD3O+2KPl363pfOtAA0a4el
 po8hm6tzW+PIwZV6MbQmUGtqUgaBHjrL67VCkjEyXmCzPEZIhvTinIEBeNk2TaseTTbb
 3aJpSjC1EqcGPjMB3c5DNDJqBLKc9FLiyWB8Qxs2XUCNQnfOMkUIEieWNBTN++fJ5Z67
 8QwQ==
X-Gm-Message-State: APjAAAWeIXSdfRlupDG5U1uXkSGfaz8H8etUi58ysA9PJ+/cPEs/A/a/
 0SHnSVuQM0gh55JORodEemcEHNjMtrNFGQ==
X-Google-Smtp-Source: APXvYqxyYX1ZXPcqBjaYYNfe+ZtSEDIc5N6dN5EPLYh8OWSHD3tWa0RpsBLVponQYB8w7c0bqO089Q==
X-Received: by 2002:a1c:20c3:: with SMTP id g186mr33178wmg.15.1566394521017;
 Wed, 21 Aug 2019 06:35:21 -0700 (PDT)
Received: from bender.baylibre.local
 (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr. [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id g2sm38941908wru.27.2019.08.21.06.35.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 06:35:20 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: balbi@kernel.org
Subject: [PATCH] usb: dwc3: meson-g12a: fix suspend resume regulator
 unbalanced disables
Date: Wed, 21 Aug 2019 15:35:18 +0200
Message-Id: <20190821133518.9671-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_063523_006963_2D5262C2 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When going in suspend, in Device mode, then resuming back leads
to the following:

unbalanced disables for USB_PWR_EN
WARNING: CPU: 0 PID: 163 at ../drivers/regulator/core.c:2590 _regulator_disable+0x104/0x180
Hardware name: Amlogic Meson G12A U200 Development Board (DT)
[...]
pc : _regulator_disable+0x104/0x180
lr : _regulator_disable+0x104/0x180
[...]
Call trace:
 _regulator_disable+0x104/0x180
 regulator_disable+0x40/0x78
 dwc3_meson_g12a_otg_mode_set+0x84/0xb0
 dwc3_meson_g12a_irq_thread+0x58/0xb8
 irq_thread_fn+0x28/0x80
 irq_thread+0x118/0x1b8
 kthread+0xf4/0x120
 ret_from_fork+0x10/0x18

This disables the regulator if enabled on suspend, and the reverse on
resume.

Fixes: c99993376f72 ("usb: dwc3: Add Amlogic G12A DWC3 glue")
Reported-by: Kevin Hilman <khilman@baylibre.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/usb/dwc3/dwc3-meson-g12a.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/dwc3/dwc3-meson-g12a.c b/drivers/usb/dwc3/dwc3-meson-g12a.c
index bca7e92a10e9..12dda04b004d 100644
--- a/drivers/usb/dwc3/dwc3-meson-g12a.c
+++ b/drivers/usb/dwc3/dwc3-meson-g12a.c
@@ -564,7 +564,13 @@ static int __maybe_unused dwc3_meson_g12a_runtime_resume(struct device *dev)
 static int __maybe_unused dwc3_meson_g12a_suspend(struct device *dev)
 {
 	struct dwc3_meson_g12a *priv = dev_get_drvdata(dev);
-	int i;
+	int i, ret;
+
+	if (priv->vbus && priv->otg_phy_mode == PHY_MODE_USB_HOST) {
+		ret = regulator_disable(priv->vbus);
+		if (ret)
+			return ret;
+	}
 
 	for (i = 0 ; i < PHY_COUNT ; ++i) {
 		phy_power_off(priv->phys[i]);
@@ -599,6 +605,12 @@ static int __maybe_unused dwc3_meson_g12a_resume(struct device *dev)
 			return ret;
 	}
 
+       if (priv->vbus && priv->otg_phy_mode == PHY_MODE_USB_HOST) {
+               ret = regulator_enable(priv->vbus);
+		if (ret)
+			return ret;
+	}
+
 	return 0;
 }
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
