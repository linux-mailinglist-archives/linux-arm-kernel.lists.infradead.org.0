Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2F001D142C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 15:11:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WFmx9/vtGo/Tcfz+jhS4q/XqZpgMuvUpA4cMVw3VVAE=; b=Z9nXiWXVmSvkJk
	RXu1424DaB16WW70GbpV8i+cj0taNWjgNYudzOXXZHPzXmf/Rpjs0D+ts7Vzv0Qz/hACQ9E3vCth2
	zhZ2AsXmrTvW0vsfXMPLL0REVMNvMjw7VWjo9eFeQZJEYfMBsfbx5YiVeW5tPosB/Cwww70PtcNXP
	Nj8eMtsH4Crp7mosnQWgDHtfb+Gi4lbEHfsTLsKwetL3huWGX+dyn/I8hZrBWbZUTyMXupy8F6waN
	GBOzKCGRCMt1WwbqlUu83B4UVZj/8jjsUoCVE2kdCizdQI71XY0qshNYZ5TvhMOA8Kfbey68P4wk0
	kiYOnceQ9gZkd40Wd8NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYrA6-0000F8-Bg; Wed, 13 May 2020 13:11:02 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYr8F-0004ip-RZ
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 13:09:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589375347; x=1620911347;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=e6u3aV1QGFBSQ0eEelvtWAIoeOAC/vgh59tjbGFX/nI=;
 b=OtOSQ1xFs1c3mLcnCnOJmZ3kyBkujmOaU0QjO3kHGayAQ952glH2zVlX
 73w4sMhD79cb38IPH2INgXLKNy3A3AM57j54zCe099gKk5dz7oxEHygKt
 uIGV+xddNJVwl247pGuKDLUn77E0QOaZ5vzi/SHn4104pioRQuK45eABr
 +O0dclsDaRiChQd/01l4/9rai3nTSF72hAjiXK/bkw42/6ISAMeRpdodJ
 F4y5+CV/fVYikdjIQzv9czh68k8qo568qRu8VKxMOWGrKPEYC9rdusp70
 waNNFY+s7pqO+ZtULGtrtc0mYrve2UZqpDVDLrDiPQmiceOALwcy3vw1K g==;
IronPort-SDR: ImLEDdl7AMnyivYjeyLG78XOm3QyPYMEALDQBIoV+dGm4URpVcSdVUf1Di9smzsXclhJWybcZt
 hyHSlC0YFvP7ByXUfKY3xCO49Kqm4ofDJtsn5FeIE5mgVz4zEiZxHL6GhtE6A2rnI9eT2L+g+F
 A2A9TEE60W4trAvOZYGBRV0hoCzrAcRsY4rnuN9mZMgRsSdM6/8fzl4J7aarXou6YVWs5jNzLS
 wNa027v3HdODTTeZMgL/4aE1iA4fm+RoxOjiHQlLmL7j5SZ8xJzJUDsvZH2HRTNaexnh5cFqVs
 MYs=
X-IronPort-AV: E=Sophos;i="5.73,387,1583218800"; d="scan'208";a="75134448"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 06:09:06 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 06:09:06 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 13 May 2020 06:09:04 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Sebastian Reichel <sre@kernel.org>, SoC Team <soc@kernel.org>
Subject: [PATCH 5/5] arm64: dts: sparx5: Add reset support
Date: Wed, 13 May 2020 15:08:42 +0200
Message-ID: <20200513130842.24847-6-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200513130842.24847-1-lars.povlsen@microchip.com>
References: <20200513130842.24847-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_060907_944961_0E21FD84 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-arm-kernel@lists.infradead.org,
 Lars Povlsen <lars.povlsen@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds reset support to the Sparx5 SoC

Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
---
 arch/arm64/boot/dts/microchip/sparx5.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/microchip/sparx5.dtsi b/arch/arm64/boot/dts/microchip/sparx5.dtsi
index b5cb3d8dc876b..3e94ac9e7dd51 100644
--- a/arch/arm64/boot/dts/microchip/sparx5.dtsi
+++ b/arch/arm64/boot/dts/microchip/sparx5.dtsi
@@ -106,6 +106,17 @@ gic: interrupt-controller@600300000 {
 			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
+		cpu_ctrl: syscon@600000000 {
+			compatible = "microchip,sparx5-cpu-syscon", "syscon";
+			reg = <0x6 0x00000000 0xd0>;
+		};
+
+		reset@611010008 {
+			compatible = "microchip,sparx5-chip-reset";
+			reg = <0x6 0x11010008 0x4>;
+			microchip,reset-switch-core;
+		};
+
 		uart0: serial@600100000 {
 			pinctrl-0 = <&uart_pins>;
 			pinctrl-names = "default";
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
