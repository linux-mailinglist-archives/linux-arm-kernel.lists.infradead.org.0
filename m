Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A01D1A958A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 10:06:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=s2hoJ9wZNoyf8Te1ZGlT7I3i76QyD884V3HEO/h3Xi8=; b=TFx71KAB4lMa99dSt6DuAs+bFi
	81DdeKIdLoY0SHfjE2nhqjXi8vSt2uAvaW704BQtGuE4rDbfIPCGccx/Zvj038jWtBu2I08kGU4Ix
	5ZrrCxRohmRjIqpGhy9osCww/t1Hz1yavTXCtIAUJEHh449wdg41k0CWZPPADChjzC0j2w/nOyI9/
	uBMRZbOc28uWiKky+jfsB9CuKULzASjcmuJkGI3f9ZVbsihxs8LtsdJ64Wyw01TLGgzYhYWTfh6Tj
	9QQGyltE3iQpFXvX6MYfGlhhRbbBhNVopJh2ieZtXhyjwJS+MUl/MGvcw3PDYcxdiXYUcMIDPTUdc
	Z+tEQS6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOd3R-0003FN-2i; Wed, 15 Apr 2020 08:05:53 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOd0r-0006OQ-Al
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 08:03:15 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 047231A07A9;
 Wed, 15 Apr 2020 10:03:12 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id EBB7E1A07AC;
 Wed, 15 Apr 2020 10:03:11 +0200 (CEST)
Received: from fsr-ub1664-175.ea.freescale.net
 (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 5431B202B0;
 Wed, 15 Apr 2020 10:03:11 +0200 (CEST)
From: Abel Vesa <abel.vesa@nxp.com>
To: Lee Jones <lee.jones@linaro.org>, Shawn Guo <shawnguo@kernel.org>,
 Peng Fan <peng.fan@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Stephen Boyd <sboyd@kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 Anson Huang <anson.huang@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Jacky Bai <ping.bai@nxp.com>
Subject: [PATCH v3 10/13] arm64: dts: imx8mp: Add audiomix clock controller
 node
Date: Wed, 15 Apr 2020 11:02:50 +0300
Message-Id: <1586937773-5836-11-git-send-email-abel.vesa@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586937773-5836-1-git-send-email-abel.vesa@nxp.com>
References: <1586937773-5836-1-git-send-email-abel.vesa@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_010313_552502_84076278 
X-CRM114-Status: UNSURE (   7.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Abel Vesa <abel.vesa@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the audiomix clock controller as part of the audiomix MFD.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 3e4c376..03ace7f 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -659,6 +659,17 @@
 			audiomix: audiomix@30e20000 {
 				compatible = "fsl,imx8mp-mix";
 				reg = <0x30e20000 0x10000>;
+
+				audiomix_clk: clock-controller {
+					compatible = "fsl,imx8mp-audiomix-clk";
+					#clock-cells = <1>;
+					clocks = <&clk IMX8MP_CLK_AUDIO_ROOT>,
+						 <&clk IMX8MP_CLK_AUDIO_AHB>,
+						 <&clk IMX8MP_CLK_AUDIO_AXI_DIV>;
+					clock-names = "audio_root",
+						      "audio_ahb",
+						      "audio_axi_div";
+				};
 			};
 		};
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
