Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A534FEED
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 04:01:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=VPK1sxtKJXneTbQ0+uwuYCNoKkkkr7hy4ytG3ydIMeQ=; b=JpH
	en6bw2IBx0pAi7a5qWemyxP9Ko6uaDRzG5GUjtpKjSjYiaCnlwA/dxcdGySS9B7Jjq9TOarA2RivY
	Htlde4rtalJKK0WX+NDaH3UtF7X34Bl/6SylEpf8xnbQ4gd0xZ0T7dOJGiJ2Pw1pm8sf9ILuwyljy
	Hq6dJO1neWA5LwhpABPGo3tFEg0svmykF1HwIzkfOktQj2/5QpbEMR24m098cYlIrKBZgBirBAuPh
	pKjTN5zLRocoUOReJom7zkfRNTNQY90aAIgMGRgv1Nb06SiFfvSdxtP+i1ueWBvx6/+kf6GMjrWtm
	+WIIm3S++c3LkvmMw/r1i9UH9Lra8hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfEIR-0000SI-Uk; Mon, 24 Jun 2019 02:01:27 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfEIC-0000Qc-Bg
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 02:01:13 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id C52FF20051F;
 Mon, 24 Jun 2019 04:01:08 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 27F7D20051E;
 Mon, 24 Jun 2019 04:01:02 +0200 (CEST)
Received: from mega.ap.freescale.net (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 52C95402F6;
 Mon, 24 Jun 2019 10:00:54 +0800 (SGT)
From: Peter Chen <peter.chen@nxp.com>
To: balbi@kernel.org,
	shawnguo@kernel.org
Subject: [PATCH v5 0/8] Add imx7ulp USBOTG1 support
Date: Mon, 24 Jun 2019 10:02:50 +0800
Message-Id: <20190624020258.21690-1-peter.chen@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_190112_542442_D2F9BD78 
X-CRM114-Status: UNSURE (   8.56  )
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
Cc: aisheng.dong@nxp.com, devicetree@vger.kernel.org,
 sergei.shtylyov@cogentembedded.com, Peter Chen <peter.chen@nxp.com>,
 linux-usb@vger.kernel.org, chunfeng.yun@mediatek.com, robh+dt@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, fabio.estevam@nxp.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Changes for v5:
- Change DT node name from 'usbphy' to usb-phy'. [Patch 1/8, 6/8]

Changes for v4:
- Delete the oldest compatible for usbotg1, usbmisc and usbphy.
[Patch 6/8]

Changes for v3:
- Using readl_poll_timeout to replace private function. [Patch 2/8]
- Add more commit log for new flag CI_HDRC_PMQOS. [Patch 5/8]
- Move 'compatible' at the beginning of propeties. [Patch 6/8]

Changes for v2:
- Use common 'phys' property [Patch 6/8]
- Add the last patch that "fsl,usbphy" phandle is not mandatory now
[Patch 8/8]
- Add Reviewed-by from Rob.


There is a dual-role USB controller at imx7ulp, we add support for it
in this patch set, and the dual-role function is tested at imx7ulp-evk
board.

Thanks.

Peter Chen (8):
  doc: dt-binding: mxs-usb-phy: add compatible for 7ulp
  usb: phy: phy-mxs-usb: add imx7ulp support
  doc: dt-binding: ci-hdrc-usb2: add compatible string for imx7ulp
  doc: dt-binding: usbmisc-imx: add compatible string for imx7ulp
  usb: chipidea: imx: add imx7ulp support
  ARM: dts: imx7ulp: add imx7ulp USBOTG1 support
  ARM: dts: imx7ulp-evk: enable USBOTG1 support
  usb: chipidea: imx: "fsl,usbphy" phandle is not mandatory now

 .../devicetree/bindings/phy/mxs-usb-phy.txt        |  3 +-
 .../devicetree/bindings/usb/ci-hdrc-usb2.txt       |  1 +
 .../devicetree/bindings/usb/usbmisc-imx.txt        |  1 +
 arch/arm/boot/dts/imx7ulp-evk.dts                  | 35 +++++++++++
 arch/arm/boot/dts/imx7ulp.dtsi                     | 28 +++++++++
 drivers/usb/chipidea/ci_hdrc_imx.c                 | 33 ++++++++++-
 drivers/usb/chipidea/usbmisc_imx.c                 |  4 ++
 drivers/usb/phy/phy-mxs-usb.c                      | 67 +++++++++++++++++++++-
 include/linux/usb/chipidea.h                       |  1 +
 9 files changed, 168 insertions(+), 5 deletions(-)

-- 
2.14.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
