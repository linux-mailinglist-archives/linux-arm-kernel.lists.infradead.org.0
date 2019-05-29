Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 807572D87C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 11:07:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=LLffU7zlMiMI41hLplVmkg6MguFai36F/Tp7i5irW+o=; b=LNq
	GGNAAdZdshSas6iESLQlyks1YmypEYWBIIyqS+8l/bW5hA5IZ+o6bCKKd4mhNgAfr1V5WuLApV+lT
	fZb5ZNSQAs9Ytebs0Dr/xQFEIme4oEx+BPMxLs27br3L6emvOJRxPJodHYEVfiUz3/O12XG6Lfygu
	BSMcO8pvwy99Hz+BCqOcDAuKUjZg/sjtSaNxeNjHSaHTz0cJeLXw3PRjqWv2TVTsjKvaP4FeqrWAd
	Du1PSnRQPy5wq534xT6UZApFcxzd86xNU9pkwRLQbu8oAF5EQanffuepaUmi/eOMc6p4xbgly0GnQ
	3SpfIrGrhagx2bwjgRIx+5bO+bNeIWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVuYJ-0002XH-93; Wed, 29 May 2019 09:07:19 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVuYB-0002Vc-CS
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 09:07:12 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id A6D841A0006;
 Wed, 29 May 2019 11:07:07 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id F33EE1A03C1;
 Wed, 29 May 2019 11:07:01 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id B97EE402E6;
 Wed, 29 May 2019 17:06:54 +0800 (SGT)
From: yibin.gong@nxp.com
To: robh@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, mark.rutland@arm.com, vkoul@kernel.org,
 dan.j.williams@intel.com
Subject: [PATCH v3 0/8] add edma2 for i.mx7ulp
Date: Wed, 29 May 2019 17:08:40 +0800
Message-Id: <20190529090848.34350-1-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_020711_561675_8717CD80 
X-CRM114-Status: UNSURE (   7.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, dmaengine@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Robin Gong <yibin.gong@nxp.com>

  This patch set add new version of edma for i.mx7ulp, the main changes
are as belows:
  1. only one dmamux.
  2. another clock dma_clk except dmamux clk.
  3. 16 independent interrupts instead of only one interrupt for
     all channels.
  For the first change, need modify fsl-edma-common.c and mcf-edma,
so create the first two patches to prepare without any function impact.
  For the third change, need request single irq for every channel with
the legacy handler. But actually 2 dma channels share one interrupt(16
channel interrupts, but 32 channels.),ch0/ch16,ch1/ch17... For now, just
simply request irq without IRQF_SHARED flag, since 16 channels are enough
on i.mx7ulp whose M4 domain own some peripherals.

change from v1:
  1. check .data of 'of_device_id' in probe instead of compatible name. 

change from v2:
  1. move the difference between edma and edma2 into driver data so that
     no need version checking in fsl-edma.c.

Robin Gong (8):
  dmaengine: fsl-edma: add dmamux_nr for next version
  dmaengine: mcf-edma: update to 'dmamux_nr'
  dmaengine: fsl-edma-common: move dmamux register to another single
    function
  dmaengine: fsl-edma-common: version check for v2 instead
  dmaengine: fsl-edma: add drvdata for vf610
  dt-bindings: dma: fsl-edma: add new i.mx7ulp-edma
  dmaengine: fsl-edma: add i.mx7ulp edma2 version support
  ARM: dts: imx7ulp: add edma device node

 Documentation/devicetree/bindings/dma/fsl-edma.txt |  44 +++++++-
 arch/arm/boot/dts/imx7ulp.dtsi                     |  28 ++++++
 drivers/dma/fsl-edma-common.c                      |  74 +++++++++-----
 drivers/dma/fsl-edma-common.h                      |  13 +++
 drivers/dma/fsl-edma.c                             | 112 ++++++++++++++++++---
 drivers/dma/mcf-edma.c                             |   1 +
 6 files changed, 230 insertions(+), 42 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
