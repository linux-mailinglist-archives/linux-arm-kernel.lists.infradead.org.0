Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6434A3C0EA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 03:30:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=/Iph4MmtH+XL/ZcHp3zfX7612b5G/L4UiLyAzRtyTC0=; b=VWX
	jnHAJax878XyAj6RrtJ3Kskye8U0KrhlihAxYNUJT3NXmVGHbPuRUyGebBQb2DHW1ZjHT0PZr1a6j
	jUZu0b7d32vfu4Kw2ql9LNL7KBR4BaY6YZ+E4poynb/hGBaKbgp+g9mF0Lxs22vN+DiI0w7wcrCsD
	8W+GZdGUoJ4+/2yWFY0jNdcgf7LYVA2I8PXWlrv/Exm+imNYMNOzJx7IpBMQ9/DQODGH9/QM/YAr2
	1REtqWKY2SPBzGA9sfcVq4sfbohkVr2WC2p6DjTwSEB/DeyiRdrQWbM12FYNiGtm0jNdIJsQbqOiB
	byPYKFOWx56NwIjXlXsbYqHzz5XwNwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haVc3-0003GI-PM; Tue, 11 Jun 2019 01:30:11 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haVbn-0003Fc-3S
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 01:29:56 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 2E2A61A098E;
 Tue, 11 Jun 2019 03:29:48 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id A3BA01A0990;
 Tue, 11 Jun 2019 03:29:43 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id CA9EB402DD;
 Tue, 11 Jun 2019 09:29:37 +0800 (SGT)
From: Anson.Huang@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, leonard.crestez@nxp.com, viresh.kumar@linaro.org,
 abel.vesa@nxp.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] soc: imx: Add i.MX8MN SoC driver support
Date: Tue, 11 Jun 2019 09:31:25 +0800
Message-Id: <20190611013125.3434-1-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_182955_286347_B5E9D8BB 
X-CRM114-Status: UNSURE (   8.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Anson Huang <Anson.Huang@nxp.com>

This patch adds i.MX8MN SoC driver support:

root@imx8mnevk:~# cat /sys/devices/soc0/family
Freescale i.MX

root@imx8mnevk:~# cat /sys/devices/soc0/machine
NXP i.MX8MNano DDR4 EVK board

root@imx8mnevk:~# cat /sys/devices/soc0/soc_id
i.MX8MN

root@imx8mnevk:~# cat /sys/devices/soc0/revision
1.0

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/soc/imx/soc-imx8.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/imx/soc-imx8.c b/drivers/soc/imx/soc-imx8.c
index 3842d09..02309a2 100644
--- a/drivers/soc/imx/soc-imx8.c
+++ b/drivers/soc/imx/soc-imx8.c
@@ -55,7 +55,12 @@ static u32 __init imx8mm_soc_revision(void)
 	void __iomem *anatop_base;
 	u32 rev;
 
-	np = of_find_compatible_node(NULL, NULL, "fsl,imx8mm-anatop");
+	if (of_machine_is_compatible("fsl,imx8mm"))
+		np = of_find_compatible_node(NULL, NULL, "fsl,imx8mm-anatop");
+	else if (of_machine_is_compatible("fsl,imx8mn"))
+		np = of_find_compatible_node(NULL, NULL, "fsl,imx8mn-anatop");
+	else
+		np = NULL;
 	if (!np)
 		return 0;
 
@@ -79,9 +84,15 @@ static const struct imx8_soc_data imx8mm_soc_data = {
 	.soc_revision = imx8mm_soc_revision,
 };
 
+static const struct imx8_soc_data imx8mn_soc_data = {
+	.name = "i.MX8MN",
+	.soc_revision = imx8mm_soc_revision,
+};
+
 static const struct of_device_id imx8_soc_match[] = {
 	{ .compatible = "fsl,imx8mq", .data = &imx8mq_soc_data, },
 	{ .compatible = "fsl,imx8mm", .data = &imx8mm_soc_data, },
+	{ .compatible = "fsl,imx8mn", .data = &imx8mn_soc_data, },
 	{ }
 };
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
