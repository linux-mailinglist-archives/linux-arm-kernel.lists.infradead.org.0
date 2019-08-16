Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94924908FE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 21:53:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6KKylbpRGkAhZCRBuUZ21Pe0/LXraZTuaj8YCqzwyHY=; b=Cvc
	lcXUU43LqYV3xo6NLsJaoffsgxnKPcEi8r10eYegMLRcvS1hK5JOVaFRh3TaME+xTY0mn9Catkish
	NzIFsRkVEIfrT2YLVFYRBHlFpL6qrT7W5IakGGwJRIAdewm+fFTz6NnoPJ/mDCKlwmJt65YaLkjwn
	KDx7tZiE5BcpreNbCjGHs9PmHk7HL+XgEbXjgetU9yuuO97FJc5/a8xlN1Li0Iq8vkEdx8r4qugad
	iRpeag+ep6jRjsbeWES6Ds6bCL4ez7sW2zH5RCmCsji5139f/Cbp6g4rT6vSW9JUztBGevx7ZvFPi
	VCcqoY4YmbM4AK6bXBatpC+nozG15Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyiHm-0003RX-GA; Fri, 16 Aug 2019 19:53:18 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyiHb-0003Qv-H9
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 19:53:09 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 6C1EB20055D;
 Fri, 16 Aug 2019 21:53:02 +0200 (CEST)
Received: from smtp.na-rdc02.nxp.com (usphx01srsp001v.us-phx01.nxp.com
 [134.27.49.11])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 322202004E3;
 Fri, 16 Aug 2019 21:53:02 +0200 (CEST)
Received: from someleo.am.freescale.net (someleo.am.freescale.net
 [10.81.32.174])
 by usphx01srsp001v.us-phx01.nxp.com (Postfix) with ESMTP id B435D40CB6;
 Fri, 16 Aug 2019 12:53:01 -0700 (MST)
From: Li Yang <leoyang.li@nxp.com>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL] updates to soc/fsl drivers for v5.4
Date: Fri, 16 Aug 2019 14:53:01 -0500
Message-Id: <20190816195301.26660-1-leoyang.li@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_125307_707370_AA1BBFE9 
X-CRM114-Status: UNSURE (   7.72  )
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
Cc: shawnguo@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi arm-soc maintainers,

Please look into the following changes and merge them if they
look good.

Regards,
Leo

The following changes since commit 157eed91b374c42eb264157366daf3dabc8bc816:

  Merge tag 'tee-optee-for-5.4' of git://git.linaro.org/people/jens.wiklander/linux-tee into arm/drivers (2019-08-15 14:29:43 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/leo/linux.git tags/soc-fsl-next-v5.4

for you to fetch changes up to eadf0b17b43db4e73a6bdde1ad745d3b582a71c5:

  bus: fsl-mc: remove explicit device_link_del (2019-08-16 14:17:35 -0500)

----------------------------------------------------------------
NXP/FSL SoC driver updates for v5.4

DPAA2 DPIO/MC driver
- Remove explicit device_link_remove() and device_link_del() calls due to
framework change

DPAA QBman driver
- Various changes to make it working with kexec
- Remove dev_err() usage after platform_get_irq()

GUTS driver
- Add LS1028 SoC support

----------------------------------------------------------------
Ioana Ciornei (2):
      soc: fsl: dpio: remove explicit device_link_remove
      bus: fsl-mc: remove explicit device_link_del

Roy Pledge (7):
      soc/fsl/qbman: Rework QBMan private memory setup
      soc/fsl/qbman: Cleanup buffer pools if BMan was initialized prior to bootup
      soc/fsl/qbman: Cleanup QMan queues if device was already initialized
      soc/fsl/qbman: Fix drain_mr_fqni()
      soc/fsl/qbman: Disable interrupts during portal recovery
      soc/fsl/qbman: Fixup qman_shutdown_fq()
      soc/fsl/qbman: Update device tree with reserved memory

Stephen Boyd (1):
      soc: fsl: qbman: Remove dev_err() usage after platform_get_irq()

Yinbo Zhu (1):
      soc: fsl: guts: Add definition for LS1028A

 drivers/bus/fsl-mc/fsl-mc-allocator.c |  1 -
 drivers/bus/fsl-mc/mc-io.c            |  1 -
 drivers/soc/fsl/dpio/dpio-service.c   |  2 -
 drivers/soc/fsl/guts.c                |  6 +++
 drivers/soc/fsl/qbman/bman.c          | 17 +++----
 drivers/soc/fsl/qbman/bman_ccsr.c     | 36 ++++++++++++++-
 drivers/soc/fsl/qbman/bman_portal.c   | 22 ++++++++--
 drivers/soc/fsl/qbman/bman_priv.h     |  5 +++
 drivers/soc/fsl/qbman/dpaa_sys.c      | 63 +++++++++++++++-----------
 drivers/soc/fsl/qbman/qman.c          | 83 ++++++++++++++++++++++++++++-------
 drivers/soc/fsl/qbman/qman_ccsr.c     | 68 +++++++++++++++++++++++++---
 drivers/soc/fsl/qbman/qman_portal.c   | 22 ++++++++--
 drivers/soc/fsl/qbman/qman_priv.h     |  8 ++++
 13 files changed, 263 insertions(+), 71 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
