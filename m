Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A43FF18455D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 11:58:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zqXEMfba26ePQHC3bxsWa3ER7Eph7sG3HbmiSOU6V20=; b=ELne4uPcF38uiq
	3iCbShduVy+MwRc5F0FSUy8ve6UrJq6124lxHXiShmX+jH2zPj+svmAG+Bhdpv6jCWLjB/LStaHmA
	Nl19gqz8oc9Sp42MsjIBZaWvZx8aSzrHcUFH5Y2WGnRIF7d4drtLQfT/vgFrg8M4Gwp0oVTF+w34a
	PFmYY8ttia5PJ85/z1hFwfeBXPkUsttuXUxqMVGPeohLj4xHP2kBXM+iSEuWo1P81g0aaOjKIhpXe
	Trg6nWAv499yyOk3BSnVD2JykPP/HhGGF12X8rBxu3w0XVszmd/YbU3eI0xFsSIUDFSyndJv2ldzV
	DUx50DNDdYK/XLnNPHcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCi0j-0006x1-Fu; Fri, 13 Mar 2020 10:57:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCi0b-0006wi-Jx
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 10:57:43 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1jCi0Z-0001bm-Os; Fri, 13 Mar 2020 11:57:39 +0100
From: Lucas Stach <l.stach@pengutronix.de>
To: Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH] ARM: dts: imx51: add capture-subsystem device
Date: Fri, 13 Mar 2020 11:57:39 +0100
Message-Id: <20200313105739.25724-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_035741_657660_5BDB9C5A 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Fabio Estevam <festevam@gmail.com>, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, patchwork-lst@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Philipp Zabel <p.zabel@pengutronix.de>

Add IPU CSI ports and capture-subsystem device so the capture subsystem
part of the IPUv3EX can be used with the staging imx-media driver.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boot/dts/imx51.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm/boot/dts/imx51.dtsi b/arch/arm/boot/dts/imx51.dtsi
index dea86b98e9c3..09b371533726 100644
--- a/arch/arm/boot/dts/imx51.dtsi
+++ b/arch/arm/boot/dts/imx51.dtsi
@@ -104,6 +104,11 @@
 		#phy-cells = <0>;
 	};
 
+	capture-subsystem {
+		compatible = "fsl,imx-capture-subsystem";
+		ports = <&ipu_csi0>, <&ipu_csi1>;
+	};
+
 	display-subsystem {
 		compatible = "fsl,imx-display-subsystem";
 		ports = <&ipu_di0>, <&ipu_di1>;
@@ -143,6 +148,14 @@
 			clock-names = "bus", "di0", "di1";
 			resets = <&src 2>;
 
+			ipu_csi0: port@0 {
+				reg = <0>;
+			};
+
+			ipu_csi1: port@1 {
+				reg = <1>;
+			};
+
 			ipu_di0: port@2 {
 				reg = <2>;
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
