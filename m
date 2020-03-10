Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B34F117FF6E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 14:47:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UHaTg3AaT8yo/wHZY+fvywWhHRZZLPV8WTPXj4W9fH0=; b=LXXuy8QiV7ivow
	MMbsNDu8fVY24Jf+jzUAkJkK2PMgez21zZCYazuUISsqxoNfgwziv1//sp7YhBKdA/UTFai2uvNeG
	O9yrHI6M8gvaCeNOUN7OMYLva0aus00Dmqm9NB5uMv0cLDvJqYB/cL2egzr87BaxZbvChp6ceg3mP
	dxngrfgbI6QwYMBNrsUe9FiqyApbx+EO2y8e2KhRCmxB7pdGd7a2oR5uc8XUSLB24ebRYa3A4y//U
	8pfv/W1QiUt0TBkG5atdSIBcTMNqGLaXd/nVJYcB6zEULPX6YmhldJqQnJZcX+a+GDKyZmp73HCjJ
	q1Z/gB90Rft1bh9X3NLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBfEE-00054T-Sp; Tue, 10 Mar 2020 13:47:26 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBfD2-0004BM-PY
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 13:46:15 +0000
Received: by mail-wm1-x342.google.com with SMTP id 25so1468330wmk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 06:46:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kcpWwT5ZMggrjSQT2EvWM0uaER77QpGrPnMzAFtSYRI=;
 b=O0Lf67OGqFwaUzOUsqZhpfQommqipqakOP9ukqiFMtg84raIJ1xhcu/+IgDx8RPV4K
 8sGGmwfwEyYWBBoLnALcEFHKAsJlvAR8AUBpDDqc1Lm9EUF3aj8f7fJiWrR5gjg7/gOq
 rdNrwGEwNZ8+iSNiWm7vrM5TV/rGUxpbIlBB19KI26agGyBQPCxL4shzzBLaVw8hvc6O
 yn46Z2IoT5cJV5/IuNrLSFADdgk4BeMcIJ4nrD5ct0TQkHaaqBx2pUE5uUWDhhhqIQ+S
 FZBv0A9zwwV1RIpj9EtiM8kK3u/WzWN55CqcszpUCNMng529s3Ad0kGSVdzklXIqn1VK
 dfTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kcpWwT5ZMggrjSQT2EvWM0uaER77QpGrPnMzAFtSYRI=;
 b=ayNYp0rr9dxGl6RNxSuh03OaWoTf8j4dNQQxc6MLNOnOWSFtN14lyfTscrRQoa3FYw
 MEG0HiIREWM/VNh2chXlASm3HhiigK+oIMAolt2th/AH7WT3USl+Q7EBrmOo50UvQ0Zq
 PbokcDV5NCLZ5j7pP5tji7myTRifvanrWukL0H4p73yKFLx9FIb/GCZA4TEBhlhTt9Qr
 cut9LYJKsuG6FQluDBduKu29/B45HHb1XtxBkhktgMjmRYGcG9oSzeGFHZ5JmiODFuBC
 /jjqZ5hCIXUvyBIohWOsqLJImHzlIC3DcqbA3DBTFb7GUpKpiOA6WbKNrj5yO8Unliop
 dkYA==
X-Gm-Message-State: ANhLgQ2JblNAf+1DwszkDnuoUvwE7QB4LWZ+EFLsgmuhLqbqIU2Rg3gS
 IR3iwtxQjmINs7SrNuZaOSRIUg==
X-Google-Smtp-Source: ADFU+vstHBlerJtLLKmV0eIsOMnYH7m2KgACCake91JX7v1/q8QTpqLwfBfjOjRY02P/EWh99NEaCA==
X-Received: by 2002:a05:600c:22cd:: with SMTP id
 13mr2257121wmg.186.1583847971629; 
 Tue, 10 Mar 2020 06:46:11 -0700 (PDT)
Received: from xps7590.local ([2a02:2450:102f:13b8:e50c:c780:9a1:8b61])
 by smtp.gmail.com with ESMTPSA id d63sm4074009wmd.44.2020.03.10.06.46.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 06:46:11 -0700 (PDT)
From: Robert Foss <robert.foss@linaro.org>
To: ben.kao@intel.com, mchehab@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, matthias.bgg@gmail.com, davem@davemloft.net,
 gregkh@linuxfoundation.org, Jonathan.Cameron@huawei.com,
 andriy.shevchenko@linux.intel.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 Dongchun Zhu <dongchun.zhu@mediatek.com>
Subject: [v1 3/3] media: ov8856: Implement sensor module revision
 identification
Date: Tue, 10 Mar 2020 14:46:03 +0100
Message-Id: <20200310134603.30260-4-robert.foss@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200310134603.30260-1-robert.foss@linaro.org>
References: <20200310134603.30260-1-robert.foss@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_064612_842274_4DE5FA38 
X-CRM114-Status: GOOD (  12.52  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Robert Foss <robert.foss@linaro.org>, Tomasz Figa <tfiga@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Query the sensor for its module revision, and compare it
to known revisions.
Currently only the '1B' revision has been added.

Signed-off-by: Robert Foss <robert.foss@linaro.org>
---
 drivers/media/i2c/ov8856.c | 48 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/drivers/media/i2c/ov8856.c b/drivers/media/i2c/ov8856.c
index 1769acdfaa44..48e8f4b997d6 100644
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
@@ -713,6 +725,25 @@ static int ov8856_test_pattern(struct ov8856 *ov8856, u32 pattern)
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
@@ -1145,6 +1176,23 @@ static int ov8856_identify_module(struct ov8856 *ov8856)
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
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
