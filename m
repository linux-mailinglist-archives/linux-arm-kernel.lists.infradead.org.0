Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5337E1BF870
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 14:47:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UMayB40ng4FvGu0h3TBQMCqP+0C5gZveesUHy+TeyZ0=; b=dVtysqFa1QyZ/J
	0BMrOtkKPT+w3ti6Ln5D7CJH1ByUt2NiFfuPjtlL9SrwPH1xI4JXxBFZ5NjWuRi9vJQOgJILEFjMF
	9nQhfcGUwQcV7Ok677q+dILpED7ZuEu08EABg+S9oun8vxoFTdc+fG534JGnZEfMU/zcraiY9UK2A
	ntOTFXHHayPvpp2OHmEJ4577RkV1honWEoVZSbjJloKCoDpw6I02/+Mu5QCVeCUfUs3cjHcnI+E4v
	mLTr+sh503aXSAfQQdavJEAfLXjmLC5f0PgHdkI/u7qJb2H+ebYFEtbrSVx1PvvfZC1fCh8howS6C
	c4knMss6AJnGaO1YLYAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU8b8-0000xB-RH; Thu, 30 Apr 2020 12:47:26 +0000
Received: from skedge03.snt-world.com ([91.208.41.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU8a0-0000DY-HC
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 12:46:18 +0000
Received: from sntmail10s.snt-is.com (unknown [10.203.32.183])
 by skedge03.snt-world.com (Postfix) with ESMTP id 6647267A902;
 Thu, 30 Apr 2020 14:46:14 +0200 (CEST)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail10s.snt-is.com
 (10.203.32.183) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Thu, 30 Apr
 2020 14:46:14 +0200
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1913.007; Thu, 30 Apr 2020 14:46:14 +0200
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Adam Ford <aford173@gmail.com>, Anson Huang <Anson.Huang@nxp.com>,
 Christian Gmeiner <christian.gmeiner@gmail.com>, Daniel Baluta
 <daniel.baluta@nxp.com>, Fabio Estevam <festevam@gmail.com>, Schrempf Frieder
 <frieder.schrempf@kontron.de>, Leonard Crestez <leonard.crestez@nxp.com>, "Li
 Jun" <jun.li@nxp.com>, Lucas Stach <l.stach@pengutronix.de>, NXP Linux Team
 <linux-imx@nxp.com>, Peng Fan <peng.fan@nxp.com>, Pengutronix Kernel Team
 <kernel@pengutronix.de>, Russell King <linux+etnaviv@armlinux.org.uk>,
 "Sascha Hauer" <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 "S.j. Wang" <shengjiu.wang@nxp.com>
Subject: [RFC PATCH 3/4] drm/etnaviv: Change order of enabling clocks to fix
 boot on i.MX8MM
Thread-Topic: [RFC PATCH 3/4] drm/etnaviv: Change order of enabling clocks to
 fix boot on i.MX8MM
Thread-Index: AQHWHu1V9EwL5xxa+UiJnz7nneFudQ==
Date: Thu, 30 Apr 2020 12:46:13 +0000
Message-ID: <20200430124602.14463-4-frieder.schrempf@kontron.de>
References: <20200430124602.14463-1-frieder.schrempf@kontron.de>
In-Reply-To: <20200430124602.14463-1-frieder.schrempf@kontron.de>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: 6647267A902.ADBD3
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: aford173@gmail.com, anson.huang@nxp.com,
 christian.gmeiner@gmail.com, daniel.baluta@nxp.com,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 etnaviv@lists.freedesktop.org, festevam@gmail.com, jun.li@nxp.com,
 kernel@pengutronix.de, l.stach@pengutronix.de,
 leonard.crestez@nxp.com, linux+etnaviv@armlinux.org.uk,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 linux-kernel@vger.kernel.org, peng.fan@nxp.com,
 s.hauer@pengutronix.de, shawnguo@kernel.org, shengjiu.wang@nxp.com
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_054616_908721_37C74C91 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.208.41.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "etnaviv@lists.freedesktop.org" <etnaviv@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Frieder Schrempf <frieder.schrempf@kontron.de>

On some i.MX8MM devices the boot hangs when enabling the GPU clocks.
Changing the order of clock initalization to

core -> shader -> bus -> reg

fixes the issue. This is the same order used in the imx platform code
of the downstream GPU driver in the NXP kernel [1]. For the sake of
consistency we also adjust the order of disabling the clocks to the
reverse.

[1] https://source.codeaurora.org/external/imx/linux-imx/tree/drivers/mxc/gpu-viv/hal/os/linux/kernel/platform/freescale/gc_hal_kernel_platform_imx.c?h=imx_5.4.3_2.0.0#n1538

Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
---
 drivers/gpu/drm/etnaviv/etnaviv_gpu.c | 42 +++++++++++++--------------
 1 file changed, 21 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/etnaviv/etnaviv_gpu.c b/drivers/gpu/drm/etnaviv/etnaviv_gpu.c
index 7b138d4dd068..424b2e5951f0 100644
--- a/drivers/gpu/drm/etnaviv/etnaviv_gpu.c
+++ b/drivers/gpu/drm/etnaviv/etnaviv_gpu.c
@@ -1487,55 +1487,55 @@ static int etnaviv_gpu_clk_enable(struct etnaviv_gpu *gpu)
 {
 	int ret;
 
-	if (gpu->clk_reg) {
-		ret = clk_prepare_enable(gpu->clk_reg);
+	if (gpu->clk_core) {
+		ret = clk_prepare_enable(gpu->clk_core);
 		if (ret)
 			return ret;
 	}
 
-	if (gpu->clk_bus) {
-		ret = clk_prepare_enable(gpu->clk_bus);
+	if (gpu->clk_shader) {
+		ret = clk_prepare_enable(gpu->clk_shader);
 		if (ret)
-			goto disable_clk_reg;
+			goto disable_clk_core;
 	}
 
-	if (gpu->clk_core) {
-		ret = clk_prepare_enable(gpu->clk_core);
+	if (gpu->clk_bus) {
+		ret = clk_prepare_enable(gpu->clk_bus);
 		if (ret)
-			goto disable_clk_bus;
+			goto disable_clk_shader;
 	}
 
-	if (gpu->clk_shader) {
-		ret = clk_prepare_enable(gpu->clk_shader);
+	if (gpu->clk_reg) {
+		ret = clk_prepare_enable(gpu->clk_reg);
 		if (ret)
-			goto disable_clk_core;
+			goto disable_clk_bus;
 	}
 
 	return 0;
 
-disable_clk_core:
-	if (gpu->clk_core)
-		clk_disable_unprepare(gpu->clk_core);
 disable_clk_bus:
 	if (gpu->clk_bus)
 		clk_disable_unprepare(gpu->clk_bus);
-disable_clk_reg:
-	if (gpu->clk_reg)
-		clk_disable_unprepare(gpu->clk_reg);
+disable_clk_shader:
+	if (gpu->clk_shader)
+		clk_disable_unprepare(gpu->clk_shader);
+disable_clk_core:
+	if (gpu->clk_core)
+		clk_disable_unprepare(gpu->clk_core);
 
 	return ret;
 }
 
 static int etnaviv_gpu_clk_disable(struct etnaviv_gpu *gpu)
 {
+	if (gpu->clk_reg)
+		clk_disable_unprepare(gpu->clk_reg);
+	if (gpu->clk_bus)
+		clk_disable_unprepare(gpu->clk_bus);
 	if (gpu->clk_shader)
 		clk_disable_unprepare(gpu->clk_shader);
 	if (gpu->clk_core)
 		clk_disable_unprepare(gpu->clk_core);
-	if (gpu->clk_bus)
-		clk_disable_unprepare(gpu->clk_bus);
-	if (gpu->clk_reg)
-		clk_disable_unprepare(gpu->clk_reg);
 
 	return 0;
 }
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
