Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69DA69E7FD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 14:32:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZxFl5N9YbVU6VM/wkimVwZQ3zZNVGq0b50kd23cHqeg=; b=k5uzrMb0AwG43O
	kdABXsWM3eyMENBnegz76YlYcG57js6Yyf5bHZ1G1ngoaMtX4fUbVwnE2BrvwI9mDLSc2DQzB38R4
	np4HkYgIY1qwT7jlfIhH3tHVw+Qy0Dv3i3TI7L16AY54sIXuJWnaxVxojJ11Gv5kZx5K7FrttGU0+
	siCcxy/hK4HXY99Trx9Tzk1hY9HSmqtxUrcQnlvfNaamYL6ikdi4MSKd6owX4jansXObMEmhIMekd
	dB6XcqypOHafWncZ/xtXNeGXL6gwZRkCgIqnjQSXUgsiEY+4bNNSvGeKi373c7yp/z7Uq8iuQlo74
	IYa5XqSwEwdQrcKt46ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2ae3-0001gw-OC; Tue, 27 Aug 2019 12:32:19 +0000
Received: from protonic.xs4all.nl ([83.163.252.89] helo=protonic.nl)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2adb-0001Ue-KM
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 12:31:53 +0000
Received: from erd987.prtnl (erd987.prtnl [192.168.237.3])
 by sparta (Postfix) with ESMTP id 8694B44A00C5;
 Tue, 27 Aug 2019 14:33:48 +0200 (CEST)
From: Robin van der Gracht <robin@protonic.nl>
To: Robin Gong <yibin.gong@nxp.com>
Subject: [PATCH v2 2/2] arm: dts: imx6qdl: snvs-pwrkey: Change compatible
 string
Date: Tue, 27 Aug 2019 14:32:16 +0200
Message-Id: <20190827123216.32728-2-robin@protonic.nl>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190827123216.32728-1-robin@protonic.nl>
References: <20190827123216.32728-1-robin@protonic.nl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_053151_907342_BB48ADAB 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree @ vger . kernel . org" <devicetree@vger.kernel.org>,
 Robin van der Gracht <robin@protonic.nl>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 "linux-kernel @ vger . kernel . org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "linux-input @ vger . kernel . org" <linux-input@vger.kernel.org>,
 Adam Ford <aford173@gmail.com>, Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel @ lists . infradead . org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The older imx6 SoCs do not send a power key press interrupt, instead it
sends a power down request interrupt when the key is released between
750ms and 5 seconds. The driver uses a different compatible string to ID
the older SoCs.

Signed-off-by: Robin van der Gracht <robin@protonic.nl>
---
 arch/arm/boot/dts/imx6qdl.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6qdl.dtsi b/arch/arm/boot/dts/imx6qdl.dtsi
index b3a77bcf00d5..91b97816881c 100644
--- a/arch/arm/boot/dts/imx6qdl.dtsi
+++ b/arch/arm/boot/dts/imx6qdl.dtsi
@@ -836,7 +836,7 @@
 				};
 
 				snvs_pwrkey: snvs-powerkey {
-					compatible = "fsl,sec-v4.0-pwrkey";
+					compatible = "fsl,imx6qdl-snvs-pwrkey";
 					regmap = <&snvs>;
 					interrupts = <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
 					linux,keycode = <KEY_POWER>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
