Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1CF874A5D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 11:51:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=OheiblKt/4MpVJiVu0zu1g7bzjcXKFPMAPL2xaZ67gs=; b=gkS
	YOKFOpiMGhYtgVUMRI4FzM9hJACrVJZNO3yLNn6yZUUhEMbl+og6U1E/WuDvKV8qJ78f5ROLpSlFH
	a3k+9/rrMIRX1XGvhNFsaTM3GSFOb4nnXJI0jRVUXm0YEma82OnlpE2pOJkhXWrWbIFafQ2v5mld4
	s2Cc93Xuya041u0pXVxYW8BHQPydItwRh+StxaXExADJwoUJLNm7b4YPOG+aAaGSpvbF1y+ViNqe5
	ocNEgp8XKk8Uf08pV9LWnbJtSVY5a73thiPTJA6504+l62G7zvqcc0e67nriQsjSrTQkvQ3qwwYQf
	etOpmeD/JgaUVJTVgLyIWUUEqL3VgWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqaP4-0007Az-MM; Thu, 25 Jul 2019 09:51:14 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqaOp-0007Ab-BS
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 09:51:01 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 4B2FF20066C;
 Thu, 25 Jul 2019 11:50:56 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 3CBE9200667;
 Thu, 25 Jul 2019 11:50:56 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 6BD3E205E8;
 Thu, 25 Jul 2019 11:50:55 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Daniel Baluta <daniel.baluta@nxp.com>,
 Abel Vesa <abel.vesa@nxp.com>
Subject: [PATCH] arm64: dts: imx8mm: Fix boot hang at clk init
Date: Thu, 25 Jul 2019 12:50:53 +0300
Message-Id: <718c781b77081d6974fd91d5dff7b0f8737757b0.1564048197.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_025059_527459_7E4F3221 
X-CRM114-Status: UNSURE (   6.08  )
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Li Jun <jun.li@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The assigned-clock-rates property is incorrect (4 elements while
assigned-clocks has length 5) and boot hangs while assigning some
unexpected rates.

Fix by inserting another <400000000>, the intention is to assign both
IMX8MM_CLK_AUDIO_AHB and IMX8MM_CLK_IPG_AUDIO_ROOT 400mhz.

Fixes: df1703896a17 ("arm64: dts: imx8mm: Init rates and parents configs for clocks")

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>

---
Changes since v1:
* Insert and 400mhz instead of <0>
Link to v1: https://patchwork.kernel.org/patch/11057515/

Should probably be squashed into df1703896a17

 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index c9a7c0054c5c..7bbdcebc6b57 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -461,10 +461,11 @@
 						<&clk IMX8MM_SYS_PLL3>,
 						<&clk IMX8MM_VIDEO_PLL1>;
 				assigned-clock-parents = <&clk IMX8MM_SYS_PLL3_OUT>,
 							 <&clk IMX8MM_SYS_PLL1_800M>;
 				assigned-clock-rates = <0>,
+							<400000000>,
 							<400000000>,
 							<750000000>,
 							<594000000>;
 			};
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
