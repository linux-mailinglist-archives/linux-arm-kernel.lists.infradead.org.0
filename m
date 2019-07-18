Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 895B86CE62
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 14:59:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4TaPSEIlPKx8+LOiJPAvIjsEJSjxZaTA96H06M2wQg0=; b=Sgo9civL3jXf6q
	3I4/bfX8F+54gBERljxzkTzZwrMiM18bZETmHCYjnc4KVHST3MC5vQfLogsEG/18gko2kbVcwbPtU
	XG03v9FboVmuYSSA8X7eF63LCvn2GZ60WHb7R2zip95ebNL1T1h/hKGFTNcun0HTxbxHCDCm9Qdxs
	HhTFAp6TXYGFAHLVo0sggIds3HlTKabtXB4EB0TA+9Ak6nXkP85FBuxfg1NcxCk4D97Ozb0ONqBq9
	q87UYmRB9w3YG3E9lL9SjivkaKXb02HXRLEoGDYKX75Xy9/P8Jcb4ISjARlZNe6u0bEg5nzeYNQ87
	l9WGcKX+vfUL6RRrK2Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho5zz-0000H5-Dw; Thu, 18 Jul 2019 12:59:03 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho5zn-0000GR-Qi; Thu, 18 Jul 2019 12:58:53 +0000
X-UUID: 11c9493b52d044008bd886a5d5d59b83-20190718
X-UUID: 11c9493b52d044008bd886a5d5d59b83-20190718
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <changqi.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 480359904; Thu, 18 Jul 2019 04:58:44 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 18 Jul 2019 05:58:43 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 18 Jul 2019 20:58:41 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 18 Jul 2019 20:58:41 +0800
From: Changqi Hu <changqi.hu@mediatek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby
 <jslaby@suse.com>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v2] serial: 8250-mtk: modify mtk uart power and clock
 management
Date: Thu, 18 Jul 2019 20:58:36 +0800
Message-ID: <1563454716-8355-1-git-send-email-changqi.hu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_055851_881677_E4D2B609 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Peter Shih <pihsun@chromium.org>, Changqi Hu <changqi.hu@mediatek.com>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>, linux-kernel@vger.kernel.org,
 srv_heupstream@mediatek.com, linux-mediatek@lists.infradead.org,
 linux-serial@vger.kernel.org, Yingjoe Chen <yingjoe.chen@mediatek.com>,
 Eddie Huang <eddie.huang@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

modify mtk uart runtime interface, enable uart clock before register.

Signed-off-by: Changqi Hu <changqi.hu@mediatek.com>
---
 drivers/tty/serial/8250/8250_mtk.c | 21 ++++++++-------------
 1 file changed, 8 insertions(+), 13 deletions(-)

diff --git a/drivers/tty/serial/8250/8250_mtk.c b/drivers/tty/serial/8250/8250_mtk.c
index b0113d1..a07c8ae 100644
--- a/drivers/tty/serial/8250/8250_mtk.c
+++ b/drivers/tty/serial/8250/8250_mtk.c
@@ -389,7 +389,7 @@ static int __maybe_unused mtk8250_runtime_suspend(struct device *dev)
 	struct mtk8250_data *data = dev_get_drvdata(dev);
 	struct uart_8250_port *up = serial8250_get_port(data->line);
 
-	/*wait until UART in idle status*/
+	/* wait until UART in idle status */
 	while
 		(serial_in(up, MTK_UART_DEBUG0));
 
@@ -426,23 +426,15 @@ static int __maybe_unused mtk8250_runtime_resume(struct device *dev)
 static void
 mtk8250_do_pm(struct uart_port *port, unsigned int state, unsigned int old)
 {
-	struct uart_8250_port *up = up_to_u8250p(port);
-
-	if (!state) {
-		if (!(up->capabilities & UART_CAP_RPM))
-			mtk8250_runtime_resume(port->dev);
-		else
+	if (!state)
+		if (!mtk8250_runtime_resume(port->dev))
 			pm_runtime_get_sync(port->dev);
-	}
 
 	serial8250_do_pm(port, state, old);
 
-	if (state) {
-		if (!(up->capabilities & UART_CAP_RPM))
+	if (state)
+		if (!pm_runtime_put_sync_suspend(port->dev))
 			mtk8250_runtime_suspend(port->dev);
-		else
-			pm_runtime_put_sync_suspend(port->dev);
-	}
 }
 
 #ifdef CONFIG_SERIAL_8250_DMA
@@ -554,6 +546,9 @@ static int mtk8250_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, data);
 
 	pm_runtime_enable(&pdev->dev);
+	err = mtk8250_runtime_resume(&pdev->dev);
+	if (err)
+		return err;
 
 	data->line = serial8250_register_8250_port(&uart);
 	if (data->line < 0)
-- 
1.8.1.1.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
