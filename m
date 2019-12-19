Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A4751268F7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 19:23:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zFfz+11v7iRYXRNReD1AonBzdTiSIE5uiXrJqeQLKH4=; b=BalCluZ76tO4wMrYarY+QzPa3f
	Kz9bo8c8rhhzJfVNKbYskwsnVIyGCVJ5qM63V03+UjD7fcwsbyPW1TfTBsoJHliJjII+yMucF/7p9
	N/keAa+CPzrnmJOQWNaxbK1Kw+EyYYaO2fB0gikvhR7/CfnCBPchy4QwlcaIB62JPtkSymMk/KXnf
	mjucWnXgwy4nPkjZpVO/cuwyKMp1IhvmXubtrV+2ddIywNgDLPSXGDiglXoJPFrEOewKdFoPp7e7i
	x4u5FpwFrcFfvcSlQLx29s3W2GnqO/fl99A3a25NDNC3LIQKzuPXA5YL2wWslXNEeXC4ADKbyuhbE
	DEYPmtag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii0SZ-0001JX-Sw; Thu, 19 Dec 2019 18:23:39 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii0Ru-0000wk-Cf
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 18:22:59 +0000
Received: by mail-pg1-x544.google.com with SMTP id l24so3563103pgk.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 10:22:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=KMxyNKrwFiypU+Za0PvdEdroSKdNRbPMZobhgZUY7nE=;
 b=iyymSRkQTNB324vLkBnS7VSoRJkH72UREfXNbeNFSewtHmL0P6PHfBuqx+np20dLqm
 pJ0UJ/u1YkgyAvj4pYJv/wqfSaOgFM+Qim1/y54eNZ5aso+wYDF5/Nz0PpuuesrXE7/X
 TTkPdjkg9GSOr/mm75SMnBp0I2RQ+6Xx8l40WBW1aAZMibF19pO8lgqE+TV2gQ1RKP6L
 FA/F1iSK1BoFbeDtd+/nAVjUuK2CvoU9QsVitgon4SPe7Z+PoCUOz0aAFVLOStTz5g+j
 11Ha1A2n2+j/45Zxe76ZG5GIhQFe2FoZvdJZjOnFbMexUGqXshCUAg0v2hzJVXVGZxVC
 4cAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=KMxyNKrwFiypU+Za0PvdEdroSKdNRbPMZobhgZUY7nE=;
 b=Js1SiWhm3WG8wyKwbtzIhKiWibV4I54De+bLqW6cJiLqlOcgj61saaY1B+H2rQ1nwO
 CG9/oPZoc8D1YYSQQTaZ5fSKqoMERQ94bGx9gl0b8uozt1K5z+tXarZ3b2z8Fcc/NuS1
 f+/5UV1kpFLL4nbcNTlgVVe/J1oAp17YXuq+FGSGw522HRCo7vN9/GTq3bKjzsncGsL2
 2SvtwzWBhOAmSaRkJtd6UgEp4RdMwi74pZLejLluAN1U6zHJmWqG78J25BJN8M2J3L6r
 W6kpeayMHpbS5+ykpSeMxYqYdBv+3sUj13sl8ZEr5ntZgbq3zqtHfFzqpMDhLrXqzYLP
 UtPQ==
X-Gm-Message-State: APjAAAVLFiTwdtDuyT4Jl26qGbHYsWtNvROaHxk6+tk4nTtpUviAyW4c
 IhPIVXNZuvm7vxi6JmFLDDGAWD3x8g==
X-Google-Smtp-Source: APXvYqzG1vcXDyCDAjAHlqsGirk7Ni9aKqXLQ+RzNVSCFt0yvdRP9IcU/BWFVEohbUy0NUYg5RcGmA==
X-Received: by 2002:a63:f551:: with SMTP id e17mr10230035pgk.162.1576779775598; 
 Thu, 19 Dec 2019 10:22:55 -0800 (PST)
Received: from localhost.localdomain
 ([2409:4072:6010:65a5:a416:e9bd:178a:9286])
 by smtp.gmail.com with ESMTPSA id i3sm9085735pfg.94.2019.12.19.10.22.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 10:22:55 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: mchehab@kernel.org,
	sakari.ailus@iki.fi
Subject: [PATCH v2 2/6] media: i2c: imx290: Add support for test pattern
 generation
Date: Thu, 19 Dec 2019 23:52:18 +0530
Message-Id: <20191219182222.18961-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191219182222.18961-1-manivannan.sadhasivam@linaro.org>
References: <20191219182222.18961-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_102258_474460_F90EF93A 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for generating following test patterns by IMX290:

* Sequence Pattern 1
* Horizontal Color-bar Chart
* Vertical Color-bar Chart
* Sequence Pattern 2
* Gradation Pattern 1
* Gradation Pattern 2
* 000/555h Toggle Pattern

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/media/i2c/imx290.c | 41 +++++++++++++++++++++++++++++++++++++-
 1 file changed, 40 insertions(+), 1 deletion(-)

diff --git a/drivers/media/i2c/imx290.c b/drivers/media/i2c/imx290.c
index 532ad488b801..96eea0aafd3e 100644
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
@@ -99,6 +106,17 @@ static const struct regmap_config imx290_regmap_config = {
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
@@ -394,6 +412,22 @@ static int imx290_set_ctrl(struct v4l2_ctrl *ctrl)
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
@@ -881,7 +915,7 @@ static int imx290_probe(struct i2c_client *client)
 
 	mutex_init(&imx290->lock);
 
-	v4l2_ctrl_handler_init(&imx290->ctrls, 3);
+	v4l2_ctrl_handler_init(&imx290->ctrls, 4);
 
 	v4l2_ctrl_new_std(&imx290->ctrls, &imx290_ctrl_ops,
 			  V4L2_CID_GAIN, 0, 72, 1, 0);
@@ -899,6 +933,11 @@ static int imx290_probe(struct i2c_client *client)
 					       INT_MAX, 1,
 					       imx290_modes[0].pixel_rate);
 
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
