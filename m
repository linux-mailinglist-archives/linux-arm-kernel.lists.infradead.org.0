Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FF081608C7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 04:26:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=1+FnevP80IljJUW6jdFk8Fh638f6lVCSnaDxJE4Z2uU=; b=cju
	ooG45QRVvdF6efrhJhOzIGwrK0n50F2N7ltcrsbYIFFv/7fyVK7+jJSzb8Gqxq2rqCLEDxGh75ljT
	YRvFtSmZa5S3y0lu17d0++TEBG4X9xxQQp73GUKBHAiOR+fAlMv/zk384CzJAbcXPaPdv7O8dx1yg
	njWyXvnm8CdKkJ9ap2o84vs94049tnp9kGsgVLTT3v4pgVof4NmoSfvQW7GhFdRyAUBbwolu1X1tB
	iOpERE4jxH1bPg/oK0l2CmPyJ2bxA1YaSTP3l2OLVOSGtC/aSF2O04exY3JAV5CzYgI7VguuD21w9
	/JtX+HGy2I7gldlJcv4A03Mcb/DAabw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3X3Y-0007Vw-A8; Mon, 17 Feb 2020 03:26:48 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3X3O-0007UR-LW
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 03:26:39 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 3AE5C201E36;
 Mon, 17 Feb 2020 04:26:34 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 72A7D200EBF;
 Mon, 17 Feb 2020 04:26:24 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id AC27F402A7;
 Mon, 17 Feb 2020 11:26:12 +0800 (SGT)
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, shawnguo@kernel.org, s.hauer@pengutronix.de
Subject: [PATCH 0/7] Add FlexCAN support on i.MX8QXP
Date: Mon, 17 Feb 2020 11:19:14 +0800
Message-Id: <1581909561-12058-1-git-send-email-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_192638_846993_1DE5F2EB 
X-CRM114-Status: UNSURE (   7.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: aisheng.dong@nxp.com, devicetree@vger.kernel.org, peng.fan@nxp.com,
 fugang.duan@nxp.com, Anson.Huang@nxp.com, festevam@gmail.com,
 linux-kernel@vger.kernel.org, Joakim Zhang <qiangqing.zhang@nxp.com>,
 linux-imx@nxp.com, kernel@pengutronix.de, leonard.crestez@nxp.com,
 daniel.baluta@nxp.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add FlexCAN support on i.MX8QXP.

Joakim Zhang (7):
  firmware: imx: scu-pd: add power domain for I2C and INTMUX in CM40 SS
  clk: imx8: Add SCU and LPCG clocks for I2C in CM40 SS
  bindings: clock: imx8qxp: add "fsl,imx8qxp-lpcg-cm40" compatible
    string
  clk: imx: imx8qxp: Enable SCU and LPCG clocks for I2C in CM40 SS
  arch: arm64: dts: imx8qxp: add device node for I2C and INTMUX in CM40
    SS
  clk: imx: imx8qxp: add LPCG clock for FlexCAN in ADMA SS
  arch: arm64: dts: imx8qxp: add device node for CAN in ADMA SS

 .../bindings/clock/imx8qxp-lpcg.txt           |   1 +
 arch/arm64/boot/dts/freescale/imx8qxp-mek.dts |  74 ++++++++++++
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi    | 106 ++++++++++++++++++
 drivers/clk/imx/clk-imx8qxp-lpcg.c            |  15 +++
 drivers/clk/imx/clk-imx8qxp-lpcg.h            |   3 +
 drivers/clk/imx/clk-imx8qxp.c                 |   4 +
 drivers/firmware/imx/scu-pd.c                 |   4 +
 include/dt-bindings/clock/imx8-clock.h        |  13 ++-
 8 files changed, 219 insertions(+), 1 deletion(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
