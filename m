Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF0E71BC78A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 20:08:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h1JGthSBm2PQJTbQhTV8XNXy390zA2fnOJ95cxPqXMU=; b=k8p/lyLahFn0N2
	382swWiNTJmRq3XC8wKmVKnQzjVhYSyK+eHrEghcx/gD+BW4fdHDnIzgh1Gp23otsmG3z63csD8BA
	DpMy1q+EkjVSLuytwFJysZqkoARmtJ1bN0wlc5R2Qxl3bjUl/vwvEmr2RHwqE/duye6MWSXorC0Yk
	6EhxyHxfgUeXQCsm19VK6jHQY/43HMNqhpjobBRP+n5koJo9SDfVd102Y19sQ6dznyVgxXO+DpvV4
	bkmCRChwwts8vLEHjhUWhxyyWK1HxIf/Z8CvW7HkxbJXpiLlM9yCeq7LsE9e8Ge8rrLCgrDP0RLNU
	e9SwB/dFlK8BxpJri1jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTUeQ-0002ax-2B; Tue, 28 Apr 2020 18:08:10 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTUdi-0002BB-7f
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 18:07:27 +0000
Received: by mail-wr1-x442.google.com with SMTP id d15so24161392wrx.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 11:07:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=28cDGW7lHDBW0cMjOkUmPSwiyuA8fTJeT/DBNYotCsg=;
 b=TXM+NLMRCnS9+pSCoTO2uWxK0dqqac8UQX/pcooJaNoiSMsBja1cqbUl3ZbIPeQxjb
 uaubDOvNUoRBxLdgA06QmhKcoVD47twZy+WdznWp9snzqpArXlLDciomOOQwYZ2gNngX
 08Ax13mceLMM1qdsCp5CMzJ+68XA7X/dE7fuhuZVl4ss2ogVUMmP44QJOjTyHEgdG2vH
 8GgGPn/MsNL64ig+2r5Wd/swPH1JptGhwuwQZTTL4mqoZkr0BiBXUM3FuF2248STnrDd
 B415bjkdtM8+Z1rpjWGirq0eqQiWI939m8qkHu0AAhxU2nklyzFyAZkI5+6Op2ikXsjg
 Gz2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=28cDGW7lHDBW0cMjOkUmPSwiyuA8fTJeT/DBNYotCsg=;
 b=OP2oTc2R87+Z2NDd5wmTujRvrowbko+Y3MpVYsJOVU9w7Vs0C3h1zlBc/qmLZUGpNS
 mvl82kloboADsIiiI3ooNOTI/EfX7yuF+wWlVBg9V4Q8Y5rllOh8AlvGna4CMS7sPH5A
 LNumxkC9QJcKyIXU/kGDLu2nilbBrjqkTw/JtiFfKBKepCdRfu9AHi//0kUC3CPGpc4A
 LVfIYoyUunErVdTeAA+Bs+aIzjeuqUH0EHTkR8eIGfR542CPCCZZ6naL38sco53vdGB1
 pUSNQgirvpdk8FCMiSBfgvDDwd+vp7JrJNOZbSRwrM1F2R8A0Cq7qj0o5XP0AGxoBXef
 XXSg==
X-Gm-Message-State: AGi0Pubi1u3qNMSb3UkxH1QEcyd2mpBw9ammLCO3UFGpZTKHCi4io354
 o0HHfsSC3smzucCQr9CCHEuT3A==
X-Google-Smtp-Source: APiQypI8PJzjnfy3x58pQ9Accr3Blr++TnRQfRHkv2Jckw04YP5uWoNw5VlXdSvsvq3SUfkryVkoZA==
X-Received: by 2002:a5d:4cc2:: with SMTP id c2mr33703590wrt.130.1588097244819; 
 Tue, 28 Apr 2020 11:07:24 -0700 (PDT)
Received: from xps7590.local ([37.120.81.28])
 by smtp.gmail.com with ESMTPSA id m14sm26202789wrs.76.2020.04.28.11.07.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 11:07:24 -0700 (PDT)
From: Robert Foss <robert.foss@linaro.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Sakari Ailus <sakari.ailus@iki.fi>, Marco Felsch <m.felsch@pengutronix.de>,
 Maxime Ripard <maxime@cerno.tech>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 v5 3/3] media: ov8856: Implement sensor module revision
 identification
Date: Tue, 28 Apr 2020 20:07:18 +0200
Message-Id: <20200428180718.1609826-3-robert.foss@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200428180718.1609826-1-robert.foss@linaro.org>
References: <20200428180718.1609826-1-robert.foss@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_110726_272962_BF8FD839 
X-CRM114-Status: GOOD (  12.12  )
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
Cc: Fabio Estevam <festevam@gmail.com>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>, Robert Foss <robert.foss@linaro.org>,
 Tomasz Figa <tfiga@chromium.org>
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
index 48b02b8d205f..a0ba0a5d5aad 100644
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
