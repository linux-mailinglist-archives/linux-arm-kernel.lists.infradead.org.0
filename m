Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CACB0199DA2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 20:03:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=epgJtQBPLaEpY7aXTezaQ/LljSMuKG0d7KkqjjEFi2U=; b=fFq8dJSwRoJXy/
	bgXUsZz7USuvN9FlYqPLBy1kImP3Yan3fPMV4LGYmH/bQbz+B6qDdu1PjKrUL2T5br/XW/t0NuGto
	0Gz4Fuxx3cN6GETW3t+js3TGNsSmK/K1CicR0Fy+RUUvdXabSFfJMytqyx+alvrSqQ+ffoDfizecj
	8iiseppEE8+WUyZGCMwiBjY6nAKC08NZ4X0TgLXLaDhygAN7jDdDmVZCmByOv234FJUqZV+ttr0P5
	+yxemtDU7cAiwWgd2b2J6KHlOpBbB5oyCC6rOAlfDp0ev+UgOovv6WXRJ0Lt1qMUVO6Nwk4j0ozM0
	kP6hgn7G/kDPuwQlVnDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJLEP-0006kN-7Y; Tue, 31 Mar 2020 18:03:21 +0000
Received: from mail-out.m-online.net ([212.18.0.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJLAS-0001Lv-9R
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 17:59:18 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48sHC7003Vz1rqBD;
 Tue, 31 Mar 2020 19:59:14 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48sHC66qTzz1qqkQ;
 Tue, 31 Mar 2020 19:59:14 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id yXVD0NkkhsDP; Tue, 31 Mar 2020 19:59:13 +0200 (CEST)
X-Auth-Info: GvyMSaXY43mtyWOOKm3Jg2rOlgpxoy9nnm3Fn9kYBcI=
Received: from desktop.lan (ip-86-49-35-8.net.upcbroadband.cz [86.49.35.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Tue, 31 Mar 2020 19:59:13 +0200 (CEST)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V3 11/22] ARM: dts: stm32: Add QSPI NOR on AV96
Date: Tue, 31 Mar 2020 19:58:00 +0200
Message-Id: <20200331175811.205153-12-marex@denx.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200331175811.205153-1-marex@denx.de>
References: <20200331175811.205153-1-marex@denx.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_105916_493060_DBCB9D45 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.10 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.10 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

The DH Electronics DHCOR SOM has QSPI NOR on the SoM itself, add it
into the DT.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Patrice Chotard <patrice.chotard@st.com>
Cc: Patrick Delaunay <patrick.delaunay@st.com>
Cc: linux-stm32@st-md-mailman.stormreply.com
To: linux-arm-kernel@lists.infradead.org
---
V2: Use spi-flash in the DT node instead of explicit model name
V3: Reduce the SPI controller window to 2 MiB, which is the flash size
---
 arch/arm/boot/dts/stm32mp157a-avenger96.dts | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
index 894b0589b30b..09eab93980d6 100644
--- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
+++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
@@ -21,6 +21,7 @@ aliases {
 		mmc0 = &sdmmc1;
 		serial0 = &uart4;
 		serial1 = &uart7;
+		spi0 = &qspi;
 	};
 
 	chosen {
@@ -312,6 +313,25 @@ &pwr_regulators {
 	vdd_3v3_usbfs-supply = <&vdd_usb>;
 };
 
+&qspi {
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&qspi_clk_pins_a &qspi_bk1_pins_a>;
+	pinctrl-1 = <&qspi_clk_sleep_pins_a &qspi_bk1_sleep_pins_a>;
+	reg = <0x58003000 0x1000>, <0x70000000 0x200000>;
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	flash0: spi-flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-rx-bus-width = <4>;
+		spi-max-frequency = <108000000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+	};
+};
+
 &rng1 {
 	status = "okay";
 };
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
