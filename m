Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9BC94FB6E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Jun 2019 14:03:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=j5xjoq6QCuu/53Rh9FkPRWrrr16E+8GwYHw9nNgytyc=; b=NpW
	BqkPxKDH2HFe3Q+bbDPGp+6oEbnm4HHXfCJ/jJVMwAE1QNJrlrlR+qm1iEgAWXE/eNROt2iyQ6mYO
	LIsusJfwZiAmzv0cjT93LzjbxGEbNIKW8pQVeX/R17xImz6H/xTsFm4NCVxDte40VYu1mJZNGz60G
	uF6mrIdR1XV0e2eDLBOQxS+Hx2SN8pnNq5h0JG1dMu0MrUzF0uICgQlhfSPNz5PiIYJxyHhCaqxpB
	X3S/lZLCXDZdgH9POIF4p5sWDmVq+XxzbtunGJrSSvtfAVB+9KyqLVvf6Di7emmD/dcip8zSZgD8T
	AHVeFvysKhQg8iVk28v22rHZJQ3DPLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hf1D5-0003Xr-Oo; Sun, 23 Jun 2019 12:03:03 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hf1Cv-0003WR-UF
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Jun 2019 12:02:55 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 1B1FA2003C4;
 Sun, 23 Jun 2019 14:02:50 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 2B8E8200133;
 Sun, 23 Jun 2019 14:02:41 +0200 (CEST)
Received: from mega.ap.freescale.net (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 3C2FD402CF;
 Sun, 23 Jun 2019 20:02:30 +0800 (SGT)
From: Anson.Huang@nxp.com
To: daniel.lezcano@linaro.org, tglx@linutronix.de, robh+dt@kernel.org,
 mark.rutland@arm.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, l.stach@pengutronix.de,
 abel.vesa@nxp.com, ccaione@baylibre.com, angus@akkea.ca,
 andrew.smirnov@gmail.com, agx@sigxcpu.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 1/3] clocksource/drivers/sysctr: Add optional
 clock-frequency property
Date: Sun, 23 Jun 2019 20:04:32 +0800
Message-Id: <20190623120434.19556-1-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_050254_116825_396ED37C 
X-CRM114-Status: UNSURE (   7.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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

From: Anson Huang <Anson.Huang@nxp.com>

Systems which use platform driver model for clock driver require the
clock frequency to be supplied via device tree when system counter
driver is enabled.

This is necessary as in the platform driver model the of_clk operations
do not work correctly because system counter driver is initialized in
early phase of system boot up, and clock driver using platform driver
model is NOT ready at that time, it will cause system counter driver
initialization failed.

Add the optinal clock-frequency to the device tree bindings of the NXP
system counter, so the frequency can be handed in and the of_clk
operations can be skipped.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V1:
	- improve commit log, no content change.
---
 Documentation/devicetree/bindings/timer/nxp,sysctr-timer.txt | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/timer/nxp,sysctr-timer.txt b/Documentation/devicetree/bindings/timer/nxp,sysctr-timer.txt
index d576599..c9907a0 100644
--- a/Documentation/devicetree/bindings/timer/nxp,sysctr-timer.txt
+++ b/Documentation/devicetree/bindings/timer/nxp,sysctr-timer.txt
@@ -14,6 +14,11 @@ Required properties:
 - clocks : 	    Specifies the counter clock.
 - clock-names: 	    Specifies the clock's name of this module
 
+Optional properties:
+
+- clock-frequency : Specifies system counter clock frequency and indicates system
+		    counter driver to skip clock operations.
+
 Example:
 
 	system_counter: timer@306a0000 {
@@ -22,4 +27,5 @@ Example:
 		clocks = <&clk_8m>;
 		clock-names = "per";
 		interrupts = <GIC_SPI 47 IRQ_TYPE_LEVEL_HIGH>;
+		clock-frequency = <8333333>;
 	};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
