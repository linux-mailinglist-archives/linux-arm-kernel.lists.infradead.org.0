Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D2D1BE3C3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 18:26:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KM/Yesz0kaJ4lh95ZiYIScD+J7sVoHlysORrm1eLSS8=; b=d8f8DW/lJWr41Y
	Y7qh7GjrBZ2/mowMz37J5mIPsStRgQh3p/Yvu8Ld5tpO4gZTSqE0IKM1xMPec+/1VEbfaJaYKcukD
	5giYNHpOJIyAg3Tcst9xjjLilIvnuFQ7N35U/3iMfU1ArKaFNfOXh0LV8zLX/8vWzSUwnvVzVjN9f
	yH7ir6d3ER+F2d3sVtahAhHPX6lZRXgdNDhs9Pn2/FydmzsxmFVbsRV3+/yYB5CjGfMCcNL3xl/gL
	nqkgZeR26gilydr8eCJnZk69tubRlj0PfIRf6dNNYbKboRTzNGb2qS/XuKz1A9dBnijbs20hI1JIa
	rV+BD4S26G7rEEOq3ddA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTpXD-00058C-Tk; Wed, 29 Apr 2020 16:26:07 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTpVv-00023h-PU
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 16:24:49 +0000
Received: by mail-wr1-x444.google.com with SMTP id j1so3317031wrt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 09:24:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MJEKgZOpkzSWpFL/ACKo1fDWzWkNEADjm8mRR//fcr8=;
 b=QeNGZtKpDxisjOutQ/9m7p1Y7VyoKTecV5cTKdC48xFGi+jM8I0r5xdcpGxNhh7NHw
 itQVSZ4gIRF3rupZUtgYbbWJjSiTsS5+u62ogIVlLRvJIJJ6R003J1t9x0Eck5qMr4fQ
 NPAS9PUqiMdEtRlk2QgoBSXWaeSfxQjOl0RrLIBQpgLiqg6Uidx1NUZlAtbVMZCNxf0k
 c5eqx11txM3QyslPyeXXmpm2DDYs/DBLl37gr2UBZovCV8/EDBLjcSi0GtWsIPoMCSLL
 IyoDZpANtyYODNwEJ3+u/8cbxKC/IvN1Fds3jE4g59eUT7pE/hpZs10JkGx3Kx0aTUKD
 ExUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MJEKgZOpkzSWpFL/ACKo1fDWzWkNEADjm8mRR//fcr8=;
 b=W3Y6sJiAztRqVrC3hiLe2mmowZFeddi+YP26XhqUOOH0UILgLr0MfhIZbSV8C4bx/X
 b/DHPMx623zlGBkecFwN6mt0GDbxIIiV/HK0V+JmffDGx/8cuFHkn/zcyrtYQMRkd4vs
 QuZgvseiIN+UsrvtHk/CFOuVf6eQW5jwZyqQA+sm3NJys6Ja/pYNsJlia03bQ2t2bflZ
 1Rc/YVB6ZUNjvjRoEosu2+DLaYoB+DIW8q3yc+3BqkDU2z64Q62bFRPBSOPFTH4wRKhR
 3tsweTOGNAcO0wDUcU69HA+5g7QP6e2Q2wrPU4KVev+DbkJ4IDALwk1JDbh73sarMpmG
 HogA==
X-Gm-Message-State: AGi0PubYw5jj/XS82JmNwp7rtEvkws9tuDyK8GCFIIgor8hzRv+C0Ze3
 95oJIWEwlK3lOK27xsAggpg0lQ==
X-Google-Smtp-Source: APiQypJWI3QFx/qs4gwb7UHLzIkML6oEYje5SwO3wUkXBbyxZD0VyxynxsFw3GRGOaMKk0d/A+Lkbw==
X-Received: by 2002:adf:b1d1:: with SMTP id r17mr38235410wra.85.1588177486440; 
 Wed, 29 Apr 2020 09:24:46 -0700 (PDT)
Received: from xps7590.local ([37.120.81.28])
 by smtp.gmail.com with ESMTPSA id h2sm32616554wro.9.2020.04.29.09.24.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 09:24:45 -0700 (PDT)
From: Robert Foss <robert.foss@linaro.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Sakari Ailus <sakari.ailus@iki.fi>, Marco Felsch <m.felsch@pengutronix.de>,
 Maxime Ripard <maxime@cerno.tech>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v6 3/3] media: ov8856: Implement sensor module revision
 identification
Date: Wed, 29 Apr 2020 18:24:37 +0200
Message-Id: <20200429162437.2025699-4-robert.foss@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200429162437.2025699-1-robert.foss@linaro.org>
References: <20200429162437.2025699-1-robert.foss@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_092447_824910_A9A38E9C 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Fabio Estevam <festevam@gmail.com>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>, Robert Foss <robert.foss@linaro.org>,
 Tomasz Figa <tfiga@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Query the sensor for its module revision, and compare it
to known revisions.

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
index 4749dc74d5ad..3f4000aef2ab 100644
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
