Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C38E49DF2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 12:03:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XvZPwEEhVP/slvrLaCKisMvfnMxyeLa3ro0aKuTqjC4=; b=qo6KqcqFNfNVzX
	9XPHddzhocl9OdLCRT7lNyD0yTFSCF7BRwMbG5fRbPwWXBfaRwgxlX9Q7EZm28JOwSCqaawRPinID
	s8GI34982bqnJX9ckDvA6YrVh0rvId8MnL9V+wJ20lq9o9OoqwmWhjjArSs8N2bncDSrrSNJg80eX
	AMZLQ0j7Njo6yq726ODN7qpH5F9n5W9JDwkdOPeD3Ardb3sj7WQxe/DckzhctvoKy3uPS2CZgMM6g
	ZIxCLuafQcwkgnD/cEZVbCze0i8E28UOAsFtgmgv62YY5n5Y1lh3ALAGiaVASf2PBWAh5gecDo2lm
	yUQKUegwqoJSfJtCgU9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdAxE-0004xf-NG; Tue, 18 Jun 2019 10:03:04 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdAx3-0004uv-KD
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 10:02:55 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5I9ug4W007561; Tue, 18 Jun 2019 12:02:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=h01JWVwcjqILFh4YSO7W65sajs6sEQaVQ79mN3RX8qQ=;
 b=QLNmM8Ym6XwFgwWEWHrCnihEcWc1VtywI4qxDJ1y07gq6pLzS6LqMBnyj+bx4Bz4vXzd
 /TauvCyjVPOhiJO1QvGhcOV9gNzPdMDgl/GxNPp4z5LOLi4df/L7Z1FttIduxDTgwc/5
 +rvAI7NUxvqoGC+yZ9akFbW1Mqqn3IAsKFMW42TK/ijPpv/W9zYZW5UtN1QbZr82blPr
 ecRstm6j6+unZ/8cvQeAe/NkKYJVT5fy9fmxLvP5GitcPz3ZfWMEkMcjagxZRRWcyzpD
 xQop4ni9R2rTwxlJiJRvhUxq6sRrqRYCZYrkiR7qtt/S4V3reILsXQ6wTStX/5lhAhy1 8Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2t4nt883jd-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 18 Jun 2019 12:02:37 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 7A74438;
 Tue, 18 Jun 2019 10:02:36 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 59DB025D7;
 Tue, 18 Jun 2019 10:02:36 +0000 (GMT)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.47) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 18 Jun
 2019 12:02:36 +0200
Received: from localhost (10.201.23.31) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 18 Jun 2019 12:02:35
 +0200
From: Erwan Le Ray <erwan.leray@st.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby
 <jslaby@suse.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, "Alexandre
 Torgue" <alexandre.torgue@st.com>
Subject: [PATCH 2/5] serial: stm32: update PIO transmission
Date: Tue, 18 Jun 2019 12:02:23 +0200
Message-ID: <1560852146-3393-3-git-send-email-erwan.leray@st.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1560852146-3393-1-git-send-email-erwan.leray@st.com>
References: <1560852146-3393-1-git-send-email-erwan.leray@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.23.31]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-18_05:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_030253_971244_7805B6A4 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
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

Improves PIO transmission:
- Replaces the FIFO filling per character by a filling per blocks of
  characters, which provides better performances
- Replaces the active waiting loop by TX empty interrupt dynamic handling.
  TXE interrupt is now enabled when data has to be sent (ie when
  uart_circ is not empty), and inhibited when there is no more data to
  send (ie when uart_circ is empty).

Signed-off-by: Erwan Le Ray <erwan.leray@st.com>

diff --git a/drivers/tty/serial/stm32-usart.c b/drivers/tty/serial/stm32-usart.c
index e1cfb1e..8316e19 100644
--- a/drivers/tty/serial/stm32-usart.c
+++ b/drivers/tty/serial/stm32-usart.c
@@ -303,27 +303,26 @@ static void stm32_transmit_chars_pio(struct uart_port *port)
 	struct stm32_port *stm32_port = to_stm32_port(port);
 	struct stm32_usart_offsets *ofs = &stm32_port->info->ofs;
 	struct circ_buf *xmit = &port->state->xmit;
-	unsigned int isr;
-	int ret;
 
 	if (stm32_port->tx_dma_busy) {
 		stm32_clr_bits(port, ofs->cr3, USART_CR3_DMAT);
 		stm32_port->tx_dma_busy = false;
 	}
 
-	ret = readl_relaxed_poll_timeout_atomic(port->membase + ofs->isr,
-						isr,
-						(isr & USART_SR_TXE),
-						10, 100000);
-
-	if (ret)
-		dev_err(port->dev, "tx empty not set\n");
-
-	stm32_set_bits(port, ofs->cr1, USART_CR1_TXEIE);
+	while (!uart_circ_empty(xmit)) {
+		/* Check that TDR is empty before filling FIFO */
+		if (!(readl_relaxed(port->membase + ofs->isr) & USART_SR_TXE))
+			break;
+		writel_relaxed(xmit->buf[xmit->tail], port->membase + ofs->tdr);
+		xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
+		port->icount.tx++;
+	}
 
-	writel_relaxed(xmit->buf[xmit->tail], port->membase + ofs->tdr);
-	xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
-	port->icount.tx++;
+	/* rely on TXE irq (mask or unmask) for sending remaining data */
+	if (uart_circ_empty(xmit))
+		stm32_clr_bits(port, ofs->cr1, USART_CR1_TXEIE);
+	else
+		stm32_set_bits(port, ofs->cr1, USART_CR1_TXEIE);
 }
 
 static void stm32_transmit_chars_dma(struct uart_port *port)
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
