Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 813D55B867
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 11:49:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=bym1kkSBIylaW4R1D5xGWcGiMam6xVElUicwzGighSg=; b=Lsh
	uHtCMXJdYkPcWyLCPN1IOTQrJM0vY8Qd5d973CPFgNTRUB0LXGHFBJhgNCePIwE1eV/rEInG/hMvK
	5GIcF0TIqDi5xpS7SWm8ks+6TBsbG+/xnrCoWZNsDfR97Uq3Gr7r0APqNwQdak86WVyCUn7CcSYJb
	nmXEqYzY19l3SIB35UNBfUUPcGjVoOFW7HktBARzUegOuRK/hN734L5fnTKajE+7wAJtnedxT+MpJ
	y2SnKJKi4AAHQlhcCgFXB0QVEhItLOdpu99q2qVcxxbogBo4gvU9WG5X7EccKKiTLRs/V/OEDzT6G
	Oxdrq48A61TKeIfwy6RZPi9q4yP3TFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhswW-0005rB-I3; Mon, 01 Jul 2019 09:49:48 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhsvc-0005Hr-CM
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 09:48:53 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 164042008E0;
 Mon,  1 Jul 2019 11:48:51 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 85B67200927;
 Mon,  1 Jul 2019 11:48:43 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 3453B40297;
 Mon,  1 Jul 2019 17:48:34 +0800 (SGT)
From: Anson.Huang@nxp.com
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 p.zabel@pengutronix.de, leonard.crestez@nxp.com, viresh.kumar@linaro.org,
 daniel.baluta@nxp.com, ping.bai@nxp.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] reset: imx7: Add support for i.MX8MM SoC
Date: Mon,  1 Jul 2019 17:39:43 +0800
Message-Id: <20190701093944.5540-1-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.14.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_024852_750241_633F641B 
X-CRM114-Status: UNSURE (   8.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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

i.MX8MM SoC has a subset of i.MX8MQ IP block variant, it can reuse
the i.MX8MQ reset controller driver and just skip those non-existing
IP blocks, add support for i.MX8MM SoC reset control.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/reset/reset-imx7.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/reset/reset-imx7.c b/drivers/reset/reset-imx7.c
index 3ecd770..941131f 100644
--- a/drivers/reset/reset-imx7.c
+++ b/drivers/reset/reset-imx7.c
@@ -207,6 +207,26 @@ static int imx8mq_reset_set(struct reset_controller_dev *rcdev,
 	const unsigned int bit = imx7src->signals[id].bit;
 	unsigned int value = assert ? bit : 0;
 
+	if (of_machine_is_compatible("fsl,imx8mm")) {
+		switch (id) {
+		case IMX8MQ_RESET_HDMI_PHY_APB_RESET:
+		case IMX8MQ_RESET_PCIEPHY2: /* fallthrough */
+		case IMX8MQ_RESET_PCIEPHY2_PERST: /* fallthrough */
+		case IMX8MQ_RESET_PCIE2_CTRL_APPS_EN: /* fallthrough */
+		case IMX8MQ_RESET_PCIE2_CTRL_APPS_TURNOFF: /* fallthrough */
+		case IMX8MQ_RESET_MIPI_CSI1_CORE_RESET: /* fallthrough */
+		case IMX8MQ_RESET_MIPI_CSI1_PHY_REF_RESET: /* fallthrough */
+		case IMX8MQ_RESET_MIPI_CSI1_ESC_RESET: /* fallthrough */
+		case IMX8MQ_RESET_MIPI_CSI2_CORE_RESET: /* fallthrough */
+		case IMX8MQ_RESET_MIPI_CSI2_PHY_REF_RESET: /* fallthrough */
+		case IMX8MQ_RESET_MIPI_CSI2_ESC_RESET: /* fallthrough */
+		case IMX8MQ_RESET_DDRC2_PHY_RESET: /* fallthrough */
+		case IMX8MQ_RESET_DDRC2_CORE_RESET: /* fallthrough */
+		case IMX8MQ_RESET_DDRC2_PRST: /* fallthrough */
+			return 0;
+		}
+	}
+
 	switch (id) {
 	case IMX8MQ_RESET_PCIEPHY:
 	case IMX8MQ_RESET_PCIEPHY2: /* fallthrough */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
