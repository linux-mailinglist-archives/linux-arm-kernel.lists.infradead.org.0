Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CC0A198949
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 03:00:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tGbXUvix+lN/EvDQhozb8Zr/eSBMc2nq3/XRhvckITI=; b=VeUwEcbQmd0nUr
	Zi3qIKsasw/vmDuxa6fgsvMNEFfYZjGYAWEHh16FNNfs19Mm/oaA1ZutOrjpBsoeZGnaXAxtNxIVd
	1Pocg8/yhuR0OIFhyfBkbWNAzETuXzyP5mac1Vhb+WLyr7U7y0ch0tt5fa2v4NinMiM28qtj4F6ja
	2D+K8mTGLMWeoUNL6hO5iZeSB/FfB6AgfzQe5aChTXUKyeY6gWdS0bqU3j5iGhnY+Y1gcmBzkuWqQ
	ZlhsMOeAsbyFzho62FCSx/RbSKZUJa4XbVEMy9iXZMtt3uwq5aGRGWkHQcMIFPHVCbwmL4RKAdQsW
	1uQvBArM5s6yBw4Cl7Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ5GZ-0006ks-PS; Tue, 31 Mar 2020 01:00:31 +0000
Received: from mail-out.m-online.net ([212.18.0.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ5Dt-0003jq-56
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 00:57:46 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48rrXM136Lz1rnrQ;
 Tue, 31 Mar 2020 02:57:39 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48rrXM0pjqz1r0cH;
 Tue, 31 Mar 2020 02:57:39 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id 0pmnu74QNNtQ; Tue, 31 Mar 2020 02:57:37 +0200 (CEST)
X-Auth-Info: RYjIrCoAlG0CA7pipRwVjgANipZjvizxr1Iu2Gdr9sE=
Received: from desktop.lan (ip-86-49-35-8.net.upcbroadband.cz [86.49.35.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Tue, 31 Mar 2020 02:57:37 +0200 (CEST)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 07/22] ARM: dts: stm32: Add alternate pinmux for SDMMC2
 pins 4-7
Date: Tue, 31 Mar 2020 02:56:46 +0200
Message-Id: <20200331005701.283998-8-marex@denx.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200331005701.283998-1-marex@denx.de>
References: <20200331005701.283998-1-marex@denx.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_175745_428384_9F630DF1 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.10 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.10 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

Add another mux option for SDMMC2 pins 4..7, this is used on AV96 board.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Patrice Chotard <patrice.chotard@st.com>
Cc: Patrick Delaunay <patrick.delaunay@st.com>
Cc: linux-stm32@st-md-mailman.stormreply.com
To: linux-arm-kernel@lists.infradead.org
---
V2: No change
---
 arch/arm/boot/dts/stm32mp15-pinctrl.dtsi | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
index 8ac534c5bdf6..ec3621e0ff08 100644
--- a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
@@ -1062,6 +1062,27 @@ pins {
 		};
 	};
 
+	sdmmc2_d47_pins_b: sdmmc2-d47-1 {
+		pins {
+			pinmux = <STM32_PINMUX('A', 8, AF9)>, /* SDMMC2_D4 */
+				 <STM32_PINMUX('A', 15, AF9)>, /* SDMMC2_D5 */
+				 <STM32_PINMUX('C', 6, AF10)>, /* SDMMC2_D6 */
+				 <STM32_PINMUX('C', 7, AF10)>; /* SDMMC2_D7 */
+			slew-rate = <1>;
+			drive-push-pull;
+			bias-pull-up;
+		};
+	};
+
+	sdmmc2_d47_sleep_pins_b: sdmmc2-d47-sleep-1 {
+		pins {
+			pinmux = <STM32_PINMUX('A', 8, ANALOG)>, /* SDMMC2_D4 */
+				 <STM32_PINMUX('A', 15, ANALOG)>, /* SDMMC2_D5 */
+				 <STM32_PINMUX('C', 6, ANALOG)>, /* SDMMC2_D6 */
+				 <STM32_PINMUX('C', 7, ANALOG)>; /* SDMMC2_D7 */
+		};
+	};
+
 	sdmmc3_b4_pins_a: sdmmc3-b4-0 {
 		pins1 {
 			pinmux = <STM32_PINMUX('F', 0, AF9)>, /* SDMMC3_D0 */
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
