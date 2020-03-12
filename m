Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06AE3182CDD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 10:57:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Lybm5tTe+bQdvVLDuBY7l1I4LzNJeY2p2GBdZEKsQxc=; b=FkXomGtFIOFsPyuaalPHDmRZ+M
	HbktnG+LdpD08RIPfF/Fo2x7r5IIGV0TrWJ3LBLR1LeTG3iRdkpzRpAu7eCX3NNGAHHkIZrRaT0ym
	ZEinKSgqPkkSRv/6wvnkETEnUqmYET38Fhx3miD0YdsmkeVjWN78+FSWvBwKaDVvovG7HvFROV71W
	gL+vBkDNfxlIp6ytwwgbtsGUQDfGl6nfBdwGYhoxcNG+MeJaRWqdvFvU88g4bWPn/nlxBF2TrW3yS
	kZ4/43pklwuMRSCCdTCoiAsMjHdI+FE8RYIk+kNDIqaNs+wqQRmgVx01pKo5HzxG1j5A60ooPutZ0
	c006qNmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCKaY-0003xA-3c; Thu, 12 Mar 2020 09:57:14 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCKaB-0003mj-1e
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 09:56:52 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 855091A0F32;
 Thu, 12 Mar 2020 10:56:48 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 484341A0A59;
 Thu, 12 Mar 2020 10:56:43 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id B71F1402D5;
 Thu, 12 Mar 2020 17:56:36 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] ARM: dts: imx7d: Add cpu1 supply
Date: Thu, 12 Mar 2020 17:50:13 +0800
Message-Id: <1584006613-31623-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584006613-31623-1-git-send-email-Anson.Huang@nxp.com>
References: <1584006613-31623-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_025651_223069_0821A967 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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

Each cpu-core is supposed to list its supply separately, add
supply for cpu1.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm/boot/dts/imx7d-cl-som-imx7.dts | 4 ++++
 arch/arm/boot/dts/imx7d-colibri.dtsi    | 4 ++++
 arch/arm/boot/dts/imx7d-nitrogen7.dts   | 4 ++++
 arch/arm/boot/dts/imx7d-sdb.dts         | 4 ++++
 arch/arm/boot/dts/imx7d-tqma7.dtsi      | 4 ++++
 5 files changed, 20 insertions(+)

diff --git a/arch/arm/boot/dts/imx7d-cl-som-imx7.dts b/arch/arm/boot/dts/imx7d-cl-som-imx7.dts
index 89267cd..713483c 100644
--- a/arch/arm/boot/dts/imx7d-cl-som-imx7.dts
+++ b/arch/arm/boot/dts/imx7d-cl-som-imx7.dts
@@ -37,6 +37,10 @@
 	cpu-supply = <&sw1a_reg>;
 };
 
+&cpu1 {
+	cpu-supply = <&sw1a_reg>;
+};
+
 &fec1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_enet1>;
diff --git a/arch/arm/boot/dts/imx7d-colibri.dtsi b/arch/arm/boot/dts/imx7d-colibri.dtsi
index e2e327f..cae3299 100644
--- a/arch/arm/boot/dts/imx7d-colibri.dtsi
+++ b/arch/arm/boot/dts/imx7d-colibri.dtsi
@@ -50,6 +50,10 @@
 	};
 };
 
+&cpu1 {
+	cpu-supply = <&reg_DCDC2>;
+};
+
 &gpmi {
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/imx7d-nitrogen7.dts b/arch/arm/boot/dts/imx7d-nitrogen7.dts
index 6b4acea..e0751e6 100644
--- a/arch/arm/boot/dts/imx7d-nitrogen7.dts
+++ b/arch/arm/boot/dts/imx7d-nitrogen7.dts
@@ -121,6 +121,10 @@
 	cpu-supply = <&sw1a_reg>;
 };
 
+&cpu1 {
+	cpu-supply = <&sw1a_reg>;
+};
+
 &fec1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_enet1>;
diff --git a/arch/arm/boot/dts/imx7d-sdb.dts b/arch/arm/boot/dts/imx7d-sdb.dts
index 869efbc..17cca8a 100644
--- a/arch/arm/boot/dts/imx7d-sdb.dts
+++ b/arch/arm/boot/dts/imx7d-sdb.dts
@@ -162,6 +162,10 @@
 	cpu-supply = <&sw1a_reg>;
 };
 
+&cpu1 {
+	cpu-supply = <&sw1a_reg>;
+};
+
 &ecspi3 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_ecspi3>;
diff --git a/arch/arm/boot/dts/imx7d-tqma7.dtsi b/arch/arm/boot/dts/imx7d-tqma7.dtsi
index 8ad3048..598aed1 100644
--- a/arch/arm/boot/dts/imx7d-tqma7.dtsi
+++ b/arch/arm/boot/dts/imx7d-tqma7.dtsi
@@ -9,3 +9,7 @@
 
 #include "imx7d.dtsi"
 #include "imx7-tqma7.dtsi"
+
+&cpu1 {
+	cpu-supply = <&sw1a_reg>;
+};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
