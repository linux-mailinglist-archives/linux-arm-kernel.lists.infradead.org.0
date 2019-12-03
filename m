Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB2710F8C3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 08:32:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jsCxLTTVJvBR8wKPKcK5MZ8HW/iT+jB8YFcyrfVQZJU=; b=RmjbMrzL1CDefh
	T/yKVuDZ9HM2ygK+HP9+Gnw57jY19n5A/rnhCu8++2b9PqJndyIXc48h3hK2Qab22GQN8yhRkT69I
	67qjH69ds65VPU7s2WudxIXGTaQYwtzLR6ZY0HB9x3C5H/zlrJZKrglKEx44TTAhyCpyGVnS838FJ
	iGLyinrMAHubQmVJ/M3R2Vmtd+jx/g7ayACQs02NkKgYM7mPMjJpi0sKnS+u7N6ra/mVTv8fDxEP6
	HtJlznotPbWIwAIwmAJLAkwrNgFrTTApGafZKYFCBA7d0O3t4QKmFG/10bhDDlcJXGP7P13E0IT1l
	nyM2vMyl5KgKd4RCkYMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic2fj-0006lt-Gs; Tue, 03 Dec 2019 07:32:35 +0000
Received: from mail-sz.amlogic.com ([211.162.65.117])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic2fb-0006kC-4l; Tue, 03 Dec 2019 07:32:28 +0000
Received: from droid12-sz.software.amlogic (10.28.8.22) by mail-sz.amlogic.com
 (10.28.11.5) with Microsoft SMTP Server id 15.1.1591.10;
 Tue, 3 Dec 2019 15:32:44 +0800
From: Xingyu Chen <xingyu.chen@amlogic.com>
To: Kevin Hilman <khilman@baylibre.com>, Neil Armstrong
 <narmstrong@baylibre.com>, Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>
Subject: [PATCH] arm64: dts: a1: add saradc controller
Date: Tue, 3 Dec 2019 15:32:12 +0800
Message-ID: <1575358332-44866-1-git-send-email-xingyu.chen@amlogic.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.28.8.22]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_233227_391457_C199ECDB 
X-CRM114-Status: UNSURE (   8.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Qianggui Song <qianggui.song@amlogic.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jianxin Pan <jianxin.pan@amlogic.com>,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Jian Hu <jian.hu@amlogic.com>,
 Xingyu Chen <xingyu.chen@amlogic.com>, linux-amlogic@lists.infradead.org,
 Jonathan Cameron <jic23@kernel.org>, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The saradc controller in Meson-A1 is the same as the Meson-G12 series SoCs,
so we use the same compatible string.

Signed-off-by: Xingyu Chen <xingyu.chen@amlogic.com>

---
This patch is based on A1 clock patchset at [0].

[0] https://lore.kernel.org/linux-amlogic/20191129144605.182774-1-jian.hu@amlogic.com
---
 arch/arm64/boot/dts/amlogic/meson-a1.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
index 7210ad0..cad1756 100644
--- a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
@@ -93,6 +93,21 @@
 				clock-names = "xtal", "pclk", "baud";
 				status = "disabled";
 			};
+
+			saradc: adc@2c00 {
+				compatible = "amlogic,meson-g12a-saradc",
+					     "amlogic,meson-saradc";
+				reg = <0x0 0x2c00 0x0 0x48>;
+				#io-channel-cells = <1>;
+				interrupts = <GIC_SPI 35 IRQ_TYPE_EDGE_RISING>;
+				clocks = <&xtal>,
+					 <&clkc_periphs CLKID_SARADC>,
+					 <&clkc_periphs CLKID_SARADC_CLK>,
+					 <&clkc_periphs CLKID_SARADC_SEL>;
+				clock-names = "clkin", "core", "adc_clk",
+					      "adc_sel";
+				status = "disabled";
+			};
 		};
 
 		gic: interrupt-controller@ff901000 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
