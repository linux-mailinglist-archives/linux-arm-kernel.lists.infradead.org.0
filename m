Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A7C415CFC6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 03:16:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JyKVuP3oInxG6RxcrRXg85vbQB4fdTr2uuOXt2IimTA=; b=aroc62Jc6PgPqFb9dl9MBQtgyP
	7dj0VfKviKdOn7FkAzPKNTg0V7fKmLE/p23L02bdY3WftXhr77EOHddaatRTr+o8ZNMbMJfgsjmZT
	UQcPZtYFDN/ulY5ah17dCGPkfGy6pVeCTl98nf2YXdrkO/IeogyW1O0v+JWbVtq0CGwYVCO7SpA24
	zkA7BnmKQTi0O5I+QEG0hvrlwONDI96yNhTn0zZv4KJO+5RgLeXvD7UvKhAFy6Gj1SKx9NCEQLBMU
	Bk/jrKAm8u4851aBbkmBBK6SJwP7GRkNplm3vqVwvepyiEVHAAlxYWt4dMY9DgFU1Cv+FRsqpyKm5
	OMXyobvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2QXI-0000i9-I7; Fri, 14 Feb 2020 02:16:56 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2QWH-0008Iy-4H
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 02:15:54 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id E3FA81A9CD1;
 Fri, 14 Feb 2020 03:15:51 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 9D28D1A9CC2;
 Fri, 14 Feb 2020 03:15:46 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 1520040314;
 Fri, 14 Feb 2020 10:15:40 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH V2 5/5] ARM: dts: imx7s: make gpt node name generic
Date: Fri, 14 Feb 2020 10:10:11 +0800
Message-Id: <1581646211-30995-5-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1581646211-30995-1-git-send-email-Anson.Huang@nxp.com>
References: <1581646211-30995-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_181553_328388_74754995 
X-CRM114-Status: UNSURE (   7.94  )
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

Node name should be generic, use "timer" instead of "gpt" for gpt node.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V1:
	- improve commit subject, no patch change.
---
 arch/arm/boot/dts/imx7s.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/imx7s.dtsi b/arch/arm/boot/dts/imx7s.dtsi
index 4548bf6..a8d0351 100644
--- a/arch/arm/boot/dts/imx7s.dtsi
+++ b/arch/arm/boot/dts/imx7s.dtsi
@@ -443,7 +443,7 @@
 				fsl,input-sel = <&iomuxc>;
 			};
 
-			gpt1: gpt@302d0000 {
+			gpt1: timer@302d0000 {
 				compatible = "fsl,imx7d-gpt", "fsl,imx6sx-gpt";
 				reg = <0x302d0000 0x10000>;
 				interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
@@ -452,7 +452,7 @@
 				clock-names = "ipg", "per";
 			};
 
-			gpt2: gpt@302e0000 {
+			gpt2: timer@302e0000 {
 				compatible = "fsl,imx7d-gpt", "fsl,imx6sx-gpt";
 				reg = <0x302e0000 0x10000>;
 				interrupts = <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
@@ -462,7 +462,7 @@
 				status = "disabled";
 			};
 
-			gpt3: gpt@302f0000 {
+			gpt3: timer@302f0000 {
 				compatible = "fsl,imx7d-gpt", "fsl,imx6sx-gpt";
 				reg = <0x302f0000 0x10000>;
 				interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
@@ -472,7 +472,7 @@
 				status = "disabled";
 			};
 
-			gpt4: gpt@30300000 {
+			gpt4: timer@30300000 {
 				compatible = "fsl,imx7d-gpt", "fsl,imx6sx-gpt";
 				reg = <0x30300000 0x10000>;
 				interrupts = <GIC_SPI 52 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
