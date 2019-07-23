Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96D4E71439
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 10:42:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ywlqb8IUhkyHSmu0XHrENPbtn7YV2MQdpncSFlxTtmM=; b=dhCLsxVwFUxl5c89kKblYN+bKB
	ZJ1fCjuf/52iw1cZuSKO8dRV9lFkpJrX9KiEg6APWxYEqa+Fn8n5jjL1cXcyWV+bNqgoQdD5HuDs6
	weQ0pElatMnKlZw39gWh0SW05bhYLo5FO4XDooykRr8c5NfgalT3tEzSsGxY6Wspkl0EKTtUWTLIZ
	1YLVnICqPRNzr3po4z68YGxbIM2Ti32rsOhAoAt0LhIYQO1sUpaBlngwdW1jG7PrfXVgfhCquvCKq
	wUbpfa/uCpULAfyZQbSkvymD61zrJDgSl5G+mZJLm2z/M1F92bkpsFsHZ7TUVgepEj2BSTce7lno8
	w10rHe1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpqNm-0007JC-33; Tue, 23 Jul 2019 08:42:50 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpqME-0006Ki-1X
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 08:41:15 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id CE3F5200258;
 Tue, 23 Jul 2019 10:41:12 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id C0E2F200134;
 Tue, 23 Jul 2019 10:41:12 +0200 (CEST)
Received: from fsr-ub1864-103.ea.freescale.net
 (fsr-ub1864-103.ea.freescale.net [10.171.82.17])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 07A1B205DD;
 Tue, 23 Jul 2019 10:41:11 +0200 (CEST)
From: Daniel Baluta <daniel.baluta@nxp.com>
To: m.felsch@pengutronix.de,
	shawnguo@kernel.org
Subject: [PATCH v2 4/5] arm64: dts: imx8qxp: Add DSP DT node
Date: Tue, 23 Jul 2019 11:41:03 +0300
Message-Id: <20190723084104.12639-5-daniel.baluta@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190723084104.12639-1-daniel.baluta@nxp.com>
References: <20190723084104.12639-1-daniel.baluta@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_014114_223141_7111E74E 
X-CRM114-Status: UNSURE (   7.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, aisheng.dong@nxp.com, peng.fan@nxp.com,
 anson.huang@nxp.com, devicetree@vger.kernel.org,
 Daniel Baluta <daniel.baluta@nxp.com>, shengjiu.wang@nxp.com,
 linux-kernel@vger.kernel.org, paul.olaru@nxp.com, robh+dt@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, leonard.crestez@nxp.com,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org,
 sound-open-firmware@alsa-project.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This includes DSP reserved memory, ADMA DSP device and DSP MU
communication channels description.

Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8qxp-mek.dts |  4 +++
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi    | 32 +++++++++++++++++++
 2 files changed, 36 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
index bfdada2db176..19468058e6ae 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
+++ b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
@@ -230,3 +230,7 @@
 		>;
 	};
 };
+
+&adma_dsp {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
index 05fa0b7f36bb..b6c408fb2b7f 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
@@ -113,6 +113,17 @@
 		interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
 	};
 
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		dsp_reserved: dsp@92400000 {
+			reg = <0 0x92400000 0 0x2000000>;
+			no-map;
+		};
+	};
+
 	pmu {
 		compatible = "arm,armv8-pmuv3";
 		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
@@ -204,6 +215,27 @@
 			#clock-cells = <1>;
 		};
 
+		adma_dsp: dsp@596e8000 {
+			compatible = "fsl,imx8qxp-dsp";
+			reg = <0x596e8000 0x88000>;
+			clocks = <&adma_lpcg IMX_ADMA_LPCG_DSP_IPG_CLK>,
+				<&adma_lpcg IMX_ADMA_LPCG_OCRAM_IPG_CLK>,
+				<&adma_lpcg IMX_ADMA_LPCG_DSP_CORE_CLK>;
+			clock-names = "ipg", "ocram", "core";
+			power-domains = <&pd IMX_SC_R_MU_13A>,
+				<&pd IMX_SC_R_MU_13B>,
+				<&pd IMX_SC_R_DSP>,
+				<&pd IMX_SC_R_DSP_RAM>;
+			mbox-names = "txdb0", "txdb1",
+				"rxdb0", "rxdb1";
+			mboxes = <&lsio_mu13 2 0>,
+				<&lsio_mu13 2 1>,
+				<&lsio_mu13 3 0>,
+				<&lsio_mu13 3 1>;
+			memory-region = <&dsp_reserved>;
+			status = "disabled";
+		};
+
 		adma_lpuart0: serial@5a060000 {
 			compatible = "fsl,imx8qxp-lpuart", "fsl,imx7ulp-lpuart";
 			reg = <0x5a060000 0x1000>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
