Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FFDB136C77
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 12:56:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=7/NiZcFBoEDSGQ7BMRw6/nam5ohqMsZtVou4ZZEuYLg=; b=ndh
	al1DBscxsYjNAEGlmMz5jVu1mZxNTlVoa8ifw2WhtFfmP/Bk9BxnN7cFzXWgj7+VxdjGsHuN/eCb8
	f9Ow1zB1ShLJ7xw1zHsgOjMxHm4vswkFFmeMeMkwq+Pi+83GqqArw0vlX3S5bnXM8T1l+0KjWF/QR
	yItqLddjP80Vym3EwB7/SPYNhLNBMlFL4y5loChF0YJ3x6qi+wl8Civm3LsE4HhxpbtrMmGwp1q2+
	qFaI6L/U3bhuEPGAIpbrpE6jfrKfbD1OqRkNMQ2Jv2/MQehTNdlemAfe69TutTaNWXgNvvUQTimCW
	zrgoJ1CoE+tLr4FXuQ+U469TwMtoobw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipstR-0000Ez-Er; Fri, 10 Jan 2020 11:55:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipsrz-0006ZF-9z
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 11:54:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6D45A1396;
 Fri, 10 Jan 2020 03:54:23 -0800 (PST)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.44])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5382B3F534;
 Fri, 10 Jan 2020 03:54:22 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: "David S . Miller" <davem@davemloft.net>,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
Subject: [PATCH 00/14] net: axienet: Error handling, SGMII and 64-bit DMA fixes
Date: Fri, 10 Jan 2020 11:54:01 +0000
Message-Id: <20200110115415.75683-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_035427_540971_1AB6BBBC 
X-CRM114-Status: GOOD (  13.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Robert Hancock <hancock@sedsystems.ca>, netdev@vger.kernel.org,
 Michal Simek <michal.simek@xilinx.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

this series updates the Xilinx Axienet driver to work on our board
here. One big issue was broken SGMII support, which patch 7 fixes.
While debugging and understanding the driver, I found several problems
in the error handling and cleanup paths, which patches 2-6 address.
Patch 8 paves the way for newer revisions of the IP, the following patch
adds mii-tool support, just for good measure.

The next four patches add support for 64-bit DMA. This is an integration
option on newer IP revisions (>= v7.1), and expects MSB bits in formerly
reserved registers. Without writing to those MSB registers, the state
machine won't trigger, so it's mandatory to access them, even if they
are zero. Patches 10 and 11 prepare the code by adding accessors, to
wrap this properly and keep it working on older IP revisions.
Patch 12 enables access to the MSB registers, by trying to write a
non-zero value to them and checking if that sticks. Older IP revisions
always read those registers as zero.

Patch 13 then adjusts the DMA mask, if it finds a "xlnx,addrwidth"
property in the DMA DT node. I did not manage to autodetect this actual
implemented DMA width, so we need to rely on a DT property. If this is
missing, it will fall back to the current default of 32 bit.
The final patch updates the DT binding documentation in this respect.

The Xilinx PG138 and PG021 documents (in versions 7.1 in both cases)
were used for this series.

Please have a look and comment!

Cheers,
Andre

Andre Przywara (14):
  net: xilinx: temac: Relax Kconfig dependencies
  net: axienet: Propagate failure of DMA descriptor setup
  net: axienet: Fix DMA descriptor cleanup path
  net: axienet: Improve DMA error handling
  net: axienet: Factor out TX descriptor chain cleanup
  net: axienet: Check for DMA mapping errors
  net: axienet: Fix SGMII support
  net: axienet: Drop MDIO interrupt registers from ethtools dump
  net: axienet: Add mii-tool support
  net: axienet: Wrap DMA pointer writes to prepare for 64 bit
  net: axienet: Upgrade descriptors to hold 64-bit addresses
  net: axienet: Autodetect 64-bit DMA capability
  net: axienet: Allow DMA to beyond 4GB
  net: axienet: Update devicetree binding documentation

 .../bindings/net/xilinx_axienet.txt           |  57 ++-
 drivers/net/ethernet/xilinx/Kconfig           |   1 -
 drivers/net/ethernet/xilinx/xilinx_axienet.h  |  10 +-
 .../net/ethernet/xilinx/xilinx_axienet_main.c | 366 +++++++++++++-----
 4 files changed, 328 insertions(+), 106 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
