Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7B861DB895
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 17:42:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oNKcZKRNkrUPGb2zVn9J7sH+3CWHh5/xWxkY8bboQxA=; b=XlS2NSURlyJRID
	5986pilvj5BFDeWC828zItns3+4UIa4gm9tyUcrG49rGytDtqRM6XZnJ04aw3J/2hr/l+Fhq62lz4
	0spls8igd6xB39LxZApsi+rWC9jIdWPyJC+x7yr0RvcICSiI/kxEUDSIvgJwscQV9vGlFqJz7Zdb4
	m+mVAGTY7aMZXgzxl/YfSwyauM8hWLsRKIcxl+QUMcvdZtAjoEwCpM2RSh67Zou36wRA96xDogp7F
	kjRs0QymB2S2JQ7HYVo2GWWNBXI2fUEq31Qxxa/8edJ3TOA9aXffaWVf0kG0Vlhhg/2pozX8oOXcQ
	G2+JtELe5ovxWEOBo0AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbQrd-0001Vh-UQ; Wed, 20 May 2020 15:42:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbQqg-0000wD-Ca
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 15:41:39 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1jbQqM-0008V0-GO; Wed, 20 May 2020 17:41:18 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1jbQqL-0003hT-Eo; Wed, 20 May 2020 17:41:17 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH v8 0/5] mainline Protonic boards
Date: Wed, 20 May 2020 17:41:11 +0200
Message-Id: <20200520154116.12909-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_084138_517944_BEF12CD5 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Oleksij Rempel <o.rempel@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

changes v8:
- resend correct changes

changes v7:
- VT7: reorder node alphabetically
- VT7: rename "reg_12v_bl: regulator-bl-12v" to "reg_bl_12v0: regulator-bl-12v0"
- VT7: remove panel and TS nodes. This drivers are currently not
  mainline.
- prti6q.dtsi: move reg_1v8 to prti6q.dts
- prti6q.dtsi: remove pinctrl from the can1 node. It is done on almost
  every board file.

changes v6:
- move fsl.yaml changes to separate patch
- remove partitions, they are provided by the bootloader
- update flash compatible
- rename can3 to can
- fix fsl,mode
- fix interrupt in the wlan node on PRTI6Q

changes v5:
- PRTI6Q: remove status from the pwm-backlight node
- drop the vendor-prefixes patch, it is already taken by Rob
- add Reviewed-by: Rob Herring <robh@kernel.org>

changes v4:
- VT7: fix typo

changes v3:
- move compatible to the start of node
- move status to the end
- use generic names in compatible
- refactor dts/dtsi
- use alphabet order for pinctrl and phandels
- remove unused or currently not supported nodes

changes v2:
- squash PRTI6Q patches

Oleksij Rempel (5):
  ARM: dts: add Protonic PRTI6Q board
  ARM: dts: add Protonic WD2 board
  ARM: dts: add Protonic VT7 board
  ARM: dts: add Protonic RVT board
  dt-bindings: arm: fsl: add different Protonic boards

 .../devicetree/bindings/arm/fsl.yaml          |   4 +
 arch/arm/boot/dts/Makefile                    |   4 +
 arch/arm/boot/dts/imx6dl-prtrvt.dts           | 182 ++++++
 arch/arm/boot/dts/imx6dl-prtvt7.dts           | 411 +++++++++++++
 arch/arm/boot/dts/imx6q-prti6q.dts            | 541 ++++++++++++++++++
 arch/arm/boot/dts/imx6q-prtwd2.dts            | 188 ++++++
 arch/arm/boot/dts/imx6qdl-prti6q.dtsi         | 165 ++++++
 7 files changed, 1495 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx6dl-prtrvt.dts
 create mode 100644 arch/arm/boot/dts/imx6dl-prtvt7.dts
 create mode 100644 arch/arm/boot/dts/imx6q-prti6q.dts
 create mode 100644 arch/arm/boot/dts/imx6q-prtwd2.dts
 create mode 100644 arch/arm/boot/dts/imx6qdl-prti6q.dtsi

-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
