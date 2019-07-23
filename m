Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AB7C71422
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 10:41:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=zvKkS34wHpsdbdYqXFK+Cbye6fw4bP0UunitqE43fs4=; b=Ekr
	HF3IqLHizuLWZMxKy5zVm1ihyuuSMyjmqw/IpRa6dWhjDUjgp/JH1IXjiQdhf1ORlZIz73SXewdIE
	wUJ58LCgPb6WT/o1i9DGhkHdZvJt5Wu5vUBxi9a6hXz8ioMgH3bsOeJBkRPhH0zxo8G+qVQW+BGOd
	UEmHBMT3Ke8Svb7yH7wgFXJfSr8QdUAI+TMjwedCyXaV0lk23YgfHKBRDxB33MUfhOW7DJ/GeCJHX
	aVFWshsA+HLC0hRGsvE98DlinZuqbf7SyBflpPyLWDDMk9naWwvrElE4n8kaetY89LbpTKvQJBktb
	aThfYLqM5BgEiEMAbhTWRe9ITgbhorA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpqMR-0006LQ-3U; Tue, 23 Jul 2019 08:41:27 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpqMB-0006Jm-ED
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 08:41:13 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 9F1AD1A02DF;
 Tue, 23 Jul 2019 10:41:08 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 920E31A02D1;
 Tue, 23 Jul 2019 10:41:08 +0200 (CEST)
Received: from fsr-ub1864-103.ea.freescale.net
 (fsr-ub1864-103.ea.freescale.net [10.171.82.17])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id AA798205DD;
 Tue, 23 Jul 2019 10:41:07 +0200 (CEST)
From: Daniel Baluta <daniel.baluta@nxp.com>
To: m.felsch@pengutronix.de,
	shawnguo@kernel.org
Subject: [PATCH v2 0/5] Add DSP node for i.MX8QXP board to be used by DSP SOF
 driver
Date: Tue, 23 Jul 2019 11:40:59 +0300
Message-Id: <20190723084104.12639-1-daniel.baluta@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_014111_620328_FF14C3D5 
X-CRM114-Status: UNSURE (   8.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
 anson.huang@nxp.com, devicetree@vger.kernel.org,
 Daniel Baluta <daniel.baluta@nxp.com>, shengjiu.wang@nxp.com,
 linux-kernel@vger.kernel.org, paul.olaru@nxp.com, robh+dt@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, leonard.crestez@nxp.com,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org,
 sound-open-firmware@alsa-project.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

i.MX8QXP boards feature an Hifi4 DSP from Tensilica.

This patch series aims on adding the DT node describing the DSP,
but it also contains the Linux SOF DSP driver that will use the DT node
for easier review.

Note that we switched to the new yaml format for bindings documentation.

The DSP will run SOF Firmware [1]. Patches 1,2,3 are adding support
for Linux DSP driver are already sent for review to SOF folks [2]

[1] https://github.com/thesofproject/sof
[2] https://github.com/thesofproject/linux/pull/1048/commits

Changes since v1:
	- removed 'clk: imx8: Add DSP related clocks' as it was already
	  applied by Shawn
	- add patches adding support for Linux DSP driver to make things
	  clear for review
	- add maxItems property for PM in DT bindings doc

Daniel Baluta (5):
  ASoC: SOF: imx: Add i.MX8 HW support
  ASoC: SOF: topology: Add dummy support for i.MX8 DAIs
  ASoC: SOF: Add DT DSP device support
  arm64: dts: imx8qxp: Add DSP DT node
  dt-bindings: dsp: fsl: Add DSP core binding support

 .../devicetree/bindings/dsp/fsl,dsp.yaml      |  87 ++++
 arch/arm64/boot/dts/freescale/imx8qxp-mek.dts |   4 +
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi    |  32 ++
 include/sound/sof/dai.h                       |   2 +
 include/uapi/sound/sof/tokens.h               |   8 +
 sound/soc/sof/Kconfig                         |  10 +
 sound/soc/sof/Makefile                        |   4 +
 sound/soc/sof/imx/Kconfig                     |  21 +
 sound/soc/sof/imx/Makefile                    |   7 +
 sound/soc/sof/imx/imx8.c                      | 464 ++++++++++++++++++
 sound/soc/sof/sof-dt-dev.c                    | 159 ++++++
 sound/soc/sof/topology.c                      |  30 ++
 12 files changed, 828 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/dsp/fsl,dsp.yaml
 create mode 100644 sound/soc/sof/imx/Kconfig
 create mode 100644 sound/soc/sof/imx/Makefile
 create mode 100644 sound/soc/sof/imx/imx8.c
 create mode 100644 sound/soc/sof/sof-dt-dev.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
