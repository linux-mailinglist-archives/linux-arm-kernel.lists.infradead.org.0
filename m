Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61818141FB7
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Jan 2020 20:12:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RJ6HeD80PBr0kpeWHBifLAHJY1kqkmOjY5iBb82rloI=; b=Wjda0VTd0OYsOe
	FEHimYHHLkSs0KukTO2LtTIa8SsD6mifBKjcWcbRssKsyXmT5oXdC5cm6i1NB68u7di8D5M961YlD
	YFkUJxsr7BOQ6KkMtKXVu+hK4OC7CzoD6IiHxTt4CAQGEBd84SkK5/FJMlJA5m/v8NPyrpgDJzquc
	KF9bTLgIEn1IRynIq3AkZ8ZD4gn4bedSVJOc7NZsnpJsAi+SV0DRbxiyn4KvrLz3nBDV+/yZwnnx+
	nK65fhf8ZVoeKjItRN0CRepAhJMH8QssMILmgtW64+u2ZK/nsDH+3a1GJPG/n92FlkbVib+EBcVNL
	zoxXPCbd54aRJQn5gnJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itFzy-000551-Mx; Sun, 19 Jan 2020 19:12:38 +0000
Received: from mail-out.m-online.net ([2001:a60:0:28:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itFzU-0004vr-In
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Jan 2020 19:12:10 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 4814DF51QBz1rgh4;
 Sun, 19 Jan 2020 20:11:57 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 4814DF4CDmz1qwyZ;
 Sun, 19 Jan 2020 20:11:57 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id AuL_fTI9kyR1; Sun, 19 Jan 2020 20:11:56 +0100 (CET)
X-Auth-Info: PZaa6TT/6QnmJsNUXQcUkF4NR0LARCaLnc3AROe62bc=
Received: from desktop.lan (ip-86-49-35-8.net.upcbroadband.cz [86.49.35.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Sun, 19 Jan 2020 20:11:56 +0100 (CET)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 1/6] ARM: dts: stm32: Add Ethernet0 RMII pins A pinmux
 entry on stm32mp1
Date: Sun, 19 Jan 2020 20:11:38 +0100
Message-Id: <20200119191143.50033-1-marex@denx.de>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_111208_766686_9EC5583B 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:a60:0:28:0:1:25:1 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Marek Vasut <marex@denx.de>, Alexandre Torgue <alexandre.torgue@st.com>,
 Patrice Chotard <patrice.chotard@st.com>,
 Patrick Delaunay <patrick.delaunay@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add pinmux entry for ethernet0 RMII .

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Patrice Chotard <patrice.chotard@st.com>
Cc: Patrick Delaunay <patrick.delaunay@st.com>
Cc: linux-stm32@st-md-mailman.stormreply.com
To: linux-arm-kernel@lists.infradead.org
---
V2: New patch
---
 arch/arm/boot/dts/stm32mp15-pinctrl.dtsi | 34 ++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
index 0237d4ddaa92..f40f66a692a1 100644
--- a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
@@ -162,6 +162,40 @@ pins1 {
 		};
 	};
 
+	ethernet0_rmii_pins_a: rmii-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('G', 13, AF11)>, /* ETH1_RMII_TXD0 */
+				 <STM32_PINMUX('G', 14, AF11)>, /* ETH1_RMII_TXD1 */
+				 <STM32_PINMUX('B', 11, AF11)>, /* ETH1_RMII_TX_EN */
+				 <STM32_PINMUX('A', 1, AF0)>,   /* ETH1_RMII_REF_CLK */
+				 <STM32_PINMUX('A', 2, AF11)>,  /* ETH1_MDIO */
+				 <STM32_PINMUX('C', 1, AF11)>;  /* ETH1_MDC */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <2>;
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('C', 4, AF11)>,  /* ETH1_RMII_RXD0 */
+				 <STM32_PINMUX('C', 5, AF11)>,  /* ETH1_RMII_RXD1 */
+				 <STM32_PINMUX('A', 7, AF11)>;  /* ETH1_RMII_CRS_DV */
+			bias-disable;
+		};
+	};
+
+	ethernet0_rmii_pins_sleep_a: rmii-sleep-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('G', 13, ANALOG)>, /* ETH1_RMII_TXD0 */
+				 <STM32_PINMUX('G', 14, ANALOG)>, /* ETH1_RMII_TXD1 */
+				 <STM32_PINMUX('B', 11, ANALOG)>, /* ETH1_RMII_TX_EN */
+				 <STM32_PINMUX('A', 2, ANALOG)>,  /* ETH1_MDIO */
+				 <STM32_PINMUX('C', 1, ANALOG)>,  /* ETH1_MDC */
+				 <STM32_PINMUX('C', 4, ANALOG)>,  /* ETH1_RMII_RXD0 */
+				 <STM32_PINMUX('C', 5, ANALOG)>,  /* ETH1_RMII_RXD1 */
+				 <STM32_PINMUX('A', 1, ANALOG)>,  /* ETH1_RMII_REF_CLK */
+				 <STM32_PINMUX('A', 7, ANALOG)>;  /* ETH1_RMII_CRS_DV */
+		};
+	};
+
 	fmc_pins_a: fmc-0 {
 		pins1 {
 			pinmux = <STM32_PINMUX('D', 4, AF12)>, /* FMC_NOE */
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
