Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B081F1CD722
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 13:05:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wq7UJ6S1IUv3f3oeiPuHdXxqHFfbGYmbT6cnA4o4v8c=; b=Z1kw+FvFT7NVjH
	ZO/qwvGGUQAtUFW13O2sHazqfHM7wLd14H9v8VJlgdTzL4z6MbJlz8w6niQ0g4CMXFQ4ezt9DfUTl
	fqGqJHb901Rl54j/ZVohYhWRc9+7KiDwDZGSEn9FsdA7aFNaMOTT92HyuIgPp0y1qAZtx5NYeXfMO
	Jixwqytt8yvYsAoUSy9qi5TyvV7BLfN+tSHvLwaD1vHv9/CFYmrZ7VMJajnwdxVQkdg/x9lZ+G604
	9Cgt1HIWFQpIieCXYxSnzDEj3/UfTaIUGIlqQSJBZAcnBldfvIPYOONophiOLjiIoc/ypM1tPuuSW
	nJHHaurdgwzQKQFHRqIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY6F1-0008Cx-3e; Mon, 11 May 2020 11:04:59 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY6E4-0007Ud-9P
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 11:04:01 +0000
Received: by mail-wr1-x444.google.com with SMTP id k1so10396709wrx.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 04:03:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wjZQiljUYlD33LUnV3Lrp+SSxrgP5GGsdxa2mXlVN0s=;
 b=xdDwNe5DKWOSnokNVlxSSaAnAn266MNyPB8XQaRemI+qdXulB4pdAf40Bg3E1gwDRI
 dQhKll9HDozQBuxfeDGq6EWaolwfXMZzPx7fA2TjrT3kRjs8XxP9lmkX4zpbULq+dQNC
 7pF8Sle/eXAB6Qq/49xffk93p0ro+TrQVx6tjhM4XgRadzOTETgc9VMYa8UCEDW+e9Dh
 n84T1xae73+FCY0nGSwktrencqzRwfULUUdSWa7sPkByONIhik3tIf2dQc05SuUMszlY
 AQ+z08mcQYVp73wDhNxRuoL7LZ0oNqrZ6sDdUtDQoHA7j0Bnf+Cr0Q4Oo5Bv9nDx19Or
 8WOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wjZQiljUYlD33LUnV3Lrp+SSxrgP5GGsdxa2mXlVN0s=;
 b=scuScfWzv0jJxyl6bJdsZPg9rvyib0FGnvCgs9OmpgtqxNYHVB3SCGiG2VPn2FAXYE
 Bnp054XkPwhPkJCNuxrly19hNeUb6a54L22QuQsQ+wmJOeqgMN4E2EV1A2VS16QcWc0C
 nVw/f2nkOJKAW7IZ5UOnmMHOlijo+yeU8/tXFyJ1qx++xQiEE4jz9GO/lZzTt67hl+Em
 9ESiOnRR5hGOV63CjBn+lZWhHFa9b8PAg8f3I6wvz7uSoeTylsUEf845Onoj9SV1+7oG
 yq+fz/a+1P7d+LyRO5bkWjaeqmmgUfRVku2PDTxCvpny0fhMIU7v+TeZ8KSHMjLj3P1O
 YZlg==
X-Gm-Message-State: AGi0PuYXXNuedUX3+FILWU2FYs8UDMFTfcRhT8Ak/zPcxtH7gFa88OFr
 HRO06IcLK9dodvO+HR9K/TtFLw==
X-Google-Smtp-Source: APiQypLkuk0QguA4T+0yy7di/0ztJ/wpeDgCX7kAIsO9jmlBqjYPQS9nKV5nkRg7LCJvi4UP3hIJDQ==
X-Received: by 2002:a5d:4389:: with SMTP id i9mr18918350wrq.374.1589195038813; 
 Mon, 11 May 2020 04:03:58 -0700 (PDT)
Received: from localhost.localdomain ([37.120.63.158])
 by smtp.gmail.com with ESMTPSA id z18sm7046584wmk.46.2020.05.11.04.03.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 04:03:58 -0700 (PDT)
From: Robert Foss <robert.foss@linaro.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Sakari Ailus <sakari.ailus@iki.fi>, Marco Felsch <m.felsch@pengutronix.de>,
 Maxime Ripard <maxime@cerno.tech>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v8 3/3] media: ov8856: Implement sensor module revision
 identification
Date: Mon, 11 May 2020 13:03:50 +0200
Message-Id: <20200511110350.11565-4-robert.foss@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200511110350.11565-1-robert.foss@linaro.org>
References: <20200511110350.11565-1-robert.foss@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_040400_347217_91680ABF 
X-CRM114-Status: GOOD (  11.90  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ben Kao <ben.kao@intel.com>, Fabio Estevam <festevam@gmail.com>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>, Robert Foss <robert.foss@linaro.org>,
 Tomasz Figa <tfiga@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Query the sensor for its module revision, and compare it
to known revisions.

Currently 2A and 1B revision indentification is supported.

Signed-off-by: Robert Foss <robert.foss@linaro.org>
---

- Changes since v7:
  * Marco: Align broken line

- Changes since v3:
  * Actually add module revision 2A

- Changes since v2:
  * Add module revision 2A
  * Sakari: Remove ov8856_check_revision()
  * Sakari: Stop EEPROM streaming mode

 drivers/media/i2c/ov8856.c | 53 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/drivers/media/i2c/ov8856.c b/drivers/media/i2c/ov8856.c
index 68cf2d6c5804..1657e03d9a9d 100644
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
@@ -1156,6 +1169,46 @@ static int ov8856_identify_module(struct ov8856 *ov8856)
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
+		 val,
+		 val == OV8856_2A_MODULE ? "2A" :
+		 val == OV8856_1B_MODULE ? "1B" : "unknown revision",
+		 client->addr);
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
