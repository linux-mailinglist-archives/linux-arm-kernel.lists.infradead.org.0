Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 363D15F581
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 11:23:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UBIsMoYNXMswpaaiIbO9bNjJQOhiD4TR4f1qllvXRv4=; b=U31qR2c0B2TYywS1ip7EsncNPk
	hOLsFm8L71wVO3mfIPziZGvz5jfehpC7gmgKDtGh8hs0PhJToXxXgW2leI5FsGxrZ4AezF0ljieet
	e9YSINgVqBfMJYSs7EnbeWYZR8lSFQJxauFNt1wBDF1BmapVB6/GCL/BvvLsx+BfAP5/shgqW+SPD
	s4j48Py6ZzJZl/bBLqjkYD1g67W7P5KLViCBkkgtJQ7lMPABm1gPjkriQVYxMfjqEVGIa/35BPiKj
	cP97Hy1jdZ4TVKHzrYFjnrpl7JhScFOCK800Qjtos9N9zkEKR2wYGofEllmrMIlCEyeUgrx1HzD5u
	mVL4LoLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hixxN-0007o9-FQ; Thu, 04 Jul 2019 09:23:09 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hixwr-0007aM-EE
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 09:22:38 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 422891A0584;
 Thu,  4 Jul 2019 11:22:36 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 224201A0580;
 Thu,  4 Jul 2019 11:22:22 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 51405402E1;
 Thu,  4 Jul 2019 17:22:08 +0800 (SGT)
From: Anson.Huang@nxp.com
To: rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 catalin.marinas@arm.com, will@kernel.org, leonard.crestez@nxp.com,
 daniel.baluta@nxp.com, ping.bai@nxp.com, olof@lixom.net,
 maxime.ripard@bootlin.com, jagan@amarulasolutions.com,
 bjorn.andersson@linaro.org, dinguyen@kernel.org,
 enric.balletbo@collabora.com, marcin.juszkiewicz@linaro.org,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/4] dt-bindings: thermal: imx8mm-thermal: Add binding doc for
 i.MX8MM
Date: Thu,  4 Jul 2019 17:13:10 +0800
Message-Id: <20190704091313.9516-2-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20190704091313.9516-1-Anson.Huang@nxp.com>
References: <20190704091313.9516-1-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_022237_615099_F0991D68 
X-CRM114-Status: UNSURE (   7.66  )
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

Add thermal binding doc for Freescale's i.MX8MM Thermal Monitoring Unit.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 .../devicetree/bindings/thermal/imx8mm-thermal.txt        | 15 +++++++++++++++
 1 file changed, 15 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt

diff --git a/Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt b/Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt
new file mode 100644
index 0000000..d09ae82
--- /dev/null
+++ b/Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt
@@ -0,0 +1,15 @@
+* Thermal Monitoring Unit (TMU) on Freescale i.MX8MM SoC
+
+Required properties:
+- compatible : Must be "fsl,imx8mm-tmu".
+- reg : Address range of TMU registers.
+- clocks : TMU's clock source.
+- #thermal-sensor-cells : Should be 0. See ./thermal.txt for a description.
+
+Example:
+tmu: tmu@30260000 {
+	compatible = "fsl,imx8mm-tmu";
+	reg = <0x30260000 0x10000>;
+	clocks = <&clk IMX8MM_CLK_TMU_ROOT>;
+	#thermal-sensor-cells = <0>;
+};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
