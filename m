Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4409177DB1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 18:44:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b5y3gZ6HjOOH4YkeMyl/T3W6gJfrc7wMoqxs6yRvHTo=; b=oaPf0KbEamcR7a
	Bb2zMuarVPM5uRS5K6rf0qxiNsZ5RFlTyK8kt4S2YzxPSV8RifMwfMWLN7Jn/W9bEzDwmpPq5Ul4L
	TXw+Juhg8hE6ZLtuyzRanZyfDlWB4fkwBSb9P2RKLg994ULpM/d/iyigE2so9JYl8YoHvYxh49KWn
	GGrweAMQpC4i/g4IUf+X74H2y1gS93Rs6Le64kuamm+6/FfXLhUIXjaSaev/C1TpxBQDy0Tz5I+Dz
	zIJun901eekm8THdTfs+M7ESwi/UCqK5uYMHTYDSucw0Moo6ZIuqCHXIQYrPa3OCFdAms5k5Fcxo8
	P8fe3xQBHh0f3yz3bbXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Bax-0007iU-Qk; Tue, 03 Mar 2020 17:44:39 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9BZn-0006jB-9s
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 17:43:31 +0000
Received: from apollo.fritz.box (unknown
 [IPv6:2a02:810c:c200:2e91:6257:18ff:fec4:ca34])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 4385E23E3C;
 Tue,  3 Mar 2020 18:43:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1583257401;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=f7edbb9NYjCc5JcnsjhmvglVnqgFDebCZY58E/z3h3A=;
 b=spA1/oYxBwh9PYiH0WFfQjAlrEVieKI+N3GqamtiFsDlbFkZDsKXZqgySmq6V/wm6vVMwR
 agoWnmW2xNj5DQ/pb5x9FewUK5/V0VrlTjqDVuSQbMqzVx7i/QStsz0D5rdrmFOPDAs6OA
 HxCGTFIiuZXuWhaya7kPPUnQgJP6DmI=
From: Michael Walle <michael@walle.cc>
To: linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 3/9] tty: serial: fsl_lpuart: handle EPROBE_DEFER for DMA
Date: Tue,  3 Mar 2020 18:43:00 +0100
Message-Id: <20200303174306.6015-4-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200303174306.6015-1-michael@walle.cc>
References: <20200303174306.6015-1-michael@walle.cc>
MIME-Version: 1.0
X-Spamd-Bar: ++++++
X-Spam-Level: ******
X-Rspamd-Server: web
X-Spam-Status: Yes, score=6.40
X-Spam-Score: 6.40
X-Rspamd-Queue-Id: 4385E23E3C
X-Spamd-Result: default: False [6.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; R_MISSING_CHARSET(2.50)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; BROKEN_CONTENT_TYPE(1.50)[];
 NEURAL_SPAM(0.00)[0.502]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_TWELVE(0.00)[14]; MID_CONTAINS_FROM(1.00)[];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:31334, ipnet:2a02:810c:8000::/33, country:DE];
 SUSPICIOUS_RECIPS(1.50)[]
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_094327_661517_A827F510 
X-CRM114-Status: GOOD (  17.26  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Peng Fan <peng.fan@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Li Yang <leoyang.li@nxp.com>,
 Michael Walle <michael@walle.cc>, Rob Herring <robh+dt@kernel.org>,
 Yuan Yao <yao.yuan@nxp.com>, Vabhav Sharma <vabhav.sharma@nxp.com>,
 Jiri Slaby <jslaby@suse.com>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The DMA channel might not be available at probe time. This is esp. the
case if the DMA controller has an IOMMU mapping.

There is also another caveat. If there is no DMA controller at all,
dma_request_chan() will also return -EPROBE_DEFER. Thus we cannot test
for -EPROBE_DEFER in probe(). Otherwise the lpuart driver will fail to
probe if, for example, the DMA driver is not enabled in the kernel
configuration.

To workaround this, we request the DMA channel in _startup(). Other
serial drivers do it the same way.

Signed-off-by: Michael Walle <michael@walle.cc>
---
 drivers/tty/serial/fsl_lpuart.c | 84 +++++++++++++++++++++------------
 1 file changed, 53 insertions(+), 31 deletions(-)

diff --git a/drivers/tty/serial/fsl_lpuart.c b/drivers/tty/serial/fsl_lpuart.c
index c31b8f3db6bf..0b8c477b32a3 100644
--- a/drivers/tty/serial/fsl_lpuart.c
+++ b/drivers/tty/serial/fsl_lpuart.c
@@ -1493,36 +1493,63 @@ static void rx_dma_timer_init(struct lpuart_port *sport)
 static void lpuart_tx_dma_startup(struct lpuart_port *sport)
 {
 	u32 uartbaud;
+	int ret;
 
-	if (sport->dma_tx_chan && !lpuart_dma_tx_request(&sport->port)) {
-		init_waitqueue_head(&sport->dma_wait);
-		sport->lpuart_dma_tx_use = true;
-		if (lpuart_is_32(sport)) {
-			uartbaud = lpuart32_read(&sport->port, UARTBAUD);
-			lpuart32_write(&sport->port,
-				       uartbaud | UARTBAUD_TDMAE, UARTBAUD);
-		} else {
-			writeb(readb(sport->port.membase + UARTCR5) |
-				UARTCR5_TDMAS, sport->port.membase + UARTCR5);
-		}
+	sport->dma_tx_chan = dma_request_slave_channel(sport->port.dev, "tx");
+	if (!sport->dma_tx_chan) {
+		dev_info_once(sport->port.dev,
+			      "DMA tx channel request failed, operating without tx DMA\n");
+		goto err;
+	}
+
+	ret = lpuart_dma_tx_request(&sport->port);
+	if (!ret)
+		goto err;
+
+	init_waitqueue_head(&sport->dma_wait);
+	sport->lpuart_dma_tx_use = true;
+	if (lpuart_is_32(sport)) {
+		uartbaud = lpuart32_read(&sport->port, UARTBAUD);
+		lpuart32_write(&sport->port,
+			       uartbaud | UARTBAUD_TDMAE, UARTBAUD);
 	} else {
-		sport->lpuart_dma_tx_use = false;
+		writeb(readb(sport->port.membase + UARTCR5) |
+		       UARTCR5_TDMAS, sport->port.membase + UARTCR5);
 	}
+
+	return;
+
+err:
+	sport->lpuart_dma_tx_use = false;
 }
 
 static void lpuart_rx_dma_startup(struct lpuart_port *sport)
 {
-	if (sport->dma_rx_chan && !lpuart_start_rx_dma(sport)) {
-		/* set Rx DMA timeout */
-		sport->dma_rx_timeout = msecs_to_jiffies(DMA_RX_TIMEOUT);
-		if (!sport->dma_rx_timeout)
-			sport->dma_rx_timeout = 1;
+	int ret;
 
-		sport->lpuart_dma_rx_use = true;
-		rx_dma_timer_init(sport);
-	} else {
-		sport->lpuart_dma_rx_use = false;
+	sport->dma_rx_chan = dma_request_slave_channel(sport->port.dev, "rx");
+	if (!sport->dma_rx_chan) {
+		dev_info_once(sport->port.dev,
+			      "DMA rx channel request failed, operating without rx DMA\n");
+		goto err;
 	}
+
+	ret = lpuart_start_rx_dma(sport);
+	if (ret)
+		goto err;
+
+	/* set Rx DMA timeout */
+	sport->dma_rx_timeout = msecs_to_jiffies(DMA_RX_TIMEOUT);
+	if (!sport->dma_rx_timeout)
+		sport->dma_rx_timeout = 1;
+
+	sport->lpuart_dma_rx_use = true;
+	rx_dma_timer_init(sport);
+
+	return;
+
+err:
+	sport->lpuart_dma_rx_use = false;
 }
 
 static int lpuart_startup(struct uart_port *port)
@@ -1615,6 +1642,11 @@ static void lpuart_dma_shutdown(struct lpuart_port *sport)
 			dmaengine_terminate_all(sport->dma_tx_chan);
 		}
 	}
+
+	if (sport->dma_tx_chan)
+		dma_release_channel(sport->dma_tx_chan);
+	if (sport->dma_rx_chan)
+		dma_release_channel(sport->dma_rx_chan);
 }
 
 static void lpuart_shutdown(struct uart_port *port)
@@ -2520,16 +2552,6 @@ static int lpuart_probe(struct platform_device *pdev)
 
 	sport->port.rs485_config(&sport->port, &sport->port.rs485);
 
-	sport->dma_tx_chan = dma_request_slave_channel(sport->port.dev, "tx");
-	if (!sport->dma_tx_chan)
-		dev_info(sport->port.dev, "DMA tx channel request failed, "
-				"operating without tx DMA\n");
-
-	sport->dma_rx_chan = dma_request_slave_channel(sport->port.dev, "rx");
-	if (!sport->dma_rx_chan)
-		dev_info(sport->port.dev, "DMA rx channel request failed, "
-				"operating without rx DMA\n");
-
 	return 0;
 
 failed_attach_port:
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
