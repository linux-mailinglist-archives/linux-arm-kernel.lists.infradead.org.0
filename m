Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D093B475
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 14:16:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qZd5lrTJ4XWr/+qR8ylttb3t+11pNEqtt69jciAIzF4=; b=QZo0NqqydTCfWQLHmhhAtrsI3P
	egIL+1WdPtb+YEJ1IJy+seJ/cZC0LHRB53l1sqpN97ngsAqobvkXI+Ap9rhOWpseyjyhtTj1e29F5
	fZXfRlMu1Ljzc8nhU3xSW5I5nMW+NBhEWSdtZZOMUn8J5IL0ncap3SgaN2ds95lq3x2/Nj7Nf+kIA
	zwZ5zU/SaHrYy+2qJHWFm+xUCNznY6K2o1t46kc55b2NmXVLDVwNHT7Xsp/zleqeAAqvhOfiQrL79
	1r+B/9q9xymMZgfn4cJz9DprwbO4QO7YYjt+dmodhfIhe+ZP9iT4OcOa+fUm8PqEfhfcCuAMwTbNp
	r68hcMtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haJEG-0004qe-83; Mon, 10 Jun 2019 12:16:48 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haJDO-0004Ks-7N
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 12:15:55 +0000
Received: by mail-wr1-x442.google.com with SMTP id b17so8921315wrq.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 05:15:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=e1eMdBaB8RxDD++a+KcSae/AQyqka7jtAWZWQYYGlmA=;
 b=iD65cA+l81B6SQXXC1LquMeeG4t3jBN2ZTecMSnVizkyQZIBk33FfTzsup4SeNCk86
 bCGx7bTbD8rWa8ISAInF8uuVXN82Xom3amX3mPlMvKShbIOkjM4uMFSC38mz9528tD0d
 bmzDll2SHNEEDTTf7IjaAU5qPKonEk7/PDnS4OEcUQsh0Lvrg8SixTaUoF/M0WgoQsQL
 c2WyUBnwxdzveYhzvNSwYKF+NFj21t/wNz/0aBM0OPoMCU9QgJ5zLh8ASkahkX/BLrMz
 yYjW8ZF1KAjbXSLUqsJIcLlKrBLg5PUasjXoIaJ2CzWtQXPHo1jh7RhN2AXdCogTa1Nl
 mBiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=e1eMdBaB8RxDD++a+KcSae/AQyqka7jtAWZWQYYGlmA=;
 b=EUVSjWnPPW3zQldX9xGmqWZ62LPfmnucmlANj4XQc79Jkp3QtMpTj7aIPEEMgw+tHs
 ojEexHyA52r80XVsU15NI35Goxcbf7J7nNg5smPDz9Y8wvUOXZozBd3Regjv6PgLPRmD
 GocitOCoXBezcpIpSecsuebrH8+YDEB26Z8kbX/hcRvNOzDRTnlCyk0qHLUp76tmP31T
 BNA96dyCYU+GAdikBnCr1YEobXQcNRVc/l2DsEfw+SiaBAG6lScxD+wzMzSlT5K910V3
 Rm9fKrJMc23fJQhymuFb3K+xfL38cmms/O8HkHxerkd88+B7W4DFd3cQJGXtLmJ7K3du
 gXFQ==
X-Gm-Message-State: APjAAAUFvseWcXNe/y1oFX16q+aYVa7O36XFC8eMtBes8kaB5d3oBm0c
 RUgc7nF6E/CLh4Zr6n6NKwo=
X-Google-Smtp-Source: APXvYqw8UTMDX4DGV2nn8RWRrsw4aB8Av6boXCrEayOi6E9GJNBAUkqAeuq1Kqe99jhgPkgJ1HLfyg==
X-Received: by 2002:adf:baca:: with SMTP id w10mr35660324wrg.230.1560168952744; 
 Mon, 10 Jun 2019 05:15:52 -0700 (PDT)
Received: from ryzen.lan (5-12-114-167.residential.rdsnet.ro. [5.12.114.167])
 by smtp.gmail.com with ESMTPSA id
 f21sm10385574wmb.2.2019.06.10.05.15.50
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 10 Jun 2019 05:15:52 -0700 (PDT)
From: Abel Vesa <abelvesa@gmail.com>
X-Google-Original-From: Abel Vesa <abel.vesa@nxp.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Marc Zyngier <marc.zyngier@arm.com>, Lucas Stach <l.stach@pengutronix.de>,
 Bai Ping <ping.bai@nxp.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Leonard Crestez <leonard.crestez@nxp.com>
Subject: [RFC 2/2] arm64: dts: imx8mq: Add idle states and gpcv2 wake_request
 broken property
Date: Mon, 10 Jun 2019 15:13:46 +0300
Message-Id: <20190610121346.15779-3-abel.vesa@nxp.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20190610121346.15779-1-abel.vesa@nxp.com>
References: <20190610121346.15779-1-abel.vesa@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_051554_307154_20AC9C13 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (abelvesa[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Carlo Caione <ccaione@baylibre.com>,
 NXP Linux Team <linux-imx@nxp.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the cpu-sleep idle state with all the necessary parameters and also add
the cpu-idle-states to the cpu nodes.

The 'broken-wake-request-signals' property is used to let the irq-imx-gpcv2
driver know that the wake request signals from GIC are not linked to the
GPC at all and, therefore, the driver should  make use of the dedicated
workaround to explicitly wake up the target core on every IPI.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index d09b808..7217138 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -103,6 +103,7 @@
 			#cooling-cells = <2>;
 			nvmem-cells = <&cpu_speed_grade>;
 			nvmem-cell-names = "speed_grade";
+			cpu-idle-states = <&CPU_SLEEP>;
 		};
 
 		A53_1: cpu@1 {
@@ -115,6 +116,7 @@
 			next-level-cache = <&A53_L2>;
 			operating-points-v2 = <&a53_opp_table>;
 			#cooling-cells = <2>;
+			cpu-idle-states = <&CPU_SLEEP>;
 		};
 
 		A53_2: cpu@2 {
@@ -127,6 +129,7 @@
 			next-level-cache = <&A53_L2>;
 			operating-points-v2 = <&a53_opp_table>;
 			#cooling-cells = <2>;
+			cpu-idle-states = <&CPU_SLEEP>;
 		};
 
 		A53_3: cpu@3 {
@@ -139,11 +142,27 @@
 			next-level-cache = <&A53_L2>;
 			operating-points-v2 = <&a53_opp_table>;
 			#cooling-cells = <2>;
+			cpu-idle-states = <&CPU_SLEEP>;
 		};
 
 		A53_L2: l2-cache0 {
 			compatible = "cache";
 		};
+
+		idle-states {
+			entry-method = "psci";
+
+			CPU_SLEEP: cpu-sleep {
+				compatible = "arm,idle-state";
+				arm,psci-suspend-param = <0x0010033>;
+				local-timer-stop;
+				entry-latency-us = <1000>;
+				exit-latency-us = <700>;
+				min-residency-us = <2700>;
+				wakeup-latency-us = <1500>;
+			};
+		};
+
 	};
 
 	a53_opp_table: opp-table {
@@ -502,6 +521,7 @@
 				reg = <0x303a0000 0x10000>;
 				interrupt-parent = <&gic>;
 				interrupt-controller;
+				broken-wake-request-signals;
 				#interrupt-cells = <3>;
 
 				pgc {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
