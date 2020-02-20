Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37BB7166941
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 21:58:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/g4wlUV9Pa7uQk9DE77bE0remf8j4sgXzWlTAe53dTQ=; b=dB1mxMKMZz3HX+
	zb44LCBrXaF+18ecCa+zToywS9CebfmDxhultW4rEOBH4jZEys1dE831GEetY6nmAbB/IOCrETHqe
	4Y4j7WjbfsseJKJGsAGHFPFrrP0PAbpGQ0U+khY6UlixNO2t2FqVgjb7RdluGCjVljXU6yDAOODv4
	sEt9mat9vxMaAUt81hLwCYXcFi0opajc6yQXzj1l6mY/wx1nZVnU0FU/TpMXBATkl2M4RRYz6cpdG
	CLy6jHa6jaXSw6c6K/GhBC/817tKDGCR3/MWnFIohJ75m6bxhc8JK5RaWfzZGhTpSoJyRA9R0tq8g
	6+/6Edas8HVblK5kw+bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4stq-0004HM-F4; Thu, 20 Feb 2020 20:58:22 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4ssr-0003du-NB; Thu, 20 Feb 2020 20:57:23 +0000
Received: by mail-wr1-x441.google.com with SMTP id e8so6180527wrm.5;
 Thu, 20 Feb 2020 12:57:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RG8nTnetEI+zdQjFw+fmF3JKM7yL0FmTV3DulfAKQCE=;
 b=Tw8m8gSMOT8HmDjVje0Qqtmvu1U75EqYkkj4CDyN694mrjiG4H9ixFL2ezGX4KPDP3
 RjqIMJCIlrU/m0Shxaa2uhHl2wTuHEFrA/kHFDRSTPMlEKfIWben3M4DFLBuw6204jVH
 iTuKVmWjSCBJr04vHF7OQcG73RbDcNi+T4WQtGbPHEwnhg4ioIebtxFg/2etrbwniV8Z
 HZEGb5wo+0xV8CYGYPyAoIZT3j6IJrBTt1glz3IaW9CBQpuFO03JuAkS5OfG6GH8ppkL
 hEQywUFRlH6qC359qrWtBjGugkoIYB3bc31prtrRyNhxwPULco1Mb3dkG1DM8Ydozbeu
 TqxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RG8nTnetEI+zdQjFw+fmF3JKM7yL0FmTV3DulfAKQCE=;
 b=Soklya1OU8xNuERmwsQqAq7DXKu+v2XX+6Xp6OBx9yqwpn5Wg+szG7+iMWn8U6SDeJ
 MLW1aSYamHIwZbB8qTwQ1mz9XaJDwHSczB7YpdeRuCbj6crGBqJhL3j3FPUZoSphfdVO
 nDna7OMF4xZThD1jlczfAQhoHSl+QWzFuAJgXMlxJeRktzIe9LhZUirg0sGe7nvkef7I
 y0qaNUDlDqPDXzo7EFM3h9xHYFafS5zQj92Ged5eztqTPanKfFhRJ6VQV9a7itkczFxu
 Y9LT4GK51/88T2izbikb2Oek4jjY1MSvOrVZJQJNwpo0mZ7FhleDVziCNMuzWQ4hRTBK
 mTwA==
X-Gm-Message-State: APjAAAVnqGwXMIknPRym1TAXtNjAom/Hsf0BnoqWtdVaQ/+45Y9hADP3
 eHh4at4h427DSN/NJhMhbvg=
X-Google-Smtp-Source: APXvYqxlxFGLAA9Vo8M059FO6ksBPW7ZfiFJySSp6CnBQQsFIx7JY0Gf28LdZvkjqbiU1JCkeMKvAQ==
X-Received: by 2002:adf:ecc2:: with SMTP id s2mr44990985wro.263.1582232240472; 
 Thu, 20 Feb 2020 12:57:20 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1373A1900428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:373a:1900:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id a184sm695039wmf.29.2020.02.20.12.57.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Feb 2020 12:57:19 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: jbrunet@baylibre.com, broonie@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, alsa-devel@alsa-project.org,
 devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org
Subject: [PATCH 2/3] ASoC: meson: aiu: introduce a struct for platform
 specific information
Date: Thu, 20 Feb 2020 21:57:10 +0100
Message-Id: <20200220205711.77953-3-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200220205711.77953-1-martin.blumenstingl@googlemail.com>
References: <20200220205711.77953-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_125721_755824_3D0887BC 
X-CRM114-Status: GOOD (  14.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: lgirdwood@gmail.com,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, tiwai@suse.com, perex@perex.cz,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introduce a struct aiu_platform_data to make the driver aware of
platform specific information. Convert the existing check for the
internal stereo audio codec (only available on GXL) to this new struct.
Support for the 32-bit SoCs will need this as well because the
AIU_CLK_CTRL_MORE register doesn't have the I2S divider bits (and we
need to use the I2S divider from AIU_CLK_CTRL instead).

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 sound/soc/meson/aiu.c | 19 ++++++++++++++++---
 sound/soc/meson/aiu.h |  5 +++++
 2 files changed, 21 insertions(+), 3 deletions(-)

diff --git a/sound/soc/meson/aiu.c b/sound/soc/meson/aiu.c
index d3e2d40e9562..38209312a8c3 100644
--- a/sound/soc/meson/aiu.c
+++ b/sound/soc/meson/aiu.c
@@ -273,6 +273,11 @@ static int aiu_probe(struct platform_device *pdev)
 	aiu = devm_kzalloc(dev, sizeof(*aiu), GFP_KERNEL);
 	if (!aiu)
 		return -ENOMEM;
+
+	aiu->platform = device_get_match_data(dev);
+	if (!aiu->platform)
+		return -ENODEV;
+
 	platform_set_drvdata(pdev, aiu);
 
 	ret = device_reset(dev);
@@ -322,7 +327,7 @@ static int aiu_probe(struct platform_device *pdev)
 	}
 
 	/* Register the internal dac control component on gxl */
-	if (of_device_is_compatible(dev->of_node, "amlogic,aiu-gxl")) {
+	if (aiu->platform->has_acodec) {
 		ret = aiu_acodec_ctrl_register_component(dev);
 		if (ret) {
 			dev_err(dev,
@@ -344,9 +349,17 @@ static int aiu_remove(struct platform_device *pdev)
 	return 0;
 }
 
+static const struct aiu_platform_data aiu_gxbb_pdata = {
+	.has_acodec = false,
+};
+
+static const struct aiu_platform_data aiu_gxl_pdata = {
+	.has_acodec = true,
+};
+
 static const struct of_device_id aiu_of_match[] = {
-	{ .compatible = "amlogic,aiu-gxbb", },
-	{ .compatible = "amlogic,aiu-gxl", },
+	{ .compatible = "amlogic,aiu-gxbb", .data = &aiu_gxbb_pdata },
+	{ .compatible = "amlogic,aiu-gxl", .data = &aiu_gxl_pdata },
 	{}
 };
 MODULE_DEVICE_TABLE(of, aiu_of_match);
diff --git a/sound/soc/meson/aiu.h b/sound/soc/meson/aiu.h
index 06a968c55728..ab003638d5e5 100644
--- a/sound/soc/meson/aiu.h
+++ b/sound/soc/meson/aiu.h
@@ -27,11 +27,16 @@ struct aiu_interface {
 	int irq;
 };
 
+struct aiu_platform_data {
+	bool has_acodec;
+};
+
 struct aiu {
 	struct clk *pclk;
 	struct clk *spdif_mclk;
 	struct aiu_interface i2s;
 	struct aiu_interface spdif;
+	const struct aiu_platform_data *platform;
 };
 
 #define AIU_FORMATS (SNDRV_PCM_FMTBIT_S16_LE |	\
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
