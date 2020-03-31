Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54AB4199A7A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 17:57:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X0gHIXRirjaC+xVMwYMJ2+hhe0at6N3m4X8hfrKak50=; b=aBq/MuRpOCzzaD
	lXRETz3QDK0CSPSyDmrDO8/ckcxKKUjiKE8sqkLkt7RqzIjSxrjBsPGzjn2b5ch6GRQwry8BfTjsL
	tv879yLOUUXs8Am+DEHAp9IwBmSZCFUyD9fA2V9zkjNNtYY0Pk7x2zF71iaF2stkFt2L8KhY5yySt
	UbCF9DKL/QZ9cT7Anm9QjAta3XCgBLktGY00+27cWYRp0By+EIzhnxG1lNEh5NYqlrC9k6Rsgsy/J
	dOnawtXGaf6Aj3NOnreOPHQytD7KP8lYxiUULz4IL195i39RtGGIORv8som88fIp9NrWMBEWZd81c
	Ic32a3v88d+uMNBFZBDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJGa-00016y-M0; Tue, 31 Mar 2020 15:57:28 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJFv-0000io-9I
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 15:56:59 +0000
Received: by mail-wm1-x341.google.com with SMTP id z14so2368472wmf.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 08:56:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Wp21xVStqwrN1N12ROe6rhSLRy5whD/V05w5RA8tsUU=;
 b=pEaC4MBrF0d7B0b85LQcMeH5zZKdVyVNq5eZv5TiQpSDFkpooH40hCVmw0pLsDRHIT
 zCmNLYoiXZrdB7Gjd20bco+olUBrpt4JObPEorRc7sU1MVmoRFjMGd4oK4wmCneUn5EF
 XpmBH+artBLhjllPljF6s5ZhLCokfEcCaoQxg8gApfPIKfmBIfxOIG8b7XOXZEdV9d7T
 SUR69mrZ66AMDjRvbCHOF+lMJ7BZW+auUkdlO5V1pWSE3WjR6H/+mp46WSUA4HT5Pj2Y
 +8UuNnmDhB02kHaOSEyosTBd+fQxi5WCA0FI8y7K7ylpuC+rYz0qoqL+ejZ7IvjhK9Ab
 xWXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Wp21xVStqwrN1N12ROe6rhSLRy5whD/V05w5RA8tsUU=;
 b=Me52PNX3emp5ZLYilmZ1lu8aT7+w2YbkebA4ZQqtBeu0V8T/dMr0ejDv5aGfLpafEl
 Jums2ZZ8do8ToHH2nkxpR0u8MVq5RFSlWU1nYO0ARaWcrwrwtCNDOD/E5suNgkVjsPg/
 tZD2xlsP4gO25iBJDBc+ol39gnzSSx11EQMvW4csXE/32eqv3cKv2Sjn7GVQ4z+QDy6I
 qo89A04VCnfTlNPcVz9v2QfZPl/gGFoAliKLfH55QSSD74fONWnzdzC3wjmdnOA5jK+F
 1RncJ/a2J4tqnsKkOgZTSegjA1MXlUZVBP5l5egqjO+jVigyT9DHQ86qxsh/iepWo8qJ
 ahYg==
X-Gm-Message-State: ANhLgQ1rsU3yXKhY2aZdt5L/l0ygJREEl287y27E2XGCqWkg8o10JNWk
 x3JB95q9J+JY4fv78+xzqD+CpLZiQnSqbg==
X-Google-Smtp-Source: ADFU+vt6gmU3ICepXWInCQgT7paaToRl88C0JQzwtYhmAlm1bldIjQplA/Nx855WwsF8gsnYyaQSiw==
X-Received: by 2002:a1c:f70a:: with SMTP id v10mr3441990wmh.72.1585661639903; 
 Tue, 31 Mar 2020 06:33:59 -0700 (PDT)
Received: from localhost.localdomain ([37.120.50.78])
 by smtp.gmail.com with ESMTPSA id 61sm28623081wrn.82.2020.03.31.06.33.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2020 06:33:59 -0700 (PDT)
From: Robert Foss <robert.foss@linaro.org>
To: Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Fabio Estevam <festevam@gmail.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Sakari Ailus <sakari.ailus@iki.fi>, Tomasz Figa <tfiga@chromium.org>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 3/3] media: ov8856: Implement sensor module revision
 identification
Date: Tue, 31 Mar 2020 15:33:46 +0200
Message-Id: <20200331133346.372517-4-robert.foss@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200331133346.372517-1-robert.foss@linaro.org>
References: <20200331133346.372517-1-robert.foss@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_085647_391061_E9EC2924 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

- Changes since v2:
  * Add module revision 2A
  * Sakari: Remove ov8856_check_revision()
  * Sakari: Stop EEPROM streaming mode


 drivers/media/i2c/ov8856.c | 51 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/drivers/media/i2c/ov8856.c b/drivers/media/i2c/ov8856.c
index 260aaf332631..c7551cee2bb0 100644
--- a/drivers/media/i2c/ov8856.c
+++ b/drivers/media/i2c/ov8856.c
@@ -32,6 +32,18 @@
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
@@ -1152,6 +1164,45 @@ static int ov8856_identify_module(struct ov8856 *ov8856)
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
