Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E975F50C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 10:57:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oF0c4Kgh/cP4UkfMu8nP4ou8rXg3RuAVJ6occ2ixkK0=; b=DVvS2Ro393/wkM
	Xon/cury3oOz12ZKf3qvtkt5VOXOdzpA3wfgsxoooPSatZbo3OYeq1QqgMEnu4W4f8wG++OkTZCsi
	fq8ikVIjVdmGHvj1vzBmBSJC2OxUAj6+a1Q/Nv6TvIEt59zzcsyrMXwYsXh91MJ9lf0fFb2DVBIuo
	afm6JMMO5Q2UHRss6AdArD2eyx7jFxjscz9SiWHx0W1PPqoggnAOCzeC1evv6tuwpvGfC+p/X7GjD
	lEy4Ae3fu14dVdvX/WHEtHdj0Ql/Ce7dQSMB7wixTqQquBpHCjpZ+UvwPKe2ji+ZNGzTgLdS+jENI
	rh5+KFZio0FscF5o1+yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hixYY-0004Ba-Ls; Thu, 04 Jul 2019 08:57:30 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hixYC-0004Ag-A2
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 08:57:10 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 0CB7D205ED;
 Thu,  4 Jul 2019 10:57:07 +0200 (CEST)
Received: from [192.168.108.49] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id E379C20554;
 Thu,  4 Jul 2019 10:57:06 +0200 (CEST)
To: Bjorn Andersson <bjorn.andersson@linaro.org>,
 =?UTF-8?Q?Jonathan_Neusch=c3=a4fer?= <j.neuschaefer@gmx.net>,
 Jeffrey Hugo <jeffrey.l.hugo@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: [PATCH v2] pinctrl: msm8998: Squash TSIF pins together
Message-ID: <503b2ae8-ead6-70cd-7b21-ce5f5166a23a@free.fr>
Date: Thu, 4 Jul 2019 10:57:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Thu Jul  4 10:57:07 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_015708_634611_63BE51E2 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
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
Cc: MSM <linux-arm-msm@vger.kernel.org>, DT <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 gpio <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TSIF is the Transport Stream Interface.
First, rename tsif1 to tsif0, and tsif2 to tsif1.
Then squash all 5 tsif0 pins into a single function.
Same for tsif1.

Signed-off-by: Marc Gonzalez <marc.w.gonzalez@free.fr>
---
Changes from v1:
- Reword commit message for clarity (hopefully)
- Drop unrelated change in qcom,msm8998-pinctrl.txt
- CC DT
---
 .../bindings/pinctrl/qcom,msm8998-pinctrl.txt |  5 +-
 drivers/pinctrl/qcom/pinctrl-msm8998.c        | 76 +++++--------------
 2 files changed, 20 insertions(+), 61 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,msm8998-pinctrl.txt b/Documentation/devicetree/bindings/pinctrl/qcom,msm8998-pinctrl.txt
index 00174f08ba1d..18e3f3d3e3c5 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,msm8998-pinctrl.txt
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,msm8998-pinctrl.txt
@@ -124,9 +124,8 @@ to specify in a pin configuration subnode:
 		    qlink_request, qua_mi2s, sd_card, sd_write, sdc40, sdc41,
 		    sdc42, sdc43, sdc4_clk, sdc4_cmd, sec_mi2s, sp_cmu,
 		    spkr_i2s, ssbi1, ssc_irq, ter_mi2s, tgu_ch0, tgu_ch1,
-		    tsense_pwm1, tsense_pwm2, tsif1_clk, tsif1_data, tsif1_en,
-		    tsif1_error, tsif1_sync, tsif2_clk, tsif2_data, tsif2_en,
-		    tsif2_error, tsif2_sync, uim1_clk, uim1_data, uim1_present,
+		    tsense_pwm1, tsense_pwm2, tsif0, tsif1,
+		    uim1_clk, uim1_data, uim1_present,
 		    uim1_reset, uim2_clk, uim2_data, uim2_present, uim2_reset,
 		    uim_batt, usb_phy, vfr_1, vsense_clkout, vsense_data0,
 		    vsense_data1, vsense_mode, wlan1_adc0, wlan1_adc1,
diff --git a/drivers/pinctrl/qcom/pinctrl-msm8998.c b/drivers/pinctrl/qcom/pinctrl-msm8998.c
index 00d7b94bc3f1..a05f41fe2706 100644
--- a/drivers/pinctrl/qcom/pinctrl-msm8998.c
+++ b/drivers/pinctrl/qcom/pinctrl-msm8998.c
@@ -581,16 +581,8 @@ enum msm8998_functions {
 	msm_mux_tgu_ch1,
 	msm_mux_tsense_pwm1,
 	msm_mux_tsense_pwm2,
-	msm_mux_tsif1_clk,
-	msm_mux_tsif1_data,
-	msm_mux_tsif1_en,
-	msm_mux_tsif1_error,
-	msm_mux_tsif1_sync,
-	msm_mux_tsif2_clk,
-	msm_mux_tsif2_data,
-	msm_mux_tsif2_en,
-	msm_mux_tsif2_error,
-	msm_mux_tsif2_sync,
+	msm_mux_tsif0,
+	msm_mux_tsif1,
 	msm_mux_uim1_clk,
 	msm_mux_uim1_data,
 	msm_mux_uim1_present,
@@ -692,9 +684,6 @@ static const char * const atest_usb13_groups[] = {
 static const char * const bimc_dte1_groups[] = {
 	"gpio8", "gpio10",
 };
-static const char * const tsif1_sync_groups[] = {
-	"gpio9",
-};
 static const char * const wlan1_adc0_groups[] = {
 	"gpio9",
 };
@@ -863,9 +852,6 @@ static const char * const lpass_slimbus_groups[] = {
 static const char * const sd_write_groups[] = {
 	"gpio40",
 };
-static const char * const tsif1_error_groups[] = {
-	"gpio40",
-};
 static const char * const blsp_spi6_groups[] = {
 	"gpio41", "gpio42", "gpio43", "gpio44",
 };
@@ -1048,11 +1034,8 @@ static const char * const blsp_uim2_b_groups[] = {
 static const char * const blsp_i2c5_groups[] = {
 	"gpio87", "gpio88",
 };
-static const char * const tsif1_clk_groups[] = {
-	"gpio89",
-};
-static const char * const tsif1_en_groups[] = {
-	"gpio90",
+static const char * const tsif0_groups[] = {
+	"gpio9", "gpio40", "gpio89", "gpio90", "gpio91",
 };
 static const char * const mdp_vsync0_groups[] = {
 	"gpio90",
@@ -1075,17 +1058,14 @@ static const char * const tgu_ch0_groups[] = {
 static const char * const qdss_cti1_b_groups[] = {
 	"gpio90", "gpio91",
 };
-static const char * const tsif1_data_groups[] = {
-	"gpio91",
-};
 static const char * const sdc4_cmd_groups[] = {
 	"gpio91",
 };
 static const char * const tgu_ch1_groups[] = {
 	"gpio91",
 };
-static const char * const tsif2_error_groups[] = {
-	"gpio92",
+static const char * const tsif1_groups[] = {
+	"gpio92", "gpio93", "gpio94", "gpio95", "gpio96",
 };
 static const char * const sdc43_groups[] = {
 	"gpio92",
@@ -1093,30 +1073,18 @@ static const char * const sdc43_groups[] = {
 static const char * const vfr_1_groups[] = {
 	"gpio92",
 };
-static const char * const tsif2_clk_groups[] = {
-	"gpio93",
-};
 static const char * const sdc4_clk_groups[] = {
 	"gpio93",
 };
-static const char * const tsif2_en_groups[] = {
-	"gpio94",
-};
 static const char * const sdc42_groups[] = {
 	"gpio94",
 };
 static const char * const sd_card_groups[] = {
 	"gpio95",
 };
-static const char * const tsif2_data_groups[] = {
-	"gpio95",
-};
 static const char * const sdc41_groups[] = {
 	"gpio95",
 };
-static const char * const tsif2_sync_groups[] = {
-	"gpio96",
-};
 static const char * const sdc40_groups[] = {
 	"gpio96",
 };
@@ -1355,16 +1323,8 @@ static const struct msm_function msm8998_functions[] = {
 	FUNCTION(tgu_ch1),
 	FUNCTION(tsense_pwm1),
 	FUNCTION(tsense_pwm2),
-	FUNCTION(tsif1_clk),
-	FUNCTION(tsif1_data),
-	FUNCTION(tsif1_en),
-	FUNCTION(tsif1_error),
-	FUNCTION(tsif1_sync),
-	FUNCTION(tsif2_clk),
-	FUNCTION(tsif2_data),
-	FUNCTION(tsif2_en),
-	FUNCTION(tsif2_error),
-	FUNCTION(tsif2_sync),
+	FUNCTION(tsif0),
+	FUNCTION(tsif1),
 	FUNCTION(uim1_clk),
 	FUNCTION(uim1_data),
 	FUNCTION(uim1_present),
@@ -1396,7 +1356,7 @@ static const struct msm_pingroup msm8998_groups[] = {
 	PINGROUP(6, WEST, blsp_spi8, blsp_uart8_a, blsp_i2c8, _, _, _, _, _, _),
 	PINGROUP(7, WEST, blsp_spi8, blsp_uart8_a, blsp_i2c8, ddr_bist, _, atest_tsens2, atest_usb1, _, _),
 	PINGROUP(8, EAST, blsp_spi4, blsp_uart1_b, blsp_uim1_b, _, ddr_bist, _, wlan1_adc1, atest_usb13, bimc_dte1),
-	PINGROUP(9, EAST, blsp_spi4, blsp_uart1_b, blsp_uim1_b, tsif1_sync, ddr_bist, _, wlan1_adc0, atest_usb12, bimc_dte0),
+	PINGROUP(9, EAST, blsp_spi4, blsp_uart1_b, blsp_uim1_b, tsif0, ddr_bist, _, wlan1_adc0, atest_usb12, bimc_dte0),
 	PINGROUP(10, EAST, mdp_vsync_a, blsp_spi4, blsp_uart1_b, blsp_i2c4, ddr_bist, atest_gpsadc1, wlan2_adc1, atest_usb11, bimc_dte1),
 	PINGROUP(11, EAST, mdp_vsync_a, edp_lcd, blsp_spi4, blsp_uart1_b, blsp_i2c4, dbg_out, atest_gpsadc0, wlan2_adc0, atest_usb10),
 	PINGROUP(12, EAST, mdp_vsync, m_voc, _, _, _, _, _, _, _),
@@ -1427,7 +1387,7 @@ static const struct msm_pingroup msm8998_groups[] = {
 	PINGROUP(37, NORTH, agera_pll, _, _, _, _, _, _, _, _),
 	PINGROUP(38, WEST, usb_phy, _, _, _, _, _, _, _, _),
 	PINGROUP(39, WEST, lpass_slimbus, _, _, _, _, _, _, _, _),
-	PINGROUP(40, EAST, sd_write, tsif1_error, _, _, _, _, _, _, _),
+	PINGROUP(40, EAST, sd_write, tsif0, _, _, _, _, _, _, _),
 	PINGROUP(41, EAST, blsp_spi6, blsp_uart3_b, blsp_uim3_b, _, qdss, _, _, _, _),
 	PINGROUP(42, EAST, blsp_spi6, blsp_uart3_b, blsp_uim3_b, _, qdss, _, _, _, _),
 	PINGROUP(43, EAST, blsp_spi6, blsp_uart3_b, blsp_i2c6, _, qdss, _, _, _, _),
@@ -1476,14 +1436,14 @@ static const struct msm_pingroup msm8998_groups[] = {
 	PINGROUP(86, EAST, blsp_spi5, blsp_uart2_b, blsp_uim2_b, _, _, _, _, _, _),
 	PINGROUP(87, EAST, blsp_spi5, blsp_uart2_b, blsp_i2c5, _, _, _, _, _, _),
 	PINGROUP(88, EAST, blsp_spi5, blsp_uart2_b, blsp_i2c5, _, _, _, _, _, _),
-	PINGROUP(89, EAST, tsif1_clk, phase_flag, _, _, _, _, _, _, _),
-	PINGROUP(90, EAST, tsif1_en, mdp_vsync0, mdp_vsync1, mdp_vsync2, mdp_vsync3, blsp1_spi, tgu_ch0, qdss_cti1_b, _),
-	PINGROUP(91, EAST, tsif1_data, sdc4_cmd, tgu_ch1, phase_flag, qdss_cti1_b, _, _, _, _),
-	PINGROUP(92, EAST, tsif2_error, sdc43, vfr_1, phase_flag, _, _, _, _, _),
-	PINGROUP(93, EAST, tsif2_clk, sdc4_clk, _, qdss, _, _, _, _, _),
-	PINGROUP(94, EAST, tsif2_en, sdc42, _, _, _, _, _, _, _),
-	PINGROUP(95, EAST, tsif2_data, sdc41, _, _, _, _, _, _, _),
-	PINGROUP(96, EAST, tsif2_sync, sdc40, phase_flag, _, _, _, _, _, _),
+	PINGROUP(89, EAST, tsif0, phase_flag, _, _, _, _, _, _, _),
+	PINGROUP(90, EAST, tsif0, mdp_vsync0, mdp_vsync1, mdp_vsync2, mdp_vsync3, blsp1_spi, tgu_ch0, qdss_cti1_b, _),
+	PINGROUP(91, EAST, tsif0, sdc4_cmd, tgu_ch1, phase_flag, qdss_cti1_b, _, _, _, _),
+	PINGROUP(92, EAST, tsif1, sdc43, vfr_1, phase_flag, _, _, _, _, _),
+	PINGROUP(93, EAST, tsif1, sdc4_clk, _, qdss, _, _, _, _, _),
+	PINGROUP(94, EAST, tsif1, sdc42, _, _, _, _, _, _, _),
+	PINGROUP(95, EAST, tsif1, sdc41, _, _, _, _, _, _, _),
+	PINGROUP(96, EAST, tsif1, sdc40, phase_flag, _, _, _, _, _, _),
 	PINGROUP(97, WEST, _, mdp_vsync_b, ldo_en, _, _, _, _, _, _),
 	PINGROUP(98, WEST, _, mdp_vsync_b, ldo_update, _, _, _, _, _, _),
 	PINGROUP(99, WEST, _, _, _, _, _, _, _, _, _),
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
