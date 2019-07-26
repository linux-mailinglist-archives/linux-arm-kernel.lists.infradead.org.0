Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB50976ABD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 16:01:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zfycbXgcCq/2TzuQmXtSfe4OsjoWDj3BkXUQ4ZFmO3o=; b=dmWmay8e34ijr2T7p/AQ4GRPKV
	aKZrBoFroMgLwboWuIkhM0vivZmVKh+J2X/jHHisdlfd9BwjBGaJDimx8U6tlsbqi/ZYmoruDVfKP
	WAmBijEyk6CFSszc8Vr04hwoj0SGjOkodW+PkQqS84CD7f1Nqsaf86q0iyrhI5BwsFlVc/OEC6GDP
	R+B+AArfdx7iQTpRH3X394XLBHci42rrWMmBgx1N6OoOIu0NQsrKNrAhIyeYOGPL6UkXU4rzqh80o
	okDDs+wS9HrBsqGdXc8Sk8hcHPESvVvolPX5RGOoN3Au/bHtkxd+TzuJVv48KygEvHPMX9MlIufkz
	M5NZJlTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr0mj-00063j-1A; Fri, 26 Jul 2019 14:01:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hr0la-0005Mq-4m
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 14:00:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BCD14152D;
 Fri, 26 Jul 2019 07:00:13 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 66CC93F694;
 Fri, 26 Jul 2019 07:00:11 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/5] dt-bindings: arm: Extend SCMI to support new reset
 protocol
Date: Fri, 26 Jul 2019 14:59:52 +0100
Message-Id: <20190726135954.11078-4-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190726135954.11078-1-sudeep.holla@arm.com>
References: <20190726135954.11078-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_070014_319809_1D725AD6 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Peng Fan <peng.fan@nxp.com>, Etienne Carriere <etienne.carriere@linaro.org>,
 Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, wesleys@xilinx.com,
 aidapala@qti.qualcomm.com, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Saeed Nowshadi <saeed.nowshadi@xilinx.com>,
 Bo Zhang <bozhang.zhang@broadcom.com>, Felix Burton <fburton@xilinx.com>,
 Jim Quinlan <james.quinlan@broadcom.com>, Sudeep Holla <sudeep.holla@arm.com>,
 pajay@qti.qualcomm.com, Gaku Inami <gaku.inami.xh@renesas.com>,
 Volodymyr Babchuk <volodymyr_babchuk@epam.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SCMIv2.0 adds a new Reset Management Protocol to manage various reset
states a given device or domain can enter. Extend the existing SCMI
bindings to add reset protocol support by re-using the reset bindings
for bothe reset providers and consumers.

Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: devicetree@vger.kernel.org
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 .../devicetree/bindings/arm/arm,scmi.txt        | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/arm,scmi.txt b/Documentation/devicetree/bindings/arm/arm,scmi.txt
index 317a2fc3667a..083dbf96ee00 100644
--- a/Documentation/devicetree/bindings/arm/arm,scmi.txt
+++ b/Documentation/devicetree/bindings/arm/arm,scmi.txt
@@ -73,6 +73,16 @@ SCMI provides an API to access the various sensors on the SoC.
 			 as used by the firmware. Refer to  platform details
 			 for your implementation for the IDs to use.
 
+Reset signal bindings for the reset domains based on SCMI Message Protocol
+------------------------------------------------------------
+
+This binding for the SCMI reset domain providers uses the generic reset
+signal binding[5].
+
+Required properties:
+ - #reset-cells : Should be 1. Contains the reset domain ID value used
+		  by SCMI commands.
+
 SRAM and Shared Memory for SCMI
 -------------------------------
 
@@ -93,6 +103,7 @@ Each sub-node represents the reserved area for SCMI.
 [2] Documentation/devicetree/bindings/power/power_domain.txt
 [3] Documentation/devicetree/bindings/thermal/thermal.txt
 [4] Documentation/devicetree/bindings/sram/sram.txt
+[5] Documentation/devicetree/bindings/reset/reset.txt
 
 Example:
 
@@ -152,6 +163,11 @@ firmware {
 			reg = <0x15>;
 			#thermal-sensor-cells = <1>;
 		};
+
+		scmi_reset: protocol@16 {
+			reg = <0x16>;
+			#reset-cells = <1>;
+		};
 	};
 };
 
@@ -166,6 +182,7 @@ hdlcd@7ff60000 {
 	reg = <0 0x7ff60000 0 0x1000>;
 	clocks = <&scmi_clk 4>;
 	power-domains = <&scmi_devpd 1>;
+	resets = <&scmi_reset 10>;
 };
 
 thermal-zones {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
