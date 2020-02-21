Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C197116858E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 18:50:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RfP3S575jdI1rRsAFLr5zpvtRSqiIW/Y9P9mibdHR8A=; b=Hh4G8anmQJOMwE
	er4lpc8exAbexV4Nc87cPOef683rfOhf+bPPa/n0vNftygZC6LKdJ3LOr9XyzhmY7j5mHNfYAdKsH
	kpqbXeITLJ5rCkV6IzNEpFXEfYXkFOj/2oVD+6feCRmVAgSlBATYziY1HkR/HOtDIjChQVN2On7Id
	zIJ4ra6Xq4qHa5ZoZj+V1Z7CcdZLUXgO5OM+vxbmDg8b6TVvZQ4k447IPRusemPq/LG2J57ugOM3H
	dhPANr5f1JH+9Xgq8axiGZ5M4qNCFmj+Jyhr8KKDmC/fAbskY1Rk1E3kf6Zx4k18FU8Qt5m04pkAB
	NOqh4sJqAmO2Q45S44mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5CRS-0001mU-1m; Fri, 21 Feb 2020 17:50:22 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5CPZ-0008HF-Ad
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 17:48:28 +0000
Received: from mwalle01.sab.local. (unknown [213.135.10.150])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 7B50223E5A;
 Fri, 21 Feb 2020 18:48:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1582307294;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=mErOnXP7jBu0zlkAT1Qf3sYsSoWcyb3v89fIv9KUFbA=;
 b=O9t5dQdrzEsLzNCdAtq3xYCajucy1LnHN30hh/kMF6aXNfZg58hxXpy5h65dgUxX8RUnRl
 DgMsca/SyOKJY+ULCJCNmFDAESfFqfSBgunq5sCSWLQKAyu9mkNmeznqzkHIfZUXZMVolW
 CheLUddu6Y4DZumyYXfFhz3WrYU26KI=
From: Michael Walle <michael@walle.cc>
To: linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 6/9] tty: serial: fsl_lpuart: add LS1028A support
Date: Fri, 21 Feb 2020 18:47:51 +0100
Message-Id: <20200221174754.5295-7-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200221174754.5295-1-michael@walle.cc>
References: <20200221174754.5295-1-michael@walle.cc>
MIME-Version: 1.0
X-Spamd-Bar: ++++++
X-Spam-Level: ******
X-Rspamd-Server: web
X-Spam-Status: Yes, score=6.40
X-Spam-Score: 6.40
X-Rspamd-Queue-Id: 7B50223E5A
X-Spamd-Result: default: False [6.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; R_MISSING_CHARSET(2.50)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; BROKEN_CONTENT_TYPE(1.50)[];
 NEURAL_SPAM(0.00)[0.765]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_TWELVE(0.00)[13]; MID_CONTAINS_FROM(1.00)[];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:12941, ipnet:213.135.0.0/19, country:DE];
 SUSPICIOUS_RECIPS(1.50)[]
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_094825_576483_15EAC1FF 
X-CRM114-Status: GOOD (  13.68  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
 [list.dnswl.org]
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

The LS1028A uses little endian register access and has a different FIFO
size encoding.

Signed-off-by: Michael Walle <michael@walle.cc>
---
 drivers/tty/serial/fsl_lpuart.c | 27 +++++++++++++++++++++++++--
 1 file changed, 25 insertions(+), 2 deletions(-)

diff --git a/drivers/tty/serial/fsl_lpuart.c b/drivers/tty/serial/fsl_lpuart.c
index b65db29a1cd0..d5a67e02f06a 100644
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
@@ -1596,6 +1608,17 @@ static int lpuart32_startup(struct uart_port *port)
 
 	spin_lock_irqsave(&sport->port.lock, flags);
 
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
 	lpuart32_setup_watermark_enable(sport);
 
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
