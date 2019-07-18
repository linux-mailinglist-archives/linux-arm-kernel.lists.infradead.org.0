Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C0246D0D4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 17:14:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=bWhhG2Z9xJqGr2sGmiiZArIfU561Px0HTXH4EhC8HI4=; b=amN
	EmtyhrBY8Asb7IjlP20N4gyjmtLyb80n4qmvBcqrPWvp56A+6ccFfc/v0VGBnsnBJ5yLoEvHmv6Ga
	mIUVO7/1zB0IuIjyegNF9Yiq4eP6UkLWtB91xQP5LdSb2bA4024m60ShnrYZSMsIcPPy9npOxnK44
	gN69j/p+VwYub/6olW15WXl1mA+Xh0u2yl5YAY+WwGCJviMuEOMZpg7wfj4jklWClUPyv12VMxF/B
	r6L9r2ehoINBsJ23lX1NdEpGD9sPMyqB6uPLZmhV9jIBZKeEdgtcmpaWhxLAE2JLL/hMsUTN25uCA
	0L0qU5C4pCLbamJpMiNkoSLPJ+Wr9EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho86j-0004J8-7m; Thu, 18 Jul 2019 15:14:09 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho86R-0004IK-1S
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 15:13:52 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 58CCF200031;
 Thu, 18 Jul 2019 17:13:49 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 48FF4200009;
 Thu, 18 Jul 2019 17:13:49 +0200 (CEST)
Received: from fsr-ub1864-103.ea.freescale.net
 (fsr-ub1864-103.ea.freescale.net [10.171.82.17])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 4B4B9205C7;
 Thu, 18 Jul 2019 17:13:48 +0200 (CEST)
From: Daniel Baluta <daniel.baluta@nxp.com>
To: shawnguo@kernel.org
Subject: [PATCH 0/3] Add DSP node on i.MX8QXP board
Date: Thu, 18 Jul 2019 18:13:43 +0300
Message-Id: <20190718151346.3523-1-daniel.baluta@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_081351_224821_4C630BA8 
X-CRM114-Status: UNSURE (   8.11  )
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
 anson.huang@nxp.com, devicetree@vger.kernel.org, daniel.baluta@nxp.com,
 s.hauer@pengutronix.de, Frank.Li@nxp.com, linux-kernel@vger.kernel.org,
 paul.olaru@nxp.com, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, leonard.crestez@nxp.com, festevam@gmail.com,
 shengjiu.wang@nxp.com, linux-arm-kernel@lists.infradead.org,
 sound-open-firmware@alsa-project.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

i.MX8QXP boards feature an Hifi4 DSP from Tensilica. This patch series
adds the DT node.

Note that we switched to the new yaml format for bindings documentation.

The DSP will run SOF Firmware [1]. Patches adding support for Linux DSP
driver are already sent for review to SOF folks [2].

This patch series also contains a patch introducing DT related clocks.

The patch was already reviewed here:
	https://lkml.org/lkml/2019/7/17/975

but I added it in this patch series because it wasn't yet picked by
Shawn so patches 2/3 will not compiled without patch 1.

[1] https://github.com/thesofproject/sof
[2] https://github.com/thesofproject/linux/pull/1048/commits

Daniel Baluta (3):
  clk: imx8: Add DSP related clocks
  arm64: dts: imx8qxp: Add DSP DT node
  dt-bindings: dsp: fsl: Add DSP core binding support

 .../devicetree/bindings/dsp/fsl,dsp.yaml      | 87 +++++++++++++++++++
 arch/arm64/boot/dts/freescale/imx8qxp-mek.dts |  4 +
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi    | 32 +++++++
 drivers/clk/imx/clk-imx8qxp-lpcg.c            |  5 ++
 include/dt-bindings/clock/imx8-clock.h        |  6 +-
 5 files changed, 133 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/dsp/fsl,dsp.yaml

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
