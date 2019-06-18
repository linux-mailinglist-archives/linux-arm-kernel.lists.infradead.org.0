Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E019049E05
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 12:04:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hWNMo2nP0QXHUrM7nSt8diifqk5ex9tk0UF9RE806uk=; b=CWxvnOnDVFoGaf
	kwEsCjVbf32V6IzLSwwrIcnJsR/Y4BlnDbcNbHqJWAT1RwZEiooJPn1nekLlvoAKAZ/ZMdlEw0XqL
	DJjeprV3w0HZdN+y+IhPIiUCen95gwUasBGJaKpGR+nCVMJ9RXp5p5LxyBJZtIAc8V9Besx4cPLpt
	W5NJNm9vhPbBR8fo3A7rB/nUPtQm6yr3ClWQ/xNjl7k0dHG9HLkYhilJLYVV/ba/paQJutyeDv07V
	bduPvLSKFX4xwhHrvwA8OCuj83yn6y2As42dJSGWRIJD2NfY50yXMcdn12L0pHPHvrB2F1gfy66db
	7BnWg+varh9PJxIqJorA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdAy7-0005tt-Gw; Tue, 18 Jun 2019 10:03:59 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdAx4-0004vZ-L4
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 10:02:56 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5IA1kqT030835; Tue, 18 Jun 2019 12:02:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=ZNwrI9/E19QXLogxcwXLV+/wtFzsSvuPA6hnm0JPcRM=;
 b=pKMdFCu6z9l+iNvnnuFWzm/ITOJ4O7pD3VwiAG1XRPj/EB74vBLEw9mGVCi62jp2V5X5
 RjADxoXBtw/U9b/GCXEAfxfHiMYwkJXGI5Gn6qLPyYbpQc+I0Qo6stg4MqxSDer2tBN5
 L4mqGeMTarLq8Kl/+5adGTt4SDB9/1dBIKMgdYNmSS870lUw+A8L2npVXeztPIxUIRmp
 1cAEHe/3YSBft1VMmwYslw9wRl3BTvDm25TYlOGgdzrrYZGmU9CmzZs6zsFXvgM4Ec9x
 TIpUF7DcIxoi1jwFxLdZ1vc8OlxFpsDDMs5FplvHeTTLvb5lpfNAHiRdaXy4EmSC+oy3 HA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2t68n3nv0e-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 18 Jun 2019 12:02:45 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C84553A;
 Tue, 18 Jun 2019 10:02:43 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A704725DD;
 Tue, 18 Jun 2019 10:02:43 +0000 (GMT)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.47) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 18 Jun
 2019 12:02:43 +0200
Received: from localhost (10.201.23.31) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 18 Jun 2019 12:02:43
 +0200
From: Erwan Le Ray <erwan.leray@st.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby
 <jslaby@suse.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, "Alexandre
 Torgue" <alexandre.torgue@st.com>
Subject: [PATCH 5/5] serial: stm32: add RX and TX FIFO flush
Date: Tue, 18 Jun 2019 12:02:26 +0200
Message-ID: <1560852146-3393-6-git-send-email-erwan.leray@st.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1560852146-3393-1-git-send-email-erwan.leray@st.com>
References: <1560852146-3393-1-git-send-email-erwan.leray@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.23.31]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-18_05:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_030254_991542_DD0BC9BA 
X-CRM114-Status: GOOD (  14.03  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel@vger.kernel.org, Erwan Le Ray <erwan.leray@st.com>,
 linux-serial@vger.kernel.org, Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adds a flush of RX and TX FIFOs, and fixes some errors:
- adds RX FIFO flush in startup fonction
- removes the useless transmitter enabling in startup fonction
  (e.g. receiver only, see Documentation/serial/driver)
- configures FIFO threshold before enabling it, rather than after
- flushes both TX and RX in set_termios function

Signed-off-by: Erwan Le Ray <erwan.leray@st.com>

diff --git a/drivers/tty/serial/stm32-usart.c b/drivers/tty/serial/stm32-usart.c
index 4083145..21dc380 100644
--- a/drivers/tty/serial/stm32-usart.c
+++ b/drivers/tty/serial/stm32-usart.c
@@ -602,11 +602,11 @@ static int stm32_startup(struct uart_port *port)
 	if (ret)
 		return ret;
 
-	val = stm32_port->cr1_irq | USART_CR1_TE | USART_CR1_RE;
-	if (stm32_port->fifoen)
-		val |= USART_CR1_FIFOEN;
-	stm32_set_bits(port, ofs->cr1, val);
+	/* RX FIFO Flush */
+	if (ofs->rqr != UNDEF_REG)
+		stm32_set_bits(port, ofs->rqr, USART_RQR_RXFRQ);
 
+	/* Tx and RX FIFO configuration */
 	if (stm32_port->fifoen) {
 		val = readl_relaxed(port->membase + ofs->cr3);
 		val &= ~(USART_CR3_TXFTCFG_MASK | USART_CR3_RXFTCFG_MASK);
@@ -615,6 +615,12 @@ static int stm32_startup(struct uart_port *port)
 		writel_relaxed(val, port->membase + ofs->cr3);
 	}
 
+	/* RX FIFO enabling */
+	val = stm32_port->cr1_irq | USART_CR1_RE;
+	if (stm32_port->fifoen)
+		val |= USART_CR1_FIFOEN;
+	stm32_set_bits(port, ofs->cr1, val);
+
 	return 0;
 }
 
@@ -697,8 +703,12 @@ static void stm32_set_termios(struct uart_port *port, struct ktermios *termios,
 	/* Stop serial port and reset value */
 	writel_relaxed(0, port->membase + ofs->cr1);
 
-	cr1 = USART_CR1_TE | USART_CR1_RE;
+	/* flush RX & TX FIFO */
+	if (ofs->rqr != UNDEF_REG)
+		stm32_set_bits(port, ofs->rqr,
+			       USART_RQR_TXFRQ | USART_RQR_RXFRQ);
 
+	cr1 = USART_CR1_TE | USART_CR1_RE;
 	if (stm32_port->fifoen)
 		cr1 |= USART_CR1_FIFOEN;
 	cr2 = 0;
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
