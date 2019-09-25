Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4432BDFE6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 16:19:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MKbQR5MDJOtkcg8QIBD69kTLLyNEc0UxSNOhJSUexIM=; b=EIzXBdMREALwj/
	UE47ToLD4lFYaHXpeStbFJXUQJ3U0cj9x+doHZQFRPn7yZBJBikHQ2c6AHbgBlFoD9Y5kEwzywghD
	RavSv+H27hkjrypSlg/sn88uAUyVTxUBI0tOwmCaEzvS4NPWgB+o2sLgFHAPKIpBrJXaH2cA+kyFu
	dl+cupuGdtoPwClog8NN8ZncsjljRWbFoo+IKDpCoAeI35dQFBAH+UtQ7xAbHtvkx/QJzN5MMzykj
	+v+biGyOewxCZiiBy8upYuzw4IBdWIAuru6O2Um6S05bsHvz6j9mUbXoue/LOIfnrAOPqZgKhJaVQ
	Vtkf7GQKey1tut6xz1tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD890-0002ox-2g; Wed, 25 Sep 2019 14:19:50 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD85r-0001bs-Ta
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 14:16:39 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iD85q-0000Eu-DC; Wed, 25 Sep 2019 15:16:34 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.2)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iD85p-00066k-Mm; Wed, 25 Sep 2019 15:16:33 +0100
From: Ben Dooks <ben.dooks@codethink.co.uk>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/5] clk: hisilicon: fix sparse warnings in clk-hi3670.c
Date: Wed, 25 Sep 2019 15:16:28 +0100
Message-Id: <20190925141632.23434-1-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_071636_511537_886950C8 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.8.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Ben Dooks <ben.dooks@codethink.co.uk>, Russell King <linux@armlinux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix the following warnings from sparse by removing the 0 initialiser
that is actually a pointer.

drivers/clk/hisilicon/clk-hi3670.c:298:64: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:300:64: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:302:64: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:304:64: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:306:63: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:308:63: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:310:63: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:312:63: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:314:64: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:316:64: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:318:64: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:320:64: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:322:63: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:324:64: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:326:64: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:328:63: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:330:64: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:332:63: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:334:63: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:336:64: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:338:64: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:340:64: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:342:64: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:344:63: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:346:64: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:348:65: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:350:64: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:352:64: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:488:69: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:490:70: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:492:70: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:494:69: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:496:70: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:498:69: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:500:69: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:502:70: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:504:69: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:506:69: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:508:69: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:510:70: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:512:69: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:514:70: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:516:69: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:518:70: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:520:69: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:522:69: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:524:70: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:526:70: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:528:69: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:530:69: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:532:70: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:534:71: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:536:71: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:538:69: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:611:64: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:614:64: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:616:64: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:653:70: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:655:70: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:657:70: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:659:70: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:661:70: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:663:70: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:665:70: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:735:63: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:737:63: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:739:63: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:741:63: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:743:64: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:745:64: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:802:69: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:804:69: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:806:69: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:808:69: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:810:70: warning: Using plain integer as NULL pointer
drivers/clk/hisilicon/clk-hi3670.c:812:69: warning: Using plain integer as NULL pointer

Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
---
 drivers/clk/hisilicon/clk-hi3670.c | 152 ++++++++++++++---------------
 1 file changed, 76 insertions(+), 76 deletions(-)

diff --git a/drivers/clk/hisilicon/clk-hi3670.c b/drivers/clk/hisilicon/clk-hi3670.c
index fd8c837a6ea3..4d05a71683a5 100644
--- a/drivers/clk/hisilicon/clk-hi3670.c
+++ b/drivers/clk/hisilicon/clk-hi3670.c
@@ -295,61 +295,61 @@ static const struct hisi_gate_clock hi3670_crgctrl_gate_sep_clks[] = {
 
 static const struct hisi_gate_clock hi3670_crgctrl_gate_clks[] = {
 	{ HI3670_AUTODIV_SYSBUS, "autodiv_sysbus", "clk_div_sysbus",
-	  CLK_SET_RATE_PARENT, 0x404, 5, CLK_GATE_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0x404, 5, CLK_GATE_HIWORD_MASK, },
 	{ HI3670_AUTODIV_EMMC0BUS, "autodiv_emmc0bus", "autodiv_sysbus",
-	  CLK_SET_RATE_PARENT, 0x404, 1, CLK_GATE_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0x404, 1, CLK_GATE_HIWORD_MASK, },
 	{ HI3670_PCLK_ANDGT_MMC1_PCIE, "pclk_andgt_mmc1_pcie", "clk_div_320m",
-	  CLK_SET_RATE_PARENT, 0xf8, 13, CLK_GATE_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0xf8, 13, CLK_GATE_HIWORD_MASK, },
 	{ HI3670_CLK_GATE_VCODECBUS_GT, "clk_gate_vcodecbus_gt", "clk_mux_vcodecbus",
-	  CLK_SET_RATE_PARENT, 0x0F0, 8, CLK_GATE_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0x0F0, 8, CLK_GATE_HIWORD_MASK, },
 	{ HI3670_CLK_ANDGT_SD, "clk_andgt_sd", "clk_mux_sd_pll",
-	  CLK_SET_RATE_PARENT, 0xF4, 3, CLK_GATE_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0xF4, 3, CLK_GATE_HIWORD_MASK, },
 	{ HI3670_CLK_SD_SYS_GT, "clk_sd_sys_gt", "clkin_sys",
-	  CLK_SET_RATE_PARENT, 0xF4, 5, CLK_GATE_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0xF4, 5, CLK_GATE_HIWORD_MASK, },
 	{ HI3670_CLK_ANDGT_SDIO, "clk_andgt_sdio", "clk_mux_sdio_pll",
-	  CLK_SET_RATE_PARENT, 0xF4, 8, CLK_GATE_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0xF4, 8, CLK_GATE_HIWORD_MASK, },
 	{ HI3670_CLK_SDIO_SYS_GT, "clk_sdio_sys_gt", "clkin_sys",
-	  CLK_SET_RATE_PARENT, 0xF4, 6, CLK_GATE_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0xF4, 6, CLK_GATE_HIWORD_MASK, },
 	{ HI3670_CLK_A53HPM_ANDGT, "clk_a53hpm_andgt", "clk_mux_a53hpm",
-	  CLK_SET_RATE_PARENT, 0x0F4, 7, CLK_GATE_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0x0F4, 7, CLK_GATE_HIWORD_MASK, },
 	{ HI3670_CLK_320M_PLL_GT, "clk_320m_pll_gt", "clk_mux_320m",
-	  CLK_SET_RATE_PARENT, 0xF8, 10, CLK_GATE_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0xF8, 10, CLK_GATE_HIWORD_MASK, },
 	{ HI3670_CLK_ANDGT_UARTH, "clk_andgt_uarth", "clk_div_320m",
-	  CLK_SET_RATE_PARENT, 0xF4, 11, CLK_GATE_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0xF4, 11, CLK_GATE_HIWORD_MASK, },
 	{ HI3670_CLK_ANDGT_UARTL, "clk_andgt_uartl", "clk_div_320m",
-	  CLK_SET_RATE_PARENT, 0xF4, 10, CLK_GATE_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0xF4, 10, CLK_GATE_HIWORD_MASK, },
 	{ HI3670_CLK_ANDGT_UART0, "clk_andgt_uart0", "clk_div_320m",
-	  CLK_SET_RATE_PARENT, 0xF4, 9, CLK_GATE_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0xF4, 9, CLK_GATE_HIWORD_MASK, },
 	{ HI3670_CLK_ANDGT_SPI, "clk_andgt_spi", "clk_div_320m",
-	  CLK_SET_RATE_PARENT, 0xF4, 13, CLK_GATE_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0xF4, 13, CLK_GATE_HIWORD_MASK, },
 	{ HI3670_CLK_ANDGT_PCIEAXI, "clk_andgt_pcieaxi", "clk_mux_pcieaxi",
-	  CLK_SET_RATE_PARENT, 0xfc, 15, CLK_GATE_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0xfc, 15, CLK_GATE_HIWORD_MASK, },
 	{ HI3670_CLK_DIV_AO_ASP_GT, "clk_div_ao_asp_gt", "clk_mux_ao_asp",
-	  CLK_SET_RATE_PARENT, 0xF4, 4, CLK_GATE_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0xF4, 4, CLK_GATE_HIWORD_MASK, },
 	{ HI3670_CLK_GATE_CSI_TRANS, "clk_gate_csi_trans", "clk_ppll2",
-	  CLK_SET_RATE_PARENT, 0xF4, 14, CLK_GATE_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0xF4, 14, CLK_GATE_HIWORD_MASK, },
 	{ HI3670_CLK_GATE_DSI_TRANS, "clk_gate_dsi_trans", "clk_ppll2",
-	  CLK_SET_RATE_PARENT, 0xF4, 1, CLK_GATE_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0xF4, 1, CLK_GATE_HIWORD_MASK, },
 	{ HI3670_CLK_ANDGT_PTP, "clk_andgt_ptp", "clk_div_320m",
-	  CLK_SET_RATE_PARENT, 0xF8, 5, CLK_GATE_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0xF8, 5, CLK_GATE_HIWORD_MASK, },
 	{ HI3670_CLK_ANDGT_OUT0, "clk_andgt_out0", "clk_ppll0",
-	  CLK_SET_RATE_PARENT, 0xF0, 10, CLK_GATE_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0xF0, 10, CLK_GATE_HIWORD_MASK, },
 	{ HI3670_CLK_ANDGT_OUT1, "clk_andgt_out1", "clk_ppll0",
-	  CLK_SET_RATE_PARENT, 0xF0, 11, CLK_GATE_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0xF0, 11, CLK_GATE_HIWORD_MASK, },
 	{ HI3670_CLKGT_DP_AUDIO_PLL_AO, "clkgt_dp_audio_pll_ao", "clk_ppll6",
-	  CLK_SET_RATE_PARENT, 0xF8, 15, CLK_GATE_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0xF8, 15, CLK_GATE_HIWORD_MASK, },
 	{ HI3670_CLK_ANDGT_VDEC, "clk_andgt_vdec", "clk_mux_vdec",
-	  CLK_SET_RATE_PARENT, 0xF0, 13, CLK_GATE_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0xF0, 13, CLK_GATE_HIWORD_MASK, },
 	{ HI3670_CLK_ANDGT_VENC, "clk_andgt_venc", "clk_mux_venc",
-	  CLK_SET_RATE_PARENT, 0xF0, 9, CLK_GATE_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0xF0, 9, CLK_GATE_HIWORD_MASK, },
 	{ HI3670_CLK_ISP_SNCLK_ANGT, "clk_isp_snclk_angt", "clk_div_a53hpm",
-	  CLK_SET_RATE_PARENT, 0x108, 2, CLK_GATE_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0x108, 2, CLK_GATE_HIWORD_MASK, },
 	{ HI3670_CLK_ANDGT_RXDPHY, "clk_andgt_rxdphy", "clk_div_a53hpm",
-	  CLK_SET_RATE_PARENT, 0x0F0, 12, CLK_GATE_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0x0F0, 12, CLK_GATE_HIWORD_MASK, },
 	{ HI3670_CLK_ANDGT_ICS, "clk_andgt_ics", "clk_mux_ics",
-	  CLK_SET_RATE_PARENT, 0xf0, 14, CLK_GATE_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0xf0, 14, CLK_GATE_HIWORD_MASK, },
 	{ HI3670_AUTODIV_DMABUS, "autodiv_dmabus", "autodiv_sysbus",
-	  CLK_SET_RATE_PARENT, 0x404, 3, CLK_GATE_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0x404, 3, CLK_GATE_HIWORD_MASK, },
 };
 
 static const char *const
@@ -485,57 +485,57 @@ static const struct hisi_mux_clock hi3670_crgctrl_mux_clks[] = {
 
 static const struct hisi_divider_clock hi3670_crgctrl_divider_clks[] = {
 	{ HI3670_CLK_DIV_CFGBUS, "clk_div_cfgbus", "clk_div_sysbus",
-	  CLK_SET_RATE_PARENT, 0xEC, 0, 2, CLK_DIVIDER_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0xEC, 0, 2, CLK_DIVIDER_HIWORD_MASK, },
 	{ HI3670_CLK_DIV_MMC0BUS, "clk_div_mmc0bus", "autodiv_emmc0bus",
-	  CLK_SET_RATE_PARENT, 0x0EC, 2, 1, CLK_DIVIDER_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0x0EC, 2, 1, CLK_DIVIDER_HIWORD_MASK, },
 	{ HI3670_CLK_DIV_MMC1BUS, "clk_div_mmc1bus", "clk_div_sysbus",
-	  CLK_SET_RATE_PARENT, 0x0EC, 3, 1, CLK_DIVIDER_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0x0EC, 3, 1, CLK_DIVIDER_HIWORD_MASK, },
 	{ HI3670_PCLK_DIV_MMC1_PCIE, "pclk_div_mmc1_pcie", "pclk_andgt_mmc1_pcie",
-	  CLK_SET_RATE_PARENT, 0xb4, 6, 4, CLK_DIVIDER_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0xb4, 6, 4, CLK_DIVIDER_HIWORD_MASK, },
 	{ HI3670_CLK_DIV_VCODECBUS, "clk_div_vcodecbus", "clk_gate_vcodecbus_gt",
-	  CLK_SET_RATE_PARENT, 0x0BC, 0, 6, CLK_DIVIDER_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0x0BC, 0, 6, CLK_DIVIDER_HIWORD_MASK, },
 	{ HI3670_CLK_DIV_SD, "clk_div_sd", "clk_andgt_sd",
-	  CLK_SET_RATE_PARENT, 0xB8, 0, 4, CLK_DIVIDER_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0xB8, 0, 4, CLK_DIVIDER_HIWORD_MASK, },
 	{ HI3670_CLK_DIV_SDIO, "clk_div_sdio", "clk_andgt_sdio",
-	  CLK_SET_RATE_PARENT, 0xC0, 0, 4, CLK_DIVIDER_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0xC0, 0, 4, CLK_DIVIDER_HIWORD_MASK, },
 	{ HI3670_CLK_DIV_UARTH, "clk_div_uarth", "clk_andgt_uarth",
-	  CLK_SET_RATE_PARENT, 0xB0, 12, 4, CLK_DIVIDER_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0xB0, 12, 4, CLK_DIVIDER_HIWORD_MASK, },
 	{ HI3670_CLK_DIV_UARTL, "clk_div_uartl", "clk_andgt_uartl",
-	  CLK_SET_RATE_PARENT, 0xB0, 8, 4, CLK_DIVIDER_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0xB0, 8, 4, CLK_DIVIDER_HIWORD_MASK, },
 	{ HI3670_CLK_DIV_UART0, "clk_div_uart0", "clk_andgt_uart0",
-	  CLK_SET_RATE_PARENT, 0xB0, 4, 4, CLK_DIVIDER_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0xB0, 4, 4, CLK_DIVIDER_HIWORD_MASK, },
 	{ HI3670_CLK_DIV_I2C, "clk_div_i2c", "clk_div_320m",
-	  CLK_SET_RATE_PARENT, 0xE8, 4, 4, CLK_DIVIDER_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0xE8, 4, 4, CLK_DIVIDER_HIWORD_MASK, },
 	{ HI3670_CLK_DIV_SPI, "clk_div_spi", "clk_andgt_spi",
-	  CLK_SET_RATE_PARENT, 0xC4, 12, 4, CLK_DIVIDER_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0xC4, 12, 4, CLK_DIVIDER_HIWORD_MASK, },
 	{ HI3670_CLK_DIV_PCIEAXI, "clk_div_pcieaxi", "clk_andgt_pcieaxi",
-	  CLK_SET_RATE_PARENT, 0xb4, 0, 5, CLK_DIVIDER_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0xb4, 0, 5, CLK_DIVIDER_HIWORD_MASK, },
 	{ HI3670_CLK_DIV_AO_ASP, "clk_div_ao_asp", "clk_div_ao_asp_gt",
-	  CLK_SET_RATE_PARENT, 0x108, 6, 4, CLK_DIVIDER_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0x108, 6, 4, CLK_DIVIDER_HIWORD_MASK, },
 	{ HI3670_CLK_DIV_CSI_TRANS, "clk_div_csi_trans", "clk_gate_csi_trans",
-	  CLK_SET_RATE_PARENT, 0xD4, 0, 5, CLK_DIVIDER_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0xD4, 0, 5, CLK_DIVIDER_HIWORD_MASK, },
 	{ HI3670_CLK_DIV_DSI_TRANS, "clk_div_dsi_trans", "clk_gate_dsi_trans",
-	  CLK_SET_RATE_PARENT, 0xD4, 10, 5, CLK_DIVIDER_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0xD4, 10, 5, CLK_DIVIDER_HIWORD_MASK, },
 	{ HI3670_CLK_DIV_PTP, "clk_div_ptp", "clk_andgt_ptp",
-	  CLK_SET_RATE_PARENT, 0xD8, 0, 4, CLK_DIVIDER_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0xD8, 0, 4, CLK_DIVIDER_HIWORD_MASK, },
 	{ HI3670_CLK_DIV_CLKOUT0_PLL, "clk_div_clkout0_pll", "clk_andgt_out0",
-	  CLK_SET_RATE_PARENT, 0xe0, 4, 6, CLK_DIVIDER_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0xe0, 4, 6, CLK_DIVIDER_HIWORD_MASK, },
 	{ HI3670_CLK_DIV_CLKOUT1_PLL, "clk_div_clkout1_pll", "clk_andgt_out1",
-	  CLK_SET_RATE_PARENT, 0xe0, 10, 6, CLK_DIVIDER_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0xe0, 10, 6, CLK_DIVIDER_HIWORD_MASK, },
 	{ HI3670_CLKDIV_DP_AUDIO_PLL_AO, "clkdiv_dp_audio_pll_ao", "clkgt_dp_audio_pll_ao",
-	  CLK_SET_RATE_PARENT, 0xBC, 11, 4, CLK_DIVIDER_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0xBC, 11, 4, CLK_DIVIDER_HIWORD_MASK, },
 	{ HI3670_CLK_DIV_VDEC, "clk_div_vdec", "clk_andgt_vdec",
-	  CLK_SET_RATE_PARENT, 0xC4, 0, 6, CLK_DIVIDER_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0xC4, 0, 6, CLK_DIVIDER_HIWORD_MASK, },
 	{ HI3670_CLK_DIV_VENC, "clk_div_venc", "clk_andgt_venc",
-	  CLK_SET_RATE_PARENT, 0xC0, 8, 6, CLK_DIVIDER_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0xC0, 8, 6, CLK_DIVIDER_HIWORD_MASK, },
 	{ HI3670_CLK_ISP_SNCLK_DIV0, "clk_isp_snclk_div0", "clk_isp_snclk_fac",
-	  CLK_SET_RATE_PARENT, 0x108, 0, 2, CLK_DIVIDER_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0x108, 0, 2, CLK_DIVIDER_HIWORD_MASK, },
 	{ HI3670_CLK_ISP_SNCLK_DIV1, "clk_isp_snclk_div1", "clk_isp_snclk_fac",
-	  CLK_SET_RATE_PARENT, 0x10C, 14, 2, CLK_DIVIDER_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0x10C, 14, 2, CLK_DIVIDER_HIWORD_MASK, },
 	{ HI3670_CLK_ISP_SNCLK_DIV2, "clk_isp_snclk_div2", "clk_isp_snclk_fac",
-	  CLK_SET_RATE_PARENT, 0x10C, 11, 2, CLK_DIVIDER_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0x10C, 11, 2, CLK_DIVIDER_HIWORD_MASK, },
 	{ HI3670_CLK_DIV_ICS, "clk_div_ics", "clk_andgt_ics",
-	  CLK_SET_RATE_PARENT, 0xE4, 9, 6, CLK_DIVIDER_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0xE4, 9, 6, CLK_DIVIDER_HIWORD_MASK, },
 };
 
 /* clk_pmuctrl */
@@ -608,12 +608,12 @@ static const struct hisi_gate_clock hi3670_sctrl_gate_sep_clks[] = {
 
 static const struct hisi_gate_clock hi3670_sctrl_gate_clks[] = {
 	{ HI3670_CLK_ANDGT_IOPERI, "clk_andgt_ioperi", "clk_ppll0",
-	  CLK_SET_RATE_PARENT, 0x270, 6, CLK_GATE_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0x270, 6, CLK_GATE_HIWORD_MASK, },
 	{ HI3670_CLKANDGT_ASP_SUBSYS_PERI, "clkandgt_asp_subsys_peri",
 	  "clk_ppll0",
-	  CLK_SET_RATE_PARENT, 0x268, 3, CLK_GATE_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0x268, 3, CLK_GATE_HIWORD_MASK, },
 	{ HI3670_CLK_ANGT_ASP_SUBSYS, "clk_angt_asp_subsys", "clk_ppll0",
-	  CLK_SET_RATE_PARENT, 0x258, 0, CLK_GATE_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0x258, 0, CLK_GATE_HIWORD_MASK, },
 };
 
 static const char *const
@@ -650,19 +650,19 @@ static const struct hisi_mux_clock hi3670_sctrl_mux_clks[] = {
 
 static const struct hisi_divider_clock hi3670_sctrl_divider_clks[] = {
 	{ HI3670_CLK_DIV_AOBUS, "clk_div_aobus", "clk_ppll0",
-	  CLK_SET_RATE_PARENT, 0x254, 0, 6, CLK_DIVIDER_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0x254, 0, 6, CLK_DIVIDER_HIWORD_MASK, },
 	{ HI3670_CLK_DIV_UFS_SUBSYS, "clk_div_ufs_subsys", "clk_mux_ufs_subsys",
-	  CLK_SET_RATE_PARENT, 0x274, 0, 6, CLK_DIVIDER_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0x274, 0, 6, CLK_DIVIDER_HIWORD_MASK, },
 	{ HI3670_CLK_DIV_IOPERI, "clk_div_ioperi", "clk_andgt_ioperi",
-	  CLK_SET_RATE_PARENT, 0x270, 0, 6, CLK_DIVIDER_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0x270, 0, 6, CLK_DIVIDER_HIWORD_MASK, },
 	{ HI3670_CLK_DIV_CLKOUT0_TCXO, "clk_div_clkout0_tcxo", "clkin_sys",
-	  CLK_SET_RATE_PARENT, 0x254, 6, 3, CLK_DIVIDER_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0x254, 6, 3, CLK_DIVIDER_HIWORD_MASK, },
 	{ HI3670_CLK_DIV_CLKOUT1_TCXO, "clk_div_clkout1_tcxo", "clkin_sys",
-	  CLK_SET_RATE_PARENT, 0x254, 9, 3, CLK_DIVIDER_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0x254, 9, 3, CLK_DIVIDER_HIWORD_MASK, },
 	{ HI3670_CLK_ASP_SUBSYS_PERI_DIV, "clk_asp_subsys_peri_div", "clkandgt_asp_subsys_peri",
-	  CLK_SET_RATE_PARENT, 0x268, 0, 3, CLK_DIVIDER_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0x268, 0, 3, CLK_DIVIDER_HIWORD_MASK, },
 	{ HI3670_CLK_DIV_ASP_SUBSYS, "clk_div_asp_subsys", "clk_angt_asp_subsys",
-	  CLK_SET_RATE_PARENT, 0x250, 0, 3, CLK_DIVIDER_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0x250, 0, 3, CLK_DIVIDER_HIWORD_MASK, },
 };
 
 /* clk_iomcu */
@@ -732,17 +732,17 @@ static const struct hisi_gate_clock hi3670_media1_gate_sep_clks[] = {
 
 static const struct hisi_gate_clock hi3670_media1_gate_clks[] = {
 	{ HI3670_CLK_GATE_VIVOBUS_ANDGT, "clk_gate_vivobus_andgt", "clk_mux_vivobus",
-	  CLK_SET_RATE_PARENT, 0x84, 3, CLK_GATE_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0x84, 3, CLK_GATE_HIWORD_MASK, },
 	{ HI3670_CLK_ANDGT_EDC0, "clk_andgt_edc0", "clk_mux_edc0",
-	  CLK_SET_RATE_PARENT, 0x84, 7, CLK_GATE_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0x84, 7, CLK_GATE_HIWORD_MASK, },
 	{ HI3670_CLK_ANDGT_LDI0, "clk_andgt_ldi0", "clk_mux_ldi0",
-	  CLK_SET_RATE_PARENT, 0x84, 9, CLK_GATE_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0x84, 9, CLK_GATE_HIWORD_MASK, },
 	{ HI3670_CLK_ANDGT_LDI1, "clk_andgt_ldi1", "clk_mux_ldi1",
-	  CLK_SET_RATE_PARENT, 0x84, 8, CLK_GATE_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0x84, 8, CLK_GATE_HIWORD_MASK, },
 	{ HI3670_CLK_MMBUF_PLL_ANDGT, "clk_mmbuf_pll_andgt", "clk_sw_mmbuf",
-	  CLK_SET_RATE_PARENT, 0x84, 14, CLK_GATE_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0x84, 14, CLK_GATE_HIWORD_MASK, },
 	{ HI3670_PCLK_MMBUF_ANDGT, "pclk_mmbuf_andgt", "aclk_div_mmbuf",
-	  CLK_SET_RATE_PARENT, 0x84, 15, CLK_GATE_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0x84, 15, CLK_GATE_HIWORD_MASK, },
 };
 
 static const char *const
@@ -799,17 +799,17 @@ static const struct hisi_mux_clock hi3670_media1_mux_clks[] = {
 
 static const struct hisi_divider_clock hi3670_media1_divider_clks[] = {
 	{ HI3670_CLK_DIV_VIVOBUS, "clk_div_vivobus", "clk_gate_vivobus_andgt",
-	  CLK_SET_RATE_PARENT, 0x74, 0, 6, CLK_DIVIDER_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0x74, 0, 6, CLK_DIVIDER_HIWORD_MASK, },
 	{ HI3670_CLK_DIV_EDC0, "clk_div_edc0", "clk_andgt_edc0",
-	  CLK_SET_RATE_PARENT, 0x68, 0, 6, CLK_DIVIDER_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0x68, 0, 6, CLK_DIVIDER_HIWORD_MASK, },
 	{ HI3670_CLK_DIV_LDI0, "clk_div_ldi0", "clk_andgt_ldi0",
-	  CLK_SET_RATE_PARENT, 0x60, 0, 6, CLK_DIVIDER_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0x60, 0, 6, CLK_DIVIDER_HIWORD_MASK, },
 	{ HI3670_CLK_DIV_LDI1, "clk_div_ldi1", "clk_andgt_ldi1",
-	  CLK_SET_RATE_PARENT, 0x64, 0, 6, CLK_DIVIDER_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0x64, 0, 6, CLK_DIVIDER_HIWORD_MASK, },
 	{ HI3670_ACLK_DIV_MMBUF, "aclk_div_mmbuf", "clk_mmbuf_pll_andgt",
-	  CLK_SET_RATE_PARENT, 0x7C, 10, 6, CLK_DIVIDER_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0x7C, 10, 6, CLK_DIVIDER_HIWORD_MASK, },
 	{ HI3670_PCLK_DIV_MMBUF, "pclk_div_mmbuf", "pclk_mmbuf_andgt",
-	  CLK_SET_RATE_PARENT, 0x78, 0, 2, CLK_DIVIDER_HIWORD_MASK, 0, },
+	  CLK_SET_RATE_PARENT, 0x78, 0, 2, CLK_DIVIDER_HIWORD_MASK, },
 };
 
 /* clk_media2 */
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
