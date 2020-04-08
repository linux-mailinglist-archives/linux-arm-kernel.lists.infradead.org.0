Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D8A1A1F75
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 13:09:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b+G50J3vKohHCMhsg0yWCf+yYREfeasvM6iJVE1sLOU=; b=USoEzKx8HLb6lr
	HVzHWGFB23OHN2U1FPPONDOejEhAXod8g1/yoMppO1LUjnk4DUE+HNXyPWa8eLKndTRcfLOUsST03
	l4y8Xq2mcLXDzKuuGkWqR4QMypKROm1Oiyu6bBoMY7Xb2IZn/6esBvgoyLeZdAO0HAMwYnysOBVeB
	9/KFneyz8sn/hM+FCWVLGjw8TtkXhM+ckK522UCd3AK1lysO6cTybl1YQ7Hhku7zDz8wPCNnswrPU
	inhZ6mNX9fEk7EFnvuNLclzaiwZDM6Q9Jrm2FyCMyqwpw0zLh5cQx81LqlE3AyitBVSKe1aXrucdE
	xUXh8zRrKg9DxAotwxRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM8aA-0002Zq-Q1; Wed, 08 Apr 2020 11:09:22 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM8ZI-0001mt-K0
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 11:08:30 +0000
Received: by mail-wr1-x442.google.com with SMTP id p10so7315952wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Apr 2020 04:08:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jeVjBN/6H/gI6gMyuL/+Tdutryht/EUxewf1jqrLbh8=;
 b=CoSrQxuOgUErP6j4vE5Hnof3IlCEsZecLbmey7kO4uUjcv82/taslS3HKv0A+42o5L
 OfbEuUrdi0sjmzf9L9MH44bGbnbnhN2vWSuWO9+xJYWDm2mS2PpB9tDa4GSJWUxr1xxA
 Q8B6NmnYq8CJAjZTwoUszgiOYZ0nNUxeRS6/TuV7+U9ZbMFMgvjwdd3i489E21poNS/e
 qfg63B8lm51EjOhKSrh+40rsC7XGQrzqGvAHzE7ZZZ3sS6llZOha4jGpQBPQ8Y0ZquY+
 YNXfDO3eRm56/YZHWf9E94HQkGmp4nJza9reFnnWVLLTGS50ED2VdfYH+rExUOCIdMJM
 /UGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jeVjBN/6H/gI6gMyuL/+Tdutryht/EUxewf1jqrLbh8=;
 b=Mu5gdvIb8WgeQDYMqK+1FGCO7+0vRUaKyx8xUfRs+gFB5pz7LRV442ZRKRCLK8JGx3
 TQPszuYB/GehsYHpYyk67HjkZMaHhAm1HUPjTzv7A+O9Y0eJR3gTeOvkCAS0Nw+B5N/v
 SKweOBBC48F0yPcpmcJYrjmgJW5VwYwYbS5F3BQJXUjHp8Tu4z6qZbqwKcjdg2cqcEJL
 kgJElY9FScWjUoxxpj1Q3jgfTW7clHJf84rlL7yV+8AAxvL3JvvwYajPfbcc8AJFEnzm
 phEHrq8zm7L4Kn3u4xyW63cIqNU9HTiZwaRFPUmNpl6KmvTdkwf98qBu6dIUq/9/KIcO
 GUDQ==
X-Gm-Message-State: AGi0PuZu68Dz5BVANohks15khbUyyYwivzNpKmnANFdxuBCsfTta2wgZ
 Ic6J+zVgdko7riv4yWpgd7+V4A==
X-Google-Smtp-Source: APiQypLzDqcFeNJoAa/AvreW1err4IF4jkgQFP1M6cVKPw6A9RRXkIJZFlBSKVJUggBN9Dvq+Tnp2g==
X-Received: by 2002:a5d:4306:: with SMTP id h6mr7558068wrq.234.1586344107109; 
 Wed, 08 Apr 2020 04:08:27 -0700 (PDT)
Received: from localhost.localdomain ([37.120.50.78])
 by smtp.gmail.com with ESMTPSA id i8sm37596253wrb.41.2020.04.08.04.08.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 04:08:26 -0700 (PDT)
From: Robert Foss <robert.foss@linaro.org>
To: Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Fabio Estevam <festevam@gmail.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Sakari Ailus <sakari.ailus@iki.fi>, Marco Felsch <m.felsch@pengutronix.de>,
 Tomasz Figa <tfiga@chromium.org>, Maxime Ripard <maxime@cerno.tech>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 3/3] media: ov8856: Implement sensor module revision
 identification
Date: Wed,  8 Apr 2020 13:08:16 +0200
Message-Id: <20200408110816.2712841-4-robert.foss@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200408110816.2712841-1-robert.foss@linaro.org>
References: <20200408110816.2712841-1-robert.foss@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_040828_660817_506906E2 
X-CRM114-Status: GOOD (  12.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

- Changes since v3:
  * Actually add module revision 2A

- Changes since v2:
  * Add module revision 2A
  * Sakari: Remove ov8856_check_revision()
  * Sakari: Stop EEPROM streaming mode

 drivers/media/i2c/ov8856.c | 53 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/drivers/media/i2c/ov8856.c b/drivers/media/i2c/ov8856.c
index 473d3245344a..de0b484b85d0 100644
--- a/drivers/media/i2c/ov8856.c
+++ b/drivers/media/i2c/ov8856.c
@@ -32,6 +32,19 @@
 #define OV8856_MODE_STANDBY		0x00
 #define OV8856_MODE_STREAMING		0x01
 
+/* module revisions */
+#define OV8856_2A_MODULE		0x01
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
@@ -1152,6 +1165,46 @@ static int ov8856_identify_module(struct ov8856 *ov8856)
 		return -ENXIO;
 	}
 
+	ret = ov8856_write_reg(ov8856, OV8856_REG_MODE_SELECT,
+			       OV8856_REG_VALUE_08BIT, OV8856_MODE_STREAMING);
+	if (ret)
+		return ret;
+
+	ret = ov8856_write_reg(ov8856, OV8856_OTP_MODE_CTRL,
+			       OV8856_REG_VALUE_08BIT, OV8856_OTP_MODE_AUTO);
+	if (ret) {
+		dev_err(&client->dev, "failed to set otp mode");
+		return ret;
+	}
+
+	ret = ov8856_write_reg(ov8856, OV8856_OTP_LOAD_CTRL,
+			       OV8856_REG_VALUE_08BIT,
+			       OV8856_OTP_LOAD_CTRL_ENABLE);
+	if (ret) {
+		dev_err(&client->dev, "failed to enable load control");
+		return ret;
+	}
+
+	ret = ov8856_read_reg(ov8856, OV8856_MODULE_REVISION,
+			      OV8856_REG_VALUE_08BIT, &val);
+	if (ret) {
+		dev_err(&client->dev, "failed to read module revision");
+		return ret;
+	}
+
+	dev_info(&client->dev, "OV8856 revision %x (%s) at address 0x%02x\n",
+		val,
+		val == OV8856_2A_MODULE ? "2A" :
+		val == OV8856_1B_MODULE ? "1B" : "unknown revision",
+		client->addr);
+
+	ret = ov8856_write_reg(ov8856, OV8856_REG_MODE_SELECT,
+			       OV8856_REG_VALUE_08BIT, OV8856_MODE_STANDBY);
+	if (ret) {
+		dev_err(&client->dev, "failed to exit streaming mode");
+		return ret;
+	}
+
 	return 0;
 }
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
