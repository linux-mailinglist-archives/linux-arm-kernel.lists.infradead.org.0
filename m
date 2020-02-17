Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2982216149E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 15:28:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zD+oxZrfGYD/wVc3W74LkThYrirc6m8DSV0U/JJkS2g=; b=KGghS6NcJXlfG2
	SW2WZGzY8Qa8U4/71C3nz+806PPV0yZjVftGBNoT4vQKT94bMKXuFXXJTpk5qMG9SgwQKvehyH7qx
	fdarA6nlj4RSz6t8xvf+Abf39xZ9pb5N9STTggOYAnZCMF9yA3Xuv1eIZ9a1YUgBChZVEDyvkFdCC
	92svN1Ouc/8r/+5Yv0HW6fms0HC96N4U64HdVAqZNKDpfq+ZOrKq7tSOAHIinftuOAC184RGjjo2H
	vheH38xVwsgaykmKdwNcqElGB0VROmWEM4MHV6SuCb0EpuGCOmceUgAJbfeSsgUndmjy+XoJWzujG
	/NKGFYj+Qo4n3Q2PQVWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3hNI-0000Rv-F2; Mon, 17 Feb 2020 14:27:52 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3hMf-0008IT-RP
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 14:27:15 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01HER5ni084812;
 Mon, 17 Feb 2020 08:27:05 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1581949625;
 bh=MOTssjoB0GIV30lVcJaxAIVOL5DWVb4N01J+ze4pt64=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=mUDo/OGXVlzNFKGwEW1rIXWQYkfjSOHuH6Y8MLHM+cBsMqpHIOK6N55zKAoed6SmJ
 jXyevT2SOpBJR8jlfS62LsumwBhpZ/IvXVU0YEDdP8cJTztFPTn9EQCq3oZR2AvVJy
 RnwmPPjW6rFF/q+IblegAJ/i7bgvA37Q/0oEnjkQ=
Received: from DFLE111.ent.ti.com (dfle111.ent.ti.com [10.64.6.32])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 01HER4Un117386
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 17 Feb 2020 08:27:05 -0600
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 17
 Feb 2020 08:27:03 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 17 Feb 2020 08:27:04 -0600
Received: from a0230074-OptiPlex-7010.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01HEQoJN033875;
 Mon, 17 Feb 2020 08:26:59 -0600
From: Faiz Abbas <faiz_abbas@ti.com>
To: <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <netdev@vger.kernel.org>,
 <linux-can@vger.kernel.org>
Subject: [PATCH v2 2/3] can: m_can: m_can_platform: Add support for enabling
 transceiver
Date: Mon, 17 Feb 2020 19:58:35 +0530
Message-ID: <20200217142836.23702-3-faiz_abbas@ti.com>
X-Mailer: git-send-email 2.19.2
In-Reply-To: <20200217142836.23702-1-faiz_abbas@ti.com>
References: <20200217142836.23702-1-faiz_abbas@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_062713_984347_3F578B52 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, sriram.dash@samsung.com,
 lgirdwood@gmail.com, robh+dt@kernel.org, faiz_abbas@ti.com, broonie@kernel.org,
 mkl@pengutronix.de, dmurphy@ti.com, wg@grandegger.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CAN transceivers on some boards have a standby line which can be
toggled to enable/disable the transceiver. Model this as an optional
fixed xceiver regulator.

Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
Acked-by: Sriram Dash <sriram.dash@samsung.com>
---
 drivers/net/can/m_can/m_can_platform.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/can/m_can/m_can_platform.c b/drivers/net/can/m_can/m_can_platform.c
index 38ea5e600fb8..719468fab507 100644
--- a/drivers/net/can/m_can/m_can_platform.c
+++ b/drivers/net/can/m_can/m_can_platform.c
@@ -6,6 +6,7 @@
 // Copyright (C) 2018-19 Texas Instruments Incorporated - http://www.ti.com/
 
 #include <linux/platform_device.h>
+#include <linux/regulator/consumer.h>
 
 #include "m_can.h"
 
@@ -57,6 +58,7 @@ static int m_can_plat_probe(struct platform_device *pdev)
 {
 	struct m_can_classdev *mcan_class;
 	struct m_can_plat_priv *priv;
+	struct regulator *reg_xceiver;
 	struct resource *res;
 	void __iomem *addr;
 	void __iomem *mram_addr;
@@ -111,6 +113,10 @@ static int m_can_plat_probe(struct platform_device *pdev)
 
 	m_can_init_ram(mcan_class);
 
+	reg_xceiver = devm_regulator_get_optional(&pdev->dev, "xceiver");
+	if (PTR_ERR(reg_xceiver) == -EPROBE_DEFER)
+		return -EPROBE_DEFER;
+
 	ret = m_can_class_register(mcan_class);
 
 failed_ret:
-- 
2.19.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
