Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 075EF1A786D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 12:32:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2B4cMvN0raVdBZ9W2DtCebCiR8ibFz/bkSdNpuf0tkY=; b=Uor15mmzMR5FOd
	08nOxLqhLUN7W5l0X10rFoME5LPUTngrd6BlNnzIPxUR+weRMsscYZfLpKvz8E+A+nLSeNcaCoShZ
	ahKiPRCoMtEeBoObkvTp8TbShmAQ3e//l1YeYl/t44/aC2Xr68gZRmGJEpQ9utEv/JWjIIs2UJkNR
	vroBM+nu5cSTNLLUvBfbMkDU8pOVlHlNH5hqAz13Oh1g6FiB+nz/TQVl3lMrRoE11rETdU+P/7SEa
	XN/R7x614xnGkxgoTT8BkokKPQoD9mX83/OWsV8KXPsUqSocyos4FyyFb7w4TxEf4CzTfK+0hxFd5
	pvp868FVuvgy6mpru5yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOIrq-00011D-6V; Tue, 14 Apr 2020 10:32:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOIrP-0000s7-Ec
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 10:32:09 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1jOIrN-0007BU-EA; Tue, 14 Apr 2020 12:32:05 +0200
Received: from mtr by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1jOIrM-000181-SH; Tue, 14 Apr 2020 12:32:04 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 0/6] soc: xilinx: vcu: provide interfaces for other drivers
Date: Tue, 14 Apr 2020 12:31:56 +0200
Message-Id: <20200414103202.4288-1-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mtr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_033207_556062_7D4EC67E 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Dhaval Shah <dshah@xilinx.com>, Michael Tretter <m.tretter@pengutronix.de>,
 Michal Simek <michal.simek@xilinx.com>, Rob Herring <robh+dt@kernel.org>,
 kernel@pengutronix.de, Rohit Visavalia <rohit.visavalia@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

This is v2 of the series to add interfaces that can be used by other drivers
to the xlnx_vcu driver. See [0] for the full motivation for this patch series.

In v2, the driver now also unregisters the registered clocks. I also dropped
the workaround for the syscon compatible in the dt bindings.

I would actually really appreciate feedback by Xilinx, because there are some
patches in the Xilinx downstream kernel that also try to expose the VCU
System-Level Control in an (IMHO) non-upstream-compatible way.

Michael

[0] https://lore.kernel.org/linux-arm-kernel/20200317094115.15896-1-m.tretter@pengutronix.de/

Changelog:

v1 -> v2:
- drop custom select for syscon
- unregister registered clocks on driver remove


Michael Tretter (6):
  soc: xilinx: vcu: drop useless success message
  ARM: dts: define indexes for output clocks
  soc: xilinx: vcu: implement clock provider for output clocks
  dt-bindings: soc: xlnx: extract xlnx,vcu-settings to separate binding
  soc: xilinx: vcu: use vcu-settings syscon registers
  soc: xilinx: vcu: add missing register NUM_CORE

 .../soc/xilinx/xlnx,vcu-settings.yaml         |  34 ++++
 .../bindings/soc/xilinx/xlnx,vcu.txt          |   9 +-
 drivers/soc/xilinx/Kconfig                    |   3 +-
 drivers/soc/xilinx/xlnx_vcu.c                 | 170 ++++++++++++------
 include/dt-bindings/clock/xlnx-vcu.h          |  15 ++
 include/linux/mfd/syscon/xlnx-vcu.h           |  39 ++++
 6 files changed, 212 insertions(+), 58 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/soc/xilinx/xlnx,vcu-settings.yaml
 create mode 100644 include/dt-bindings/clock/xlnx-vcu.h
 create mode 100644 include/linux/mfd/syscon/xlnx-vcu.h

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
