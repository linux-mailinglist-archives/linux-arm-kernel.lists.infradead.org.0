Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B7D21A131F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 19:51:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/2n5EXp8vp07byZoLQV/f83l4XAycsVlZNaRt6MOI/Q=; b=jmoNhLvoL4awKHk4mxpPYxBgcY
	VGsSroSSO4d03OLOLWb5+FgBPxn8Fj6wflokjpGckarGf9CTnv8zjB+aLf31vPA+Ok79JGuWfj/kh
	oyHn3RGinaX/ioyKi16gyPbQXd0OQN+yFH4wKefoe7phiw/tebR956p4iHyymGmVqOx/t+B3Mxjts
	vxOcrv8iHorbVCaM9AejHzMBNOqY3FTujHxRCgaf2zrYEKMG1ZiG550Au2pzxS5zIiXHPhdPJd2Pn
	WDghZfu9rtry6gEHAWCSGA+syS9Uijjd5O2xSszixD+uq6KXpVPI5DKMTC+wOegdLRZFjFwPiJZvD
	dI0kNP+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLsNm-00032d-TT; Tue, 07 Apr 2020 17:51:30 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLsMD-0007jL-ID
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 17:49:54 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id E5F502972B0
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: linux-pm@vger.kernel.org
Subject: [RFC 7/8] thermal: of: Monitor thermal zone after enabling it
Date: Tue,  7 Apr 2020 19:49:25 +0200
Message-Id: <20200407174926.23971-8-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200407174926.23971-1-andrzej.p@collabora.com>
References: <20200407174926.23971-1-andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_104953_742666_7874C53A 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
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

thermal/of calls its own ->set_mode() method, so monitor thermal zone
afterwards. This is needed for the DISABLED->ENABLED transition.

Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
---
 drivers/thermal/of-thermal.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/thermal/of-thermal.c b/drivers/thermal/of-thermal.c
index b7621dfab17c..cf2c43ebcb78 100644
--- a/drivers/thermal/of-thermal.c
+++ b/drivers/thermal/of-thermal.c
@@ -523,8 +523,11 @@ thermal_zone_of_sensor_register(struct device *dev, int sensor_id, void *data,
 		if (sensor_specs.np == sensor_np && id == sensor_id) {
 			tzd = thermal_zone_of_add_sensor(child, sensor_np,
 							 data, ops);
-			if (!IS_ERR(tzd))
+			if (!IS_ERR(tzd)) {
 				tzd->ops->set_mode(tzd, THERMAL_DEVICE_ENABLED);
+				thermal_zone_device_update(tzd,
+						THERMAL_EVENT_UNSPECIFIED);
+			}
 
 			of_node_put(sensor_specs.np);
 			of_node_put(child);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
