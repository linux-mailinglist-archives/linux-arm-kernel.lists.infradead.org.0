Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97A2D1B40E9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 12:49:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XwrVTC8mmgHnO2aHHWBf1e2k9x7/5F+y4lBNZdCQ82g=; b=GHBg0B3ZfEILZK
	zJE1Xr5c2SDSsa/dnW8rn/1o9pgdIVs0Ff9P7yJP9SlKgoENIy/KbFuX30aR4BZ189lR+Qyr7V+w6
	XqkeTYsh3dJHBLLLPaidR5nbCST7GN9EgMZsv1M9OwqfTAWkRanj+Fwqz/ucP7bdRhkdXMImdeFn0
	WdtRozZtJqWuRIXE2D111B5GZKEQLOfm8QCmoBPXWVkK2wSRlLusVLiuwt4NG8vrH6PQfSs+ae7mT
	wcp7yF8Xii665zU+vF2HUsh/rOu8tbqek+G6qX+xkByiS4PqHx/WeWKUv0MkzD/OesSOO8n727/wN
	LcDB8TS5QE0616TRihnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRCwC-0002kl-70; Wed, 22 Apr 2020 10:49:04 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRCtt-0000rf-AJ
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 10:46:42 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 496cYn4DGCz1qs3D;
 Wed, 22 Apr 2020 12:46:37 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 496cYn3TCYz1qr40;
 Wed, 22 Apr 2020 12:46:37 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id nAi4rAdKp-vr; Wed, 22 Apr 2020 12:46:36 +0200 (CEST)
X-Auth-Info: uca6Lbbpi/VF4oSBhPVXV5nxXwbPtGm1rIwr/5rE2Pc=
Received: from desktop.lan (ip-86-49-35-8.net.upcbroadband.cz [86.49.35.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Wed, 22 Apr 2020 12:46:36 +0200 (CEST)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V5 08/20] ARM: dts: stm32: Repair SDMMC1 operation on AV96
Date: Wed, 22 Apr 2020 12:46:01 +0200
Message-Id: <20200422104613.96944-9-marex@denx.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200422104613.96944-1-marex@denx.de>
References: <20200422104613.96944-1-marex@denx.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_034641_524620_0B18329D 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.9 listed in wl.mailspike.net]
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

The SD uses different pinmux for the D123DIRline, use such a pinmux,
otherwise there is a pinmux collision on the AV96. Add missing SD
voltage regulator switch.

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
V2: Disable SDR104, it seems unstable thus far
V3: No change
V4: Rebase on stm32-next
V5: Reorder this patch after the PMIC patches
---
 arch/arm/boot/dts/stm32mp157a-avenger96.dts | 21 ++++++++++++++++++---
 1 file changed, 18 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
index 8198e22d81e7..1219e2b35c50 100644
--- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
+++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
@@ -78,6 +78,20 @@ led6 {
 		};
 	};
 
+	sd_switch: regulator-sd_switch {
+		compatible = "regulator-gpio";
+		regulator-name = "sd_switch";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <2900000>;
+		regulator-type = "voltage";
+		regulator-always-on;
+
+		gpios = <&gpioi 5 GPIO_ACTIVE_HIGH>;
+		gpios-states = <0>;
+		states = <1800000 0x1>,
+			 <2900000 0x0>;
+	};
+
 	/* Enpirion EP3A8LQI U2 on the DHCOR */
 	vdd_io: regulator-buck-io {
 		compatible = "regulator-fixed";
@@ -310,9 +324,9 @@ &rtc {
 
 &sdmmc1 {
 	pinctrl-names = "default", "opendrain", "sleep";
-	pinctrl-0 = <&sdmmc1_b4_pins_a &sdmmc1_dir_pins_a>;
-	pinctrl-1 = <&sdmmc1_b4_od_pins_a>;
-	pinctrl-2 = <&sdmmc1_b4_sleep_pins_a>;
+	pinctrl-0 = <&sdmmc1_b4_pins_a &sdmmc1_dir_pins_b>;
+	pinctrl-1 = <&sdmmc1_b4_od_pins_a &sdmmc1_dir_pins_b>;
+	pinctrl-2 = <&sdmmc1_b4_sleep_pins_a &sdmmc1_dir_sleep_pins_b>;
 	cd-gpios = <&gpioi 8 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
 	disable-wp;
 	st,sig-dir;
@@ -320,6 +334,7 @@ &sdmmc1 {
 	st,use-ckin;
 	bus-width = <4>;
 	vmmc-supply = <&vdd_sd>;
+	vqmmc-supply = <&sd_switch>;
 	status = "okay";
 };
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
