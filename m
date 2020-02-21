Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 557E8168585
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 18:49:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q5KNjIyuUpF0U0tk81UAn7Z2gmO3QTQUC8jLqnm90Fw=; b=PF5s7vrKcUnFBy
	Ase6swdUhzKnTVNI1MFdq2WzQIw8s2cp87TFLz3T3is3mmtdUFLR+bRpua8oSOxOFmNh2haipkCby
	loHdDo+InE4RinDdBn726a5d0d7jTwiCMD9XBiPDbaefCYAiFAXS8xfMS6HmmeK49WqRT0+nkgFK4
	n6m50+OjjtVeNCnDUUC1A0vwSi9RIPmWy86rN5GRAybhButMisZ8he4DdLEdJR21dvNvMG8hpI5H+
	64wbYqN8R5Q5+IimpV1yy5fhMtsZHtnk5y6WkwJ0QaXS/XLOL86+w0B28Wnfdp+zBz52S522szGMo
	0/hgi8WZByVmvIEdoLyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5CQZ-0000WG-Iw; Fri, 21 Feb 2020 17:49:27 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5CPW-00086r-WA
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 17:48:25 +0000
Received: from mwalle01.sab.local. (unknown [213.135.10.150])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id A907223E48;
 Fri, 21 Feb 2020 18:48:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1582307293;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=UaO+mat3+Uxwq9DbMCw/0coohVq5jCugVuQMQ8FIwrs=;
 b=idc5b+QMoxawIvKVFlumo+VKwBVU+wu8qoriOT8yy2LjtP358qRiPgrG2ypwk0t/BjAtsf
 RmJtmFd2YZfFYcrCHLcH5JvPhtLiuUcV8zb+NXrWanXidNWNhjavtro2Kl1sue6z1sQ64h
 kXI9fGHrYM9eW3k3GypteLKapvdJ0oI=
From: Michael Walle <michael@walle.cc>
To: linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 3/9] tty: serial: fsl_lpuart: handle EPROBE_DEFER for DMA
Date: Fri, 21 Feb 2020 18:47:48 +0100
Message-Id: <20200221174754.5295-4-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200221174754.5295-1-michael@walle.cc>
References: <20200221174754.5295-1-michael@walle.cc>
MIME-Version: 1.0
X-Spamd-Bar: ++++++
X-Spam-Level: ******
X-Rspamd-Server: web
X-Spam-Status: Yes, score=6.40
X-Spam-Score: 6.40
X-Rspamd-Queue-Id: A907223E48
X-Spamd-Result: default: False [6.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; R_MISSING_CHARSET(2.50)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; BROKEN_CONTENT_TYPE(1.50)[];
 NEURAL_SPAM(0.00)[0.764]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_TWELVE(0.00)[13]; MID_CONTAINS_FROM(1.00)[];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:12941, ipnet:213.135.0.0/19, country:DE];
 SUSPICIOUS_RECIPS(1.50)[]
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_094823_234916_61BA3FBE 
X-CRM114-Status: GOOD (  14.50  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Vabhav Sharma <vabhav.sharma@nxp.com>, Jiri Slaby <jslaby@suse.com>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The DMA channel might not be available at the first probe time. This is
esp. the case if the DMA controller has an IOMMU mapping.

Use the new dma_request_chan() API and handle EPROBE_DEFER errors. Also
reorder the code a bit, so that we don't prepare the whole UART just to
determine that the DMA channel is not ready yet and we have to undo all
the stuff. Try to map the DMA channels earlier.

Signed-off-by: Michael Walle <michael@walle.cc>
---
 drivers/tty/serial/fsl_lpuart.c | 35 +++++++++++++++++++++++----------
 1 file changed, 25 insertions(+), 10 deletions(-)

diff --git a/drivers/tty/serial/fsl_lpuart.c b/drivers/tty/serial/fsl_lpuart.c
index c31b8f3db6bf..fd9f60d0817a 100644
--- a/drivers/tty/serial/fsl_lpuart.c
+++ b/drivers/tty/serial/fsl_lpuart.c
@@ -2416,6 +2416,7 @@ static int lpuart_probe(struct platform_device *pdev)
 	const struct lpuart_soc_data *sdata = of_id->data;
 	struct device_node *np = pdev->dev.of_node;
 	struct lpuart_port *sport;
+	struct dma_chan *dma_chan;
 	struct resource *res;
 	int ret;
 
@@ -2483,6 +2484,26 @@ static int lpuart_probe(struct platform_device *pdev)
 	}
 	sport->port.line = ret;
 
+	dma_chan = dma_request_chan(sport->port.dev, "tx");
+	if (PTR_ERR(dma_chan) == -EPROBE_DEFER) {
+		ret = -EPROBE_DEFER;
+		goto failed_request_tx_dma;
+	} else if (IS_ERR(dma_chan))
+		dev_info(sport->port.dev, "DMA tx channel request failed, "
+				"operating without tx DMA\n");
+	else
+		sport->dma_tx_chan = dma_chan;
+
+	dma_chan = dma_request_chan(sport->port.dev, "rx");
+	if (PTR_ERR(dma_chan) == -EPROBE_DEFER) {
+		ret = -EPROBE_DEFER;
+		goto failed_request_rx_dma;
+	} else if (IS_ERR(dma_chan))
+		dev_info(sport->port.dev, "DMA rx channel request failed, "
+				"operating without rx DMA\n");
+	else
+		sport->dma_rx_chan = dma_chan;
+
 	ret = lpuart_enable_clks(sport);
 	if (ret)
 		goto failed_clock_enable;
@@ -2520,22 +2541,16 @@ static int lpuart_probe(struct platform_device *pdev)
 
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
 failed_irq_request:
 	lpuart_disable_clks(sport);
 failed_clock_enable:
+	dma_release_channel(sport->dma_rx_chan);
+failed_request_rx_dma:
+	dma_release_channel(sport->dma_tx_chan);
+failed_request_tx_dma:
 failed_out_of_range:
 	if (sport->id_allocated)
 		ida_simple_remove(&fsl_lpuart_ida, sport->port.line);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
