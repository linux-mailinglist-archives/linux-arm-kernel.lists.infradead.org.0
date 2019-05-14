Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E9F81C580
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 10:59:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+PMyTqtP0OmT2dyMwwUBKs5RuJII5LQjNbhu9+HxIVs=; b=MPH
	ic6XaoG5bDLS134SB2B0RiRmdqCZfdWK5U8VzVHwwAvY14Bk/6hELjc6EoWZvUDJNWfRP4hElAz9r
	S9AxjDuGzRocZlDqJLIM/dV2G1Yrx6RZTg7rloluInPp4mSOSfTPaF660GQx7sAzy/bfapFsKoCwl
	RjT8Wnk2OZ73/pQjBNdEZLJBWFyHnoaz6CcpV6Sh47LVL0OHby62wq+KeO+DFzVMP0y0HHpfxxNv+
	P+3E1/D9OWkZzmHTOCGjKAplBb6HLxIC6LQB0Cnl/FerWK3NJE4Kd2Hfo5DKKueZWqOQ/axVNoJgs
	GKJIy7+brE5K6NUTGisD+DvwQf3aPUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQTH2-00061x-VW; Tue, 14 May 2019 08:59:01 +0000
Received: from michel.telenet-ops.be ([2a02:1800:110:4::f00:18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQTGr-0005sO-Fc
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 08:58:51 +0000
Received: from ramsan ([84.194.111.163]) by michel.telenet-ops.be with bizsmtp
 id C8yf200053XaVaC068yf2j; Tue, 14 May 2019 10:58:42 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1hQTGg-0000FQ-VA; Tue, 14 May 2019 10:58:38 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1hQTGg-0004mK-Sp; Tue, 14 May 2019 10:58:38 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Simon Horman <horms@verge.net.au>, Magnus Damm <magnus.damm@gmail.com>
Subject: [PATCH/RFC v2] ARM: dts: r8a7791: Move enable-method to CPU nodes
Date: Tue, 14 May 2019 10:58:37 +0200
Message-Id: <20190514085837.18325-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_015850_042403_9DA47EB8 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:18 listed in]
 [list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

According to Documentation/devicetree/bindings/arm/cpus.yaml, the
"enable-method" property should be a property of the individual CPU
nodes, and not of the parent "cpus" container node.
However, on R-Car M2-W, the property is tied to the "cpus" node instead.

Secondary CPU bringup and CPU hot (un)plug work regardless, as
arm_dt_init_cpu_maps() falls back to looking in the "cpus" node.

The cpuidle code does not have such a fallback, so it does not detect
the enable-method.  Note that cpuidle does not support the
"renesas,apmu" enable-method yet, so for now this does not make any
difference.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
Arm64 and powerpc do not have such a fallback, but SH has, like arm32.

This is marked RFC, as the alternative is to update the DT bindings to
keep the status quo.

v2:
  - Update reference after commit 672951cbd1b70a9e ("dt-bindings: arm:
    Convert cpu binding to json-schema").
---
 arch/arm/boot/dts/r8a7791.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/r8a7791.dtsi b/arch/arm/boot/dts/r8a7791.dtsi
index 6f875502453cf40a..a8266e76d7e50739 100644
--- a/arch/arm/boot/dts/r8a7791.dtsi
+++ b/arch/arm/boot/dts/r8a7791.dtsi
@@ -68,7 +68,6 @@
 	cpus {
 		#address-cells = <1>;
 		#size-cells = <0>;
-		enable-method = "renesas,apmu";
 
 		cpu0: cpu@0 {
 			device_type = "cpu";
@@ -77,6 +76,7 @@
 			clock-frequency = <1500000000>;
 			clocks = <&cpg CPG_CORE R8A7791_CLK_Z>;
 			power-domains = <&sysc R8A7791_PD_CA15_CPU0>;
+			enable-method = "renesas,apmu";
 			next-level-cache = <&L2_CA15>;
 			voltage-tolerance = <1>; /* 1% */
 			clock-latency = <300000>; /* 300 us */
@@ -97,6 +97,7 @@
 			clock-frequency = <1500000000>;
 			clocks = <&cpg CPG_CORE R8A7791_CLK_Z>;
 			power-domains = <&sysc R8A7791_PD_CA15_CPU1>;
+			enable-method = "renesas,apmu";
 			next-level-cache = <&L2_CA15>;
 			voltage-tolerance = <1>; /* 1% */
 			clock-latency = <300000>; /* 300 us */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
