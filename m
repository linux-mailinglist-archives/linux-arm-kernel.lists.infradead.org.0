Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 656F71E6AD3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 21:26:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/CaftWSy/g1yGu2PdFdns+AQJlxL8p7fn2wPFnblkhI=; b=eQSYzdapb7rx8X+Ex034OC8o54
	zmg2tUH8jtIrWPiho8bNp5K/SQD+6kWKQ/URwFASYsF3k7c+Ueq45d7vpbGAifHb4LtDjuKJv+XvA
	dcgAU5SR+kJlVT69evWKmlYSk/Y5Lps77VXiL75qcQLJEsAy8xRhOdgYQjR3FUrccClP+r+JKHKK6
	rkcpsl7irDOcoN5mWQpOnmHWDAcBUhaElYxtsHJRGvoDx6C90yMsT5Xavku5SBfj3wvuFTdn6mm6o
	kzRgnwv4IIPKTC/1XvPCWiYdBXNtWKT8C6HSdfO5kh1+q8GeVJehFgvCb4HnqSDFEzSYmZZyeEjQR
	7sze/R7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeOAV-00057T-4w; Thu, 28 May 2020 19:26:19 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeO6Q-0007QD-T5; Thu, 28 May 2020 19:22:08 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 5D9472A41CC
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: linux-pm@vger.kernel.org, linux-acpi@vger.kernel.org,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v4 06/11] thermal: Add mode helpers
Date: Thu, 28 May 2020 21:20:46 +0200
Message-Id: <20200528192051.28034-7-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200528192051.28034-1-andrzej.p@collabora.com>
References: <Message-ID: <4493c0e4-51aa-3907-810c-74949ff27ca4@samsung.com>
 <20200528192051.28034-1-andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_122207_100267_E4B870AB 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Emmanuel Grumbach <emmanuel.grumbach@intel.com>,
 Heiko Stuebner <heiko@sntech.de>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Vishal Kulkarni <vishal@chelsio.com>, Luca Coelho <luciano.coelho@intel.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Chunyan Zhang <zhang.lyra@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Allison Randal <allison@lohutok.net>, NXP Linux Team <linux-imx@nxp.com>,
 Darren Hart <dvhart@infradead.org>, Zhang Rui <rui.zhang@intel.com>,
 Gayatri Kammela <gayatri.kammela@intel.com>, Len Brown <lenb@kernel.org>,
 Johannes Berg <johannes.berg@intel.com>,
 Intel Linux Wireless <linuxwifi@intel.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Ido Schimmel <idosch@mellanox.com>,
 Baolin Wang <baolin.wang7@gmail.com>, Jiri Pirko <jiri@mellanox.com>,
 Orson Zhai <orsonzhai@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Kalle Valo <kvalo@codeaurora.org>,
 Support Opensource <support.opensource@diasemi.com>,
 Enrico Weigelt <info@metux.net>, Peter Kaestle <peter@piie.net>,
 Sebastian Reichel <sre@kernel.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 =?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 Shawn Guo <shawnguo@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Andy Shevchenko <andy@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Prepare for making the drivers not access tzd's private members.

Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
---
 drivers/thermal/thermal_core.c | 53 ++++++++++++++++++++++++++++++++++
 include/linux/thermal.h        | 13 +++++++++
 2 files changed, 66 insertions(+)

diff --git a/drivers/thermal/thermal_core.c b/drivers/thermal/thermal_core.c
index 14d3b1b94c4f..f2a5c5ee3455 100644
--- a/drivers/thermal/thermal_core.c
+++ b/drivers/thermal/thermal_core.c
@@ -459,6 +459,59 @@ static void thermal_zone_device_reset(struct thermal_zone_device *tz)
 	thermal_zone_device_init(tz);
 }
 
+int thermal_zone_device_set_mode(struct thermal_zone_device *tz,
+				 enum thermal_device_mode mode)
+{
+	int ret = 0;
+
+	mutex_lock(&tz->lock);
+
+	/* do nothing if mode isn't changing */
+	if (mode == tz->mode) {
+		mutex_unlock(&tz->lock);
+
+		return ret;
+	}
+
+	if (tz->ops->set_mode)
+		ret = tz->ops->set_mode(tz, mode);
+
+	if (!ret)
+		tz->mode = mode;
+
+	mutex_unlock(&tz->lock);
+
+	thermal_zone_device_update(tz, THERMAL_EVENT_UNSPECIFIED);
+
+	return ret;
+}
+
+int thermal_zone_device_enable(struct thermal_zone_device *tz)
+{
+	return thermal_zone_device_set_mode(tz, THERMAL_DEVICE_ENABLED);
+}
+EXPORT_SYMBOL(thermal_zone_device_enable);
+
+int thermal_zone_device_disable(struct thermal_zone_device *tz)
+{
+	return thermal_zone_device_set_mode(tz, THERMAL_DEVICE_DISABLED);
+}
+EXPORT_SYMBOL(thermal_zone_device_disable);
+
+int thermal_zone_device_is_enabled(struct thermal_zone_device *tz)
+{
+	enum thermal_device_mode mode;
+
+	mutex_lock(&tz->lock);
+
+	mode = tz->mode;
+
+	mutex_unlock(&tz->lock);
+
+	return mode == THERMAL_DEVICE_ENABLED;
+}
+EXPORT_SYMBOL(thermal_zone_device_is_enabled);
+
 void thermal_zone_device_update(struct thermal_zone_device *tz,
 				enum thermal_notify_event event)
 {
diff --git a/include/linux/thermal.h b/include/linux/thermal.h
index a808f6fa2777..df013c39ba9b 100644
--- a/include/linux/thermal.h
+++ b/include/linux/thermal.h
@@ -416,6 +416,9 @@ int thermal_zone_get_offset(struct thermal_zone_device *tz);
 
 void thermal_cdev_update(struct thermal_cooling_device *);
 void thermal_notify_framework(struct thermal_zone_device *, int);
+int thermal_zone_device_enable(struct thermal_zone_device *tz);
+int thermal_zone_device_disable(struct thermal_zone_device *tz);
+int thermal_zone_device_is_enabled(struct thermal_zone_device *tz);
 #else
 static inline struct thermal_zone_device *thermal_zone_device_register(
 	const char *type, int trips, int mask, void *devdata,
@@ -463,6 +466,16 @@ static inline void thermal_cdev_update(struct thermal_cooling_device *cdev)
 static inline void thermal_notify_framework(struct thermal_zone_device *tz,
 	int trip)
 { }
+
+static inline int thermal_zone_device_enable(struct thermal_zone_device *tz)
+{ return -ENODEV; }
+
+static inline int thermal_zone_device_disable(struct thermal_zone_device *tz)
+{ return -ENODEV; }
+
+static inline int
+thermal_zone_device_is_enabled(struct thermal_zone_device *tz)
+{ return -ENODEV; }
 #endif /* CONFIG_THERMAL */
 
 #endif /* __THERMAL_H__ */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
