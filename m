Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D92D6417B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 08:41:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=p12dnu403I2MR9rDrUa0NcaHs/YQP/tVOwB1mUzHqRo=; b=O0ESnnmjgieqbMdh44/Fos1u59
	SbH2nD+k3ovwOGigDuI0iG9UvTannGysogaWuCWd3YnETYVpa6lASFo/GNSVnl0e4egOlLTxnLcFw
	aYU3zRPX9yk3oC/0s4zmfIoYrB9ahpwTERYWXLgJBA+SvOK+RT3Uh6K0ZT18EhA4z0Yz77qQyuZDV
	SUJQmvyl2kVuTQ/EhYbCY6OrOWYCHv/PuOn8rLHwyQq8Zf1O4b7sx4fGEq2GDE5DkamekwQo+Wepq
	/vyuXbayuJetMY96Eg0oyZuRTunIs9hweJreCqnjo3SjZ+l3VNh3Z+ADXRDLu5rQXw64BCW65yrFo
	D5LRAZDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl6Hj-00044v-Gl; Wed, 10 Jul 2019 06:40:59 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl6HE-0003r3-FI
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 06:40:29 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 4A4BD1A0293;
 Wed, 10 Jul 2019 08:40:27 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 4818B1A0192;
 Wed, 10 Jul 2019 08:40:14 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 7C3BD402DB;
 Wed, 10 Jul 2019 14:40:00 +0800 (SGT)
From: Anson.Huang@nxp.com
To: catalin.marinas@arm.com, will@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 daniel.lezcano@linaro.org, tglx@linutronix.de, leonard.crestez@nxp.com,
 aisheng.dong@nxp.com, daniel.baluta@nxp.com, ping.bai@nxp.com,
 l.stach@pengutronix.de, abel.vesa@nxp.com, andrew.smirnov@gmail.com,
 ccaione@baylibre.com, angus@akkea.ca, agx@sigxcpu.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: [PATCH V5 3/5] arm64: dts: imx8mm: Add system counter node
Date: Wed, 10 Jul 2019 14:30:54 +0800
Message-Id: <20190710063056.35689-3-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20190710063056.35689-1-Anson.Huang@nxp.com>
References: <20190710063056.35689-1-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_234028_659465_8D063DA2 
X-CRM114-Status: UNSURE (   7.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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

From: Anson Huang <Anson.Huang@nxp.com>

Add i.MX8MM system counter node to enable timer-imx-sysctr
broadcast timer driver.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V4:
	- update the clock info using fixed clock node;
	- correct the reg range;
	- update the interrupt number as the system counter driver ONLY uses 1 irq now.
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index b5637f8..8cf7f34 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -560,6 +560,14 @@
 				#pwm-cells = <2>;
 				status = "disabled";
 			};
+
+			system_counter: timer@306a0000 {
+				compatible = "nxp,sysctr-timer";
+				reg = <0x306a0000 0x20000>;
+				interrupts = <GIC_SPI 47 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&osc_24m>;
+				clock-names = "per";
+			};
 		};
 
 		aips3: bus@30800000 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
