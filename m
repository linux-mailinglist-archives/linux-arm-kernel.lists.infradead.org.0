Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 939791C5276
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 12:03:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CeHt4cwHC/jPyKUGD0C59mWsRQYqLJB6DLGTmS9ICrA=; b=tal0cspxG3ICS/
	EK/Orv46Gx888G7UDnrWII4+CGqK1dZPeT0GD31uKzRofByiI3mwM82NF+U3XQ7QRAKhw17ZE5H+h
	vbu1TNlMkSMO6W+TCKDN8e4wiSCfMngLa+0/caDkYdSgTT+6FBU2t84xMhjhNpsC8FwsVacxGNjhW
	b+6OTSPSjvu5+xOl+FaZqK4t1qS7SyPW3rNonBLvefjZ4qrxpRAcVSm8v8yG+QWV0hVX+CRVn+mWO
	NMUVQJs5Rmyb9cg7uQIqet8K4FNpbXxTmhSiyvlKDYSv8hEQGvF3e9zb0YQXAecOde7EFuH3fDb+p
	8gARKMTc7o/TVyYbXMJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVuPg-0007Kq-KI; Tue, 05 May 2020 10:02:56 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVuOw-0006pZ-MC
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 10:02:13 +0000
Received: by mail-wm1-x342.google.com with SMTP id e26so1590157wmk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 03:02:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6ARsMuKYhMVLxyg5O1RxGGO0HJh3za6PnGW69GdNBJ8=;
 b=tj9jstQlHQwxdLi82NpQl1+wOETOL0437W7bk+nJ218gBSz4wh0KU80LEHlbUVpAU9
 1COLiEfLL4x4WRRkaTcMs6agaZvgFAJZSxSgvmdgq0KtNdiUJPY7r8k4m7ek7LItNvM5
 Ywv9pLxXQBfL/aUSGI0wpKAk2S7AF22jntxLzG2bpIALl5ODWwNooBRMM8bPU0f0aBdw
 ees1DQwOg2hl1uezS8yD+k/NxC/F0Xv+OQIT3nGNXjSVzk2Wx3yDQCpbN6QSz+v/ZUc5
 IrDLoiDhWMPtIl56p+OIQvYjHqXzzROgwPOyNuvkjEkZNzCfXO5itng/CzPTskBXGZy9
 TjaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6ARsMuKYhMVLxyg5O1RxGGO0HJh3za6PnGW69GdNBJ8=;
 b=nF1j6a7CGgpSdpWN3vOs29g5n0WYHLqbJ0vt42WfIpbq2BMt9gD/XpVg2Ksn3xNsVN
 Zgs7VF6krhWw7mmPbZqV4PLodU2y7rfGF6/51vszhlwmWjnee6N5gYm93PkvhzCoRngL
 W1Cv0M5/kcfn8EjbmeVDoByPHSuCY4Bs8ZXyzo9fbL93NzUGE6uwOX8bauW8AWWMVfWG
 fbcHl8fh7VCLafD0LV1AbTis4NlBKHnx+LnCu+S1NAQhgv0qu0/M+Pq87CT9wQrESTo1
 Y1DUC5lc6H8NoepAyFC/Vx2Nhqc6ACKfHuO3FRpkvoQN+i1vUu96YFhRW1QEIboq5Byc
 Do3A==
X-Gm-Message-State: AGi0PuY1bAec9u0Hrk+drhm68x/P8RusTTvC2CQVUhHU/fsZh15FX4oO
 XRPnVYZD6MieTWpCB8zpBSfZeA==
X-Google-Smtp-Source: APiQypKwu36pUjC85aEvxmSpfIP0n4+pkY0t2Ob4Bb98cCm8CtABo39acwOtrwCqI8byYKvbJV3XYA==
X-Received: by 2002:a1c:a549:: with SMTP id o70mr2541234wme.179.1588672929334; 
 Tue, 05 May 2020 03:02:09 -0700 (PDT)
Received: from localhost.localdomain ([37.120.63.158])
 by smtp.gmail.com with ESMTPSA id n6sm2884258wmc.28.2020.05.05.03.02.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 03:02:08 -0700 (PDT)
From: Robert Foss <robert.foss@linaro.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Sakari Ailus <sakari.ailus@iki.fi>, Marco Felsch <m.felsch@pengutronix.de>,
 Maxime Ripard <maxime@cerno.tech>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v7 3/3] media: ov8856: Implement sensor module revision
 identification
Date: Tue,  5 May 2020 12:01:32 +0200
Message-Id: <20200505100129.104673-4-robert.foss@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200505100129.104673-1-robert.foss@linaro.org>
References: <20200505100129.104673-1-robert.foss@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_030210_751290_2F5805CF 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

- Changes since v3:
  * Actually add module revision 2A

- Changes since v2:
  * Add module revision 2A
  * Sakari: Remove ov8856_check_revision()
  * Sakari: Stop EEPROM streaming mode

 drivers/media/i2c/ov8856.c | 53 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/drivers/media/i2c/ov8856.c b/drivers/media/i2c/ov8856.c
index e6418a79801e..3c82c3e588d7 100644
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
