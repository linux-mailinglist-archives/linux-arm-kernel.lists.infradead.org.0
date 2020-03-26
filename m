Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 183F6194B2D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 23:04:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4zp4nsmEi9o3bIKacYlY6LsVw0nXty2MWZz8NZahSyg=; b=FEgHD69DgkrRF+
	RhCyMmcRTvSZPKprcmbiSUOaPdJslO5i5APHaPUYubCOHfneNpDGp2LMYpTJ9xqObA1+zY/jKQFqf
	R+fexEEdMYpJ/xHcGQ/YsySoT67t84hgV4ZQAplGf0riBElrhx/pwOyaVtZvb+xy3YtDrTqPxB/Jc
	wdmtHWf0fSj1461dJVe4tD9OENDwL/lrm8zWIqtTPeJvE6bo+iodXmKzst9oHiHaTvP7RH1TKCdTJ
	OHGKRsnmO1pFzv4E1pnERB8Xi5b62GL4DpJPgKM9eNF6PYYWGO11MWxjo58h4D2/CB3NU5oAQOs1V
	Mv5u/mMcmGyqYCzEmNNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHac0-0004eY-BI; Thu, 26 Mar 2020 22:04:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHaab-0003VE-3F
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 22:03:02 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1jHaaP-0006Di-MO; Thu, 26 Mar 2020 23:02:49 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1jHaaO-000897-RI; Thu, 26 Mar 2020 23:02:48 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 2/8] ARM: dts: stm32: preset stm32mp15x video #address- and
 #size-cells
Date: Thu, 26 Mar 2020 23:02:06 +0100
Message-Id: <20200326220213.28632-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.26.0.rc2
In-Reply-To: <20200326220213.28632-1-a.fatoum@pengutronix.de>
References: <20200326220213.28632-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: afa@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_150301_167951_112E2766 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Ahmad Fatoum <a.fatoum@pengutronix.de>,
 linux-kernel@vger.kernel.org, kernel@pengutronix.de,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The cell count for address and size is defined by the binding and not
something a board would change. Avoid each board adding this
boilerplate by having the cell size specification in the SoC DTSI.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - New Patch
---
 arch/arm/boot/dts/stm32mp151.dtsi | 5 +++++
 arch/arm/boot/dts/stm32mp157.dtsi | 7 +++++++
 2 files changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp151.dtsi b/arch/arm/boot/dts/stm32mp151.dtsi
index 3ea05ba48215..e5709136a4ca 100644
--- a/arch/arm/boot/dts/stm32mp151.dtsi
+++ b/arch/arm/boot/dts/stm32mp151.dtsi
@@ -1423,6 +1423,11 @@ ltdc: display-controller@5a001000 {
 			clock-names = "lcd";
 			resets = <&rcc LTDC_R>;
 			status = "disabled";
+
+			port {
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
 		};
 
 		iwdg2: watchdog@5a002000 {
diff --git a/arch/arm/boot/dts/stm32mp157.dtsi b/arch/arm/boot/dts/stm32mp157.dtsi
index 5e733cd16ff9..54e73ccea446 100644
--- a/arch/arm/boot/dts/stm32mp157.dtsi
+++ b/arch/arm/boot/dts/stm32mp157.dtsi
@@ -24,7 +24,14 @@ dsi: dsi@5a000000 {
 			clock-names = "pclk", "ref", "px_clk";
 			resets = <&rcc DSI_R>;
 			reset-names = "apb";
+			#address-cells = <1>;
+			#size-cells = <0>;
 			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
 		};
 	};
 };
-- 
2.26.0.rc2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
