Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9445916F78B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 06:44:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yJ3oIHOBS18D2RFI4ECNIJ1hCYPZVbrawlfJgGjGwmE=; b=jtAaKsVU7HmJnb6ImqdwYnjsSR
	T0ak9Jvv17khPRz1r92Ak6GvDCYYw3LpGTYVvrxeYnDen3waFcg2hiDvukBeKyPw3lzjF+/y3IqfE
	T+ndsD6bAHnHuxSTaVJlB6URhSwab/0/pmdJCJkBYKnRCBj+V+8lQ3U7/+zcR2D+f8ZnI1tF7PG/k
	w7L/xdG84m1XFfV9ZJye6C9lLKjTNz2rZapXMUOZjx4tjIofiteAOlA7CW/ZLuPLb2rq2jgAv2TN1
	Quyu4KaW+gS+NC7ObUvVJCBNtoBcDaxdGT1UlcXuLh+rloZR7YwiyIA7SR2/N4CpXYljmk0fwYnVO
	L1GBzQUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6pUJ-0007WO-UI; Wed, 26 Feb 2020 05:44:03 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6pSb-000645-6N
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 05:42:20 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id F0211216721;
 Wed, 26 Feb 2020 06:42:15 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 63984216704;
 Wed, 26 Feb 2020 06:42:08 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id A32BE402CA;
 Wed, 26 Feb 2020 13:41:59 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 l.stach@pengutronix.de, abel.vesa@nxp.com, andrew.smirnov@gmail.com,
 agx@sigxcpu.org, angus@akkea.ca, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] ARM: dts: Make iomuxc node name generic
Date: Wed, 26 Feb 2020 13:36:18 +0800
Message-Id: <1582695378-25461-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582695378-25461-1-git-send-email-Anson.Huang@nxp.com>
References: <1582695378-25461-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_214217_627984_658403C8 
X-CRM114-Status: UNSURE (   7.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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

Node name should be generic, use "pinctrl" instead of "iomuxc"
for all i.MX6/7 SoCs.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm/boot/dts/imx6dl.dtsi  | 2 +-
 arch/arm/boot/dts/imx6q.dtsi   | 2 +-
 arch/arm/boot/dts/imx6qdl.dtsi | 2 +-
 arch/arm/boot/dts/imx6sl.dtsi  | 2 +-
 arch/arm/boot/dts/imx6sx.dtsi  | 2 +-
 arch/arm/boot/dts/imx6ul.dtsi  | 2 +-
 arch/arm/boot/dts/imx7s.dtsi   | 2 +-
 7 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boot/dts/imx6dl.dtsi b/arch/arm/boot/dts/imx6dl.dtsi
index 4b3a128..bba25d0 100644
--- a/arch/arm/boot/dts/imx6dl.dtsi
+++ b/arch/arm/boot/dts/imx6dl.dtsi
@@ -86,7 +86,7 @@
 		};
 
 		aips1: bus@2000000 {
-			iomuxc: iomuxc@20e0000 {
+			iomuxc: pinctrl@20e0000 {
 				compatible = "fsl,imx6dl-iomuxc";
 			};
 
diff --git a/arch/arm/boot/dts/imx6q.dtsi b/arch/arm/boot/dts/imx6q.dtsi
index 0fad13f..907cf83 100644
--- a/arch/arm/boot/dts/imx6q.dtsi
+++ b/arch/arm/boot/dts/imx6q.dtsi
@@ -181,7 +181,7 @@
 				};
 			};
 
-			iomuxc: iomuxc@20e0000 {
+			iomuxc: pinctrl@20e0000 {
 				compatible = "fsl,imx6q-iomuxc";
 			};
 		};
diff --git a/arch/arm/boot/dts/imx6qdl.dtsi b/arch/arm/boot/dts/imx6qdl.dtsi
index 70fb8b5..8baad74 100644
--- a/arch/arm/boot/dts/imx6qdl.dtsi
+++ b/arch/arm/boot/dts/imx6qdl.dtsi
@@ -908,7 +908,7 @@
 				};
 			};
 
-			iomuxc: iomuxc@20e0000 {
+			iomuxc: pinctrl@20e0000 {
 				compatible = "fsl,imx6dl-iomuxc", "fsl,imx6q-iomuxc";
 				reg = <0x20e0000 0x4000>;
 			};
diff --git a/arch/arm/boot/dts/imx6sl.dtsi b/arch/arm/boot/dts/imx6sl.dtsi
index c8ec46f..0359902 100644
--- a/arch/arm/boot/dts/imx6sl.dtsi
+++ b/arch/arm/boot/dts/imx6sl.dtsi
@@ -728,7 +728,7 @@
 				reg = <0x020e0000 0x38>;
 			};
 
-			iomuxc: iomuxc@20e0000 {
+			iomuxc: pinctrl@20e0000 {
 				compatible = "fsl,imx6sl-iomuxc";
 				reg = <0x020e0000 0x4000>;
 			};
diff --git a/arch/arm/boot/dts/imx6sx.dtsi b/arch/arm/boot/dts/imx6sx.dtsi
index e47d346..43e36e1 100644
--- a/arch/arm/boot/dts/imx6sx.dtsi
+++ b/arch/arm/boot/dts/imx6sx.dtsi
@@ -806,7 +806,7 @@
 				};
 			};
 
-			iomuxc: iomuxc@20e0000 {
+			iomuxc: pinctrl@20e0000 {
 				compatible = "fsl,imx6sx-iomuxc";
 				reg = <0x020e0000 0x4000>;
 			};
diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
index e1807e9..c53898b 100644
--- a/arch/arm/boot/dts/imx6ul.dtsi
+++ b/arch/arm/boot/dts/imx6ul.dtsi
@@ -693,7 +693,7 @@
 				interrupt-parent = <&intc>;
 			};
 
-			iomuxc: iomuxc@20e0000 {
+			iomuxc: pinctrl@20e0000 {
 				compatible = "fsl,imx6ul-iomuxc";
 				reg = <0x020e0000 0x4000>;
 			};
diff --git a/arch/arm/boot/dts/imx7s.dtsi b/arch/arm/boot/dts/imx7s.dtsi
index 196bbd6..6932600 100644
--- a/arch/arm/boot/dts/imx7s.dtsi
+++ b/arch/arm/boot/dts/imx7s.dtsi
@@ -490,7 +490,7 @@
 				status = "disabled";
 			};
 
-			iomuxc: iomuxc@30330000 {
+			iomuxc: pinctrl@30330000 {
 				compatible = "fsl,imx7d-iomuxc";
 				reg = <0x30330000 0x10000>;
 			};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
