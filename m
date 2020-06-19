Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02F29200319
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 09:59:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LwWklVYgUIA6aYhbqo2aCzTrx32FZbD7KGR8b1Fl0zE=; b=be9OD3SS5rCWkK
	DRhkld7BhSSXDS+ST2Q0Hhw1ber7Yx21ocnwEbzqedDVc3c0WhHXprMd1G9Vtq6kDfy4gKg7vL/s2
	kdOx5Cc4VHoMg2mzzDvM2egtQmrW5WPvnwNywCMLJXTWLvmY+gVAISorEk6fOV5Vfw2LhTg7Mfr6O
	LmSfPccQI4fKhlhLe33WEztf/D8Wdyb+0NNkxXjY9IwMDtg6mdMHjG0vuL8TxPdwJ+nXWuy0VNjNv
	7wKzv4V7i6c19r2ChroO+k4bbRcp5YUFHFOqq6n9J6XLKxHk6pkHskZfcPULYilfKvhZsg2xQ4tUR
	vsU/N2f/2H+omqBkpgaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmBvs-0000JF-BL; Fri, 19 Jun 2020 07:59:28 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmBvk-0000J4-Rr
 for linux-arm-kernel@bombadil.infradead.org; Fri, 19 Jun 2020 07:59:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=uY1G0H+x+x0GuWCXtwDNgXxjCSrUzuUtTVRG/ynx01c=; b=JaN//HmmzAiaALFsgHKmdbFkhz
 MNH88KQJIQ3sebLtqppUxS3Boi/KjzBis/UG1Nos/1rUVnhSAXkz5XeKo0xfnfdqs82trmUz9Q4P/
 0K18NBgdn9AB0ty7IIgPKXDgyyiccjc/ZzT21sHoHpUVJ3ThVuni7WPTXbiIjzs+dH2wWt0vJ86Dh
 ki8r9p0Pj5jXypwIAgPIG5Y1EbrRRtqYIq1rsjqL1DslhLi9K1KTzdd3Za6QQpuA5SsF0DuElEXO+
 0mqZCL8cdouDfKeF+S2qOtWg1yFYSx3XVEPP6/Q5yhOVpw4NxM+5G+NgycygaXms39Nbd2U2+qHBl
 8Vq2IPNw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmBvh-0005Ox-A2
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 07:59:19 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1jmBvf-0007WB-U9; Fri, 19 Jun 2020 09:59:15 +0200
Received: from mtr by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1jmBvf-0004vg-BT; Fri, 19 Jun 2020 09:59:15 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [RESEND PATCH v3 0/6] soc: xilinx: vcu: provide interfaces for other
 drivers
Date: Fri, 19 Jun 2020 09:59:07 +0200
Message-Id: <20200619075913.18900-1-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mtr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_085917_590925_86F2F7EC 
X-CRM114-Status: GOOD (  14.81  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-1.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
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
Cc: Dhaval Shah <dshah@xilinx.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Tretter <m.tretter@pengutronix.de>,
 Michal Simek <michal.simek@xilinx.com>, kernel@pengutronix.de,
 Rohit Visavalia <rohit.visavalia@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

I'm resending v3 of the series to expose interfaces that can be used by other
drivers from the xlnx_vcu driver, because unfortunately there wasn't any
feedback on the actual code changes in the series.

This driver controls the glue between the ZynqMP and the actual video codec
unit.  Therefore, a driver for the video codec unit (i.e. the allegro-dvt
driver) needs to be able to control the glue and read information about the
codec configuration from the glue. The interfaces to do so are exposed by this
patch series.

This resend contains Rob Herring's Acked-By and Reviewed-By for the device
tree changes.

Michael

Changelog:

v2 -> v3:
- drop unused xvcu_reset() function

v1 -> v2:
- drop custom select for syscon
- unregister registered clocks on driver remove

Michael Tretter (6):
  soc: xilinx: vcu: drop useless success message
  ARM: dts: define indexes for output clocks
  soc: xilinx: vcu: implement clock provider for output clocks
  dt-bindings: soc: xlnx: extract xlnx, vcu-settings to separate binding
  soc: xilinx: vcu: use vcu-settings syscon registers
  soc: xilinx: vcu: add missing register NUM_CORE

 .../soc/xilinx/xlnx,vcu-settings.yaml         |  34 ++++
 .../bindings/soc/xilinx/xlnx,vcu.txt          |   9 +-
 drivers/soc/xilinx/Kconfig                    |   3 +-
 drivers/soc/xilinx/xlnx_vcu.c                 | 158 ++++++++++++------
 include/dt-bindings/clock/xlnx-vcu.h          |  15 ++
 include/linux/mfd/syscon/xlnx-vcu.h           |  39 +++++
 6 files changed, 200 insertions(+), 58 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/soc/xilinx/xlnx,vcu-settings.yaml
 create mode 100644 include/dt-bindings/clock/xlnx-vcu.h
 create mode 100644 include/linux/mfd/syscon/xlnx-vcu.h

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
