Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A619B1A883C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 20:02:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=x0H+x2xjPNhqTAOH3c4cW1GPLG54LRIp6OEa5UsHeqc=; b=OuS1Wmdp3seG7vIIGTV6u769AS
	5Zdm873tksJsICksab7707axG9siUYfab2KX5cc+N0aTQvXZwReW3pzbWvz6UDUBVcOPJJrAPbmlp
	uVwNkCWT00DU1CYYrv7CA8Ckfftkf7WvAf2DWplZn6xsPpevhE8L1ZE3sKDfJREacqY8TrDTjCxCm
	MMdzdr08BZSSHnAt9brlHNQ70DHVeyuuXKBPiv3hU28GSXdzuOJm0p7tiVVipRCc1NMh+gwH21KD3
	Whjckrg8tTsEr/mrTSo71FDeH+on4ORhlqe23knDBAazlWSv558TYydCue610MGfGDf+SmnrIIogj
	4Il1Zw/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOPsu-0002fx-7c; Tue, 14 Apr 2020 18:02:08 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOPs9-0002Dn-Kn
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 18:01:22 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id C384B2A1BDE
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: linux-pm@vger.kernel.org
Subject: [RFC v2 2/9] thermal: Eliminate an always-false condition
Date: Tue, 14 Apr 2020 20:00:58 +0200
Message-Id: <20200414180105.20042-3-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200414180105.20042-1-andrzej.p@collabora.com>
References: <2bc5a902-acde-526a-11a5-2357d899916c@linaro.org>
 <20200414180105.20042-1-andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_110121_807912_9456F994 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

This driver provides a non-NULL "devdata" argument for
thermal_zone_device_register(). Thermal core never sets it to NULL
afterwards, so checking for its being NULL in this driver makes no sense.

Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
---
 drivers/acpi/thermal.c                                  | 6 ------
 drivers/thermal/intel/int340x_thermal/int3400_thermal.c | 6 ------
 2 files changed, 12 deletions(-)

diff --git a/drivers/acpi/thermal.c b/drivers/acpi/thermal.c
index 19067a5e5293..328b479ce7f6 100644
--- a/drivers/acpi/thermal.c
+++ b/drivers/acpi/thermal.c
@@ -531,9 +531,6 @@ static int thermal_get_mode(struct thermal_zone_device *thermal,
 {
 	struct acpi_thermal *tz = thermal->devdata;
 
-	if (!tz)
-		return -EINVAL;
-
 	*mode = tz->tz_enabled ? THERMAL_DEVICE_ENABLED :
 		THERMAL_DEVICE_DISABLED;
 
@@ -546,9 +543,6 @@ static int thermal_set_mode(struct thermal_zone_device *thermal,
 	struct acpi_thermal *tz = thermal->devdata;
 	int enable;
 
-	if (!tz)
-		return -EINVAL;
-
 	/*
 	 * enable/disable thermal management from ACPI thermal driver
 	 */
diff --git a/drivers/thermal/intel/int340x_thermal/int3400_thermal.c b/drivers/thermal/intel/int340x_thermal/int3400_thermal.c
index e802922a13cf..fbb59dd09481 100644
--- a/drivers/thermal/intel/int340x_thermal/int3400_thermal.c
+++ b/drivers/thermal/intel/int340x_thermal/int3400_thermal.c
@@ -235,9 +235,6 @@ static int int3400_thermal_get_mode(struct thermal_zone_device *thermal,
 {
 	struct int3400_thermal_priv *priv = thermal->devdata;
 
-	if (!priv)
-		return -EINVAL;
-
 	*mode = priv->mode;
 
 	return 0;
@@ -250,9 +247,6 @@ static int int3400_thermal_set_mode(struct thermal_zone_device *thermal,
 	bool enable;
 	int result = 0;
 
-	if (!priv)
-		return -EINVAL;
-
 	if (mode == THERMAL_DEVICE_ENABLED)
 		enable = true;
 	else if (mode == THERMAL_DEVICE_DISABLED)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
