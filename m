Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E9CD1AD6E1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 09:06:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QXh1h3BtmZ6LMZdMbXDRajlTrbcoa7bv2HljMJiNfR0=; b=qMTg0StzXb7Npi
	nfyG8sydII9dfmJbqAfXcLrc6zgzmUKt6iAvwgrkesv5Hqf0Fo7QjpKisueYy33mamdTQJmw0sFKJ
	MJnCI0YQ4COsAe03g0+hgvNNhBj6r4njKXxzny4iG253GJ9/H6U5V8p4FzKilTBmhAYNcKh/hxIqK
	fY1QJEf7arvp8+NGICRbVorOqI/br3yRkLKQ0mObQulUWKNevAl0YBtut2VhhuyVVYikwZDA80Fs7
	TwiaAoh/1V3yGB3gFmCP7Q/8pgnKNq0s6D0JESabmfxibMqVhkLdM9vRKqasF9+9lPo3FFCJGXDZb
	jK7atx/Gt8CaXT+Oe1TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPL4i-0001fW-Oa; Fri, 17 Apr 2020 07:06:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPL4B-0001SK-2g
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 07:05:36 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1jPL45-0008Nn-3o; Fri, 17 Apr 2020 09:05:29 +0200
Received: from mtr by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1jPL44-000327-Dh; Fri, 17 Apr 2020 09:05:28 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 0/6] soc: xilinx: vcu: provide interfaces for other drivers
Date: Fri, 17 Apr 2020 09:05:20 +0200
Message-Id: <20200417070526.7178-1-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mtr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_000535_117720_C09CF543 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
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

This is v3 of the series to add interfaces that can be used by other drivers
to the xlnx_vcu driver. See [0] for the full motivation for this patch series.

v2 accidentally contained the unused xvcu_reset() function. I removed the
function again.

Michael

[0] https://lore.kernel.org/linux-arm-kernel/20200317094115.15896-1-m.tretter@pengutronix.de/

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
  dt-bindings: soc: xlnx: extract xlnx,vcu-settings to separate binding
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
