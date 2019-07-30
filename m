Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 220E17AB63
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 16:49:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HQINg/f4DAD/eZeF0wE5B972LMOtG6BdNAKQw+T1TZE=; b=LURFnrEnOvY4ry
	jFlnrebh7ccsd3TsZg+h5zW2PDFhmj/3Y1uU40zxdWJe1bVhG1Q7YVI/qCSKLaowqHgnL4DaIw07l
	+M/+liU05kYRfe0HY8bazwMjuqZJ2TeHf4lwGlDI6pgIi3f4hMpHIJLsbOoSsbvzAT/DHBTPttkBL
	hje/1XwJTjyOyjZflAKxeAvBTvTDbs5tLLv20to7BNBkLCrDGtBbhpTRav3cplUSa9uFJV2aRJ6aY
	LPOVt8G+U3GFjF29RLIttxz08+Zfc01YJE1TK6uvKBOcxBfi6e9wVEAP9dcKef3H+KmOiV5o6Hp/C
	XWcWjlkv3KUGUNfgbl7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsTRS-0006Kv-AC; Tue, 30 Jul 2019 14:49:30 +0000
Received: from mxout013.mail.hostpoint.ch ([2a00:d70:0:e::313])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsTP6-0004SH-S6
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 14:47:08 +0000
Received: from [10.0.2.46] (helo=asmtp013.mail.hostpoint.ch)
 by mxout013.mail.hostpoint.ch with esmtp (Exim 4.92 (FreeBSD))
 (envelope-from <dev@pschenker.ch>)
 id 1hsTOx-000DXK-Bb; Tue, 30 Jul 2019 16:46:55 +0200
Received: from [46.140.72.82] (helo=philippe-pc.toradex.int)
 by asmtp013.mail.hostpoint.ch with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91 (FreeBSD))
 (envelope-from <dev@pschenker.ch>)
 id 1hsTOx-000Mva-6h; Tue, 30 Jul 2019 16:46:55 +0200
X-Authenticated-Sender-Id: dev@pschenker.ch
From: Philippe Schenker <dev@pschenker.ch>
To: marcel.ziswiler@toradex.com, max.krummenacher@toradex.com, stefan@agner.ch,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 00/22] This patchset holds some common changes that were never
 upstreamed.
Date: Tue, 30 Jul 2019 16:46:27 +0200
Message-Id: <20190730144649.19022-1-dev@pschenker.ch>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_074704_901578_E3297843 
X-CRM114-Status: UNSURE (   7.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a00:d70:0:e:0:0:0:313 listed in] [list.dnswl.org]
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
Cc: Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Philippe Schenker <philippe.schenker@toradex.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Philippe Schenker <philippe.schenker@toradex.com>

With latest downstream kernel upgrade, I took the aproach to select
mainline devicetrees and atomically add missing stuff for downstream.

These patches I send here are separated out with changes that also
have a benfit for mainline.

Philippe


Marcel Ziswiler (1):
  ARM: dts: imx7-colibri: make sure module supplies are always on

Max Krummenacher (2):
  ARM: dts: imx6ull-colibri: reduce v_batt current in power off
  ARM: dts: imx6ull: improve can templates

Oleksandr Suvorov (1):
  ARM: dts: add recovery for I2C for iMX7

Philippe Schenker (15):
  ARM: dts: imx7-colibri: prepare module device tree for FlexCAN
  ARM: dts: imx7-colibri: Add sleep mode to ethernet
  ARM: dts: imx7-colibri: Add touch controllers
  ARM: dts: imx6qdl-colibri: add phy to fec
  ARM: dts: imx6qdl-colibri: Add missing pin declaration in iomuxc
  ARM: dts: imx6: Add sleep state to can interfaces
  ARM: dts: imx6: Add touchscreens used on Toradex eval boards
  ARM: dts: colibri-imx6: Add missing pinmuxing to Toradex eval board
  ARM: dts: apalis-imx6: Add some example I2C devices
  ARM: dts: apalis-imx6: Add some optional I2C devices
  ARM: dts: imx6ull-colibri: Add sleep mode to fec
  ARM: dts: imx6ull-colibri: Add watchdog
  ARM: dts: imx6ull-colibri: Add general wakeup key used on Colibri
  ARM: dts: imx6/7-colibri: switch dr_mode to otg
  ARM: dts: imx6ull-colibri: Add touchscreens used with Eval Board

Stefan Agner (3):
  ARM: dts: imx7-colibri: disable HS400
  ARM: dts: imx7-colibri: add GPIO wakeup key
  ARM: dts: imx7-colibri: fix 1.8V/UHS support

 arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts  |  52 ++++++++
 arch/arm/boot/dts/imx6q-apalis-eval.dts       | 122 ++++++++++++++++++
 arch/arm/boot/dts/imx6q-apalis-ixora-v1.1.dts |  19 +++
 arch/arm/boot/dts/imx6q-apalis-ixora.dts      |  19 +++
 arch/arm/boot/dts/imx6qdl-apalis.dtsi         |  27 +++-
 arch/arm/boot/dts/imx6qdl-colibri.dtsi        |  27 +++-
 .../arm/boot/dts/imx6ull-colibri-eval-v3.dtsi |  63 +++++++++
 .../arm/boot/dts/imx6ull-colibri-nonwifi.dtsi |   2 +-
 arch/arm/boot/dts/imx6ull-colibri-wifi.dtsi   |   2 +-
 arch/arm/boot/dts/imx6ull-colibri.dtsi        |  52 +++++++-
 arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi   |  51 ++++++++
 arch/arm/boot/dts/imx7-colibri.dtsi           | 114 ++++++++++++++--
 12 files changed, 524 insertions(+), 26 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
