Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C36C5B968
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 12:50:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VCuVqZ/RRNjKF11DTBpqzLd58BVmBT10Qm6Z3dKvlbw=; b=ok4iYN71xdZ4Ng
	EL3A219eJw9PvQzJGo4OuOJTicIy/g5jTuG9hle4UN7rvxprMhaJGADtO9RuMHmfkdG3CzD6wjVLT
	a1cTqVlPNTS/zjrGMspUVvxwOe/WbWitnUgXbS8qinXV8XNEV19Tjelsr0/8QW8tV6KZwRhHKc2zA
	gUmbeRIFVMqSRRbO8M0KklqZd9CueWnpsEbd76G2+JoNFjNzixl+ll2aBJ+KLU2KxE5VtXLl3f21Q
	OJyQJHr2oJ9AP0ISLH/88gDZlIlZIE1YFbujkiL5b6VB4qhCyqQH5WfreOwCsM8agD1i450Ct7a7M
	BKbrOWklGuE07ht2YAzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhttG-00020R-NW; Mon, 01 Jul 2019 10:50:30 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhtqQ-0006h9-S9
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 10:47:40 +0000
Received: by mail-wr1-x441.google.com with SMTP id v14so13270369wrr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jul 2019 03:47:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cDNMs7vyeGU4ItBEGrxn4uIQX4icW4tE6CY0BwZzeYU=;
 b=F2tVnR2jB1XsZNfj2okEZqzs3xC3S6Oouj9gTyIXZeHtZkiw7Tr7BpMKwvWpEsrnEF
 9r0B+gGVGc/sGn7hHLtY8ANc5U1LcH+3Y1eCtdPqJfPltCwiMBEkgJ9G+OKTHAaZlJ48
 yma5ZbqOeVvZh0Eg0T9x+OQQhHnKlMoCgEkD9vYf9NMkRZI3nDx6/gIw2WceJc8G42Wg
 YIsplADMwrUIO7ccZkoaRCM8QfNQjENnDuZVZQNBHjTEE1TlicwLy/mShIMkXuMPsdgV
 Wc53lZRkmtAimiE45onkPUne/3lB73K3/Onicirxd0UcJgqg9IFAhnN9PEwJZzHlgdBH
 SXmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cDNMs7vyeGU4ItBEGrxn4uIQX4icW4tE6CY0BwZzeYU=;
 b=mF4gdFYtbA++snyHFRPca4PZWhO+dAjO3rc1qWZ4iYfjk60WuI7V3H/1LX8VJRD4nv
 +CW/JW/fGBfLRk+Id7ORi8cyKhQvp1u9Wfp0qM6xL3ng9Wt2V/9OY0ssfkwj0RgRB4rJ
 ma5u+rf5lhjMN5yoggmVY4oJL5wH0Vw/NtP/A5Rduk6/XNZr+xqXAzFUtIH1SL0hJ8lG
 HhF14wjipfJrzQWR+uRa4KrNHcFMmsV4oXEt7bn4vJsHOmnUeLY750KXuQWk+YB9AN1l
 SgnOBifmLhuil4kXTR8qhfYY6IUhhYRdwtULB4ogq13XPvMcAt3YltIwlBrrTiyT1R+5
 rPKw==
X-Gm-Message-State: APjAAAUyeIiCAE34YJJkrVXuE3y1oa1Eujs6GWe0I8PRqzzaHS5Awj4N
 GBU+Xz+lUQsBy1EZqNLz+ZlZhA==
X-Google-Smtp-Source: APXvYqxpvZ+wXD54f65Y9xIdncQZjnJsorwD7241UA/QyH8HN4LyX5o51WdwgdOmqi81S5Pu3reXYQ==
X-Received: by 2002:a5d:5112:: with SMTP id s18mr17922728wrt.111.1561978052849; 
 Mon, 01 Jul 2019 03:47:32 -0700 (PDT)
Received: from localhost.localdomain (176-150-251-154.abo.bbox.fr.
 [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id d24sm11658802wra.43.2019.07.01.03.47.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 01 Jul 2019 03:47:31 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: jbrunet@baylibre.com,
	khilman@baylibre.com,
	linux-media@vger.kernel.org
Subject: [RFC 08/11] media: platform: meson-ao-cec-g12a: add support for SM1
Date: Mon,  1 Jul 2019 12:47:02 +0200
Message-Id: <20190701104705.18271-9-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190701104705.18271-1-narmstrong@baylibre.com>
References: <20190701104705.18271-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_034734_950069_141FDFE4 
X-CRM114-Status: GOOD (  15.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for the Amlogic SM1 SoC Family to the G12A AO-CECB
derivative.

It only adds a single init register.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/media/platform/meson/ao-cec-g12a.c | 37 +++++++++++++++++++++-
 1 file changed, 36 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/meson/ao-cec-g12a.c b/drivers/media/platform/meson/ao-cec-g12a.c
index 3620a1e310f5..1c696a126ee8 100644
--- a/drivers/media/platform/meson/ao-cec-g12a.c
+++ b/drivers/media/platform/meson/ao-cec-g12a.c
@@ -121,6 +121,9 @@
 #define CECB_CTRL_TYPE_NEXT	2
 
 #define CECB_CTRL2		0x01
+
+#define CECB_CTRL2_RISE_DEL_MAX	GENMASK(4, 0)
+
 #define CECB_INTR_MASK		0x02
 #define CECB_LADD_LOW		0x05
 #define CECB_LADD_HIGH		0x06
@@ -165,6 +168,11 @@
 
 #define CECB_WAKEUPCTRL		0x31
 
+struct meson_ao_cec_g12a_data {
+	/* Setup the internal CECB_CTRL2 register */
+	bool				ctrl2_setup;
+};
+
 struct meson_ao_cec_g12a_device {
 	struct platform_device		*pdev;
 	struct regmap			*regmap;
@@ -175,6 +183,7 @@ struct meson_ao_cec_g12a_device {
 	struct cec_msg			rx_msg;
 	struct clk			*oscin;
 	struct clk			*core;
+	const struct meson_ao_cec_g12a_data *data;
 };
 
 static const struct regmap_config meson_ao_cec_g12a_regmap_conf = {
@@ -620,6 +629,10 @@ static int meson_ao_cec_g12a_adap_enable(struct cec_adapter *adap, bool enable)
 	regmap_update_bits(ao_cec->regmap, CECB_GEN_CNTL_REG,
 			   CECB_GEN_CNTL_RESET, 0);
 
+	if (ao_cec->data->ctrl2_setup)
+		regmap_write(ao_cec->regmap_cec, CECB_CTRL2,
+			     FIELD_PREP(CECB_CTRL2_RISE_DEL_MAX, 2));
+
 	meson_ao_cec_g12a_irq_setup(ao_cec, true);
 
 	return 0;
@@ -639,6 +652,7 @@ static int meson_ao_cec_g12a_probe(struct platform_device *pdev)
 	void __iomem *base;
 	int ret, irq;
 
+
 	hdmi_dev = cec_notifier_parse_hdmi_phandle(&pdev->dev);
 	if (IS_ERR(hdmi_dev))
 		return PTR_ERR(hdmi_dev);
@@ -647,6 +661,12 @@ static int meson_ao_cec_g12a_probe(struct platform_device *pdev)
 	if (!ao_cec)
 		return -ENOMEM;
 
+	ao_cec->data = of_device_get_match_data(&pdev->dev);
+	if (!ao_cec->data) {
+		dev_err(&pdev->dev, "failed to get match data\n");
+		return -ENODEV;
+	}
+
 	spin_lock_init(&ao_cec->cec_reg_lock);
 	ao_cec->pdev = pdev;
 
@@ -757,8 +777,23 @@ static int meson_ao_cec_g12a_remove(struct platform_device *pdev)
 	return 0;
 }
 
+static const struct meson_ao_cec_g12a_data ao_cec_g12a_data = {
+	.ctrl2_setup = false,
+};
+
+static const struct meson_ao_cec_g12a_data ao_cec_sm1_data = {
+	.ctrl2_setup = true,
+};
+
 static const struct of_device_id meson_ao_cec_g12a_of_match[] = {
-	{ .compatible = "amlogic,meson-g12a-ao-cec", },
+	{
+		.compatible = "amlogic,meson-g12a-ao-cec",
+		.data = &ao_cec_g12a_data,
+	},
+	{
+		.compatible = "amlogic,meson-sm1-ao-cec",
+		.data = &ao_cec_sm1_data,
+	},
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, meson_ao_cec_g12a_of_match);
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
