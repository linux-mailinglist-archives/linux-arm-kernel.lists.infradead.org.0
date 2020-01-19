Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7AF2141FB6
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Jan 2020 20:12:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=edRhv5/YhNawpgwym7SIgI4FxIlKuQQJxXQ8u1Tb+HY=; b=LRzfXRAxBpocwb
	qgdMJgIZE0wZyJzS40vXl+BcJdXWyNIkX1NN0ha00w9cgugdtfjTWywz7EZt3Y/khODtzNXl3eFgR
	Y32qb13aCY92RCfETgcBlPuv9QnRVrMBpiPUViWlDB49v3ZvZNLI2bwhwgIagpQpJfcz/YVA17P8k
	JvhkFoi+M2aTdmxgN6IcaPWE/vAe9wclhssZrfzg7/UJaL4IvUxRa6eKc+GRD/zAvRqhn4mHJRqeh
	uUN6EVyVN/I/Xy2NqfiM6Waiff2a/rjNUqp04/ZlPzNXCkKJftbZzNF/yNGcJTTj+zIQcCfuZ/roo
	5n9FX3CK13mIh1qi+rQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itFze-0004xL-Gp; Sun, 19 Jan 2020 19:12:18 +0000
Received: from mail-out.m-online.net ([212.18.0.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itFzU-0004vs-Is
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Jan 2020 19:12:10 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 4814DG6j6Jz1rghX;
 Sun, 19 Jan 2020 20:11:58 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 4814DG60Ctz1qwyZ;
 Sun, 19 Jan 2020 20:11:58 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id US30GIvdsmM7; Sun, 19 Jan 2020 20:11:57 +0100 (CET)
X-Auth-Info: Xhvpg4TcWhz+PoLu784cV+9ULGAG4ZzsSuSIaHhsJww=
Received: from desktop.lan (ip-86-49-35-8.net.upcbroadband.cz [86.49.35.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Sun, 19 Jan 2020 20:11:57 +0100 (CET)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 2/6] ARM: dts: stm32: Add SAI2A pins B pinmux entry on
 stm32mp1
Date: Sun, 19 Jan 2020 20:11:39 +0100
Message-Id: <20200119191143.50033-2-marex@denx.de>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200119191143.50033-1-marex@denx.de>
References: <20200119191143.50033-1-marex@denx.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_111208_767063_CAC148EF 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.10 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.10 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

Add pinmux entry for SAI2A with alternative pin configuration.
This is useful in combination with sai2b_pins_b e.g. for codecs
like SGTL5000.

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
 arch/arm/boot/dts/stm32mp15-pinctrl.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
index f40f66a692a1..2927a812bb26 100644
--- a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
@@ -719,6 +719,26 @@ pins {
 		};
 	};
 
+
+	sai2a_pins_b: sai2a-2 {
+		pins1 {
+			pinmux = <STM32_PINMUX('I', 6, AF10)>,	/* SAI2_SD_A */
+				 <STM32_PINMUX('I', 7, AF10)>,	/* SAI2_FS_A */
+				 <STM32_PINMUX('D', 13, AF10)>;	/* SAI2_SCK_A */
+			slew-rate = <0>;
+			drive-push-pull;
+			bias-disable;
+		};
+	};
+
+	sai2a_sleep_pins_b: sai2a-sleep-3 {
+		pins {
+			pinmux = <STM32_PINMUX('I', 6, ANALOG)>,  /* SAI2_SD_A */
+				 <STM32_PINMUX('I', 7, ANALOG)>,  /* SAI2_FS_A */
+				 <STM32_PINMUX('D', 13, ANALOG)>; /* SAI2_SCK_A */
+		};
+	};
+
 	sai2b_pins_a: sai2b-0 {
 		pins1 {
 			pinmux = <STM32_PINMUX('E', 12, AF10)>, /* SAI2_SCK_B */
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
