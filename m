Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C484B774A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 12:23:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZhpVHzPpwV8NxdTnnrCbPoVu1WuaYpsjZ5xD/cHswmY=; b=mU5FDZ7lI5zHq2
	jPp1bCrYBkIIA8XLlgFtK7od/xuRSZyTZxTIzMaCP4g6wahV1eH3GvQgWhQVahIzFP03ly4Xn0DQK
	JBmCK8R7U6JOkz5KoB3/Fg2y7PPq7jsrSLfRmarfoHJ4mZi9yiGYC/g4mYs8zGpPuVp+lA0HivP6U
	0lYBvtV4VACWaLYBDUquxjnGqjmnJ3aXOpxTXkdXAlyx0kcBd/IW0LOsFTGDFMk4WA+somPngrjfx
	b+2lcARnLLgRhnwBEk7OSOBcWr0dtkgW7zC8mRiAL+CRKJcjtQeDIXjK5YNMZUvs5XSrRZdru8lu9
	DobZheCCsgs23GaPb8kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAtbJ-0000eI-C3; Thu, 19 Sep 2019 10:23:49 +0000
Received: from mx1.emlix.com ([188.40.240.192])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAtb0-0000do-JC
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 10:23:32 +0000
Received: from mailer.emlix.com (unknown [81.20.119.6])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1.emlix.com (Postfix) with ESMTPS id 3D78B6038C;
 Thu, 19 Sep 2019 12:23:27 +0200 (CEST)
From: Philipp Puschmann <philipp.puschmann@emlix.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/3] Fix UART DMA freezes for i.MX SOCs
Date: Thu, 19 Sep 2019 12:23:16 +0200
Message-Id: <20190919102319.23368-1-philipp.puschmann@emlix.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190911144943.21554-1-philipp.puschmann@emlix.com>
References: <20190911144943.21554-1-philipp.puschmann@emlix.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_032330_783260_62F3E91A 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: fugang.duan@nxp.com, Philipp Puschmann <philipp.puschmann@emlix.com>,
 festevam@gmail.com, s.hauer@pengutronix.de, vkoul@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, dan.j.williams@intel.com,
 yibin.gong@nxp.com, shawnguo@kernel.org, dmaengine@vger.kernel.or,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For some years and since many kernel versions there are reports that
RX UART DMA channel stops working at one point. So far the usual
workaround was to disable RX DMA. This patches fix the underlying
problem.

When a running sdma script does not find any usable destination buffer
to put its data into it just leads to stopping the channel being
scheduled again. As solution we manually retrigger the sdma script for
this channel and by this dissolve the freeze.

While this seems to work fine so far, it may come to buffer overruns
when the channel - even temporary - is stopped. This case has to be
addressed by device drivers by increasing the number of DMA periods.

This patch series was tested with the current kernel and backported to
kernel 4.15 with a special use case using a WL1837MOD via UART and
provoking the hanging of UART RX DMA within seconds after starting a
test application. It resulted in well known
  "Bluetooth: hci0: command 0x0408 tx timeout"
errors and complete stop of UART data reception. Our Bluetooth traffic
consists of many independent small packets, mostly only a few bytes,
causing high usage of periods.

Changelog v2:
 - adapt title (this patches are not only for i.MX6)
 - improve some comments and patch descriptions
 - add a dma_wb() around BD_DONE flag
 - add Reviewed-by tags
 - split off  "serial: imx: adapt rx buffer and dma periods"

Philipp Puschmann (3):
  dmaengine: imx-sdma: fix buffer ownership
  dmaengine: imx-sdma: fix dma freezes
  dmaengine: imx-sdma: drop redundant variable

 drivers/dma/imx-sdma.c | 32 ++++++++++++++++++++++----------
 1 file changed, 22 insertions(+), 10 deletions(-)

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
