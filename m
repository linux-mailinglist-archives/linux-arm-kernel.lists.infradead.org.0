Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 321916D93C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 05:00:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CfIP0mwwwLywov45FTloEg1jNSoo1XO4c8A3gTu0r00=; b=p7tsrLAvYz11im
	IihKdwWw6/0Lg1kSDs/upYqCpHG2k3KEXb+2aMWfyuffZeu9xGblbEJPuJUKADfFyFLranot8GqgX
	1SYJFJ882qf+MJJq9d3wC5pBVgno2fCwjgkyhC8mJDUADlj1gjmL+TL5Kpb3scOy5aPq3Ss4MUNhd
	ufeKzmpXQ7K7veRxkl1QdPw99VdYx1V9PemsRSvdRIwgIw09MRcR6BJ+nlW+q6yk7PzFNFFr9Vsfc
	3+RhGEWZAnVoRmCfVH7QvSx6VDzo+WA9NIDUlqOClxhc0UusqNXqHWLK+2y3eQ/HDJuafUOGB4jdD
	Rmu92seS8CzgrylVFdSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoJ82-000460-LS; Fri, 19 Jul 2019 03:00:14 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoJ7j-0003sJ-RF; Fri, 19 Jul 2019 02:59:57 +0000
X-UUID: 57c38e27bab54d0fa24d57631b56b168-20190718
X-UUID: 57c38e27bab54d0fa24d57631b56b168-20190718
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <changqi.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2056156287; Thu, 18 Jul 2019 18:59:49 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 18 Jul 2019 19:59:47 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 19 Jul 2019 10:59:45 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 19 Jul 2019 10:59:45 +0800
From: Changqi Hu <changqi.hu@mediatek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby
 <jslaby@suse.com>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v3] serial: 8250-mtk: modify mtk uart power and clock
 management
Date: Fri, 19 Jul 2019 10:59:42 +0800
Message-ID: <1563505182-2408-1-git-send-email-changqi.hu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_195955_892437_783DFACE 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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

modify mtk uart runtime interface, add uart clock use count.
merge patch v1 and patch v2 together.

Signed-off-by: Changqi Hu <changqi.hu@mediatek.com>
---
 drivers/tty/serial/8250/8250_mtk.c | 50 ++++++++++++++++++++++++--------------
 1 file changed, 32 insertions(+), 18 deletions(-)

diff --git a/drivers/tty/serial/8250/8250_mtk.c b/drivers/tty/serial/8250/8250_mtk.c
index f470ded..a07c8ae 100644
--- a/drivers/tty/serial/8250/8250_mtk.c
+++ b/drivers/tty/serial/8250/8250_mtk.c
@@ -31,6 +31,7 @@
 #define MTK_UART_RXTRI_AD	0x14	/* RX Trigger address */
 #define MTK_UART_FRACDIV_L	0x15	/* Fractional divider LSB address */
 #define MTK_UART_FRACDIV_M	0x16	/* Fractional divider MSB address */
+#define MTK_UART_DEBUG0	0x18
 #define MTK_UART_IER_XOFFI	0x20	/* Enable XOFF character interrupt */
 #define MTK_UART_IER_RTSI	0x40	/* Enable RTS Modem status interrupt */
 #define MTK_UART_IER_CTSI	0x80	/* Enable CTS Modem status interrupt */
@@ -386,9 +387,18 @@ static void mtk8250_set_flow_ctrl(struct uart_8250_port *up, int mode)
 static int __maybe_unused mtk8250_runtime_suspend(struct device *dev)
 {
 	struct mtk8250_data *data = dev_get_drvdata(dev);
+	struct uart_8250_port *up = serial8250_get_port(data->line);
 
-	clk_disable_unprepare(data->uart_clk);
-	clk_disable_unprepare(data->bus_clk);
+	/* wait until UART in idle status */
+	while
+		(serial_in(up, MTK_UART_DEBUG0));
+
+	if (data->clk_count == 0U) {
+		dev_dbg(dev, "%s clock count is 0\n", __func__);
+	} else {
+		clk_disable_unprepare(data->bus_clk);
+		data->clk_count--;
+	}
 
 	return 0;
 }
@@ -398,16 +408,16 @@ static int __maybe_unused mtk8250_runtime_resume(struct device *dev)
 	struct mtk8250_data *data = dev_get_drvdata(dev);
 	int err;
 
-	err = clk_prepare_enable(data->uart_clk);
-	if (err) {
-		dev_warn(dev, "Can't enable clock\n");
-		return err;
-	}
-
-	err = clk_prepare_enable(data->bus_clk);
-	if (err) {
-		dev_warn(dev, "Can't enable bus clock\n");
-		return err;
+	if (data->clk_count > 0U) {
+		dev_dbg(dev, "%s clock count is %d\n", __func__,
+			data->clk_count);
+	} else {
+		err = clk_prepare_enable(data->bus_clk);
+		if (err) {
+			dev_warn(dev, "Can't enable bus clock\n");
+			return err;
+		}
+		data->clk_count++;
 	}
 
 	return 0;
@@ -417,12 +427,14 @@ static int __maybe_unused mtk8250_runtime_resume(struct device *dev)
 mtk8250_do_pm(struct uart_port *port, unsigned int state, unsigned int old)
 {
 	if (!state)
-		pm_runtime_get_sync(port->dev);
+		if (!mtk8250_runtime_resume(port->dev))
+			pm_runtime_get_sync(port->dev);
 
 	serial8250_do_pm(port, state, old);
 
 	if (state)
-		pm_runtime_put_sync_suspend(port->dev);
+		if (!pm_runtime_put_sync_suspend(port->dev))
+			mtk8250_runtime_suspend(port->dev);
 }
 
 #ifdef CONFIG_SERIAL_8250_DMA
@@ -499,6 +511,8 @@ static int mtk8250_probe(struct platform_device *pdev)
 	if (!data)
 		return -ENOMEM;
 
+	data->clk_count = 0;
+
 	if (pdev->dev.of_node) {
 		err = mtk8250_probe_of(pdev, &uart.port, data);
 		if (err)
@@ -531,6 +545,7 @@ static int mtk8250_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, data);
 
+	pm_runtime_enable(&pdev->dev);
 	err = mtk8250_runtime_resume(&pdev->dev);
 	if (err)
 		return err;
@@ -539,9 +554,6 @@ static int mtk8250_probe(struct platform_device *pdev)
 	if (data->line < 0)
 		return data->line;
 
-	pm_runtime_set_active(&pdev->dev);
-	pm_runtime_enable(&pdev->dev);
-
 	return 0;
 }
 
@@ -552,11 +564,13 @@ static int mtk8250_remove(struct platform_device *pdev)
 	pm_runtime_get_sync(&pdev->dev);
 
 	serial8250_unregister_port(data->line);
-	mtk8250_runtime_suspend(&pdev->dev);
 
 	pm_runtime_disable(&pdev->dev);
 	pm_runtime_put_noidle(&pdev->dev);
 
+	if (!pm_runtime_status_suspended(&pdev->dev))
+		mtk8250_runtime_suspend(&pdev->dev);
+
 	return 0;
 }
 
-- 
1.8.1.1.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
