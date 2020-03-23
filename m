Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BBD318F4C4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 13:36:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=3FowYU4bStsxZ8JRvdQHgQzhHNETruVfEpklrQ/SXuI=; b=UIo
	CJAKjTfat2Ew7V6smMdhldH+5c4RJ4G65k4qxIDbmBlbhAt9gPU5MKZfBT1IE2+ry9SwWfiYyoSI1
	P2YRFWdejFwA6bzQ0HLxqrR6IZR0wssY2uMgtKG3P3naYhRqlQG+R7sECo3bMIj6YwP2HFvWN0Jf3
	EFC24MbWjEyVDCvqzaoC+pAQIiPDuCUixumWyNkvbIweSS/GnrVYJycUIh/8nWnIVr4m1e/URVAXf
	8tJvxRrZ5KFZDqy+EyqbM9OfZCTncPwt5aL1EncJNl03+rBrHd+9sUEa56GWZgKPgTCRccSnjqnMO
	PMHvYlzDmSYYyfawWZeplv5/55olyrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGMJU-0000ih-Gx; Mon, 23 Mar 2020 12:36:16 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGMIu-0000Hs-Eb
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 12:35:42 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id C34101A13AC;
 Mon, 23 Mar 2020 13:35:35 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 430171A1397;
 Mon, 23 Mar 2020 13:35:28 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id EC0E0402BF;
 Mon, 23 Mar 2020 20:35:18 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: rui.zhang@intel.com, daniel.lezcano@linaro.org,
 amit.kucheria@verdurent.com, robh+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 horia.geanta@nxp.com, peng.fan@nxp.com, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH V3 1/3] dt-bindings: thermal: imx8mm-thermal: Add support for
 i.MX8MP
Date: Mon, 23 Mar 2020 20:28:22 +0800
Message-Id: <1584966504-21719-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_053540_812411_6D86D6D8 
X-CRM114-Status: UNSURE (   7.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add thermal binding doc for Freescale's i.MX8MP Thermal Monitoring Unit.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
No change.
---
 Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt b/Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt
index d09ae82..3629d3c 100644
--- a/Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt
+++ b/Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt
@@ -1,10 +1,10 @@
 * Thermal Monitoring Unit (TMU) on Freescale i.MX8MM SoC
 
 Required properties:
-- compatible : Must be "fsl,imx8mm-tmu".
+- compatible : Must be "fsl,imx8mm-tmu" or "fsl,imx8mp-tmu".
 - reg : Address range of TMU registers.
 - clocks : TMU's clock source.
-- #thermal-sensor-cells : Should be 0. See ./thermal.txt for a description.
+- #thermal-sensor-cells : Should be 0 or 1. See ./thermal.txt for a description.
 
 Example:
 tmu: tmu@30260000 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
