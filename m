Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC2941E6BBB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 21:53:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5n5oz+af8jVRka2ozKMEStB4JXCG7xtw2uonb+xpwf4=; b=VGg
	f81VITIsbWbnGRhWSrLqIuM6OA49THz/eD4zHlej7zZuXFae15ZL/IsRkjxsy15EpqSTyNcJNZy6Q
	e0WMJlSpBsmKdxYryO7OTZn/TMHIQUekm6fE5FiB5d3qZENDAcRPJ5Eoz5oQE3slmM2fI+EV8EHS4
	QNKcF80LtY6TAXHMcjVf2jg5dm6brd0BjFte+tjpHaSQ8xtr2j6gdSUOz354/B18KNkOgp5Fk8ONv
	3N0kOWskjRui/ZyaFU1Ehg/sDHoMliEf9eWgT3jaSyADLlUztWL67sZzLqqFBKVa90D8+qVuLLdE0
	qurJjlhG+nGXf4peSRBf0n6ij+VfTqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeOaj-0008GN-1i; Thu, 28 May 2020 19:53:25 +0000
Received: from lists.gateworks.com ([108.161.130.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeOaV-0008Ec-Gh
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 19:53:12 +0000
Received: from 068-189-091-139.biz.spectrum.com ([68.189.91.139]
 helo=tharvey.pdc.gateworks.com)
 by lists.gateworks.com with esmtp (Exim 4.82)
 (envelope-from <tharvey@gateworks.com>)
 id 1jeOdH-0000tP-Cd; Thu, 28 May 2020 19:56:03 +0000
From: Tim Harvey <tharvey@gateworks.com>
To: Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH] ARM: dts: imx6qdl-gw53xx: allow boot firmware to set eth1 MAC
Date: Thu, 28 May 2020 12:53:03 -0700
Message-Id: <1590695583-1327-1-git-send-email-tharvey@gateworks.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_125311_589231_A04F57EE 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, Tim Harvey <tharvey@gateworks.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The GW53xx has a PCIe based GbE as the 2nd ethernet device. The
boot firmware will populate the local-mac-address field of the
device aliased to ethernet1 thus adding the PCIe device to
dt allows boot firmware to set its MAC address.

Signed-off-by: Tim Harvey <tharvey@gateworks.com>
---
 arch/arm/boot/dts/imx6qdl-gw53xx.dtsi | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm/boot/dts/imx6qdl-gw53xx.dtsi b/arch/arm/boot/dts/imx6qdl-gw53xx.dtsi
index 8942bec..6601d07 100644
--- a/arch/arm/boot/dts/imx6qdl-gw53xx.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-gw53xx.dtsi
@@ -8,6 +8,7 @@
 / {
 	/* these are used by bootloader for disabling nodes */
 	aliases {
+		ethernet1 = &eth1;
 		led0 = &led0;
 		led1 = &led1;
 		led2 = &led2;
@@ -341,6 +342,23 @@
 	pinctrl-0 = <&pinctrl_pcie>;
 	reset-gpio = <&gpio1 29 GPIO_ACTIVE_LOW>;
 	status = "okay";
+
+	pcie@0,0,0 {
+		reg = <0x0000 0 0 0 0>;
+
+		pcie@1,0,0 {
+			reg = <0x0000 0 0 0 0>;
+
+			pcie@2,4,0 {
+				reg = <0x2000 0 0 0 0>;
+
+				eth1: pcie@4,0,0 {
+					reg = <0x0000 0 0 0 0>;
+					local-mac-address = [00 00 00 00 00 00];
+				};
+			};
+		};
+	};
 };
 
 &pwm2 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
