Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 853AD148641
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 14:38:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ns0B9zlMVaElvFtciS8egAM1Xo1DFK8JNsfe2eVe5Lc=; b=pjX1opq2vdM6ny
	WOAfT565L+7Isvkg17dahBG2xq/UU4QZvyZk1ls8/BZhsbH8wDtoliuhQCDzzynmQVFRY6qIHzp0X
	MJDUECF3DNdUJJ1+bb/dW4/7CVANhAUYfiZY132bI2OoxY9NqWrEsCSgazXxGzjOOC6KjH6DPaNUt
	b7rFuVRLvghtAdzmF15qLFi7cWvIL5HRtlYb9xhFwD9mYwzEtmkGYObckK2na56iqek0TFmrvyzBF
	u/tlU/8El2oW/32aAgb7PLXHOhIp4bCOKwmsa269y43xJbZFXwt9K80OPrMzQDesS/rcgCYons4Pa
	YysV5Y4hKJpM7jv4C94g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuzAZ-0002ZZ-0u; Fri, 24 Jan 2020 13:38:43 +0000
Received: from gateway34.websitewelcome.com ([192.185.148.204])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuzAO-0002Yn-FD
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 13:38:35 +0000
Received: from cm13.websitewelcome.com (cm13.websitewelcome.com [100.42.49.6])
 by gateway34.websitewelcome.com (Postfix) with ESMTP id E7F6C1AE413
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Jan 2020 07:38:30 -0600 (CST)
Received: from br164.hostgator.com.br ([192.185.176.180]) by cmsmtp with SMTP
 id uzAMieFTSERZguzAMiVsII; Fri, 24 Jan 2020 07:38:30 -0600
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=castello.eng.br; s=default; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2ESHlfUk1YPAaaP5eCFIsAA5k7Z2I03MC1vfUKAhQ84=; b=fisX44RcOpHbujUNCNrAzI/Q3E
 e08PerdGS7HoctdYxInAxTIUjdGrkqd3+59r7kfn74Fk0Cyer2gwYXAF3K3FomqVOmfgvfUj7qT/b
 nb0590t63nxUzwVsryTz0v7AskdTw/vK3RNDjgVnHoz+vdXjPryd5cCbUXkC8DPKgtgeQR3nch6F5
 VeHJ/zvSf+y4vPmL6uwkYWsyq26udXCdNs55qdWJuXpA+9rigrPFKHrcK2MdOKpqs3wIsP5TfJ0Vi
 o1TWvTu43BGN5G/huAIAN2h+1v1F+BJh8T40UVazJqMGX10wV4mK6qkXHrz8qVJsHlcBJ2xvIwKx2
 va5c+y1g==;
Received: from [191.31.193.140] (port=56866 helo=castello.castello)
 by br164.hostgator.com.br with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92)
 (envelope-from <matheus@castello.eng.br>)
 id 1iuzAM-003SCA-4a; Fri, 24 Jan 2020 10:38:30 -0300
From: Matheus Castello <matheus@castello.eng.br>
To: pn@denx.de, afaerber@suse.de, manivannan.sadhasivam@linaro.org,
 linus.walleij@linaro.org
Subject: [PATCH v2] pinctrl: actions: Fix functions groups names
Date: Fri, 24 Jan 2020 10:37:58 -0300
Message-Id: <20200124133758.10089-1-matheus@castello.eng.br>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <838d8378-1a6a-11c4-fad8-aeb4b861478b@castello.eng.br>
References: <838d8378-1a6a-11c4-fad8-aeb4b861478b@castello.eng.br>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - br164.hostgator.com.br
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - castello.eng.br
X-BWhitelist: no
X-Source-IP: 191.31.193.140
X-Source-L: No
X-Exim-ID: 1iuzAM-003SCA-4a
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (castello.castello) [191.31.193.140]:56866
X-Source-Auth: matheus@castello.eng.br
X-Email-Count: 12
X-Source-Cap: Y2FzdGUyNDg7Y2FzdGUyNDg7YnIxNjQuaG9zdGdhdG9yLmNvbS5icg==
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_053832_604723_315BD496 
X-CRM114-Status: UNSURE (   6.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.148.204 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Matheus Castello <matheus@castello.eng.br>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Group names by function do not match their respective structures and
documentation defined names.

This fixes following errors when groups names defined on documentation are used:
[    4.262778] pinctrl-s700 e01b0000.pinctrl: invalid group "sd0_d1_mfp" for function "sd0"
[    4.271394] pinctrl-s700 e01b0000.pinctrl: invalid group "sd0_d2_d3_mfp" for function "sd0"
[    4.280248] pinctrl-s700 e01b0000.pinctrl: invalid group "sd1_d0_d3_mfp" for function "sd0"
[    4.289122] pinctrl-s700 e01b0000.pinctrl: invalid group "sd0_cmd_mfp" for function "sd0"

Fixes: 81c9d563cc74 (pinctrl: actions: Add Actions Semi S700 pinctrl driver)
Signed-off-by: Matheus Castello <matheus@castello.eng.br>
---
 drivers/pinctrl/actions/pinctrl-s700.c | 510 ++++++++++++-------------
 1 file changed, 255 insertions(+), 255 deletions(-)

diff --git a/drivers/pinctrl/actions/pinctrl-s700.c b/drivers/pinctrl/actions/pinctrl-s700.c
index 8b8121e35edb..1182b38ff4dc 100644
--- a/drivers/pinctrl/actions/pinctrl-s700.c
+++ b/drivers/pinctrl/actions/pinctrl-s700.c
@@ -1125,317 +1125,317 @@ static const struct owl_pingroup s700_groups[] = {
 };
 
 static const char * const nor_groups[] = {
-	"lcd0_d18",
-	"i2s_d0",
-	"i2s0_pcm0",
-	"i2s1_pcm0",
-	"i2s_d1",
-	"ks_in2",
-	"ks_in1",
-	"ks_in0",
-	"ks_in3",
-	"ks_out0",
-	"ks_out1",
-	"ks_out2",
-	"lcd0_d2",
-	"lvds_ee_pn",
-	"uart2_rx_tx",
-	"spi0_i2c_pcm",
-	"lvds_e_pn",
-	"sd0_d0",
-	"sd0_d1",
-	"sd0_d2_d3",
-	"sd1_d0_d3",
-	"sd0_cmd",
-	"sd1_cmd",
-	"sens0_ckout",
-	"sen0_pclk",
+	"lcd0_d18_mfp",
+	"i2s_d0_mfp",
+	"i2s0_pcm0_mfp",
+	"i2s1_pcm0_mfp",
+	"i2s_d1_mfp",
+	"ks_in2_mfp",
+	"ks_in1_mfp",
+	"ks_in0_mfp",
+	"ks_in3_mfp",
+	"ks_out0_mfp",
+	"ks_out1_mfp",
+	"ks_out2_mfp",
+	"lcd0_d2_mfp",
+	"lvds_ee_pn_mfp",
+	"uart2_rx_tx_mfp",
+	"spi0_i2c_pcm_mfp",
+	"lvds_e_pn_mfp",
+	"sd0_d0_mfp",
+	"sd0_d1_mfp",
+	"sd0_d2_d3_mfp",
+	"sd1_d0_d3_mfp",
+	"sd0_cmd_mfp",
+	"sd1_cmd_mfp",
+	"sens0_ckout_mfp",
+	"sen0_pclk_mfp",
 };
 
 static const char * const eth_rmii_groups[] = {
-	"rgmii_txd23",
-	"rgmii_rxd2",
-	"rgmii_rxd3",
-	"rgmii_txd01",
-	"rgmii_txd0",
-	"rgmii_txd1",
-	"rgmii_txen",
-	"rgmii_rxen",
-	"rgmii_rxd1",
-	"rgmii_rxd0",
-	"rgmii_ref_clk",
+	"rgmii_txd23_mfp",
+	"rgmii_rxd2_mfp",
+	"rgmii_rxd3_mfp",
+	"rgmii_txd01_mfp",
+	"rgmii_txd0_mfp",
+	"rgmii_txd1_mfp",
+	"rgmii_txen_mfp",
+	"rgmii_rxen_mfp",
+	"rgmii_rxd1_mfp",
+	"rgmii_rxd0_mfp",
+	"rgmii_ref_clk_mfp",
 	"eth_smi_dummy",
 };
 
 static const char * const eth_smii_groups[] = {
-	"rgmii_txd0",
-	"rgmii_txd1",
-	"rgmii_rxd0",
-	"rgmii_rxd1",
-	"rgmii_ref_clk",
+	"rgmii_txd0_mfp",
+	"rgmii_txd1_mfp",
+	"rgmii_rxd0_mfp",
+	"rgmii_rxd1_mfp",
+	"rgmii_ref_clk_mfp",
 	"eth_smi_dummy",
 };
 
 static const char * const spi0_groups[] = {
-	"dsi_dn0",
-	"dsi_dp2",
-	"dsi_dp0",
-	"uart2_rx_tx",
-	"spi0_i2c_pcm",
-	"dsi_dn2",
+	"dsi_dn0_mfp",
+	"dsi_dp2_mfp",
+	"dsi_dp0_mfp",
+	"uart2_rx_tx_mfp",
+	"spi0_i2c_pcm_mfp",
+	"dsi_dn2_mfp",
 };
 
 static const char * const spi1_groups[] = {
-	"uart0_rx",
-	"uart0_tx",
+	"uart0_rx_mfp",
+	"uart0_tx_mfp",
 	"i2c0_mfp",
 };
 
 static const char * const spi2_groups[] = {
-	"rgmii_txd01",
-	"rgmii_txd0",
-	"rgmii_txd1",
-	"rgmii_ref_clk",
-	"dnand_acle_ce0",
+	"rgmii_txd01_mfp",
+	"rgmii_txd0_mfp",
+	"rgmii_txd1_mfp",
+	"rgmii_ref_clk_mfp",
+	"dnand_acle_ce0_mfp",
 };
 
 static const char * const spi3_groups[] = {
-	"rgmii_txen",
-	"rgmii_rxen",
-	"rgmii_rxd1",
-	"rgmii_rxd0",
+	"rgmii_txen_mfp",
+	"rgmii_rxen_mfp",
+	"rgmii_rxd1_mfp",
+	"rgmii_rxd0_mfp",
 };
 
 static const char * const sens0_groups[] = {
-	"csi_cn_cp",
-	"sens0_ckout",
-	"csi_dn_dp",
-	"sen0_pclk",
+	"csi_cn_cp_mfp",
+	"sens0_ckout_mfp",
+	"csi_dn_dp_mfp",
+	"sen0_pclk_mfp",
 };
 
 static const char * const sens1_groups[] = {
-	"lcd0_d18",
-	"ks_in2",
-	"ks_in1",
-	"ks_in0",
-	"ks_in3",
-	"ks_out0",
-	"ks_out1",
-	"ks_out2",
-	"sens0_ckout",
-	"pcm1_in",
-	"pcm1_clk",
-	"pcm1_sync",
-	"pcm1_out",
+	"lcd0_d18_mfp",
+	"ks_in2_mfp",
+	"ks_in1_mfp",
+	"ks_in0_mfp",
+	"ks_in3_mfp",
+	"ks_out0_mfp",
+	"ks_out1_mfp",
+	"ks_out2_mfp",
+	"sens0_ckout_mfp",
+	"pcm1_in_mfp",
+	"pcm1_clk_mfp",
+	"pcm1_sync_mfp",
+	"pcm1_out_mfp",
 };
 
 static const char * const uart0_groups[] = {
-	"uart2_rtsb",
-	"uart2_ctsb",
-	"uart0_rx",
-	"uart0_tx",
+	"uart2_rtsb_mfp",
+	"uart2_ctsb_mfp",
+	"uart0_rx_mfp",
+	"uart0_tx_mfp",
 };
 
 static const char * const uart1_groups[] = {
-	"sd0_d2_d3",
+	"sd0_d2_d3_mfp",
 	"i2c0_mfp",
 };
 
 static const char * const uart2_groups[] = {
-	"rgmii_txen",
-	"rgmii_rxen",
-	"rgmii_rxd1",
-	"rgmii_rxd0",
-	"dsi_dn0",
-	"dsi_dp2",
-	"dsi_dp0",
-	"uart2_rx_tx",
-	"dsi_dn2",
-	"uart2_rtsb",
-	"uart2_ctsb",
-	"sd0_d0",
-	"sd0_d1",
-	"sd0_d2_d3",
-	"uart0_rx",
-	"uart0_tx",
+	"rgmii_txen_mfp",
+	"rgmii_rxen_mfp",
+	"rgmii_rxd1_mfp",
+	"rgmii_rxd0_mfp",
+	"dsi_dn0_mfp",
+	"dsi_dp2_mfp",
+	"dsi_dp0_mfp",
+	"uart2_rx_tx_mfp",
+	"dsi_dn2_mfp",
+	"uart2_rtsb_mfp",
+	"uart2_ctsb_mfp",
+	"sd0_d0_mfp",
+	"sd0_d1_mfp",
+	"sd0_d2_d3_mfp",
+	"uart0_rx_mfp",
+	"uart0_tx_mfp",
 	"i2c0_mfp",
 	"uart2_dummy"
 };
 
 static const char * const uart3_groups[] = {
-	"rgmii_txd23",
-	"rgmii_rxd2",
-	"rgmii_rxd3",
-	"uart3_rtsb",
-	"uart3_ctsb",
+	"rgmii_txd23_mfp",
+	"rgmii_rxd2_mfp",
+	"rgmii_rxd3_mfp",
+	"uart3_rtsb_mfp",
+	"uart3_ctsb_mfp",
 	"uart3_dummy"
 };
 
 static const char * const uart4_groups[] = {
-	"rgmii_txd01",
-	"rgmii_ref_clk",
-	"ks_out0",
-	"ks_out1",
+	"rgmii_txd01_mfp",
+	"rgmii_ref_clk_mfp",
+	"ks_out0_mfp",
+	"ks_out1_mfp",
 };
 
 static const char * const uart5_groups[] = {
-	"rgmii_rxd1",
-	"rgmii_rxd0",
-	"ks_out0",
-	"ks_out2",
-	"uart3_rtsb",
-	"uart3_ctsb",
-	"sd0_d0",
-	"sd0_d1",
+	"rgmii_rxd1_mfp",
+	"rgmii_rxd0_mfp",
+	"ks_out0_mfp",
+	"ks_out2_mfp",
+	"uart3_rtsb_mfp",
+	"uart3_ctsb_mfp",
+	"sd0_d0_mfp",
+	"sd0_d1_mfp",
 };
 
 static const char * const uart6_groups[] = {
-	"rgmii_txd0",
-	"rgmii_txd1",
+	"rgmii_txd0_mfp",
+	"rgmii_txd1_mfp",
 };
 
 static const char * const i2s0_groups[] = {
-	"i2s_d0",
-	"i2s_pcm1",
-	"i2s0_pcm0",
+	"i2s_d0_mfp",
+	"i2s_pcm1_mfp",
+	"i2s0_pcm0_mfp",
 };
 
 static const char * const i2s1_groups[] = {
-	"i2s1_pcm0",
-	"i2s_d1",
+	"i2s1_pcm0_mfp",
+	"i2s_d1_mfp",
 	"i2s1_dummy",
-	"spi0_i2c_pcm",
-	"uart0_rx",
-	"uart0_tx",
+	"spi0_i2c_pcm_mfp",
+	"uart0_rx_mfp",
+	"uart0_tx_mfp",
 };
 
 static const char * const pcm1_groups[] = {
-	"i2s_pcm1",
-	"spi0_i2c_pcm",
-	"uart0_rx",
-	"uart0_tx",
-	"pcm1_in",
-	"pcm1_clk",
-	"pcm1_sync",
-	"pcm1_out",
+	"i2s_pcm1_mfp",
+	"spi0_i2c_pcm_mfp",
+	"uart0_rx_mfp",
+	"uart0_tx_mfp",
+	"pcm1_in_mfp",
+	"pcm1_clk_mfp",
+	"pcm1_sync_mfp",
+	"pcm1_out_mfp",
 };
 
 static const char * const pcm0_groups[] = {
-	"i2s0_pcm0",
-	"i2s1_pcm0",
-	"uart2_rx_tx",
-	"spi0_i2c_pcm",
+	"i2s0_pcm0_mfp",
+	"i2s1_pcm0_mfp",
+	"uart2_rx_tx_mfp",
+	"spi0_i2c_pcm_mfp",
 };
 
 static const char * const ks_groups[] = {
-	"ks_in2",
-	"ks_in1",
-	"ks_in0",
-	"ks_in3",
-	"ks_out0",
-	"ks_out1",
-	"ks_out2",
+	"ks_in2_mfp",
+	"ks_in1_mfp",
+	"ks_in0_mfp",
+	"ks_in3_mfp",
+	"ks_out0_mfp",
+	"ks_out1_mfp",
+	"ks_out2_mfp",
 };
 
 static const char * const jtag_groups[] = {
-	"ks_in2",
-	"ks_in1",
-	"ks_in0",
-	"ks_in3",
-	"ks_out1",
-	"sd0_d0",
-	"sd0_d2_d3",
-	"sd0_cmd",
-	"sd0_clk",
+	"ks_in2_mfp",
+	"ks_in1_mfp",
+	"ks_in0_mfp",
+	"ks_in3_mfp",
+	"ks_out1_mfp",
+	"sd0_d0_mfp",
+	"sd0_d2_d3_mfp",
+	"sd0_cmd_mfp",
+	"sd0_clk_mfp",
 };
 
 static const char * const pwm0_groups[] = {
-	"rgmii_rxd2",
-	"rgmii_txen",
-	"ks_in2",
-	"sen0_pclk",
+	"rgmii_rxd2_mfp",
+	"rgmii_txen_mfp",
+	"ks_in2_mfp",
+	"sen0_pclk_mfp",
 };
 
 static const char * const pwm1_groups[] = {
-	"rgmii_rxen",
-	"ks_in1",
-	"ks_in3",
-	"sens0_ckout",
+	"rgmii_rxen_mfp",
+	"ks_in1_mfp",
+	"ks_in3_mfp",
+	"sens0_ckout_mfp",
 };
 
 static const char * const pwm2_groups[] = {
-	"lcd0_d18",
-	"rgmii_rxd3",
-	"rgmii_rxd1",
-	"ks_out0",
-	"ks_out2",
+	"lcd0_d18_mfp",
+	"rgmii_rxd3_mfp",
+	"rgmii_rxd1_mfp",
+	"ks_out0_mfp",
+	"ks_out2_mfp",
 };
 
 static const char * const pwm3_groups[] = {
-	"rgmii_rxd0",
-	"ks_out1",
-	"lcd0_d2",
+	"rgmii_rxd0_mfp",
+	"ks_out1_mfp",
+	"lcd0_d2_mfp",
 };
 
 static const char * const pwm4_groups[] = {
-	"lcd0_d18",
-	"rgmii_txd01",
-	"rgmii_txd0",
-	"ks_in0",
-	"pcm1_in",
-	"nand_ceb3",
+	"lcd0_d18_mfp",
+	"rgmii_txd01_mfp",
+	"rgmii_txd0_mfp",
+	"ks_in0_mfp",
+	"pcm1_in_mfp",
+	"nand_ceb3_mfp",
 };
 
 static const char * const pwm5_groups[] = {
-	"rgmii_txd1",
-	"ks_in1",
-	"pcm1_clk",
-	"nand_ceb2",
+	"rgmii_txd1_mfp",
+	"ks_in1_mfp",
+	"pcm1_clk_mfp",
+	"nand_ceb2_mfp",
 };
 
 static const char * const p0_groups[] = {
-	"ks_in2",
-	"ks_in0",
+	"ks_in2_mfp",
+	"ks_in0_mfp",
 };
 
 static const char * const sd0_groups[] = {
-	"ks_out0",
-	"ks_out1",
-	"ks_out2",
-	"lcd0_d2",
-	"dsi_dp3",
-	"dsi_dp0",
-	"sd0_d0",
-	"sd0_d1",
-	"sd0_d2_d3",
-	"sd1_d0_d3",
-	"sd0_cmd",
-	"sd0_clk",
+	"ks_out0_mfp",
+	"ks_out1_mfp",
+	"ks_out2_mfp",
+	"lcd0_d2_mfp",
+	"dsi_dp3_mfp",
+	"dsi_dp0_mfp",
+	"sd0_d0_mfp",
+	"sd0_d1_mfp",
+	"sd0_d2_d3_mfp",
+	"sd1_d0_d3_mfp",
+	"sd0_cmd_mfp",
+	"sd0_clk_mfp",
 };
 
 static const char * const sd1_groups[] = {
-	"dsi_dp2",
-	"mfp1_16_14",
-	"lcd0_d2",
-	"mfp1_16_14_d17",
-	"dsi_dp3",
-	"dsi_dn3",
-	"dsi_dnp1_cp_d2",
-	"dsi_dnp1_cp_d17",
-	"dsi_dn2",
-	"sd1_d0_d3",
-	"sd1_cmd",
+	"dsi_dp2_mfp",
+	"mfp1_16_14_mfp",
+	"lcd0_d2_mfp",
+	"mfp1_16_14_d17_mfp",
+	"dsi_dp3_mfp",
+	"dsi_dn3_mfp",
+	"dsi_dnp1_cp_d2_mfp",
+	"dsi_dnp1_cp_d17_mfp",
+	"dsi_dn2_mfp",
+	"sd1_d0_d3_mfp",
+	"sd1_cmd_mfp",
 	"sd1_dummy",
 };
 
 static const char * const sd2_groups[] = {
-	"dnand_data_wr",
+	"dnand_data_wr_mfp",
 };
 
 static const char * const i2c0_groups[] = {
-	"uart0_rx",
-	"uart0_tx",
-	"i2c0_mfp",
+	"uart0_rx_mfp",
+	"uart0_tx_mfp",
+	"i2c0_mfp_mfp",
 };
 
 static const char * const i2c1_groups[] = {
@@ -1448,85 +1448,85 @@ static const char * const i2c2_groups[] = {
 };
 
 static const char * const i2c3_groups[] = {
-	"uart2_rx_tx",
-	"pcm1_sync",
-	"pcm1_out",
+	"uart2_rx_tx_mfp",
+	"pcm1_sync_mfp",
+	"pcm1_out_mfp",
 };
 
 static const char * const lvds_groups[] = {
-	"lvds_o_pn",
-	"lvds_ee_pn",
-	"lvds_e_pn",
+	"lvds_o_pn_mfp",
+	"lvds_ee_pn_mfp",
+	"lvds_e_pn_mfp",
 };
 
 static const char * const bt_groups[] = {
-	"i2s_pcm1",
-	"i2s0_pcm0",
-	"i2s1_pcm0",
-	"ks_in2",
-	"ks_in1",
-	"ks_in0",
-	"ks_in3",
-	"ks_out0",
-	"ks_out1",
-	"ks_out2",
-	"lvds_o_pn",
-	"lvds_ee_pn",
-	"pcm1_in",
-	"pcm1_clk",
-	"pcm1_sync",
-	"pcm1_out",
+	"i2s_pcm1_mfp",
+	"i2s0_pcm0_mfp",
+	"i2s1_pcm0_mfp",
+	"ks_in2_mfp",
+	"ks_in1_mfp",
+	"ks_in0_mfp",
+	"ks_in3_mfp",
+	"ks_out0_mfp",
+	"ks_out1_mfp",
+	"ks_out2_mfp",
+	"lvds_o_pn_mfp",
+	"lvds_ee_pn_mfp",
+	"pcm1_in_mfp",
+	"pcm1_clk_mfp",
+	"pcm1_sync_mfp",
+	"pcm1_out_mfp",
 };
 
 static const char * const lcd0_groups[] = {
-	"lcd0_d18",
-	"lcd0_d2",
-	"mfp1_16_14_d17",
-	"lvds_o_pn",
-	"dsi_dp3",
-	"dsi_dn3",
-	"lvds_ee_pn",
-	"dsi_dnp1_cp_d2",
-	"dsi_dnp1_cp_d17",
-	"lvds_e_pn",
+	"lcd0_d18_mfp",
+	"lcd0_d2_mfp",
+	"mfp1_16_14_d17_mfp",
+	"lvds_o_pn_mfp",
+	"dsi_dp3_mfp",
+	"dsi_dn3_mfp",
+	"lvds_ee_pn_mfp",
+	"dsi_dnp1_cp_d2_mfp",
+	"dsi_dnp1_cp_d17_mfp",
+	"lvds_e_pn_mfp",
 };
 
 
 static const char * const usb30_groups[] = {
-	"ks_in1",
+	"ks_in1_mfp",
 };
 
 static const char * const clko_25m_groups[] = {
-	"clko_25m",
+	"clko_25m_mfp",
 };
 
 static const char * const mipi_csi_groups[] = {
-	"csi_cn_cp",
-	"csi_dn_dp",
+	"csi_cn_cp_mfp",
+	"csi_dn_dp_mfp",
 };
 
 static const char * const dsi_groups[] = {
-	"dsi_dn0",
-	"dsi_dp2",
-	"dsi_dp3",
-	"dsi_dn3",
-	"dsi_dp0",
-	"dsi_dnp1_cp_d2",
-	"dsi_dnp1_cp_d17",
-	"dsi_dn2",
+	"dsi_dn0_mfp",
+	"dsi_dp2_mfp",
+	"dsi_dp3_mfp",
+	"dsi_dn3_mfp",
+	"dsi_dp0_mfp",
+	"dsi_dnp1_cp_d2_mfp",
+	"dsi_dnp1_cp_d17_mfp",
+	"dsi_dn2_mfp",
 	"dsi_dummy",
 };
 
 static const char * const nand_groups[] = {
-	"dnand_data_wr",
-	"dnand_acle_ce0",
-	"nand_ceb2",
-	"nand_ceb3",
+	"dnand_data_wr_mfp",
+	"dnand_acle_ce0_mfp",
+	"nand_ceb2_mfp",
+	"nand_ceb3_mfp",
 	"nand_dummy",
 };
 
 static const char * const spdif_groups[] = {
-	"uart0_tx",
+	"uart0_tx_mfp",
 };
 
 static const char * const sirq0_groups[] = {
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
