Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E2311E4AB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 14:31:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=K1uRqTCZIkXV39Cy6INmm6HYxLsxlE6R/IfiAgqb53M=; b=KGp12l0Y0OVUG8H4RvpB8Uj0A4
	a5O8Dx91YdETWCqod08MBLESZryoWl/dq2uEYsj/pDqUdMcB7fkO/0MXQhlZrlVqxR1hb/fFqef/K
	9eOq54asOZ85sd3bsEyfgxh0NYDffQDPYsrrNTKh0bEj/cbxW4i2JfEOj1H0ULBRjT7pNhnzTTg64
	kfGo7kDCN3xKRajJdsjizi86jV+tdi2+Q6Agxx0V2lApYvD402e6z525Lo55xZdFsOkApMPxSJon2
	LKqDACiy7ZG8wpnWvRuthNer6kQYq8PqZ046ljG+daYl5eXavmQWDflZ0P56WbMPXVqrqSuFE4DFi
	/31bLzzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifl2R-0000Vu-39; Fri, 13 Dec 2019 13:31:23 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifl19-0006sp-JI
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 13:30:06 +0000
Received: by mail-wm1-x343.google.com with SMTP id p17so6578824wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 05:30:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=VXzCIVNIyEIalSwrDVu1JlYLLJVG8LUdZccZXShpYsw=;
 b=nZ9BQpSuWb9dDeJykWlitqmovokkBjW/QjlPbblKCvaHm0mccziJSL6ajoVWDfotQt
 XnXJBWVcWNLc5JqFW+o9Tl23W+/w+x5W/n0yEqrgk6z0/klrDcJ9SfNGCgMevbuYx1lG
 PrEHbPePlNDmwl725H0hAvDzGoMTkkksqbQhhcoCR03XcDFG3miJ7j1meXOF47Dlzqj/
 PhoneeU8HryDHVuUxDu+S7zYoeFUXDwS9XIFegBzSCM1Iacw2SqzmaHN/hkDNLrrDDuR
 oN6lS4cBVlahfCWW3hMbLY9yQzsgKZp/9i5oJV08NN4dEaKFVgf18DKoGYD6cvDudgHb
 zQMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=VXzCIVNIyEIalSwrDVu1JlYLLJVG8LUdZccZXShpYsw=;
 b=BUds5flKHptWW5trFJhYLSq1URF7ovO0vJKv+Tp/8JlmrHpvaR5wwK/FTFDeXGxJek
 RCtNLqc167t9JMifZpbQHI1x9vn6f4c7d0O2Ssz0MxQrVnVFKTMb3pgieskeMpoRelnO
 M5A8HolcJ43+2aR0VZ76V6/L+SPiE8Pe8IvfYhoUwfO+zRKH/g9sVX8wJoa02YbYlBMi
 dmLQ9JiMYvFDLWWZgop5ppAoZ1PzV64tVP2JvZuuwFgfMS8ME6vl2Bl1BNJvWlALGYBo
 Nh+VKW/IRpwQp0UoKHKzflOdfGeedDB+6eCSa8nXci9y4fGeoO68TJOPcOjS59tnifnQ
 5lJQ==
X-Gm-Message-State: APjAAAXA1moL736ltz0+2UxduHHCNZhij0ikFfEbpJE8rWwqpPuX85S2
 cwNBm06hpko64kVQ/PJRj8JzFQ==
X-Google-Smtp-Source: APXvYqySye0Al7ofzrrLCFePLmE9J5EDhkpPFb1QMhV+Eca0/HHqNuayvmb667XyzUHwTfXeZTWmWA==
X-Received: by 2002:a1c:8086:: with SMTP id b128mr13635797wmd.80.1576243802038; 
 Fri, 13 Dec 2019 05:30:02 -0800 (PST)
Received: from localhost.localdomain ([2a01:cb1d:6e7:d500:82a9:347a:43f3:d2ca])
 by smtp.gmail.com with ESMTPSA id n3sm10540543wmc.27.2019.12.13.05.30.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 05:30:01 -0800 (PST)
From: Guillaume La Roque <glaroque@baylibre.com>
To: narmstrong@baylibre.com, mchehab@kernel.org, hverkuil-cisco@xs4all.nl,
 khilman@baylibre.com, devicetree@vger.kernel.org
Subject: [PATCH v2 3/3] media: platform: meson-ao-cec-g12a: add wakeup support
Date: Fri, 13 Dec 2019 14:29:56 +0100
Message-Id: <20191213132956.11074-4-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191213132956.11074-1-glaroque@baylibre.com>
References: <20191213132956.11074-1-glaroque@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_053003_679902_BAFFAE28 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

add register configuration to activate wakeup feature in bl301

Tested-by: Kevin Hilman <khilman@baylibre.com>
Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
---
 drivers/media/platform/meson/ao-cec-g12a.c | 33 ++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/drivers/media/platform/meson/ao-cec-g12a.c b/drivers/media/platform/meson/ao-cec-g12a.c
index 891533060d49..85850b974126 100644
--- a/drivers/media/platform/meson/ao-cec-g12a.c
+++ b/drivers/media/platform/meson/ao-cec-g12a.c
@@ -25,6 +25,7 @@
 #include <media/cec.h>
 #include <media/cec-notifier.h>
 #include <linux/clk-provider.h>
+#include <linux/mfd/syscon.h>
 
 /* CEC Registers */
 
@@ -168,6 +169,18 @@
 
 #define CECB_WAKEUPCTRL		0x31
 
+#define CECB_FUNC_CFG_REG		0xA0
+#define CECB_FUNC_CFG_MASK		GENMASK(6, 0)
+#define CECB_FUNC_CFG_CEC_ON		0x01
+#define CECB_FUNC_CFG_OTP_ON		0x02
+#define CECB_FUNC_CFG_AUTO_STANDBY	0x04
+#define CECB_FUNC_CFG_AUTO_POWER_ON	0x08
+#define CECB_FUNC_CFG_ALL		0x2f
+#define CECB_FUNC_CFG_NONE		0x0
+
+#define CECB_LOG_ADDR_REG	0xA4
+#define CECB_LOG_ADDR_MASK	GENMASK(22, 16)
+
 struct meson_ao_cec_g12a_data {
 	/* Setup the internal CECB_CTRL2 register */
 	bool				ctrl2_setup;
@@ -177,6 +190,7 @@ struct meson_ao_cec_g12a_device {
 	struct platform_device		*pdev;
 	struct regmap			*regmap;
 	struct regmap			*regmap_cec;
+	struct regmap			*regmap_ao_sysctrl;
 	spinlock_t			cec_reg_lock;
 	struct cec_notifier		*notify;
 	struct cec_adapter		*adap;
@@ -518,6 +532,13 @@ meson_ao_cec_g12a_set_log_addr(struct cec_adapter *adap, u8 logical_addr)
 					 BIT(logical_addr - 8));
 	}
 
+	if (ao_cec->regmap_ao_sysctrl)
+		ret |= regmap_update_bits(ao_cec->regmap_ao_sysctrl,
+					 CECB_LOG_ADDR_REG,
+					 CECB_LOG_ADDR_MASK,
+					 FIELD_PREP(CECB_LOG_ADDR_MASK,
+						    logical_addr));
+
 	/* Always set Broadcast/Unregistered 15 address */
 	ret |= regmap_update_bits(ao_cec->regmap_cec, CECB_LADD_HIGH,
 				  BIT(CEC_LOG_ADDR_UNREGISTERED - 8),
@@ -618,6 +639,13 @@ static int meson_ao_cec_g12a_adap_enable(struct cec_adapter *adap, bool enable)
 		regmap_write(ao_cec->regmap_cec, CECB_CTRL2,
 			     FIELD_PREP(CECB_CTRL2_RISE_DEL_MAX, 2));
 
+	if (ao_cec->regmap_ao_sysctrl) {
+		regmap_update_bits(ao_cec->regmap_ao_sysctrl,
+				   CECB_FUNC_CFG_REG,
+				   CECB_FUNC_CFG_MASK,
+				   CECB_FUNC_CFG_ALL);
+	}
+
 	meson_ao_cec_g12a_irq_setup(ao_cec, true);
 
 	return 0;
@@ -685,6 +713,11 @@ static int meson_ao_cec_g12a_probe(struct platform_device *pdev)
 		goto out_probe_adapter;
 	}
 
+	ao_cec->regmap_ao_sysctrl = syscon_regmap_lookup_by_phandle
+		(pdev->dev.of_node, "amlogic,ao-sysctrl");
+	if (IS_ERR(ao_cec->regmap_ao_sysctrl))
+		dev_warn(&pdev->dev, "ao-sysctrl syscon regmap lookup failed.\n");
+
 	irq = platform_get_irq(pdev, 0);
 	ret = devm_request_threaded_irq(&pdev->dev, irq,
 					meson_ao_cec_g12a_irq,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
