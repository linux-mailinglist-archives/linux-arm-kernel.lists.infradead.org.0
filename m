Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7C5A67FA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 14:01:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7r8D7+rMP3pbCVFIz8DRIbvneua7Ttdszq/8pyqAz3M=; b=SHSoYTfJUd+MjHtwbjzpkQBn3V
	st8aN3pvTFM/oxaY/Ic+ft9Ho5ComlG60bZo/zEilTVEfEeb5cjiI9dmuFhaBBOlVr8qT3b5z7Sz7
	ByTbKyr68S/OJV4f5nR2QS5WrsVfBnRc6/R4zflx8E9DCVm2GYzKCfm3HmrJcK9iO6cVRFk0wggC1
	Rx0gvHKFJhIJIarm/z3Ne8SJ3Lxzp9dnEc6w1Fcq+/07SUEtVyZ09uqnqCkhx002Tx1fTM0PLhWqC
	GYm7CcnZ49r/82eTjpo+yHW/ZVbJAygWAli0ieI8kXDessdkXNn85s+u+Z3Vikd3cNy5Hqbi61+WW
	mfq/enpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i57Ur-0006nk-0P; Tue, 03 Sep 2019 12:01:17 +0000
Received: from regular1.263xmail.com ([211.150.70.203])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i57Ud-0006n2-ON; Tue, 03 Sep 2019 12:01:05 +0000
Received: from finley.xiao?rock-chips.com (unknown [192.168.167.224])
 by regular1.263xmail.com (Postfix) with ESMTP id 500B122C;
 Tue,  3 Sep 2019 20:00:57 +0800 (CST)
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
 P13045T140284270724864S1567511992953411_; 
 Tue, 03 Sep 2019 20:00:55 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <29b5b6971d3a2ee134c0ffe9bdde52f1>
X-RL-SENDER: finley.xiao@rock-chips.com
X-SENDER: xf@rock-chips.com
X-LOGIN-NAME: finley.xiao@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Finley Xiao <finley.xiao@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v1 1/3] dt-bindings: Add bindings for rk3308 clock controller
Date: Tue,  3 Sep 2019 19:59:45 +0800
Message-Id: <20190903115947.26618-2-finley.xiao@rock-chips.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190903115947.26618-1-finley.xiao@rock-chips.com>
References: <20190903115947.26618-1-finley.xiao@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_050104_132593_FD1C5F2F 
X-CRM114-Status: GOOD (  13.17  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.203 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: huangtao@rock-chips.com, sboyd@kernel.org, mturquette@baylibre.com,
 zhangqing@rock-chips.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, tony.xie@rock-chips.com,
 Finley Xiao <finley.xiao@rock-chips.com>, andy.yan@rock-chips.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add devicetree bindings for Rockchip cru which found on
Rockchip SoCs.

Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
---
 .../devicetree/bindings/clock/rockchip,rk3308.txt  | 58 ++++++++++++++++++++++
 1 file changed, 58 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3308.txt

diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3308.txt b/Documentation/devicetree/bindings/clock/rockchip,rk3308.txt
new file mode 100644
index 000000000000..5d46c9b7f937
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/rockchip,rk3308.txt
@@ -0,0 +1,58 @@
+* Rockchip RK3308 Clock and Reset Unit
+
+The RK3308 clock controller generates and supplies clock to various
+controllers within the SoC and also implements a reset controller for SoC
+peripherals.
+
+Required Properties:
+
+- compatible: CRU should be "rockchip,rk3308-cru"
+- reg: physical base address of the controller and length of memory mapped
+  region.
+- #clock-cells: should be 1.
+- #reset-cells: should be 1.
+
+Optional Properties:
+
+- rockchip,grf: phandle to the syscon managing the "general register files"
+  If missing, pll rates are not changeable, due to the missing pll lock status.
+
+Each clock is assigned an identifier and client nodes can use this identifier
+to specify the clock which they consume. All available clocks are defined as
+preprocessor macros in the dt-bindings/clock/rk3308-cru.h headers and can be
+used in device tree sources. Similar macros exist for the reset sources in
+these files.
+
+External clocks:
+
+There are several clocks that are generated outside the SoC. It is expected
+that they are defined using standard clock bindings with following
+clock-output-names:
+ - "xin24m" - crystal input - required,
+ - "xin32k" - rtc clock - optional,
+ - "mclk_i2sx_xch_in" - external I2S or SPDIF clock - optional,
+ - "mac_clkin" - external MAC clock - optional
+
+Example: Clock controller node:
+
+	cru: clock-controller@ff500000 {
+		compatible = "rockchip,rk3308-cru";
+		reg = <0x0 0xff500000 0x0 0x1000>;
+		rockchip,grf = <&grf>;
+		#clock-cells = <1>;
+		#reset-cells = <1>;
+	};
+
+Example: UART controller node that consumes the clock generated by the clock
+  controller:
+
+	uart0: serial@ff0a0000 {
+		compatible = "rockchip,rk3308-uart", "snps,dw-apb-uart";
+		reg = <0x0 0xff0a0000 0x0 0x100>;
+		interrupts = <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru SCLK_UART0>, <&cru PCLK_UART0>;
+		clock-names = "baudclk", "apb_pclk";
+		reg-shift = <2>;
+		reg-io-width = <4>;
+		status = "disabled";
+	};
-- 
2.11.0




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
