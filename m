Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C1418458C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 12:05:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DCc9Hyxt/I5Ru9m60r+M5Au9sm2dqzc/REhWx2q/Q8E=; b=XGKd52RbkFbX+S
	EASc/kBDQZ5+WPrfeQzB0aU+50UacEkxJ7CEDaiT7uppf+Gjj2Mhza4HqBxOW+WIUTdLmp6OCoIM4
	mx5e9YedHJvfrajXbqsDUblDrxBOrHlAnpXUmuUlsJTzhGhirws7c3LsJA9cJnQ5jaglVl7tU/uT7
	qGSgsN1/JbSD8rt7HOgPF+9OmqUl3FBZca50LXnpDeprLkyowG9F2QhVeZ0tDilx8l+CoFI5bqWku
	+q6okinXGDvxhZGp2hfX8EBg9r3JeT/mEogI2gqGCy/X5nG2mlpcwljt79vnv2oPvdiv4UwGCoWhl
	VtIEoV1aoST4prIZ7/Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCi8B-0003YY-P9; Fri, 13 Mar 2020 11:05:31 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCi6w-0001QZ-Qh
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 11:04:16 +0000
Received: by mail-wm1-x342.google.com with SMTP id t13so3431924wmi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 04:04:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KmK9rPbQ7ZkiTZPfd7jr8oEpxHT6uehvlGdRiVCfa9E=;
 b=bHeV3oZzGpOJp9X2/+ayJxINfN/+cGoX+D+XUhTs6Q4RfuCAcephVcJEMljWUqg0oY
 TfV385qnmaVVyq5bXflo/xOe/PW6CJyP7UWZx+Ile8m8rEY48+pmBcBK7vOK/frIvihh
 jJWxEC/zdw6oE6+NhGS7Y8H/sqWrUhsmqilh55QnUxolhvqTSVDJV67t24HGXxksGqmo
 2TVgjbWh3d5khSKPFOyWy8L3nXOtL/siZ07IAxXHCcZioSLCFldpaNLx30kHkN2IATKe
 /kZo0Av80UuI6B3c6Kja3n+wEg4K5XwWh/TC8zULaBHxtjGmpRFxf0aoN+y7As+iRpRe
 wUig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KmK9rPbQ7ZkiTZPfd7jr8oEpxHT6uehvlGdRiVCfa9E=;
 b=nIw0ePonnifiVXI7coOesCmgS1ycuqQ1sxQPuZAzlGljqOjGtEfiAyXfTxDazhpELQ
 PJG2lm2lQlQRsX02R1Y0ruDSHQJ/SPF5z6gZ/LruVTKzcAXkmCvT6RTUxHkamirTEc7E
 33eH/n7eKTjMtTYQGOXLKCCC91r4eC0Vwl/WxlHsI2bEMgj1qDaI8FwNPHSeFdB9JcKM
 gcGBHSZKLW/R5wtJeReG3jwHKL9jlDq6zIDZHN8IeCas6+FN6sbs5XTqjoTZwMhMEk3S
 pmVy8wddj9xYFaXQHjTG4XLeNKHcpstJm1wRaesxJoFTpWNbaipQa5gglG7UZaHTZWc+
 2vPQ==
X-Gm-Message-State: ANhLgQ0d4YzkCOzk4XcJdiwzl+GAyEkFjXff/LYvg5AD7PI05iQ+F5dH
 OqCMmyNMccd9Bq3i/+eDOranTg==
X-Google-Smtp-Source: ADFU+vsecmaXEqCn3VzdzRxpowdlFf1VRTVp8EqTIdciEiR4i/mJkERoqke1oLtWuG4/wpapMep3Bw==
X-Received: by 2002:a7b:cb17:: with SMTP id u23mr10778712wmj.12.1584097452112; 
 Fri, 13 Mar 2020 04:04:12 -0700 (PDT)
Received: from xps7590.local ([2a02:2450:102f:13b8:c814:5be4:577e:3bd5])
 by smtp.gmail.com with ESMTPSA id r23sm23578052wrr.93.2020.03.13.04.04.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2020 04:04:11 -0700 (PDT)
From: Robert Foss <robert.foss@linaro.org>
To: Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Fabio Estevam <festevam@gmail.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Sakari Ailus <sakari.ailus@iki.fi>, Tomasz Figa <tfiga@chromium.org>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [v2 3/3] media: ov8856: Implement sensor module revision
 identification
Date: Fri, 13 Mar 2020 12:03:50 +0100
Message-Id: <20200313110350.10864-4-robert.foss@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200313110350.10864-1-robert.foss@linaro.org>
References: <20200313110350.10864-1-robert.foss@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_040414_998428_12165C14 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Robert Foss <robert.foss@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Query the sensor for its module revision, and compare it
to known revisions.
Currently only the '1B' revision has been added.

Signed-off-by: Robert Foss <robert.foss@linaro.org>
---
 drivers/media/i2c/ov8856.c | 54 +++++++++++++++++++++++++++++++++-----
 1 file changed, 48 insertions(+), 6 deletions(-)

diff --git a/drivers/media/i2c/ov8856.c b/drivers/media/i2c/ov8856.c
index db61eed223e8..39662d3d86dd 100644
--- a/drivers/media/i2c/ov8856.c
+++ b/drivers/media/i2c/ov8856.c
@@ -34,6 +34,18 @@
 #define OV8856_MODE_STANDBY		0x00
 #define OV8856_MODE_STREAMING		0x01
 
+/* define 1B module revision */
+#define OV8856_1B_MODULE		0x02
+
+/* the OTP read-out buffer is at 0x7000 and 0xf is the offset
+ * of the byte in the OTP that means the module revision
+ */
+#define OV8856_MODULE_REVISION		0x700f
+#define OV8856_OTP_MODE_CTRL		0x3d84
+#define OV8856_OTP_LOAD_CTRL		0x3d81
+#define OV8856_OTP_MODE_AUTO		0x00
+#define OV8856_OTP_LOAD_CTRL_ENABLE	BIT(0)
+
 /* vertical-timings from sensor */
 #define OV8856_REG_VTS			0x380e
 #define OV8856_VTS_MAX			0x7fff
@@ -711,6 +723,25 @@ static int ov8856_test_pattern(struct ov8856 *ov8856, u32 pattern)
 				OV8856_REG_VALUE_08BIT, pattern);
 }
 
+static int ov8856_check_revision(struct ov8856 *ov8856)
+{
+	int ret;
+
+	ret = ov8856_write_reg(ov8856, OV8856_REG_MODE_SELECT,
+			       OV8856_REG_VALUE_08BIT, OV8856_MODE_STREAMING);
+	if (ret)
+		return ret;
+
+	ret = ov8856_write_reg(ov8856, OV8856_OTP_MODE_CTRL,
+			       OV8856_REG_VALUE_08BIT, OV8856_OTP_MODE_AUTO);
+	if (ret)
+		return ret;
+
+	return ov8856_write_reg(ov8856, OV8856_OTP_LOAD_CTRL,
+				OV8856_REG_VALUE_08BIT,
+				OV8856_OTP_LOAD_CTRL_ENABLE);
+}
+
 static int ov8856_set_ctrl(struct v4l2_ctrl *ctrl)
 {
 	struct ov8856 *ov8856 = container_of(ctrl->handler,
@@ -1144,6 +1175,23 @@ static int ov8856_identify_module(struct ov8856 *ov8856)
 		return -ENXIO;
 	}
 
+	/* check sensor hardware revision */
+	ret = ov8856_check_revision(ov8856);
+	if (ret) {
+		dev_err(&client->dev, "failed to check sensor revision");
+		return ret;
+	}
+
+	ret = ov8856_read_reg(ov8856, OV8856_MODULE_REVISION,
+			      OV8856_REG_VALUE_08BIT, &val);
+	if (ret)
+		return ret;
+
+	dev_info(&client->dev, "OV8856 revision %x (%s) at address 0x%02x\n",
+		val,
+		val == OV8856_1B_MODULE ? "1B" : "unknown revision",
+		client->addr);
+
 	return 0;
 }
 
@@ -1254,12 +1302,6 @@ static int ov8856_probe(struct i2c_client *client)
 		return PTR_ERR(ov8856->xvclk);
 	}
 
-	ret = clk_set_rate(ov8856->xvclk, OV8856_XVCLK_24);
-	if (ret < 0) {
-		dev_err(&client->dev, "failed to set xvclk rate (24MHz)\n");
-		return ret;
-	}
-
 	ov8856->reset_gpio = devm_gpiod_get(&client->dev, "reset",
 					       GPIOD_OUT_HIGH);
 	if (IS_ERR(ov8856->reset_gpio)) {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
