Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F071FA4E7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 02:10:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fa/DNyGXjIq5YRHno+MU6V0EV1/bB0vXqkuG1LWewQE=; b=tHV0CEE5Y7HK1M
	jj6Lu9sHdUtpFJOvvor1cLmLZ+7tZgLj7EasvGyilWwViKq3oekUx01hU1uJwOhTOBPTnR5YU9Emx
	zjhAL2iU+uxcSvYtkAYRZbuegzDBlsLwqkd4ddrg383Xsc2DPPYUxA9L/7VcS6Ssm5tDWpwWW4k5Z
	ehfIyPzdvd17MpQQWKQ9nbDlD1eRv/oRh98qDcT8CGR9Cu+0aTWQkqDGYA0XXw9GE+uSz43mKGaDK
	MvGOT2osUj5vLvVomOqk2+RCFBUM8rKT4Jog5vnLtQJDGFoiVUpoeHqD5GY8/329W1HwcSSxuBd57
	lpnrYSsZbLOqGTDwxY3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkzAl-0000J5-Tw; Tue, 16 Jun 2020 00:09:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkzAZ-0000H3-KL; Tue, 16 Jun 2020 00:09:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7F40C1FB;
 Mon, 15 Jun 2020 17:09:38 -0700 (PDT)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com
 [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E768E3F73C;
 Mon, 15 Jun 2020 17:09:36 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: broonie@kernel.org, nsaenzjulienne@suse.de, f.fainelli@gmail.com,
 rjui@broadcom.com, sbranden@broadcom.com
Subject: [PATCH 0/3] spi: bcm2835: Interrupt-handling optimisations
Date: Tue, 16 Jun 2020 01:09:26 +0100
Message-Id: <cover.1592261248.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.23.0.dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_170939_716024_EF2E6675 
X-CRM114-Status: GOOD (  12.26  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org, lukas@wunner.de,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 kernel@martin.sperl.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

Although Florian was concerned about a trivial inline check to deal with
shared IRQs adding overhead, the reality is that it would be so small as
to not be worth even thinking about unless the driver was already tuned
to squeeze out every last cycle. And a brief look over the code shows
that that clearly isn't the case.

This is an example of some of the easy low-hanging fruit that jumps out
just from code inspection. Based on disassembly and ARM1176 cycle
timings, patch #2 should save the equivalent of 2-3 shared interrupt
checks off the critical path in all cases, and patch #3 possibly up to
about 100x more. I don't have any means to test these patches, let alone
measure performance, so they're only backed by the principle that less
code - and in particular fewer memory accesses - is almost always
better.

There is almost certainly a *lot* more to be had from careful use of
relaxed I/O accessors, not doing a read-modify-write of CS at every
reset, tweaking the loops further to avoid unnecessary writebacks to
variables, and so on. However since I'm not invested in this personally
I'm not going to pursue it any further; I'm throwing these patches out
as more of a demonstration to back up my original drive-by review
comments, so if anyone want to pick them up and run with them then
please do so.

Robin.


Robin Murphy (3):
  spi: bcm3835: Tidy up bcm2835_spi_reset_hw()
  spi: bcm2835: Micro-optimise IRQ handler
  spi: bcm2835: Micro-optimise FIFO loops

 drivers/spi/spi-bcm2835.c | 45 +++++++++++++++++++--------------------
 1 file changed, 22 insertions(+), 23 deletions(-)

-- 
2.23.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
