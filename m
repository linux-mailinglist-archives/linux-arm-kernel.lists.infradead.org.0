Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5710A1D0FDF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 12:32:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7HBFImUqldKuhWcRYSy3D5K8YnsL32z7Urb0yP+pXY4=; b=j9bk4xqmCdUU/NKKM78dBM0bLU
	rR2eq5A9vnkhD7aT65YcNiT+mdqGqb5vPcY++FzriF5cZySZ6CwstSlrBQsybT1JEzWOeebvp9gAt
	Eu6vQ5H2oVeKpIaYOoAGg0go2i+iD4K54373TevHMsm6DejLAlGqaBMpags5xkZu+R6C473/q2lV2
	WehZWWtCbTRDIsZ74AFIKKiH6184XJ368+MKvng+qad6y/7UOlba4/rllg1VWG3iUpLCn6HwbKQEg
	bFEuQ+RArI+6BjN9KAE8xc4WtRxzENrSG8DlXKNhiEl9+y7umHdn8Hc1AuUAAZZvUJP8KNoDN9W3A
	dqwwFAJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYogX-0006T8-Aj; Wed, 13 May 2020 10:32:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYoeq-0005GZ-Vf
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 10:30:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9F3FB1FB;
 Wed, 13 May 2020 03:30:36 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 832E53F305;
 Wed, 13 May 2020 03:30:35 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Rob Herring <robh@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v3 05/20] arm64: dts: arm: foundation: Move fixed clocks out
 of bus node
Date: Wed, 13 May 2020 11:30:01 +0100
Message-Id: <20200513103016.130417-6-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513103016.130417-1-andre.przywara@arm.com>
References: <20200513103016.130417-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_033037_079726_7430EC05 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The devicetree compiler complains when DT nodes without a reg property
live inside a (simple) bus node:
Warning (simple_bus_reg): Node /bus@8000000/v2m_refclk32khz
                          missing or empty reg/ranges property

Move the fixed clocks to the root node, since they do not depend on any
busses.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 arch/arm64/boot/dts/arm/foundation-v8.dtsi | 42 +++++++++++-----------
 1 file changed, 21 insertions(+), 21 deletions(-)

diff --git a/arch/arm64/boot/dts/arm/foundation-v8.dtsi b/arch/arm64/boot/dts/arm/foundation-v8.dtsi
index e26b492795c5..e5b8a9b5c410 100644
--- a/arch/arm64/boot/dts/arm/foundation-v8.dtsi
+++ b/arch/arm64/boot/dts/arm/foundation-v8.dtsi
@@ -92,6 +92,27 @@
 		timeout-sec = <30>;
 	};
 
+	v2m_clk24mhz: clk24mhz {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <24000000>;
+		clock-output-names = "v2m:clk24mhz";
+	};
+
+	v2m_refclk1mhz: refclk1mhz {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <1000000>;
+		clock-output-names = "v2m:refclk1mhz";
+	};
+
+	v2m_refclk32khz: refclk32khz {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <32768>;
+		clock-output-names = "v2m:refclk32khz";
+	};
+
 	bus@8000000 {
 		compatible = "arm,vexpress,v2m-p1", "simple-bus";
 		arm,v2m-memory-map = "rs1";
@@ -157,27 +178,6 @@
 			interrupts = <15>;
 		};
 
-		v2m_clk24mhz: clk24mhz {
-			compatible = "fixed-clock";
-			#clock-cells = <0>;
-			clock-frequency = <24000000>;
-			clock-output-names = "v2m:clk24mhz";
-		};
-
-		v2m_refclk1mhz: refclk1mhz {
-			compatible = "fixed-clock";
-			#clock-cells = <0>;
-			clock-frequency = <1000000>;
-			clock-output-names = "v2m:refclk1mhz";
-		};
-
-		v2m_refclk32khz: refclk32khz {
-			compatible = "fixed-clock";
-			#clock-cells = <0>;
-			clock-frequency = <32768>;
-			clock-output-names = "v2m:refclk32khz";
-		};
-
 		iofpga@300000000 {
 			compatible = "simple-bus";
 			#address-cells = <1>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
