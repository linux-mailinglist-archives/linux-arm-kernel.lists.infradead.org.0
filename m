Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9367AFF27
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 16:50:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nnrp7WHtTiS+pY0jBoryLnWBzMubmNntu6aBXUZy6hk=; b=urAdRpHc07rkuh
	mAPsrQywaovp1LGQ6/TKuseMzBSBVgYN6LNFeq7JKKBnyFUQJp6Csjl8tDtU3Ng6NjmWMZvVVS7b4
	R9+mU8q+9TuA9Zns7SEh+L8f+EWlvttqkrHi9G2il2yYlp8Zl4XsKAGY0hHkz2d27vCmlAztSktJY
	AVMdlJ++vyeeEy4Fpxl7b/M+QVPZ9KjRy453Y+PdZOmtLkDCtOeyPb+yhn+jfDjHaVmqes5p1FGV9
	9EUGnC3LIqJrwwV2g97AjPAE9INVzRXu7cOzgePEzHGZedcly1WBWIGbP1jenL5sdnaUhqslOEEjr
	SJYqJwkpBc7Q8HeYDXAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i83xL-00071j-UA; Wed, 11 Sep 2019 14:50:51 +0000
Received: from mx1.emlix.com ([188.40.240.192])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i83wa-0005QR-QZ
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 14:50:07 +0000
Received: from mailer.emlix.com (unknown [81.20.119.6])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1.emlix.com (Postfix) with ESMTPS id CB1555FCF6;
 Wed, 11 Sep 2019 16:50:00 +0200 (CEST)
From: Philipp Puschmann <philipp.puschmann@emlix.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 3/4] serial: imx: adapt rx buffer and dma periods
Date: Wed, 11 Sep 2019 16:49:42 +0200
Message-Id: <20190911144943.21554-4-philipp.puschmann@emlix.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190911144943.21554-1-philipp.puschmann@emlix.com>
References: <20190911144943.21554-1-philipp.puschmann@emlix.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_075005_022018_F8352E63 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-serial@vger.kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 jslaby@suse.com, vkoul@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 gregkh@linuxfoundation.org, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, festevam@gmail.com,
 Philipp Puschmann <philipp.puschmann@emlix.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Using only 4 DMA periods for UART RX is very few if we have a high
frequency of small transfers - like in our case using Bluetooth with many
small packets via UART - causing many dma transfers but in each only
filling a fraction of a single buffer. Such a case may lead to the
situation that DMA RX transfer is triggered but no buffer is available.
While we have addressed the dma handling already we still want to avoid
UART RX FIFO overrun. So we decrease the size of the buffers and increase
their number and the total buffer size.

Signed-off-by: Philipp Puschmann <philipp.puschmann@emlix.com>
---
 drivers/tty/serial/imx.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
index 57d6e6ba556e..cdc51569237c 100644
--- a/drivers/tty/serial/imx.c
+++ b/drivers/tty/serial/imx.c
@@ -1028,8 +1028,6 @@ static void imx_uart_timeout(struct timer_list *t)
 	}
 }
 
-#define RX_BUF_SIZE	(PAGE_SIZE)
-
 /*
  * There are two kinds of RX DMA interrupts(such as in the MX6Q):
  *   [1] the RX DMA buffer is full.
@@ -1112,7 +1110,8 @@ static void imx_uart_dma_rx_callback(void *data)
 }
 
 /* RX DMA buffer periods */
-#define RX_DMA_PERIODS 4
+#define RX_DMA_PERIODS	16
+#define RX_BUF_SIZE	(PAGE_SIZE / 4)
 
 static int imx_uart_start_rx_dma(struct imx_port *sport)
 {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
