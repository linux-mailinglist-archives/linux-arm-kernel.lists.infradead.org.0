Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF8E2E9A1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 02:09:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Pu9+F0SEw4zxA/zM61R7vPb/Oww0yddkVifU8/iLCAQ=; b=Pg5AgESxRiQfKSRSfSa4YE4IZo
	5sU0Kaaut0jqGYKYAi/A2JbPIQMpwhNo7or8BzJOQS/lc0DEak1lvrjmFX0Cb68PIFXWJsUSebttm
	Y4ArOdgcK3hh1x5II4UbW2Od/jyPAxrYa1iNjvFf9Zd0NLWcS1W+JrsoN2B8LMKeWK+CaveiIIwcn
	MqjiotZjC2FDcG43A++qurbnWQRlBe8RUDg2po0zpjpZKW19BbC5F/aSX2wTiPk8ms8tNUVNwGg12
	yUYGvfI/5Xv/A/s4yJhEoJJiIixv2Yyk7FcfpITIZUE902KSYfYcGbRIJNwQrweMy7wAZB24lH/hi
	AgsTG40A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW8cx-0003LA-Ji; Thu, 30 May 2019 00:09:03 +0000
Received: from regular1.263xmail.com ([211.150.70.202])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW8cr-0003KO-39; Thu, 30 May 2019 00:08:58 +0000
Received: from jay.xu?rock-chips.com (unknown [192.168.167.164])
 by regular1.263xmail.com (Postfix) with ESMTP id F0F36265;
 Thu, 30 May 2019 08:08:52 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P6465T140561499830016S1559174930113109_; 
 Thu, 30 May 2019 08:08:52 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <7226ec3af7018d2e8926de38c05e9585>
X-RL-SENDER: jay.xu@rock-chips.com
X-SENDER: xjq@rock-chips.com
X-LOGIN-NAME: jay.xu@rock-chips.com
X-FST-TO: xjq@rock-chips.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Jianqun Xu <jay.xu@rock-chips.com>
To: jay.xu@rock-chips.com, heiko@sntech.de, mark.rutland@arm.com,
 robh+dt@kernel.org
Subject: [PATCH v3 1/1] arm64: dts: rockchip: add core dtsi file for RK3399Pro
 SoCs
Date: Thu, 30 May 2019 08:08:48 +0800
Message-Id: <20190530000848.28106-1-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190529074752.19388-1-jay.xu@rock-chips.com>
References: <20190529074752.19388-1-jay.xu@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_170857_293643_ACD2C5D5 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 zhangzj@rock-chips.com, linux-rockchip@lists.infradead.org,
 manivannan.sadhasivam@linaro.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds core dtsi file for Rockchip RK3399Pro SoCs,
include rk3399.dtsi. Also enable pciei0/pcie_phy for AP to
talk to NPU part inside SoC.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
changes since v2:
- only enable pcie0 and pcie_phy nodes, thanks for Heiko and manivannan

changes since v1:
- remove dfi and dmc

 arch/arm64/boot/dts/rockchip/rk3399pro.dtsi | 22 +++++++++++++++++++++
 1 file changed, 22 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399pro.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro.dtsi b/arch/arm64/boot/dts/rockchip/rk3399pro.dtsi
new file mode 100644
index 000000000000..bb5ebf6608b9
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3399pro.dtsi
@@ -0,0 +1,22 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+// Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd.
+
+#include "rk3399.dtsi"
+
+/ {
+	compatible = "rockchip,rk3399pro";
+};
+
+/* Default to enabled since AP talk to NPU part over pcie */
+&pcie_phy {
+	status = "okay";
+};
+
+/* Default to enabled since AP talk to NPU part over pcie */
+&pcie0 {
+	ep-gpios = <&gpio0 RK_PB4 GPIO_ACTIVE_HIGH>;
+	num-lanes = <4>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie_clkreqn_cpm>;
+	status = "okay";
+};
-- 
2.17.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
