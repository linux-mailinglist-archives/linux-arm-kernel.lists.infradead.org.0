Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 343B627723
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 09:36:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4KVVTkfWaPITyaLfWLHMV8D3xQmRHk8mCxzCZGqaLTM=; b=MOdlwGdV/WiIxW
	Of1BpPipA29olk/r1DFLvIKyCszTJu/zYU+dm8euJbbtfv6cWRI1B1orkZzTzqWZPNkNVi3G2A0kt
	2kf5hngFhQr+qZpt8a7T94hRs5oNU5mN9QXZq5Y4BQ29gxmsdroVUT8p62AKpdDsCKyxpW2teTiKA
	05EXZcEIVLsTRnE+nV7yzCutDQizAZYsr5s+bTZKmkuuO2dXNpmQnMfh/WxrnZt7O2FHZreZZuOQS
	IjL66fYZHI75avuiAZjBhyYIgCPCgpSTbcJRDugOsEybI5wrMh0uJq2uVHsC+4VSVVF0v6tZY4iPV
	AMIeaYRZsSEt0etxi9TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTiH1-0006vs-S6; Thu, 23 May 2019 07:36:23 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTiGB-00067J-MO; Thu, 23 May 2019 07:35:33 +0000
X-UUID: 1e948090896c4a55926c3c6426ed2881-20190522
X-UUID: 1e948090896c4a55926c3c6426ed2881-20190522
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <long.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1920402819; Wed, 22 May 2019 23:35:24 -0800
Received: from mtkmbs03n2.mediatek.inc (172.21.101.182) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 23 May 2019 00:35:23 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs03n2.mediatek.inc (172.21.101.182) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 23 May 2019 15:35:15 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 23 May 2019 15:35:14 +0800
From: Long Cheng <long.cheng@mediatek.com>
To: Vinod Koul <vkoul@kernel.org>, Randy Dunlap <rdunlap@infradead.org>, "Rob
 Herring" <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Ryder Lee
 <ryder.lee@mediatek.com>, Sean Wang <sean.wang@kernel.org>, Nicolas Boichat
 <drinkcat@chromium.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH 2/2] serial: 8250-mtk: modify uart DMA rx
Date: Thu, 23 May 2019 15:35:09 +0800
Message-ID: <1558596909-14084-3-git-send-email-long.cheng@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1558596909-14084-1-git-send-email-long.cheng@mediatek.com>
References: <1558596909-14084-1-git-send-email-long.cheng@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 2482CA85B661DC8764D4515A4275E8B6BC1A308EAB7BD6FB1D1E48C73F6E41C32000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_003531_976797_74A1B41D 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Zhenbao Liu <zhenbao.liu@mediatek.com>, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sean Wang <sean.wang@mediatek.com>, linux-kernel@vger.kernel.org,
 YT Shen <yt.shen@mediatek.com>, Long Cheng <long.cheng@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>, dmaengine@vger.kernel.org,
 Yingjoe Chen <yingjoe.chen@mediatek.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Modify uart rx and complete for DMA

Signed-off-by: Long Cheng <long.cheng@mediatek.com>
---
 drivers/tty/serial/8250/8250_mtk.c |   49 +++++++++++++++---------------------
 1 file changed, 20 insertions(+), 29 deletions(-)

diff --git a/drivers/tty/serial/8250/8250_mtk.c b/drivers/tty/serial/8250/8250_mtk.c
index 417c7c8..f470ded 100644
--- a/drivers/tty/serial/8250/8250_mtk.c
+++ b/drivers/tty/serial/8250/8250_mtk.c
@@ -47,7 +47,6 @@
 #define MTK_UART_DMA_EN_RX	0x5
 
 #define MTK_UART_ESCAPE_CHAR	0x77	/* Escape char added under sw fc */
-#define MTK_UART_TX_SIZE	UART_XMIT_SIZE
 #define MTK_UART_RX_SIZE	0x8000
 #define MTK_UART_TX_TRIGGER	1
 #define MTK_UART_RX_TRIGGER	MTK_UART_RX_SIZE
@@ -89,28 +88,30 @@ static void mtk8250_dma_rx_complete(void *param)
 	struct mtk8250_data *data = up->port.private_data;
 	struct tty_port *tty_port = &up->port.state->port;
 	struct dma_tx_state state;
+	int copied, total, cnt;
 	unsigned char *ptr;
-	int copied;
 
-	dma_sync_single_for_cpu(dma->rxchan->device->dev, dma->rx_addr,
-				dma->rx_size, DMA_FROM_DEVICE);
+	if (data->rx_status == DMA_RX_SHUTDOWN)
+		return;
 
 	dmaengine_tx_status(dma->rxchan, dma->rx_cookie, &state);
+	total = dma->rx_size - state.residue;
+	cnt = total;
 
-	if (data->rx_status == DMA_RX_SHUTDOWN)
-		return;
+	if ((data->rx_pos + cnt) > dma->rx_size)
+		cnt = dma->rx_size - data->rx_pos;
 
-	if ((data->rx_pos + state.residue) <= dma->rx_size) {
-		ptr = (unsigned char *)(data->rx_pos + dma->rx_buf);
-		copied = tty_insert_flip_string(tty_port, ptr, state.residue);
-	} else {
-		ptr = (unsigned char *)(data->rx_pos + dma->rx_buf);
-		copied = tty_insert_flip_string(tty_port, ptr,
-						dma->rx_size - data->rx_pos);
+	ptr = (unsigned char *)(data->rx_pos + dma->rx_buf);
+	copied = tty_insert_flip_string(tty_port, ptr, cnt);
+	data->rx_pos += cnt;
+
+	if (total > cnt) {
 		ptr = (unsigned char *)(dma->rx_buf);
-		copied += tty_insert_flip_string(tty_port, ptr,
-				data->rx_pos + state.residue - dma->rx_size);
+		cnt = total - cnt;
+		copied += tty_insert_flip_string(tty_port, ptr, cnt);
+		data->rx_pos = cnt;
 	}
+
 	up->port.icount.rx += copied;
 
 	tty_flip_buffer_push(tty_port);
@@ -121,9 +122,7 @@ static void mtk8250_dma_rx_complete(void *param)
 static void mtk8250_rx_dma(struct uart_8250_port *up)
 {
 	struct uart_8250_dma *dma = up->dma;
-	struct mtk8250_data *data = up->port.private_data;
 	struct dma_async_tx_descriptor	*desc;
-	struct dma_tx_state	 state;
 
 	desc = dmaengine_prep_slave_single(dma->rxchan, dma->rx_addr,
 					   dma->rx_size, DMA_DEV_TO_MEM,
@@ -138,12 +137,6 @@ static void mtk8250_rx_dma(struct uart_8250_port *up)
 
 	dma->rx_cookie = dmaengine_submit(desc);
 
-	dmaengine_tx_status(dma->rxchan, dma->rx_cookie, &state);
-	data->rx_pos = state.residue;
-
-	dma_sync_single_for_device(dma->rxchan->device->dev, dma->rx_addr,
-				   dma->rx_size, DMA_FROM_DEVICE);
-
 	dma_async_issue_pending(dma->rxchan);
 }
 
@@ -156,13 +149,11 @@ static void mtk8250_dma_enable(struct uart_8250_port *up)
 	if (data->rx_status != DMA_RX_START)
 		return;
 
-	dma->rxconf.direction		= DMA_DEV_TO_MEM;
-	dma->rxconf.src_addr_width	= dma->rx_size / 1024;
-	dma->rxconf.src_addr		= dma->rx_addr;
+	dma->rxconf.src_port_window_size	= dma->rx_size;
+	dma->rxconf.src_addr				= dma->rx_addr;
 
-	dma->txconf.direction		= DMA_MEM_TO_DEV;
-	dma->txconf.dst_addr_width	= MTK_UART_TX_SIZE / 1024;
-	dma->txconf.dst_addr		= dma->tx_addr;
+	dma->txconf.dst_port_window_size	= UART_XMIT_SIZE;
+	dma->txconf.dst_addr				= dma->tx_addr;
 
 	serial_out(up, UART_FCR, UART_FCR_ENABLE_FIFO | UART_FCR_CLEAR_RCVR |
 		UART_FCR_CLEAR_XMIT);
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
