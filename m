Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5961D19ACC5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 15:24:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zlpWj+fM0R7J7TxEQkAtaxeNSJp2IrnViroDMkv29lI=; b=BdfdZZQqfiZQkh
	yqRwLpxpnaYWdT2fp5wnY/thYhIuVUEnsMBjK7Rr9m/GPxpwGkQeziyqaq5g2MrfZBAsdM8Q9UOE5
	tC9uEqdESHH4aMC+gmCjJTAS4kcf6h+sjs9BCl5xhdFaKLkyVZNG9QzY1n1xkqjkXHwIdwp4p6CgE
	Wyp80a9CxuE/J1dqp+WwoWFrcvDTo4yeBc/L0DMdRcetFlJPmkevq+5V1xb7Z6D/1XhCx5UEMuL5Q
	0WtYdMerwjN539V1RiQI/Gmfp033Hpfvj/Aru89SoKg4h835kQEXavKdOlDnCbWHXbcJyxpQBLii+
	w/iEI4VGSk5y7KKwUjxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJdM4-00065O-MF; Wed, 01 Apr 2020 13:24:28 +0000
Received: from mail-out.m-online.net ([2001:a60:0:28:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJdKj-0004h0-Op
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 13:23:07 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48sn1z6ccCz1rm9S;
 Wed,  1 Apr 2020 15:23:03 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48sn1z5tNwz1r0cS;
 Wed,  1 Apr 2020 15:23:03 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id wv-ba7vzVc4d; Wed,  1 Apr 2020 15:23:02 +0200 (CEST)
X-Auth-Info: V2hUMZn3KAgRre0ETaG2Pu2CHhqypi2R/pNLh7dNnms=
Received: from desktop.lan (ip-86-49-35-8.net.upcbroadband.cz [86.49.35.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Wed,  1 Apr 2020 15:23:02 +0200 (CEST)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V4 05/22] ARM: dts: stm32: Add alternate pinmux for SDMMC1
 direction pins
Date: Wed,  1 Apr 2020 15:22:20 +0200
Message-Id: <20200401132237.60880-6-marex@denx.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200401132237.60880-1-marex@denx.de>
References: <20200401132237.60880-1-marex@denx.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_062305_961635_BDFF9598 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add another mux option for SDMMC1 direction pins, in particular
SDMMC1_D123DIR, this is used on AV96 board.

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Patrice Chotard <patrice.chotard@st.com>
Cc: Patrick Delaunay <patrick.delaunay@st.com>
Cc: linux-stm32@st-md-mailman.stormreply.com
To: linux-arm-kernel@lists.infradead.org
---
V2: Fix SDMMC1_D123DIR AF, should be AF11
V3: No change
V4: Rebase on stm32-next
---
 arch/arm/boot/dts/stm32mp15-pinctrl.dtsi | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
index 6fce6133d644..fadf09f04f53 100644
--- a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
@@ -1084,6 +1084,30 @@ pins {
 		};
 	};
 
+	sdmmc1_dir_pins_b: sdmmc1-dir-1 {
+		pins1 {
+			pinmux = <STM32_PINMUX('F', 2, AF11)>, /* SDMMC1_D0DIR */
+				 <STM32_PINMUX('E', 14, AF11)>, /* SDMMC1_D123DIR */
+				 <STM32_PINMUX('B', 9, AF11)>; /* SDMMC1_CDIR */
+			slew-rate = <1>;
+			drive-push-pull;
+			bias-pull-up;
+		};
+		pins2{
+			pinmux = <STM32_PINMUX('E', 4, AF8)>; /* SDMMC1_CKIN */
+			bias-pull-up;
+		};
+	};
+
+	sdmmc1_dir_sleep_pins_b: sdmmc1-dir-sleep-1 {
+		pins {
+			pinmux = <STM32_PINMUX('F', 2, ANALOG)>, /* SDMMC1_D0DIR */
+				 <STM32_PINMUX('E', 14, ANALOG)>, /* SDMMC1_D123DIR */
+				 <STM32_PINMUX('B', 9, ANALOG)>, /* SDMMC1_CDIR */
+				 <STM32_PINMUX('E', 4, ANALOG)>; /* SDMMC1_CKIN */
+		};
+	};
+
 	sdmmc2_b4_pins_a: sdmmc2-b4-0 {
 		pins1 {
 			pinmux = <STM32_PINMUX('B', 14, AF9)>, /* SDMMC2_D0 */
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
