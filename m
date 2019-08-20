Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E644962B1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 16:43:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IJfWwGkyWL5M2dJnWGVS/ZzE3cOe60K5I5nfVYldFE8=; b=NH+Y7q34YJIl7y
	RnN4BVAZYkjzCdsyGq/5fnSunB6RU347GYoMwqJxZGTK5VK7KPEjlr+xblXZBtHBIAe86i1D8cLRf
	Fisa+X7LIyfIGNNx7HGbe/zWzbADmChA80uV2BDLbo62HMIePgj3awXYQeNfpJ2v+tBaKY3br6Lp6
	eF1tBqoc/MulzN0eBSFvdogKDRcUPp3TWEbE1CbzurNjV13rms+b8tlKMlRFb/2M+zZQo7uq1U1fr
	29vTgZyeHbAhUxnopWz7LA6tN3SJIyhgEojErpeSp5dEyLV9sGKflUeEjg6BMpAA1okHhwLh77X3O
	vVHom9aKWYsF7ozvpmPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i05La-00059n-Im; Tue, 20 Aug 2019 14:42:54 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i05Jk-0003TF-Ij
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 14:41:07 +0000
Received: by mail-wm1-x344.google.com with SMTP id i63so2871316wmg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 07:41:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jEcCxLSmgTSFx3ThyMxbNKwmPy3h7MyfaKIL/tuCs+o=;
 b=fhOQYci3oJMJzxCSo05SuNeRhlgenJy4unwnPSN63ArX7CN9qx/wAb6gxBMgmaK3Ma
 2nIuQ5SyGSqUBqQ9VnUlfrLKGS4qFVEkREcThm8KtrlS5fSncDd1YEvq+GDdz1lItcVF
 r4EM58t2Ksqx3MVKG4g5BpZFm45exUVruF4kFQXsjnilq80IOg4xAKcRgKZZrs7Ay05k
 ke9zv+H2sDBRJ3+qEePepPCIZatrgU0OkgTPcZbuUoptyN0OSuRYeKT1kV3NHzkWt0HQ
 bmb/ZjBTOcw6dx6waSscjub0inQZ5+FqaRfobvkq2ySrOvD0/y5FWJl+6nkv3LPrERrk
 3CWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jEcCxLSmgTSFx3ThyMxbNKwmPy3h7MyfaKIL/tuCs+o=;
 b=Fi8ER8Py0v6p97hhjYOnv6bmP2ONstEu8GibRnM0u7Sc2sSA55Av3pIsHRcaC9B6rJ
 sEQBoCzSTXnJK+HzjZ0XmFIOeEHkxk8heNhj35kq4QAIuMk9O2sbV+lXjYfH/46yx/hy
 UqzaNmaD95kEbxSmYum0jXGJANwc76FOaOGehGDTZepe8XmvNI90FyYBg+IZzVpRnmb8
 2cj8+Fwoo9f5i1+Zzd/IQmFfSAkJlgvPG+t+u3zlseoWCgO3Aryh4DFbNC42yIdCFi6q
 XzxEPgHsBe8v3GfVjTcvbStMsxU0SfvqGZxzTa0hmLN822pZvU1eM5OdF7XdrX8M02vG
 piEg==
X-Gm-Message-State: APjAAAUeC1Kd8NV9IVAN2joneZjr35PEvfrJzS7TSPy/1rpM4FN9zI52
 MzL75KzEIfmejYDkOI/VgGkbTg==
X-Google-Smtp-Source: APXvYqwucYPtb93vwY6IWRK5P1gDI2t3TNyhd8gYdj7YKMSGJWxg816WtltHGhNIE/b7WgxQHbcFmA==
X-Received: by 2002:a1c:f103:: with SMTP id p3mr378195wmh.18.1566312058745;
 Tue, 20 Aug 2019 07:40:58 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id a18sm21826750wrt.18.2019.08.20.07.40.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 07:40:57 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 3/6] soc: amlogic: clk-measure: Add support for SM1
Date: Tue, 20 Aug 2019 16:40:49 +0200
Message-Id: <20190820144052.18269-4-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190820144052.18269-1-narmstrong@baylibre.com>
References: <20190820144052.18269-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_074101_636824_8FDFAF98 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the clk-measurer clocks IDs for the Amlogic SM1 SoC family.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/soc/amlogic/meson-clk-measure.c | 134 ++++++++++++++++++++++++
 1 file changed, 134 insertions(+)

diff --git a/drivers/soc/amlogic/meson-clk-measure.c b/drivers/soc/amlogic/meson-clk-measure.c
index f09b404b39d3..0fa47d77577d 100644
--- a/drivers/soc/amlogic/meson-clk-measure.c
+++ b/drivers/soc/amlogic/meson-clk-measure.c
@@ -357,6 +357,136 @@ static struct meson_msr_id clk_msr_g12a[CLK_MSR_MAX] = {
 	CLK_MSR_ID(122, "audio_pdm_dclk"),
 };
 
+static struct meson_msr_id clk_msr_sm1[CLK_MSR_MAX] = {
+	CLK_MSR_ID(0, "ring_osc_out_ee_0"),
+	CLK_MSR_ID(1, "ring_osc_out_ee_1"),
+	CLK_MSR_ID(2, "ring_osc_out_ee_2"),
+	CLK_MSR_ID(3, "ring_osc_out_ee_3"),
+	CLK_MSR_ID(4, "gp0_pll"),
+	CLK_MSR_ID(5, "gp1_pll"),
+	CLK_MSR_ID(6, "enci"),
+	CLK_MSR_ID(7, "clk81"),
+	CLK_MSR_ID(8, "encp"),
+	CLK_MSR_ID(9, "encl"),
+	CLK_MSR_ID(10, "vdac"),
+	CLK_MSR_ID(11, "eth_tx"),
+	CLK_MSR_ID(12, "hifi_pll"),
+	CLK_MSR_ID(13, "mod_tcon"),
+	CLK_MSR_ID(14, "fec_0"),
+	CLK_MSR_ID(15, "fec_1"),
+	CLK_MSR_ID(16, "fec_2"),
+	CLK_MSR_ID(17, "sys_pll_div16"),
+	CLK_MSR_ID(18, "sys_cpu_div16"),
+	CLK_MSR_ID(19, "lcd_an_ph2"),
+	CLK_MSR_ID(20, "rtc_osc_out"),
+	CLK_MSR_ID(21, "lcd_an_ph3"),
+	CLK_MSR_ID(22, "eth_phy_ref"),
+	CLK_MSR_ID(23, "mpll_50m"),
+	CLK_MSR_ID(24, "eth_125m"),
+	CLK_MSR_ID(25, "eth_rmii"),
+	CLK_MSR_ID(26, "sc_int"),
+	CLK_MSR_ID(27, "in_mac"),
+	CLK_MSR_ID(28, "sar_adc"),
+	CLK_MSR_ID(29, "pcie_inp"),
+	CLK_MSR_ID(30, "pcie_inn"),
+	CLK_MSR_ID(31, "mpll_test_out"),
+	CLK_MSR_ID(32, "vdec"),
+	CLK_MSR_ID(34, "eth_mpll_50m"),
+	CLK_MSR_ID(35, "mali"),
+	CLK_MSR_ID(36, "hdmi_tx_pixel"),
+	CLK_MSR_ID(37, "cdac"),
+	CLK_MSR_ID(38, "vdin_meas"),
+	CLK_MSR_ID(39, "bt656"),
+	CLK_MSR_ID(40, "arm_ring_osc_out_4"),
+	CLK_MSR_ID(41, "eth_rx_or_rmii"),
+	CLK_MSR_ID(42, "mp0_out"),
+	CLK_MSR_ID(43, "fclk_div5"),
+	CLK_MSR_ID(44, "pwm_b"),
+	CLK_MSR_ID(45, "pwm_a"),
+	CLK_MSR_ID(46, "vpu"),
+	CLK_MSR_ID(47, "ddr_dpll_pt"),
+	CLK_MSR_ID(48, "mp1_out"),
+	CLK_MSR_ID(49, "mp2_out"),
+	CLK_MSR_ID(50, "mp3_out"),
+	CLK_MSR_ID(51, "sd_emmc_c"),
+	CLK_MSR_ID(52, "sd_emmc_b"),
+	CLK_MSR_ID(53, "sd_emmc_a"),
+	CLK_MSR_ID(54, "vpu_clkc"),
+	CLK_MSR_ID(55, "vid_pll_div_out"),
+	CLK_MSR_ID(56, "wave420l_a"),
+	CLK_MSR_ID(57, "wave420l_c"),
+	CLK_MSR_ID(58, "wave420l_b"),
+	CLK_MSR_ID(59, "hcodec"),
+	CLK_MSR_ID(60, "arm_ring_osc_out_5"),
+	CLK_MSR_ID(61, "gpio_msr"),
+	CLK_MSR_ID(62, "hevcb"),
+	CLK_MSR_ID(63, "dsi_meas"),
+	CLK_MSR_ID(64, "spicc_1"),
+	CLK_MSR_ID(65, "spicc_0"),
+	CLK_MSR_ID(66, "vid_lock"),
+	CLK_MSR_ID(67, "dsi_phy"),
+	CLK_MSR_ID(68, "hdcp22_esm"),
+	CLK_MSR_ID(69, "hdcp22_skp"),
+	CLK_MSR_ID(70, "pwm_f"),
+	CLK_MSR_ID(71, "pwm_e"),
+	CLK_MSR_ID(72, "pwm_d"),
+	CLK_MSR_ID(73, "pwm_c"),
+	CLK_MSR_ID(74, "arm_ring_osc_out_6"),
+	CLK_MSR_ID(75, "hevcf"),
+	CLK_MSR_ID(76, "arm_ring_osc_out_7"),
+	CLK_MSR_ID(77, "rng_ring_osc_0"),
+	CLK_MSR_ID(78, "rng_ring_osc_1"),
+	CLK_MSR_ID(79, "rng_ring_osc_2"),
+	CLK_MSR_ID(80, "rng_ring_osc_3"),
+	CLK_MSR_ID(81, "vapb"),
+	CLK_MSR_ID(82, "ge2d"),
+	CLK_MSR_ID(83, "co_rx"),
+	CLK_MSR_ID(84, "co_tx"),
+	CLK_MSR_ID(85, "arm_ring_osc_out_8"),
+	CLK_MSR_ID(86, "arm_ring_osc_out_9"),
+	CLK_MSR_ID(87, "mipi_dsi_phy"),
+	CLK_MSR_ID(88, "cis2_adapt"),
+	CLK_MSR_ID(89, "hdmi_todig"),
+	CLK_MSR_ID(90, "hdmitx_sys"),
+	CLK_MSR_ID(91, "nna_core"),
+	CLK_MSR_ID(92, "nna_axi"),
+	CLK_MSR_ID(93, "vad"),
+	CLK_MSR_ID(94, "eth_phy_rx"),
+	CLK_MSR_ID(95, "eth_phy_pll"),
+	CLK_MSR_ID(96, "vpu_b"),
+	CLK_MSR_ID(97, "cpu_b_tmp"),
+	CLK_MSR_ID(98, "ts"),
+	CLK_MSR_ID(99, "arm_ring_osc_out_10"),
+	CLK_MSR_ID(100, "arm_ring_osc_out_11"),
+	CLK_MSR_ID(101, "arm_ring_osc_out_12"),
+	CLK_MSR_ID(102, "arm_ring_osc_out_13"),
+	CLK_MSR_ID(103, "arm_ring_osc_out_14"),
+	CLK_MSR_ID(104, "arm_ring_osc_out_15"),
+	CLK_MSR_ID(105, "arm_ring_osc_out_16"),
+	CLK_MSR_ID(106, "ephy_test"),
+	CLK_MSR_ID(107, "au_dac_g128x"),
+	CLK_MSR_ID(108, "audio_locker_out"),
+	CLK_MSR_ID(109, "audio_locker_in"),
+	CLK_MSR_ID(110, "audio_tdmout_c_sclk"),
+	CLK_MSR_ID(111, "audio_tdmout_b_sclk"),
+	CLK_MSR_ID(112, "audio_tdmout_a_sclk"),
+	CLK_MSR_ID(113, "audio_tdmin_lb_sclk"),
+	CLK_MSR_ID(114, "audio_tdmin_c_sclk"),
+	CLK_MSR_ID(115, "audio_tdmin_b_sclk"),
+	CLK_MSR_ID(116, "audio_tdmin_a_sclk"),
+	CLK_MSR_ID(117, "audio_resample"),
+	CLK_MSR_ID(118, "audio_pdm_sys"),
+	CLK_MSR_ID(119, "audio_spdifout_b"),
+	CLK_MSR_ID(120, "audio_spdifout"),
+	CLK_MSR_ID(121, "audio_spdifin"),
+	CLK_MSR_ID(122, "audio_pdm_dclk"),
+	CLK_MSR_ID(123, "audio_resampled"),
+	CLK_MSR_ID(124, "earcrx_pll"),
+	CLK_MSR_ID(125, "earcrx_pll_test"),
+	CLK_MSR_ID(126, "csi_phy0"),
+	CLK_MSR_ID(127, "csi2_data"),
+};
+
 static int meson_measure_id(struct meson_msr_id *clk_msr_id,
 			       unsigned int duration)
 {
@@ -545,6 +675,10 @@ static const struct of_device_id meson_msr_match_table[] = {
 		.compatible = "amlogic,meson-g12a-clk-measure",
 		.data = (void *)clk_msr_g12a,
 	},
+	{
+		.compatible = "amlogic,meson-sm1-clk-measure",
+		.data = (void *)clk_msr_sm1,
+	},
 	{ /* sentinel */ }
 };
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
