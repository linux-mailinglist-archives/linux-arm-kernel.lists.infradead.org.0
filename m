Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C398174B78
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Mar 2020 06:31:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ACxQMH+mCET2Cm8PEShdI5DTzxxHEYTcfOxAKsYhLHw=; b=QWi
	S9OUEJ4ZjjFJHFn1TcYKz+ZTxm8/00M8nWam2oIHvjHzZg4/im3zllV84gLegrC/1FZAS21zC/jzU
	6RI2lZg5pizADcN89UDjVHoq+5lD6O6AyLiShbxXLUgDQdwYUUl08w1ye1D8M/52FaVh79uWKsPuD
	IB0mn88fzttxa8QrGzMEWpFBU8tSG9nwGqxucAi1kobG81brFnZpD1QIQXZ1uG8wbmlDyxN3bs9hj
	mjA/LcLDahvSe1NwI0+CyoecIQ2fLZ9ZzaoKhPbZsnDqkd8FFT0Jhtt528fa4ypY7l+ILzQGirZNv
	WzBCgbLklqyRmRzOFRD7BhaIpfbhMUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8HCY-0000cp-5l; Sun, 01 Mar 2020 05:31:42 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8HBa-0008KM-6K
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Mar 2020 05:30:45 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id E2F8C200A2E;
 Sun,  1 Mar 2020 06:30:33 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id A1F7C200A2D;
 Sun,  1 Mar 2020 06:30:24 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 813FD40294;
 Sun,  1 Mar 2020 13:30:13 +0800 (SGT)
From: Shengjiu Wang <shengjiu.wang@nxp.com>
To: timur@kernel.org, nicoleotsuka@gmail.com, Xiubo.Lee@gmail.com,
 festevam@gmail.com, broonie@kernel.org, alsa-devel@alsa-project.org,
 lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, robh+dt@kernel.org,
 mark.rutland@arm.com, devicetree@vger.kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, linux-imx@nxp.com,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 0/8] ASoC: Add new module driver for new ASRC
Date: Sun,  1 Mar 2020 13:24:11 +0800
Message-Id: <cover.1583039752.git.shengjiu.wang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_213042_373478_954845E5 
X-CRM114-Status: UNSURE (   7.82  )
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
Cc: linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add new module driver for new ASRC in i.MX8MN, several commits
are added for change DT binding asrc-width to asrc-format

Shengjiu Wang (8):
  ASoC: dt-bindings: fsl_asrc: Change asrc-width to asrc-format
  ARM: dts: imx6qdl: Change asrc-width to asrc-format
  ASoC: fsl-asoc-card: Change asrc-width to asrc-format
  ASoC: fsl_asrc: Change asrc_width to asrc_format
  ASoC: fsl_asrc: rename asrc_priv to asrc
  ASoC: fsl_asrc: Move common definition to fsl_asrc_common
  ASoC: dt-bindings: fsl_easrc: Add document for EASRC
  ASoC: fsl_easrc: Add EASRC ASoC CPU DAI and platform drivers

changes in v4
- Add several commit for changing DT binding asrc-width to asrc-format
- rename asrc_priv to asrc

changes in v3
- add new commit "ASoC: fsl_asrc: Change asrc_width to asrc_format"
- modify binding doc to yaml format
- remove fsl_easrc_dma.c, make fsl_asrc_dma.c useable for easrc.

changes in v2
- change i.MX815 to i.MX8MN
- Add changes in Kconfig and Makefile

 .../devicetree/bindings/sound/fsl,asrc.txt    |    4 +-
 .../devicetree/bindings/sound/fsl,easrc.yaml  |   96 +
 arch/arm/boot/dts/imx6qdl.dtsi                |    2 +-
 sound/soc/fsl/Kconfig                         |   11 +
 sound/soc/fsl/Makefile                        |    2 +
 sound/soc/fsl/fsl-asoc-card.c                 |    9 +-
 sound/soc/fsl/fsl_asrc.c                      |  282 +--
 sound/soc/fsl/fsl_asrc.h                      |   74 +-
 sound/soc/fsl/fsl_asrc_common.h               |  105 +
 sound/soc/fsl/fsl_asrc_dma.c                  |   54 +-
 sound/soc/fsl/fsl_easrc.c                     | 2111 +++++++++++++++++
 sound/soc/fsl/fsl_easrc.h                     |  651 +++++
 12 files changed, 3169 insertions(+), 232 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/fsl,easrc.yaml
 create mode 100644 sound/soc/fsl/fsl_asrc_common.h
 create mode 100644 sound/soc/fsl/fsl_easrc.c
 create mode 100644 sound/soc/fsl/fsl_easrc.h

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
