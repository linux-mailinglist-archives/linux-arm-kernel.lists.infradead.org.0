Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A10F417E6AA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 19:20:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5/CkENkAyPx2Msl4W2AK3x+N0fkkEauZJ6AsCt0WSn4=; b=Ts5
	RhuKvg/BQcIEhj6T1O27KwwyrDF3R4p92mc1fzP6xbswGjJPfKO4+hsHh+PmwiMwwoQXGF9uk8xC5
	qXeVa5EY50twwC4xF48Ne0qs8NzQTa2OOJAqpI05nkD7AZp11tWUb+0uZAMsZsDjNPYrUB1mAfidW
	ksYJM7k9l1I+8oWXWfynmGJ1FmJkSH6Ntb4e2V3QXu8wonv2AgtBJyn8uHpXo4Xy8ZqJV3zl2sad+
	wt7ONa9xpdi9mT+b2ZcdyTCjXUy7M56kujxXZZJ9h5fK4qDtshThOT0UtMAWTBicgZzgEJRxggZen
	1M/XRBNX+d8BWie61yRgZurw46vZZug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBN0O-0002Ly-7O; Mon, 09 Mar 2020 18:19:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBMzb-0001m4-A0
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 18:19:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F32031FB;
 Mon,  9 Mar 2020 11:19:02 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A35A23F67D;
 Mon,  9 Mar 2020 11:19:01 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: "David S . Miller" <davem@davemloft.net>,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
Subject: [PATCH v2 00/14] net: axienet: Update error handling and add 64-bit
 DMA support
Date: Mon,  9 Mar 2020 18:18:37 +0000
Message-Id: <20200309181851.190164-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_111907_475394_1E50B4F9 
X-CRM114-Status: GOOD (  14.94  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Andrew Lunn <andrew@lunn.ch>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Michal Simek <michal.simek@xilinx.com>,
 Robert Hancock <hancock@sedsystems.ca>, rmk+kernel@arm.linux.org.uk,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

this is an update to the axienet improvement/64-bit support series.
Compared to v1 I fixed the issues mentioned in the reviews, removed
the hackish and wrong SGMII fix (there is now a much better solution
by Russell), and reworked the 64-bit DMA detection. We get away without
a DT property now: the MSB registers are autodetected, and the full
64 bit DMA mask is used when they are available.
Also I fixed two additional existing bugs/issues in the driver.

This series is based on net-next as of today (e2f5cb7280f8), which
includes Russell's fixes [1].

A git branch is available at:
http://www.linux-arm.org/git?p=linux-ap.git;a=shortlog;h=refs/heads/axienet/v2
git://linux-arm.org/linux-ap.git branch axienet/v2

Thanks,
Andre

[1] https://lore.kernel.org/netdev/E1j6trA-0003GY-N1@rmk-PC.armlinux.org.uk/

Changelog v1 .. v2:
- Add Reviewed-by: tags from Radhey
- Extend kerndoc documentation
- Convert DMA error handler tasklet to work queue
- log DMA mapping errors
- mark DMA mapping error checks as unlikely (in "hot" paths)
- return NETDEV_TX_OK on TX DMA mapping error (increasing TX drop counter)
- Request eth IRQ as an optional IRQ
- Remove no longer needed MDIO IRQ register names
- Drop DT propery check for address width, assume full 64 bit

===============
This series updates the Xilinx Axienet driver to work on our board
here. One big issue was broken SGMII support, which Russell fixed already
(in net-next).
While debugging and understanding the driver, I found several problems
in the error handling and cleanup paths, which patches 2-7 address.
Patch 8 removes a annoying error message, patch 9 paves the way for newer
revisions of the IP. The next patch adds mii-tool support, just for good
measure.

The next four patches add support for 64-bit DMA. This is an integration
option on newer IP revisions (>= v7.1), and expects MSB bits in formerly
reserved registers. Without writing to those MSB registers, the state
machine won't trigger, so it's mandatory to access them, even if they
are zero. Patches 11 and 12 prepare the code by adding accessors, to
wrap this properly and keep it working on older IP revisions.
Patch 13 enables access to the MSB registers, by trying to write a
non-zero value to them and checking if that sticks. Older IP revisions
always read those registers as zero.
Patch 14 then adjusts the DMA mask, based on the autodetected MSB
feature. It uses the full 64 bits in this case, the rest of the system
(actual physical addresses in use) should provide a natural limit if the
chip has connected fewer address lines. If not, the parent DT node can
use a dma-range property.

The Xilinx PG138 and PG021 documents (in versions 7.1 in both cases)
were used for this series.

Andre Przywara (14):
  net: xilinx: temac: Relax Kconfig dependencies
  net: axienet: Convert DMA error handler to a work queue
  net: axienet: Propagate failure of DMA descriptor setup
  net: axienet: Fix DMA descriptor cleanup path
  net: axienet: Improve DMA error handling
  net: axienet: Factor out TX descriptor chain cleanup
  net: axienet: Check for DMA mapping errors
  net: axienet: Mark eth_irq as optional
  net: axienet: Drop MDIO interrupt registers from ethtools dump
  net: axienet: Add mii-tool support
  net: axienet: Wrap DMA pointer writes to prepare for 64 bit
  net: axienet: Upgrade descriptors to hold 64-bit addresses
  net: axienet: Autodetect 64-bit DMA capability
  net: axienet: Allow DMA to beyond 4GB

 drivers/net/ethernet/xilinx/Kconfig           |   1 -
 drivers/net/ethernet/xilinx/xilinx_axienet.h  |  19 +-
 .../net/ethernet/xilinx/xilinx_axienet_main.c | 378 +++++++++++++-----
 3 files changed, 284 insertions(+), 114 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
