Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82FE9356A4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 08:08:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YdLTS9KeIhudkcnYlcD8xcwpH0cXBLDMPv0eGMsvc0g=; b=gqctHPk8OupzK/
	MXRzdfgZQGnrFRgBqjLl1Evs5vldxeHntHkAUuRFpK3qso65HaU/EDaRiimcaOEeAoxGZHDuDV2o5
	avG41LFdf5unW4E1f8PAydkp28C8dbe1R4vvZVdVj581KW99I4BcgPV16955J/qlDzJkcVAccB/vT
	BuDiOOqB9bgQkFze+jzf8Pjtg7ckyE6OLyZ6EwnLSazWsTszMudGw7OzmFi7Yv6mPo5yBiLlxO0Ai
	QZJLCG6idbMM/ESF4S7RBtsQXJV+W2oEXeWPeWb68+rA5Qqf8R4+pLlfpQPIAx9ebrevFKJUOZB67
	x+90w+5bClWODSUG9RsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYP6N-00023O-L0; Wed, 05 Jun 2019 06:08:47 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYP5z-0001h4-Vi
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 06:08:27 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5568Miq104969;
 Wed, 5 Jun 2019 01:08:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559714902;
 bh=kP5Be0RWpKNCwHARMR89E7X2icgm84vwwv6LLW4v034=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=lJ0+/gYjUN+7JYcNzbQy/7izVeaVIDq/Xn15lzl0CcdDR+TIdtnz2dHG7tax+fM8g
 ZP//8YvWk+SnjCqOC+sIB3T89gnD2x8iLuj0+8qwGFHegzRq7bJ/NrWZWHmxZ9rcIQ
 rtiGyXUSZxpwfmQk44TfC+DKu9ri7mjT7anvJjh0=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5568M9g129949
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 5 Jun 2019 01:08:22 -0500
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 5 Jun
 2019 01:08:21 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 5 Jun 2019 01:08:21 -0500
Received: from a0393675ula.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5568Dli066906;
 Wed, 5 Jun 2019 01:08:19 -0500
From: Keerthy <j-keerthy@ti.com>
To: <t-kristo@ti.com>, <nm@ti.com>, <robh+dt@kernel.org>
Subject: [RFC PATCH 2/3] arm64: dts: ti: am6-main: Add gpio nodes
Date: Wed, 5 Jun 2019 11:38:45 +0530
Message-ID: <20190605060846.25314-3-j-keerthy@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190605060846.25314-1-j-keerthy@ti.com>
References: <20190605060846.25314-1-j-keerthy@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_230824_274778_DC411297 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: lokeshvutla@ti.com, j-keerthy@ti.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add gpio0/1 nodes under main domain. They have 96 and 90 gpios
respectively and all are capable of generating banked interrupts.

Signed-off-by: Keerthy <j-keerthy@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 32 ++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
index 22154f401930..24cd9005118c 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
@@ -350,4 +350,36 @@
 			ti,sci-rm-range-global-event = <0x1>;
 		};
 	};
+
+	main_gpio0:  main_gpio0@600000 {
+		compatible = "ti,k2g-gpio", "ti,keystone-gpio";
+		reg = <0x0 0x600000 0x0 0x100>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-parent = <&intr_main_gpio>;
+		interrupts = <57 256>, <57 257>, <57 258>, <57 259>, <57 260>,
+				<57 261>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		ti,ngpio = <96>;
+		ti,davinci-gpio-unbanked = <0>;
+		clocks = <&k3_clks 57 0>;
+		clock-names = "gpio";
+	};
+
+	main_gpio1:  main_gpio1@601000 {
+		compatible = "ti,k2g-gpio", "ti,keystone-gpio";
+		reg = <0x0 0x601000 0x0 0x100>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-parent = <&intr_main_gpio>;
+		interrupts = <58 256>, <58 257>, <58 258>, <58 259>, <58 260>,
+				<58 261>;
+		interrupt-controller;
+			#interrupt-cells = <2>;
+		ti,ngpio = <90>;
+		ti,davinci-gpio-unbanked = <0>;
+		clocks = <&k3_clks 58 0>;
+		clock-names = "gpio";
+	};
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
