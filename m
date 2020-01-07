Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18970132ECE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 19:58:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=yv3BAqck52n5ye2etAhDDHprZOgPz6z+yeor0jI6yLU=; b=bPt
	iRbFPH6FgfJ8cz/B6yaRLvfr/wv8EOK0wI86Ss2/WLjbAt5L+RU5j41xbUIWNPHApJJQVb3fOK75O
	tVacvUgdHgGdsuvgHbxOHWuIBLJCoRN7FKw/DscBCnfe3ZzbU9Lf1tvHZ1Z+RZs3iwprNUIzOAYQm
	EkZMXig93gLk7Ue2ca+XDf3XzOF6n0lltVtn0Gz3EKLxzwUNtCWexzwV40BRY87aaOitPRU0hhMBb
	mZm1XpwwkrT/ZzEOmGTUGrfnK3oMM+xtPnwEtTYpqjLUzdu/bTzdbl8UWDKPh7aCcu2ODK/0jNa0U
	7d4N0nwmvybOtPhj739wXtTAJOmFD0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iou3U-0003kv-6G; Tue, 07 Jan 2020 18:58:16 +0000
Received: from lists.gateworks.com ([108.161.130.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iou3J-0003jc-G4
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 18:58:06 +0000
Received: from 68-189-91-139.static.snlo.ca.charter.com ([68.189.91.139]
 helo=rjones.pdc.gateworks.com)
 by lists.gateworks.com with esmtp (Exim 4.82)
 (envelope-from <rjones@gateworks.com>)
 id 1iou3F-0006Mw-Ke; Tue, 07 Jan 2020 18:58:01 +0000
From: Robert Jones <rjones@gateworks.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v6 0/5] ARM: dts: imx: Add GW59xx Gateworks specials
Date: Tue,  7 Jan 2020 10:57:48 -0800
Message-Id: <20200107185753.28308-1-rjones@gateworks.com>
X-Mailer: git-send-email 2.9.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_105805_578802_DEB86DD3 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, Robert Jones <rjones@gateworks.com>,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds board support for the GW59xx Gateworks Ventana family
specials.

Changes in v2:
 - Generalized node names
 - Removed unnecessary labels
 - Expanded patch subject
 - Removed undocumented compatible string in dts

Changes in v3:
 - Fixed a conflict in arch/arm/boot/dts/Makefile

Changes in v4:
 - Clarified authorship
 - Added dt-bindings compatible entries

Changes in v5:
 - Added documentation schema permutations for all gateworks ventana boards
 - Added back compatible strings from dts removed in v2

Changes in v6:
 - Reorganized dt-bindings schema into new items entry

Robert Jones (4):
  dt-bindings: arm: fsl: Add Gateworks Ventana i.MX6DL/Q compatibles
  ARM: dts: imx: Add GW5907 board support
  ARM: dts: imx: Add GW5913 board support
  ARM: dts: imx: Add GW5912 board support

Tim Harvey (1):
  ARM: dts: imx: Add GW5910 board support

 Documentation/devicetree/bindings/arm/fsl.yaml |  37 ++
 arch/arm/boot/dts/Makefile                     |   8 +
 arch/arm/boot/dts/imx6dl-gw5907.dts            |  14 +
 arch/arm/boot/dts/imx6dl-gw5910.dts            |  14 +
 arch/arm/boot/dts/imx6dl-gw5912.dts            |  13 +
 arch/arm/boot/dts/imx6dl-gw5913.dts            |  14 +
 arch/arm/boot/dts/imx6q-gw5907.dts             |  14 +
 arch/arm/boot/dts/imx6q-gw5910.dts             |  14 +
 arch/arm/boot/dts/imx6q-gw5912.dts             |  13 +
 arch/arm/boot/dts/imx6q-gw5913.dts             |  14 +
 arch/arm/boot/dts/imx6qdl-gw5907.dtsi          | 399 ++++++++++++++++++++
 arch/arm/boot/dts/imx6qdl-gw5910.dtsi          | 491 +++++++++++++++++++++++++
 arch/arm/boot/dts/imx6qdl-gw5912.dtsi          | 461 +++++++++++++++++++++++
 arch/arm/boot/dts/imx6qdl-gw5913.dtsi          | 348 ++++++++++++++++++
 14 files changed, 1854 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx6dl-gw5907.dts
 create mode 100644 arch/arm/boot/dts/imx6dl-gw5910.dts
 create mode 100644 arch/arm/boot/dts/imx6dl-gw5912.dts
 create mode 100644 arch/arm/boot/dts/imx6dl-gw5913.dts
 create mode 100644 arch/arm/boot/dts/imx6q-gw5907.dts
 create mode 100644 arch/arm/boot/dts/imx6q-gw5910.dts
 create mode 100644 arch/arm/boot/dts/imx6q-gw5912.dts
 create mode 100644 arch/arm/boot/dts/imx6q-gw5913.dts
 create mode 100644 arch/arm/boot/dts/imx6qdl-gw5907.dtsi
 create mode 100644 arch/arm/boot/dts/imx6qdl-gw5910.dtsi
 create mode 100644 arch/arm/boot/dts/imx6qdl-gw5912.dtsi
 create mode 100644 arch/arm/boot/dts/imx6qdl-gw5913.dtsi

-- 
2.9.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
