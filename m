Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9664279342
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 20:41:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yVPOS4Z7S0d3uX6l9VeBoJwIa4ga4Ca3GoYDFN+E5ug=; b=u81E5qewtt4S3v
	rWMNWTmpd/Eh7KULHwRcbDTUbrxn4THwtdb4owQKR2ij87nzYJJODk6mmNKA+XSrax0uMhxYJS54y
	DikWglc8U9VrvyaHdiEFTq+JT3B7bAPPatkJXWwYPZbSpDKEP82joig6OaG8cWmRavK0YOrh7YZZs
	ksLOZBD8XvEoH3eEv4+YIK7uqNwar2GYwZSJ/oTGTjeh5qzntkZb9XUn2tFzo96nKXC3kHFeN+ol3
	Wn5bzJSRFZG9+lFl5jXW3e0DI8fkGNOnAZNv2q2ZoOvW4P1UXbg0sS92GQ4IeZw2Yb5+/ZBx7o1St
	8k8E03qNB1s/u1FIhoLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsAa8-00042b-8U; Mon, 29 Jul 2019 18:41:12 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsAZP-0003fy-LA
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 18:40:30 +0000
Received: by mail-wr1-x444.google.com with SMTP id p13so62923558wru.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 11:40:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uXX4nW8uApaN5prOQ3tt1oKZQOOA4D/lJ+3xaeto/As=;
 b=Y/mudMCy9V+QjQt70RqfnbUHYMk4Ss8CSL/LCgTrpNOEKgAFWdvekQ6IPJuwsuE2Nv
 NZR/nlBFLC6XbOGVgB8DY/igh/RI8GpWrWYD06FAlUO43DOx2Y9KrTXMmW0E+eoasZXy
 VaumqO+Vsa76E7Us20um8r5I6JfYvohu+5IEuN99fB2jZ7ZdGxt2XKJSkU34O76Kc4CY
 f6+GPbJJd1XSVQsw1E0vyQTn0dfG7FVjEzN28PtmAxcUoqDsW6BQiPmENJqDUPBrA0x6
 KW0UxHOxTHJmTOzo8tw+0O07pUXB/rQvrsVV2wi5eyRSV8FYOFBIsw8N2C4UA4YX4MyQ
 GzOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uXX4nW8uApaN5prOQ3tt1oKZQOOA4D/lJ+3xaeto/As=;
 b=EO1fqtUcjLEUdqFPCMf6Z8IaugK13J9UY7MmGGgFBycjN7W/0DruGSffCy2gg+J+Wm
 FshkGuALBRMbLP+PalMoK10pZ4re7cE1jCp/vHWhLXa62ONiccV2TRLkZp20ULJPZKj2
 qwfz71T/Y9ZuVGE91hz+jxnxAAKDdqxY0izAz+sg0Be5EnmYFBcZdu+5zRjKHKiMcOOf
 8OgcEBc5gUFcwoc+9wrXSQQwERoDU/V1/5RdtegC1M7N8L0RfDgXIn5l3i1y9tSn5PtO
 vA2Pihfa+crtK6WyKfIHO5glg9qTZqofzEorLXIg+XpAeK65hdVi9Gb/ppVI0D33L70V
 dQ1w==
X-Gm-Message-State: APjAAAV+c+Vo90SdGV2MkEbknSVRsJfPHbBR1NiqCb6O8XcvmoMfTug8
 /CO1tzUBUOq8wavG5scn33eICQ==
X-Google-Smtp-Source: APXvYqyT7+E9yhALDT4WJ7fusIqGWt+HjrfbfJRzWjySTaW2SjRWy2CfoC7XRRlMgCVm6rS5+/QCfQ==
X-Received: by 2002:a5d:6b11:: with SMTP id v17mr45001624wrw.323.1564425626227; 
 Mon, 29 Jul 2019 11:40:26 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:f78c:d00:1570:f96d:dab8:76ae])
 by smtp.gmail.com with ESMTPSA id g8sm60735790wmf.17.2019.07.29.11.40.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 29 Jul 2019 11:40:25 -0700 (PDT)
From: Carlo Caione <ccaione@baylibre.com>
To: srinivas.kandagatla@linaro.org, khilman@baylibre.com,
 narmstrong@baylibre.com, robh+dt@kernel.org, tglx@linutronix.de,
 jbrunet@baylibre.com, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH 1/5] nvmem: meson-efuse: Move data to a container struct
Date: Mon, 29 Jul 2019 19:39:37 +0100
Message-Id: <20190729183941.18164-2-ccaione@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190729183941.18164-1-ccaione@baylibre.com>
References: <20190729183941.18164-1-ccaione@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_114027_701833_4A17C2A6 
X-CRM114-Status: GOOD (  13.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Carlo Caione <ccaione@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

No functional changes, just a cleanup commit to tidy up a bit. Move the
nvmem_* and clk structures in a container struct.

Signed-off-by: Carlo Caione <ccaione@baylibre.com>
---
 drivers/nvmem/meson-efuse.c | 47 ++++++++++++++++++++-----------------
 1 file changed, 26 insertions(+), 21 deletions(-)

diff --git a/drivers/nvmem/meson-efuse.c b/drivers/nvmem/meson-efuse.c
index 39bd76306033..9924b98db772 100644
--- a/drivers/nvmem/meson-efuse.c
+++ b/drivers/nvmem/meson-efuse.c
@@ -14,6 +14,12 @@
 
 #include <linux/firmware/meson/meson_sm.h>
 
+struct meson_efuse {
+	struct nvmem_device *nvmem;
+	struct nvmem_config config;
+	struct clk *clk;
+};
+
 static int meson_efuse_read(void *context, unsigned int offset,
 			    void *val, size_t bytes)
 {
@@ -37,21 +43,23 @@ MODULE_DEVICE_TABLE(of, meson_efuse_match);
 static int meson_efuse_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
-	struct nvmem_device *nvmem;
-	struct nvmem_config *econfig;
-	struct clk *clk;
+	struct meson_efuse *efuse;
 	unsigned int size;
 	int ret;
 
-	clk = devm_clk_get(dev, NULL);
-	if (IS_ERR(clk)) {
-		ret = PTR_ERR(clk);
+	efuse = devm_kzalloc(&pdev->dev, sizeof(*efuse), GFP_KERNEL);
+	if (!efuse)
+		return -ENOMEM;
+
+	efuse->clk = devm_clk_get(dev, NULL);
+	if (IS_ERR(efuse->clk)) {
+		ret = PTR_ERR(efuse->clk);
 		if (ret != -EPROBE_DEFER)
 			dev_err(dev, "failed to get efuse gate");
 		return ret;
 	}
 
-	ret = clk_prepare_enable(clk);
+	ret = clk_prepare_enable(efuse->clk);
 	if (ret) {
 		dev_err(dev, "failed to enable gate");
 		return ret;
@@ -59,7 +67,7 @@ static int meson_efuse_probe(struct platform_device *pdev)
 
 	ret = devm_add_action_or_reset(dev,
 				       (void(*)(void *))clk_disable_unprepare,
-				       clk);
+				       efuse->clk);
 	if (ret) {
 		dev_err(dev, "failed to add disable callback");
 		return ret;
@@ -70,21 +78,18 @@ static int meson_efuse_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}
 
-	econfig = devm_kzalloc(dev, sizeof(*econfig), GFP_KERNEL);
-	if (!econfig)
-		return -ENOMEM;
-
-	econfig->dev = dev;
-	econfig->name = dev_name(dev);
-	econfig->stride = 1;
-	econfig->word_size = 1;
-	econfig->reg_read = meson_efuse_read;
-	econfig->reg_write = meson_efuse_write;
-	econfig->size = size;
+	efuse->config.dev = dev;
+	efuse->config.name = dev_name(dev);
+	efuse->config.stride = 1;
+	efuse->config.word_size = 1;
+	efuse->config.reg_read = meson_efuse_read;
+	efuse->config.reg_write = meson_efuse_write;
+	efuse->config.size = size;
+	efuse->config.priv = efuse;
 
-	nvmem = devm_nvmem_register(&pdev->dev, econfig);
+	efuse->nvmem = devm_nvmem_register(&pdev->dev, &efuse->config);
 
-	return PTR_ERR_OR_ZERO(nvmem);
+	return PTR_ERR_OR_ZERO(efuse->nvmem);
 }
 
 static struct platform_driver meson_efuse_driver = {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
