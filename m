Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E077D177DB5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 18:45:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CbssFXmte24BU9OyHsgocpUl6N/MtI/DROcNrAN+GOg=; b=c1mHl5cAa0F2nV
	DFU94EGqSN/gngpkpOKu0QV4ygsfnGgUP0uIS69QyKvr2eAbv71J0a4U9lj8Fw3Cuh7OZQ2zcjwj8
	TtTeL9xSjqVKdQcpWUFYq5cvc25feYeCUzNYHDwUmIeSkZuctmwRttXf7c1dfXPRV6PnJOjUOgTqU
	wfKqmQdlL5Kogla+akoOG59dG2gOLkW+v2HXWdbD+RDcuU/aJerE5y+zm7KNgYgP0zQDzelMjaqdT
	ABcMUTaDvt1ytO0C5tHt9CiB9jpYHSrxONlS3sWO/0wKzn6worPFCzYT7z/dA/VPvlpTGCqnjGRBx
	JnwMAhr8kh9Ma4ZP8giA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Bbu-0001OH-KZ; Tue, 03 Mar 2020 17:45:38 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9BZr-0006lS-31
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 17:43:33 +0000
Received: from apollo.fritz.box (unknown
 [IPv6:2a02:810c:c200:2e91:6257:18ff:fec4:ca34])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 9ABA323E61;
 Tue,  3 Mar 2020 18:43:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1583257402;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=lOJuGoLvCd6iC1Zgfqw7e9NKDynpvpR6Qf0qYXlBAeU=;
 b=kIPFFYvTijGYf52AIbOzNcDI4mFwdb1uZ1YveQS9aNd4yWtE2Qb5bWRU4X3GCZVlrEmgA2
 SetnvLXuXaNRaH4MN6SUdZDURXJUCrYQDlLJ56bARxD4AU+y7V3EZ6cort/JNPD4lVwtkZ
 PW1o9UjGuR3QWUfK86SH5/CyvrdMMlk=
From: Michael Walle <michael@walle.cc>
To: linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 6/9] tty: serial: fsl_lpuart: add LS1028A support
Date: Tue,  3 Mar 2020 18:43:03 +0100
Message-Id: <20200303174306.6015-7-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200303174306.6015-1-michael@walle.cc>
References: <20200303174306.6015-1-michael@walle.cc>
MIME-Version: 1.0
X-Spamd-Bar: ++++++
X-Spam-Level: ******
X-Rspamd-Server: web
X-Spam-Status: Yes, score=6.40
X-Spam-Score: 6.40
X-Rspamd-Queue-Id: 9ABA323E61
X-Spamd-Result: default: False [6.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; R_MISSING_CHARSET(2.50)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; BROKEN_CONTENT_TYPE(1.50)[];
 NEURAL_SPAM(0.00)[0.496]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_TWELVE(0.00)[14]; MID_CONTAINS_FROM(1.00)[];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:31334, ipnet:2a02:810c:8000::/33, country:DE];
 SUSPICIOUS_RECIPS(1.50)[]
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_094331_302386_D71F5CE2 
X-CRM114-Status: GOOD (  13.83  )
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

The LS1028A uses little endian register access and has a different FIFO
size encoding.

Signed-off-by: Michael Walle <michael@walle.cc>
---
 drivers/tty/serial/fsl_lpuart.c | 27 +++++++++++++++++++++++++--
 1 file changed, 25 insertions(+), 2 deletions(-)

diff --git a/drivers/tty/serial/fsl_lpuart.c b/drivers/tty/serial/fsl_lpuart.c
index ada7fb1fa075..54af8c1927ee 100644
--- a/drivers/tty/serial/fsl_lpuart.c
+++ b/drivers/tty/serial/fsl_lpuart.c
@@ -234,6 +234,7 @@ static DEFINE_IDA(fsl_lpuart_ida);
 enum lpuart_type {
 	VF610_LPUART,
 	LS1021A_LPUART,
+	LS1028A_LPUART,
 	IMX7ULP_LPUART,
 	IMX8QXP_LPUART,
 };
@@ -278,11 +279,16 @@ static const struct lpuart_soc_data vf_data = {
 	.iotype = UPIO_MEM,
 };
 
-static const struct lpuart_soc_data ls_data = {
+static const struct lpuart_soc_data ls1021a_data = {
 	.devtype = LS1021A_LPUART,
 	.iotype = UPIO_MEM32BE,
 };
 
+static const struct lpuart_soc_data ls1028a_data = {
+	.devtype = LS1028A_LPUART,
+	.iotype = UPIO_MEM32,
+};
+
 static struct lpuart_soc_data imx7ulp_data = {
 	.devtype = IMX7ULP_LPUART,
 	.iotype = UPIO_MEM32,
@@ -297,7 +303,8 @@ static struct lpuart_soc_data imx8qxp_data = {
 
 static const struct of_device_id lpuart_dt_ids[] = {
 	{ .compatible = "fsl,vf610-lpuart",	.data = &vf_data, },
-	{ .compatible = "fsl,ls1021a-lpuart",	.data = &ls_data, },
+	{ .compatible = "fsl,ls1021a-lpuart",	.data = &ls1021a_data, },
+	{ .compatible = "fsl,ls1028a-lpuart",	.data = &ls1028a_data, },
 	{ .compatible = "fsl,imx7ulp-lpuart",	.data = &imx7ulp_data, },
 	{ .compatible = "fsl,imx8qxp-lpuart",	.data = &imx8qxp_data, },
 	{ /* sentinel */ }
@@ -307,6 +314,11 @@ MODULE_DEVICE_TABLE(of, lpuart_dt_ids);
 /* Forward declare this for the dma callbacks*/
 static void lpuart_dma_tx_complete(void *arg);
 
+static inline bool is_ls1028a_lpuart(struct lpuart_port *sport)
+{
+	return sport->devtype == LS1028A_LPUART;
+}
+
 static inline bool is_imx8qxp_lpuart(struct lpuart_port *sport)
 {
 	return sport->devtype == IMX8QXP_LPUART;
@@ -1622,6 +1634,17 @@ static int lpuart32_startup(struct uart_port *port)
 	sport->rxfifo_size = UARTFIFO_DEPTH((temp >> UARTFIFO_RXSIZE_OFF) &
 					    UARTFIFO_FIFOSIZE_MASK);
 
+	/*
+	 * The LS1028A has a fixed length of 16 words. Although it supports the
+	 * RX/TXSIZE fields their encoding is different. Eg the reference manual
+	 * states 0b101 is 16 words.
+	 */
+	if (is_ls1028a_lpuart(sport)) {
+		sport->rxfifo_size = 16;
+		sport->txfifo_size = 16;
+		sport->port.fifosize = sport->txfifo_size;
+	}
+
 	spin_lock_irqsave(&sport->port.lock, flags);
 
 	lpuart32_setup_watermark_enable(sport);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
