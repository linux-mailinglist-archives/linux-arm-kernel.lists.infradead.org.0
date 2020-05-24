Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB561E028F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 21:31:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=y019UZ127J/1ztmi8MZl8kLWC8LRsY3Gwnj9Hfmqff8=; b=JiGI9H4pJLZ4wxoPNdG6w/fA+U
	RvwhLb6jQH9Wx+ipN0R2USKuvs29Tqk4iyUKqqmbt0u0tVZ3MZAdHSzP/uUFGdrs3Omv7bKuDMzGN
	wDcpLNlHXau3y4ffR8TGWuieVh9lgb/1IBtTF0+mYo9Dcscx+SlHm9e3vGY75MRpmzmwFzM+tuYDR
	sxLYi9dZIeBYX6N96wU5H9om75nJ/rDmmOlr/+NMZD7xmEAJuUrDLs0FXRbnCJ9Vzs/Wcsmr6c04v
	tifFXYMHYdhHpNPDm2GlfWaFQs4c0e+vlLzTwk/Zv3h/A2LSDsm/vRdt3b2cxEN6iWHjB8qhCHT5j
	3GePTNEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcwKm-0004Jx-Mt; Sun, 24 May 2020 19:30:56 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcwFq-0006OW-6A
 for linux-arm-kernel@lists.infradead.org; Sun, 24 May 2020 19:25:54 +0000
Received: by mail-lj1-x243.google.com with SMTP id m18so18543356ljo.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 24 May 2020 12:25:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=O54FRskgHK1TR/NZR20bOnPxvK5tJHkKnr+PK9uS494=;
 b=ZRGjv32Ht26WObnCWn+hq3HY6CKuxST8T8n18Gh4vMczrbp0JeHXGSNyKyAOgXBNfn
 a0kXB6yoTRYWCbEbO48bg5bPwd1pu55eV3R3n/KkmCqn7RtPQQnLWTq92ACuznRmud+U
 DUK7mPX+lbIbG9xTXVJHRcOe3XG1q6E+4Tu8OQ9Gaf5uCIEdOobyLRppizHCaXss9nPU
 JjC0CDt/r8CHasczCjZUcfWhpo95wZK7cCQtjyZom4UloEEH5ASCN1StUCJ9vHoxKzxc
 ZaKYZ8QeVOs6B8M8HXt26moWQ+/XAUSLeyREK+/ryH2DsU6oxu3S9VzDobCkcpUAK0mc
 kw8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=O54FRskgHK1TR/NZR20bOnPxvK5tJHkKnr+PK9uS494=;
 b=tE0ZLj+Qn8fZbUghkHobuSB22maIBGOPiSHTyivhIzHmczs2Eqr1V6YKMLD4TZmKU3
 3SNqQ8Efb+pphUWV1lGjhfhWq3tXYiUwrTVpMK5XWnlKmWGBbUqPzWNlxL5nchURuFHU
 BT0YVljvvmCFslcdc6a5z6LB/CvG37wS4Oz9t9Yd8h7t87724th+r/4xFFiRuKp0Zamb
 x+/48VO+uuK7XqhzZlzQu1ObcvjMnZBLjHk4j4ptID7oeQwQgzsihJyrxA9i67C8MxD+
 GRbJe3FGmLFEoizhgcWgQEl8GwG65ZRiRHJN/+qGZn3MCNoanPbDRuDqAaSoPRICVwQd
 cBCw==
X-Gm-Message-State: AOAM5330pjUs3yGVo695u+bInK04g/JmyjWxS1oKrV8E4IuBiup0UFZu
 Z8Z4PVhqEgkQVg5lPIPBa6feRQ==
X-Google-Smtp-Source: ABdhPJwLGeGtJ/7QoEAyHloaq5DdxoRdONb3QzAQODlM4t3p/vwy1q8MVcfdPX1tZySFAecXrrqx2g==
X-Received: by 2002:a2e:8246:: with SMTP id j6mr11735826ljh.54.1590348348560; 
 Sun, 24 May 2020 12:25:48 -0700 (PDT)
Received: from localhost.localdomain (37-144-159-139.broadband.corbina.ru.
 [37.144.159.139])
 by smtp.googlemail.com with ESMTPSA id v10sm3878137lja.23.2020.05.24.12.25.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 May 2020 12:25:48 -0700 (PDT)
From: Andrey Konovalov <andrey.konovalov@linaro.org>
To: mchehab@kernel.org, sakari.ailus@iki.fi, manivannan.sadhasivam@linaro.org
Subject: [PATCH v3 06/10] media: i2c: imx290: Add support for test pattern
 generation
Date: Sun, 24 May 2020 22:25:01 +0300
Message-Id: <20200524192505.20682-7-andrey.konovalov@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200524192505.20682-1-andrey.konovalov@linaro.org>
References: <20200524192505.20682-1-andrey.konovalov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_122550_247998_22D3BC40 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com, peter.griffin@linaro.org,
 Andrey Konovalov <andrey.konovalov@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Add support for generating following test patterns by IMX290:

* Sequence Pattern 1
* Horizontal Color-bar Chart
* Vertical Color-bar Chart
* Sequence Pattern 2
* Gradation Pattern 1
* Gradation Pattern 2
* 000/555h Toggle Pattern

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Signed-off-by: Andrey Konovalov <andrey.konovalov@linaro.org>
---
 drivers/media/i2c/imx290.c | 41 +++++++++++++++++++++++++++++++++++++-
 1 file changed, 40 insertions(+), 1 deletion(-)

diff --git a/drivers/media/i2c/imx290.c b/drivers/media/i2c/imx290.c
index e800557cf423..162c345fffac 100644
--- a/drivers/media/i2c/imx290.c
+++ b/drivers/media/i2c/imx290.c
@@ -26,12 +26,19 @@
 #define IMX290_REGHOLD 0x3001
 #define IMX290_XMSTA 0x3002
 #define IMX290_FR_FDG_SEL 0x3009
+#define IMX290_BLKLEVEL_LOW 0x300a
+#define IMX290_BLKLEVEL_HIGH 0x300b
 #define IMX290_GAIN 0x3014
 #define IMX290_HMAX_LOW 0x301c
 #define IMX290_HMAX_HIGH 0x301d
+#define IMX290_PGCTRL 0x308c
 #define IMX290_PHY_LANE_NUM 0x3407
 #define IMX290_CSI_LANE_MODE 0x3443
 
+#define IMX290_PGCTRL_REGEN BIT(0)
+#define IMX290_PGCTRL_THRU BIT(1)
+#define IMX290_PGCTRL_MODE(n) ((n) << 4)
+
 /* HMAX fields */
 #define IMX290_HMAX_2_1920 0x1130
 #define IMX290_HMAX_4_1920 0x0898
@@ -95,6 +102,17 @@ static const struct regmap_config imx290_regmap_config = {
 	.cache_type = REGCACHE_RBTREE,
 };
 
+static const char * const imx290_test_pattern_menu[] = {
+	"Disabled",
+	"Sequence Pattern 1",
+	"Horizontal Color-bar Chart",
+	"Vertical Color-bar Chart",
+	"Sequence Pattern 2",
+	"Gradation Pattern 1",
+	"Gradation Pattern 2",
+	"000/555h Toggle Pattern",
+};
+
 static const struct imx290_regval imx290_global_init_settings[] = {
 	{ 0x3007, 0x00 },
 	{ 0x3018, 0x65 },
@@ -391,6 +409,22 @@ static int imx290_set_ctrl(struct v4l2_ctrl *ctrl)
 	case V4L2_CID_GAIN:
 		ret = imx290_set_gain(imx290, ctrl->val);
 		break;
+	case V4L2_CID_TEST_PATTERN:
+		if (ctrl->val) {
+			imx290_write_reg(imx290, IMX290_BLKLEVEL_LOW, 0x00);
+			imx290_write_reg(imx290, IMX290_BLKLEVEL_HIGH, 0x00);
+			msleep(10);
+			imx290_write_reg(imx290, IMX290_PGCTRL,
+					 (u8)(IMX290_PGCTRL_REGEN |
+					 IMX290_PGCTRL_THRU |
+					 IMX290_PGCTRL_MODE(ctrl->val)));
+		} else {
+			imx290_write_reg(imx290, IMX290_PGCTRL, 0x00);
+			msleep(10);
+			imx290_write_reg(imx290, IMX290_BLKLEVEL_LOW, 0x3c);
+			imx290_write_reg(imx290, IMX290_BLKLEVEL_HIGH, 0x00);
+		}
+		break;
 	default:
 		ret = -EINVAL;
 		break;
@@ -906,7 +940,7 @@ static int imx290_probe(struct i2c_client *client)
 	 */
 	imx290_entity_init_cfg(&imx290->sd, NULL);
 
-	v4l2_ctrl_handler_init(&imx290->ctrls, 3);
+	v4l2_ctrl_handler_init(&imx290->ctrls, 4);
 
 	v4l2_ctrl_new_std(&imx290->ctrls, &imx290_ctrl_ops,
 			  V4L2_CID_GAIN, 0, 72, 1, 0);
@@ -932,6 +966,11 @@ static int imx290_probe(struct i2c_client *client)
 					       INT_MAX, 1,
 					       imx290_calc_pixel_rate(imx290));
 
+	v4l2_ctrl_new_std_menu_items(&imx290->ctrls, &imx290_ctrl_ops,
+				     V4L2_CID_TEST_PATTERN,
+				     ARRAY_SIZE(imx290_test_pattern_menu) - 1,
+				     0, 0, imx290_test_pattern_menu);
+
 	imx290->sd.ctrl_handler = &imx290->ctrls;
 
 	if (imx290->ctrls.error) {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
