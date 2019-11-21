Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A421047F0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 02:19:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=q/jGyzj37neIhz+dsZZg0SFTp0eRyIKF9AEBS2kejjE=; b=Nd5Hr8Gz2181QnJfgl+sS2p3sI
	lNweQM3wJEOKwiEAj6giolCR0OpqE/c1C3/ucfVGBK+CTj2ScCSeFPVnKlcg6+5/9y0l/O+r7hrsP
	yQJOFcvhC2sl3yHTYAgaoRJ3LxNk8l7clkZXiv0qSiQGO6iw1fgAhonxWsMUC+IbO/HgjOA3sDxrc
	UZeHd3tKEtLuT1Q9BYjiK8KOzyiD+2vM7cxdcMW+qOQt5W0VcTdvtFvogQppwtFPdiOuS1tjOrtqe
	7nXmE3GIxGwAYLnwkzOsbOaiZc4Slzr4wk5zGZ12ciBEoDaYpO20ec4QB9uYTXmQ41KISFfi6dSQL
	9LjlMVTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXb85-00044T-NP; Thu, 21 Nov 2019 01:19:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXb7T-0003h2-O1
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 01:18:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D9DBD1045;
 Wed, 20 Nov 2019 17:18:46 -0800 (PST)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B11683F6C4;
 Wed, 20 Nov 2019 17:18:45 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Maxime Ripard <mripard@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH 1/3] arm64: dts: allwinner: H6: Add PMU mode
Date: Thu, 21 Nov 2019 01:18:33 +0000
Message-Id: <20191121011835.8467-2-andre.przywara@arm.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20191121011835.8467-1-andre.przywara@arm.com>
References: <20191121011835.8467-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_171851_825903_6AFF20D1 
X-CRM114-Status: GOOD (  12.10  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the Performance Monitoring Unit (PMU) device tree node to the H6
.dtsi, which tells DT users which interrupts are triggered by PMU
overflow events on each core. The numbers come from the manual and have
been checked in U-Boot and with perf in Linux.

Tested with perf record and taskset on a Pine H64.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
index 29824081b43b..86a77b1734e0 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
@@ -70,6 +70,16 @@
 		clock-output-names = "ext_osc32k";
 	};
 
+        pmu {
+		compatible = "arm,cortex-a53-pmu",
+			     "arm,armv8-pmuv3";
+		interrupts = <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-affinity = <&cpu0>, <&cpu1>, <&cpu2>, <&cpu3>;
+	};
+
 	psci {
 		compatible = "arm,psci-0.2";
 		method = "smc";
-- 
2.14.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
