Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C515F1A1323
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 19:52:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PL3U/fq5K4V4JTe6DoH0SnqQoVoOIG/xwLFhdYrT2co=; b=h+C6o0rYP+dlT2W8MVc/HoS8aX
	nkuEDSXIEIxgoyU5SwRAsaujrAzCw0SG7ZgvwXmK48j3rPeCSksr029IzBI/kOiSskF36bBKg9YhF
	DSPVK0Zd8HmcDGTgb3mt5ev2MQPB4WiauLWD99IF2+symKylOlaXfCiDtVhSl5Sp+7JilWfClwzMb
	o1RqdJ7//yEXDJ0BAHC+5vaO32pF+BWNRlAFGPUd18h21IfsSWjyCHsG6XxXi6bwFMcD859/9IqJD
	sFuD/cZJ72gkT/BRabYc8gunAKY5KgeIN9ZxRTQV+mnXZDT1RuadmK+ik86OhGqRCGlrEsn9rkYmH
	wSgDzvQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLsOE-0003Ut-45; Tue, 07 Apr 2020 17:51:58 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLsMG-0007mu-4Z
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 17:49:57 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 326AA2972B4
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: linux-pm@vger.kernel.org
Subject: [RFC 8/8] thermal: Stop polling DISABLED thermal devices
Date: Tue,  7 Apr 2020 19:49:26 +0200
Message-Id: <20200407174926.23971-9-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200407174926.23971-1-andrzej.p@collabora.com>
References: <20200407174926.23971-1-andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_104956_327193_5D85C789 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 platform-driver-x86@vger.kernel.org, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-acpi@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>, Darren Hart <dvhart@infradead.org>,
 Zhang Rui <rui.zhang@intel.com>, Gayatri Kammela <gayatri.kammela@intel.com>,
 Len Brown <lenb@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Ido Schimmel <idosch@mellanox.com>, Jiri Pirko <jiri@mellanox.com>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 linux-arm-kernel@lists.infradead.org,
 Support Opensource <support.opensource@diasemi.com>,
 Shawn Guo <shawnguo@kernel.org>, Peter Kaestle <peter@piie.net>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, netdev@vger.kernel.org,
 Enrico Weigelt <info@metux.net>, "David S . Miller" <davem@davemloft.net>,
 Andy Shevchenko <andy@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Polling DISABLED devices is not desired, as all such "disabled" devices
are meant to be handled by userspace.

Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
---
 drivers/thermal/thermal_core.c | 26 ++++++++++++++++++++++++--
 1 file changed, 24 insertions(+), 2 deletions(-)

diff --git a/drivers/thermal/thermal_core.c b/drivers/thermal/thermal_core.c
index aae2b049d45c..f74b7a792be7 100644
--- a/drivers/thermal/thermal_core.c
+++ b/drivers/thermal/thermal_core.c
@@ -305,13 +305,32 @@ static void thermal_zone_device_set_polling(struct thermal_zone_device *tz,
 		cancel_delayed_work(&tz->poll_queue);
 }
 
+static bool should_stop_polling(struct thermal_zone_device *tz)
+{
+	enum thermal_device_mode mode;
+	int result;
+
+	if (!tz->ops->get_mode)
+		return false;
+
+	result = tz->ops->get_mode(tz, &mode);
+	if (result)
+		return false;
+
+	return mode == THERMAL_DEVICE_DISABLED;
+}
+
 static void monitor_thermal_zone(struct thermal_zone_device *tz)
 {
+	bool stop;
+
+	stop = should_stop_polling(tz);
+
 	mutex_lock(&tz->lock);
 
-	if (tz->passive)
+	if (!stop && tz->passive)
 		thermal_zone_device_set_polling(tz, tz->passive_delay);
-	else if (tz->polling_delay)
+	else if (!stop && tz->polling_delay)
 		thermal_zone_device_set_polling(tz, tz->polling_delay);
 	else
 		thermal_zone_device_set_polling(tz, 0);
@@ -500,6 +519,9 @@ void thermal_zone_device_update(struct thermal_zone_device *tz,
 {
 	int count;
 
+	if (should_stop_polling(tz))
+		return;
+
 	if (atomic_read(&in_suspend))
 		return;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
