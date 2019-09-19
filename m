Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E8BB7E43
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 17:33:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7iiE6d0CFboPg/0ce7hfErYDSdvBoG4fCbX5Bx3xBxo=; b=Eq9vTQGo8Q4ymk
	DpOs2pwaIhpcIEpe40vwww5ZFz+rw2JHoIJmfpCVQkOdOZWYMi1uhjr+Gv21ujhiZU75GxzYeMoj6
	QbKtZkK+t7J5ioDO9sfDSaRbT/0nf+MdvIgWLS8zBhTNsnQpCpTRBAXKOiFdDA1BjcYePNBy9YAS4
	+y/ydCZTl7OohDWl57VYDRtR9UL1I0BRE6s4S51HxVBsbqIZDvrVlwj57KDKKsY1UU6vfZIunR+VR
	z/Xvs+f+v77TEskbDK09qyeerE+pkw3ZSHIFJvfteYY/KgkW3mG55umctoRront5X3X8iU2IK4E2g
	RaQyv6ctdCCOTrblxFZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAyR2-0007DW-0c; Thu, 19 Sep 2019 15:33:32 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAyPl-0006fu-CS
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 15:32:16 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x8JFW7Gi069912;
 Thu, 19 Sep 2019 10:32:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1568907127;
 bh=NO4p9MHndcp9v50S+FZAaHmSvojyoT1ZHqA7E8UIydA=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=amFnToyivha5/S3V+sgDW3hV+ni0A/DKC764wu0IN0xihWtZvydcy94nDqgN7WFmJ
 Qzez5sOk8aIjV++N4LL9coGboap5NBhfyKi6a8AAT/lXstjhMUsHlYtygWrwmgkyx2
 oIbruxGQKCwvsAGURoaUZv+v1/KoXPeAtWpNzj28=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8JFW72x009614;
 Thu, 19 Sep 2019 10:32:07 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 19
 Sep 2019 10:32:07 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 19 Sep 2019 10:32:03 -0500
Received: from a0230074-OptiPlex-7010.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8JFVxwM001224;
 Thu, 19 Sep 2019 10:32:05 -0500
From: Faiz Abbas <faiz_abbas@ti.com>
To: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH 2/2] arm64: dts: ti: j721e-common-proc-board: Add Support for
 eMMC and SD card
Date: Thu, 19 Sep 2019 21:02:42 +0530
Message-ID: <20190919153242.29399-3-faiz_abbas@ti.com>
X-Mailer: git-send-email 2.19.2
In-Reply-To: <20190919153242.29399-1-faiz_abbas@ti.com>
References: <20190919153242.29399-1-faiz_abbas@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_083214_617703_71D28D8D 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, nm@ti.com, robh+dt@kernel.org, t-kristo@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

sdhci0 is connected to an eMMC and sdhci1 is connected to an SD card
slot. Add support for these nodes.

Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
---
 .../dts/ti/k3-j721e-common-proc-board.dts     | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts b/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
index d2894d55fbbe..3cfaa2c83ba6 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
@@ -41,6 +41,20 @@
 			J721E_IOPAD(0x0, PIN_INPUT, 7) /* (AC18) EXTINTn.GPIO0_0 */
 		>;
 	};
+
+	main_mmc1_pins_default: main_mmc1_pins_default {
+		pinctrl-single,pins = <
+			J721E_IOPAD(0x254, PIN_INPUT, 0) /* (R29) MMC1_CMD */
+			J721E_IOPAD(0x250, PIN_INPUT, 0) /* (P25) MMC1_CLK */
+			J721E_IOPAD(0x2ac, PIN_INPUT, 0) /* (P25) MMC1_CLKLB */
+			J721E_IOPAD(0x24c, PIN_INPUT, 0) /* (R24) MMC1_DAT0 */
+			J721E_IOPAD(0x248, PIN_INPUT, 0) /* (P24) MMC1_DAT1 */
+			J721E_IOPAD(0x244, PIN_INPUT, 0) /* (R25) MMC1_DAT2 */
+			J721E_IOPAD(0x240, PIN_INPUT, 0) /* (R26) MMC1_DAT3 */
+			J721E_IOPAD(0x258, PIN_INPUT, 0) /* (P23) MMC1_SDCD */
+			J721E_IOPAD(0x25c, PIN_INPUT, 0) /* (R28) MMC1_SDWP */
+		>;
+	};
 };
 
 &wkup_pmx0 {
@@ -117,3 +131,23 @@
 &wkup_gpio1 {
 	status = "disabled";
 };
+
+&main_sdhci0 {
+	/* eMMC */
+	non-removable;
+	ti,driver-strength-ohm = <50>;
+	disable-wp;
+};
+
+&main_sdhci1 {
+	/* SD/MMC */
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_mmc1_pins_default>;
+	ti,driver-strength-ohm = <50>;
+	disable-wp;
+};
+
+&main_sdhci2 {
+	/* Unused */
+	status = "disabled";
+};
-- 
2.19.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
