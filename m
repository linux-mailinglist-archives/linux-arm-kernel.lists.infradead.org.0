Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 319FB187CF6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 10:42:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HjyuNtygYpP9nfkJyS2e8kSkWBpHJI5B2Bi4cadocN0=; b=Jxa7xmk9As/GbG
	3GdM8tgoz5GEOhypbkJyuSR5YV9+hYEFGlRXM6Pm0mGaH3MTgQU/iqvyxrFJzWid88Tow5DejzJru
	2HS6pZGyG9YUioZ+hejutDvoh1g6ypTzdq4zrFwoH8eL1pHXXSYS9TH+JGOasKSrlE/Af6zz22050
	8gMzv/X5ZjHc0d8w34ihCYV05TdHqaVwCbmTBTeDOUIoiVPGIWulrTvVvKLjj1BHuuEDOzlTZ0hrw
	xul5wjS5QWH2kJ7Y5IUkUhkRaZtY7q+dttNfzPV8CO0aT10PSL8V4dyS6rpzf9f41+eJwO5wPE2U/
	jxA89y9fsOAxuLYWjoyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE8jg-0006UZ-Gs; Tue, 17 Mar 2020 09:42:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE8j1-00062W-Ap
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 09:41:30 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1jE8ix-0004Q5-2M; Tue, 17 Mar 2020 10:41:23 +0100
Received: from mtr by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1jE8iw-00049I-DO; Tue, 17 Mar 2020 10:41:22 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH 0/6] soc: xilinx: vcu: provide interfaces for other drivers
Date: Tue, 17 Mar 2020 10:41:09 +0100
Message-Id: <20200317094115.15896-1-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mtr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_024127_393440_A16966BD 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Dhaval Shah <dshah@xilinx.com>, Rob Herring <robh+dt@kernel.org>,
 Michal Simek <michal.simek@xilinx.com>, kernel@pengutronix.de,
 Michael Tretter <m.tretter@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

The Xilinx VCU is glue for integrating the Allegro DVT codec into the ZynqMP
PL infrastructure. This glue is responsible for generating the clocks for the
actual codec and provides registers for reading the codec configuration. Other
drivers, e.g. the allegro-dvt driver, need to interact or at least read
information from the xlnx_vcu driver.

Therefore, the xlnx_vcu driver should provide its clocks for other drivers and
register the generated clocks in the clock tree. This allows other drivers to
simply get the clock rate via the usual interface.

It is not so simple for the second register bank (called "logicoreip" in the
original binding), because there are various registers for the encoder, the
decoder and common stuff (see PG252, H.264/H.265 Video Codec Unit v1.2, p.
14). Therefore, I decided to extract a separate binding for this register
bank, call it "xlnx,vcu-settings" and use a syscon interface that can be used
by the xlnx_vcu driver and other drivers that need this information.

I'm not too happy with this solution, but I couldn't come up with a better
solution without inventing a new interface, which I really don't want to do
for that use case.

I kept the behavior of the xlnx_vcu driver backwards compatible, to avoid
breaking systems that use device trees with the xlnx,vcu device tree node as
generated by Vivado, but to be able to use the register bank from other
drivers, you must use the new binding.

Michael

Michael Tretter (6):
  soc: xilinx: vcu: drop useless success message
  ARM: dts: define indexes for output clocks
  soc: xilinx: vcu: implement clock provider for output clocks
  dt-bindings: soc: xlnx: extract xlnx,vcu-settings to separate binding
  soc: xilinx: vcu: use vcu-settings syscon registers
  soc: xilinx: vcu: add missing register NUM_CORE

 .../soc/xilinx/xlnx,vcu-settings.yaml         |  45 +++++
 .../bindings/soc/xilinx/xlnx,vcu.txt          |   9 +-
 drivers/soc/xilinx/Kconfig                    |   3 +-
 drivers/soc/xilinx/xlnx_vcu.c                 | 163 ++++++++++++------
 include/dt-bindings/clock/xlnx-vcu.h          |  15 ++
 include/linux/mfd/syscon/xlnx-vcu.h           |  39 +++++
 6 files changed, 216 insertions(+), 58 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/soc/xilinx/xlnx,vcu-settings.yaml
 create mode 100644 include/dt-bindings/clock/xlnx-vcu.h
 create mode 100644 include/linux/mfd/syscon/xlnx-vcu.h

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
