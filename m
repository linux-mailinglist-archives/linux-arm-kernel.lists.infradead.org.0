Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C859B103866
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 12:15:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8D3LCzuv9Vhk6aw9kzUWF0tze0CJLzHPHAs66y92Px0=; b=s2lU+apd+Sl5UV
	4NgmRPkXDq2MXdozmEngOP4Hu9ynniq/PhJg2ycuLNT7LkY7By5T1eUdUCxmz/fX5MktR+ckCUcEB
	IlQJvWtX2HPY8TZXf2SJ8ICYH2XGbr0MbhqEg/qtkAUGrwuy7LqIYpPsMeU+uKp8ZqGNVlJ71DdEn
	qk0U1ANGz0knRxy2NNJIPP04PQ2Lo3M16QV8wRWH9jWV0r9BKh8T4fyFvnw0BAkXNViOmXj26/Ji0
	zpoWddxKNIPeECoT/p518caDz2Be/Z9PK8hR1v4LRL2ewld8ugWQ9hMUITAvFe5FfnZjYjP7KJIZx
	E5VlKhJMb8YOkeTwoNTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXNxE-0008WQ-Fu; Wed, 20 Nov 2019 11:15:24 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXNwU-0006pY-91
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 11:14:41 +0000
Received: by mail-wr1-x444.google.com with SMTP id i12so1471400wrn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 03:14:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UaaaJx+p0JcZMcJnhGqWQZjIziF6Ba/MI0EsQk5V9qA=;
 b=TiQtiHkg0RMZ4S1Hs+toam+n7rYmoAgGqr2fC0USfYF5jbHTN26ImCnqI+q6vBmfWC
 DPjb+lCTY9oewXNbiW/iLqfrdOhTSyLYUfZFtalDNjXTBp7qe544NZwVvg3nUPeVP36Y
 Zb6xGy99sZg42k9nanEDwH0/H43gZBKK1FekzfDRXJpGAPGWUVbdSx+AK/IhzMZXDCbn
 vlO+4HhsJgJLHcdWQVLJPXN3SLHR6K1YQQxyqQEiKc6A7VXWuXV5STmD1U0BhbFtO350
 9lOT0q2m+fPKelLaCjuzXVltIzPrdVOa2Ep1VUqmtYSyn4Zbah6jGKlEwzh75/ePaHuO
 21iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UaaaJx+p0JcZMcJnhGqWQZjIziF6Ba/MI0EsQk5V9qA=;
 b=jWOQ/Yp3e1k5m+M/hz8SOw/zcfJNX9TGARR2x3vasgGNpJ7/29ojzKjMqVdMmUO1BN
 q/DRGp9FYb8X4KbtH0OkcCn4ItUTCooSp61T1Jfr7NUzAk2eB+O0NRY88qxns6xiGJOQ
 9VP+JxZ6RAqptlmz2DlWwVXOtOc8xkYeRfRN8kwhopCyduXpSYI8z8v/4XMZgAQArpEj
 owtV5gyEvvm9Yg4tbtTXu3QEuOwY84IxsMmaNwSje76VLpaZCP8Jw828rquRxRz5rzJa
 rmQy+dJk+jYAYPsI++mOAJGOqzynmFp99UNP7ymigZyEJBIfI/LAbTwjtSUIjOR8+Yam
 EQDQ==
X-Gm-Message-State: APjAAAXvRcAPFxeyq5HRhuIhXwK+ip7/YMxlxVNLLcP56C1rIc0pZdUO
 6cHqC7kd4cym4pNZG2JhRhWGZQ==
X-Google-Smtp-Source: APXvYqwLPjL06Kr41Bjy6DnwXl4SgLoNVUW1i3UYwiHotB5RWxvZ4emQVFEOMzeVHlniyLpXWeeRww==
X-Received: by 2002:adf:e312:: with SMTP id b18mr2650458wrj.203.1574248476778; 
 Wed, 20 Nov 2019 03:14:36 -0800 (PST)
Received: from bender.baylibre.local
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id u1sm6061748wmc.3.2019.11.20.03.14.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Nov 2019 03:14:36 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: mjourdan@baylibre.com
Subject: [PATCH 3/4] media: meson: vdec: add g12a platform
Date: Wed, 20 Nov 2019 12:14:29 +0100
Message-Id: <20191120111430.29552-4-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191120111430.29552-1-narmstrong@baylibre.com>
References: <20191120111430.29552-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_031438_311947_0E9C6971 
X-CRM114-Status: GOOD (  14.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-amlogic@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Jourdan <mjourdan@baylibre.com>

Add support for the G12A platform by:
- adding the G12A codec support, here MPEG1 & MPEG2
- getting the new hevcf clock for the upcoming HEVC/VP9 decoding support

Signed-off-by: Maxime Jourdan <mjourdan@baylibre.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/staging/media/meson/vdec/vdec.c       | 13 ++++++--
 drivers/staging/media/meson/vdec/vdec.h       |  1 +
 .../staging/media/meson/vdec/vdec_platform.c  | 30 +++++++++++++++++++
 .../staging/media/meson/vdec/vdec_platform.h  |  2 ++
 4 files changed, 44 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/meson/vdec/vdec.c b/drivers/staging/media/meson/vdec/vdec.c
index 0a1a04fd5d13..875a12be9c9e 100644
--- a/drivers/staging/media/meson/vdec/vdec.c
+++ b/drivers/staging/media/meson/vdec/vdec.c
@@ -956,6 +956,8 @@ static const struct of_device_id vdec_dt_match[] = {
 	  .data = &vdec_platform_gxm },
 	{ .compatible = "amlogic,gxl-vdec",
 	  .data = &vdec_platform_gxl },
+	{ .compatible = "amlogic,g12a-vdec",
+	  .data = &vdec_platform_g12a },
 	{}
 };
 MODULE_DEVICE_TABLE(of, vdec_dt_match);
@@ -1003,6 +1005,15 @@ static int vdec_probe(struct platform_device *pdev)
 	if (IS_ERR(core->canvas))
 		return PTR_ERR(core->canvas);
 
+	of_id = of_match_node(vdec_dt_match, dev->of_node);
+	core->platform = of_id->data;
+
+	if (core->platform->revision == VDEC_REVISION_G12A) {
+		core->vdec_hevcf_clk = devm_clk_get(dev, "vdec_hevcf");
+		if (IS_ERR(core->vdec_hevcf_clk))
+			return -EPROBE_DEFER;
+	}
+
 	core->dos_parser_clk = devm_clk_get(dev, "dos_parser");
 	if (IS_ERR(core->dos_parser_clk))
 		return -EPROBE_DEFER;
@@ -1045,8 +1056,6 @@ static int vdec_probe(struct platform_device *pdev)
 		goto err_vdev_release;
 	}
 
-	of_id = of_match_node(vdec_dt_match, dev->of_node);
-	core->platform = of_id->data;
 	core->vdev_dec = vdev;
 	core->dev_dec = dev;
 	mutex_init(&core->lock);
diff --git a/drivers/staging/media/meson/vdec/vdec.h b/drivers/staging/media/meson/vdec/vdec.h
index d811e7976519..0faa1ec4858e 100644
--- a/drivers/staging/media/meson/vdec/vdec.h
+++ b/drivers/staging/media/meson/vdec/vdec.h
@@ -74,6 +74,7 @@ struct amvdec_core {
 	struct clk *dos_clk;
 	struct clk *vdec_1_clk;
 	struct clk *vdec_hevc_clk;
+	struct clk *vdec_hevcf_clk;
 
 	struct reset_control *esparser_reset;
 
diff --git a/drivers/staging/media/meson/vdec/vdec_platform.c b/drivers/staging/media/meson/vdec/vdec_platform.c
index 824dbc7f46f5..7845a889ce24 100644
--- a/drivers/staging/media/meson/vdec/vdec_platform.c
+++ b/drivers/staging/media/meson/vdec/vdec_platform.c
@@ -82,6 +82,30 @@ static const struct amvdec_format vdec_formats_gxm[] = {
 	},
 };
 
+static const struct amvdec_format vdec_formats_g12a[] = {
+	{
+		.pixfmt = V4L2_PIX_FMT_MPEG1,
+		.min_buffers = 8,
+		.max_buffers = 8,
+		.max_width = 1920,
+		.max_height = 1080,
+		.vdec_ops = &vdec_1_ops,
+		.codec_ops = &codec_mpeg12_ops,
+		.firmware_path = "meson/vdec/gxl_mpeg12.bin",
+		.pixfmts_cap = { V4L2_PIX_FMT_NV12M, V4L2_PIX_FMT_YUV420M, 0 },
+	}, {
+		.pixfmt = V4L2_PIX_FMT_MPEG2,
+		.min_buffers = 8,
+		.max_buffers = 8,
+		.max_width = 1920,
+		.max_height = 1080,
+		.vdec_ops = &vdec_1_ops,
+		.codec_ops = &codec_mpeg12_ops,
+		.firmware_path = "meson/vdec/gxl_mpeg12.bin",
+		.pixfmts_cap = { V4L2_PIX_FMT_NV12M, V4L2_PIX_FMT_YUV420M, 0 },
+	},
+};
+
 const struct vdec_platform vdec_platform_gxbb = {
 	.formats = vdec_formats_gxbb,
 	.num_formats = ARRAY_SIZE(vdec_formats_gxbb),
@@ -99,3 +123,9 @@ const struct vdec_platform vdec_platform_gxm = {
 	.num_formats = ARRAY_SIZE(vdec_formats_gxm),
 	.revision = VDEC_REVISION_GXM,
 };
+
+const struct vdec_platform vdec_platform_g12a = {
+	.formats = vdec_formats_g12a,
+	.num_formats = ARRAY_SIZE(vdec_formats_g12a),
+	.revision = VDEC_REVISION_G12A,
+};
diff --git a/drivers/staging/media/meson/vdec/vdec_platform.h b/drivers/staging/media/meson/vdec/vdec_platform.h
index f6025326db1d..7c61b941b39f 100644
--- a/drivers/staging/media/meson/vdec/vdec_platform.h
+++ b/drivers/staging/media/meson/vdec/vdec_platform.h
@@ -15,6 +15,7 @@ enum vdec_revision {
 	VDEC_REVISION_GXBB,
 	VDEC_REVISION_GXL,
 	VDEC_REVISION_GXM,
+	VDEC_REVISION_G12A,
 };
 
 struct vdec_platform {
@@ -26,5 +27,6 @@ struct vdec_platform {
 extern const struct vdec_platform vdec_platform_gxbb;
 extern const struct vdec_platform vdec_platform_gxm;
 extern const struct vdec_platform vdec_platform_gxl;
+extern const struct vdec_platform vdec_platform_g12a;
 
 #endif
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
