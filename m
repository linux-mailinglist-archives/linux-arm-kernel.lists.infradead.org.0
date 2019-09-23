Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F30B8BB615
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 16:01:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ku9zQbqznHW0OjI6jw/rP129OD1Eg6IYyCtoDJWDHqg=; b=bIkwuOtDIqu7Wl
	LrHxKpAmG8JxacqfnIr/cUk7cSL2XOU1M6bFS/T6Qqwa0suC3FwaSsPSRTk0mFXrBVdwxM3uoO7c3
	y1guvOXY7Kk54WXRADCKVKaBmBq6DjB9y/ZV6JpezhXQU7FOJBz1N/GoI2QMaQgnS+iO8d/dRLguc
	/m418LQ5BcfSQj3LzZifKfW3G0xxQa/ol5GjqrW2MldFI2fshbwarxKvp7SVvUkSK4GTOZ8hgu/mJ
	Er0DcyhP2qTVo01rU495jJxoriRTZOp6Wb0Js/y1GqyCTpdZdNohbFrMrehA3IJOJaxjJWynzZA7n
	vClJ8DsnTdXoQRQVeEJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCOtt-0000r8-Fo; Mon, 23 Sep 2019 14:01:13 +0000
Received: from mx1.emlix.com ([188.40.240.192])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCOs4-0006Y0-Sv
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 13:59:22 +0000
Received: from mailer.emlix.com (unknown [81.20.119.6])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1.emlix.com (Postfix) with ESMTPS id 081BB5FBA6;
 Mon, 23 Sep 2019 15:59:19 +0200 (CEST)
From: Philipp Puschmann <philipp.puschmann@emlix.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v4] serial: imx: adapt rx buffer and dma periods
Date: Mon, 23 Sep 2019 15:59:16 +0200
Message-Id: <20190923135916.1212-1-philipp.puschmann@emlix.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_065921_172098_0453F8F0 
X-CRM114-Status: GOOD (  12.16  )
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
Cc: festevam@gmail.com, fugang.duan@nxp.com, linux-serial@vger.kernel.org,
 gregkh@linuxfoundation.org, s.hauer@pengutronix.de,
 u.kleine-koenig@pengutronix.de, linux-imx@nxp.com, kernel@pengutronix.de,
 jslaby@suse.com, Philipp Puschmann <philipp.puschmann@emlix.com>,
 yibin.gong@nxp.com, shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org,
 l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Using only 4 DMA periods for UART RX is very few if we have a high
frequency of small transfers - like in our case using Bluetooth with
many small packets via UART - causing many dma transfers but in each
only filling a fraction of a single buffer. Such a case may lead to
the situation that DMA RX transfer is triggered but no free buffer is
available. When this happens dma channel ist stopped - with the patch
"dmaengine: imx-sdma: fix dma freezes" temporarily only - with the
possible consequences that:
with disabled hw flow control:
  If enough data is incoming on UART port the RX FIFO runs over and
  characters will be lost. What then happens depends on upper layer.

with enabled hw flow control:
  If enough data is incoming on UART port the RX FIFO reaches a level
  where CTS is deasserted and remote device sending the data stops.
  If it fails to stop timely the i.MX' RX FIFO may run over and data
  get lost. Otherwise it's internal TX buffer may getting filled to
  a point where it runs over and data is again lost. It depends on
  the remote device how this case is handled and if it is recoverable.

Obviously we want to avoid having no free buffers available. So we
decrease the size of the buffers and increase their number and the
total buffer size.

Signed-off-by: Philipp Puschmann <philipp.puschmann@emlix.com>
Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
---

Changelog v4:
 - fix total buffer size

Changelog v3:
 - enhance description

Changelog v2:
 - split this patch from series "Fix UART DMA freezes for iMX6"
 - add Reviewed-by tag

 drivers/tty/serial/imx.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
index 87c58f9f6390..51dc19833eab 100644
--- a/drivers/tty/serial/imx.c
+++ b/drivers/tty/serial/imx.c
@@ -1034,8 +1034,6 @@ static void imx_uart_timeout(struct timer_list *t)
 	}
 }
 
-#define RX_BUF_SIZE	(PAGE_SIZE)
-
 /*
  * There are two kinds of RX DMA interrupts(such as in the MX6Q):
  *   [1] the RX DMA buffer is full.
@@ -1118,7 +1116,8 @@ static void imx_uart_dma_rx_callback(void *data)
 }
 
 /* RX DMA buffer periods */
-#define RX_DMA_PERIODS 4
+#define RX_DMA_PERIODS	16
+#define RX_BUF_SIZE	(RX_DMA_PERIODS * PAGE_SIZE / 4)
 
 static int imx_uart_start_rx_dma(struct imx_port *sport)
 {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
