Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3198877FC7
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Jul 2019 16:08:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=OoJE9DDJrk4uVbwO2eH5vJWEpfjtkJTmFN+NHSDN9+0=; b=Afs
	YBdb0TmO2BVsLIORDIjh4bumqQLGszX9V5Q2moOj0SGgVk3YWm3q8KDAw0CHByjO3ChxyuAJHDqkJ
	ZYj8tRDabAc5xtM5XD9D+6+GY/kXDYqBv+UiZE9UrRvB+n+0xcGTxu3DdGPD+lcpEDOqAD9nnNrIV
	PtY5a4peEDn5BTMnd3pKYD4Yw7ZQvyxnfEciefeh4G/qUak8Go3ZoCbL5EqCcUlbu6qWlaC/ROx8V
	FDRdFqgb4xT43nB54ykS7MTmGJoxw8y442PNxIz1Hz5JTKFk9c+2rtr61eatr4rVsWCj1nDcCbEwh
	DnUNPUoCzleR8NsVxcfymW0uNfNAabw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrjqu-0002IT-Tp; Sun, 28 Jul 2019 14:08:45 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrjqi-0002Hm-Vq
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 14:08:34 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 0C96B2011AF;
 Sun, 28 Jul 2019 16:08:29 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id F25252011AB;
 Sun, 28 Jul 2019 16:08:28 +0200 (CEST)
Received: from fsr-ub1864-103.ea.freescale.net
 (fsr-ub1864-103.ea.freescale.net [10.171.82.17])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 4D0B52060A;
 Sun, 28 Jul 2019 16:08:28 +0200 (CEST)
From: Daniel Baluta <daniel.baluta@nxp.com>
To: shawnguo@kernel.org
Subject: [PATCH] arm64: dts: imx8mq-evk: Unbypass audio_pll1
Date: Sun, 28 Jul 2019 17:08:17 +0300
Message-Id: <20190728140817.12509-1-daniel.baluta@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_070833_166483_45B22260 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, baruch@tkos.co.il, abel.vesa@nxp.com,
 ccaione@baylibre.com, andrew.smirnov@gmail.com,
 Daniel Baluta <daniel.baluta@nxp.com>, s.hauer@pengutronix.de, angus@akkea.ca,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, festevam@gmail.com,
 shengjiu.wang@nxp.com, linux-arm-kernel@lists.infradead.org,
 l.stach@pengutronix.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Making audio_pll1 parent of audio_pll1_bypass, will allow
setting rates multiple of 8000 for children.

After unbypass clk hierarchy looks like this:
 * osc_25m
   * audio_pll1
     * audio_pll1_bypass
       * audio_pll1_out
         * sai2
           * sai2_root_clk

Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mq-evk.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-evk.dts b/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
index e3df9b8cd9ca..05958124f173 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
@@ -118,9 +118,9 @@
 &sai2 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_sai2>;
-	assigned-clocks = <&clk IMX8MQ_CLK_SAI2>;
-	assigned-clock-parents = <&clk IMX8MQ_AUDIO_PLL1_OUT>;
-	assigned-clock-rates = <24576000>;
+	assigned-clocks = <&clk IMX8MQ_AUDIO_PLL1_BYPASS>, <&clk IMX8MQ_CLK_SAI2>;
+	assigned-clock-parents = <&clk IMX8MQ_AUDIO_PLL1>, <&clk IMX8MQ_AUDIO_PLL1_OUT>;
+	assigned-clock-rates = <0>, <24576000>;
 	status = "okay";
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
