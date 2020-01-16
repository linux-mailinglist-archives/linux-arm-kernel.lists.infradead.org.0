Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF9B13E76A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 18:25:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xUDeUOqrNrHYxA4xXdiBYQ2zGbTcMPdlrzm5Eq8ChWg=; b=PmsGP8d5FcypGP
	+DitEOpRBnfm0Lfy76/KGV91fsKAXFWzSGoYdRx7Vht9DvxEoEy1EYdhju4LxKKqh3d63UDKYHK0Z
	xQj4zlT1LCuCAlFxU4oCX6W7M6ro9TMSE3QT8WrmlsHQAR+uWm/WKrAPYo69L08dJE5wUkzV9rA65
	6QoIigI34Mi8ypubXBjh8AETOh3r1yC2G25Lh43GwbQGx7QKMz1q+Wsv0OOoV9IfAIfdy7wImQuJ9
	mXSy/qzZbvog8/nmEE8b6dWqcMSZjKLZlwEairSZkmlZ/3xzqWCzDnc05nhIePLtPuO/zcotXNSf2
	ZYOyl63YDi9LqUqEfNpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is8ti-0001xx-Gb; Thu, 16 Jan 2020 17:25:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8cX-0000os-M8
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:07:53 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 073B420730;
 Thu, 16 Jan 2020 17:07:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579194468;
 bh=m4za9vjnszElHLsfi90RmpxpiIHmYybodeIq8CTBs4Y=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=oHe79SI1v1qyVdVMMSEpzHtivgfq1W/uOmbxwk+9wnr0lPFdgEzLbHsDrH0Vug/iz
 4S1Ayg4BdzVWnw6d3ZyWlbyM3CoCoWMh76q6d2HZ8v+iLawpgxO26awMu/CmxmAGJX
 2vmtGB/jXHgKwuj7tGyeKIihyjdE6OJatH+phAJQ=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 374/671] serial: stm32: fix rx error handling
Date: Thu, 16 Jan 2020 12:00:12 -0500
Message-Id: <20200116170509.12787-111-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116170509.12787-1-sashal@kernel.org>
References: <20200116170509.12787-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_090749_802929_3937C906 
X-CRM114-Status: GOOD (  17.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Erwan Le Ray <erwan.leray@st.com>, linux-serial@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Erwan Le Ray <erwan.leray@st.com>

[ Upstream commit 4f01d833fdcdd6f9b85d9e5d5d7568eb683626a7 ]

- Fixes parity and framing error bit by clearing parity and framing error
  flag. The current implementation doesn't clear the error bits when an
  error is detected.
- Fixes the incorrect name of framing error clearing flag in header file.
- Fixes misalignement between data frame and errors status. The status
  read for "n" frame was the status of "n+1" frame".
- Fixes break detection was not triggered by the expected register.

Fixes: 48a6092fb41f ("serial: stm32-usart: Add STM32 USART Driver")
Signed-off-by: Erwan Le Ray <erwan.leray@st.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/tty/serial/stm32-usart.c | 54 +++++++++++++++++++++-----------
 drivers/tty/serial/stm32-usart.h | 10 ++----
 2 files changed, 37 insertions(+), 27 deletions(-)

diff --git a/drivers/tty/serial/stm32-usart.c b/drivers/tty/serial/stm32-usart.c
index e8321850938a..f6b739351dde 100644
--- a/drivers/tty/serial/stm32-usart.c
+++ b/drivers/tty/serial/stm32-usart.c
@@ -225,35 +225,51 @@ static void stm32_receive_chars(struct uart_port *port, bool threaded)
 
 	while (stm32_pending_rx(port, &sr, &stm32_port->last_res, threaded)) {
 		sr |= USART_SR_DUMMY_RX;
-		c = stm32_get_char(port, &sr, &stm32_port->last_res);
 		flag = TTY_NORMAL;
-		port->icount.rx++;
 
+		/*
+		 * Status bits has to be cleared before reading the RDR:
+		 * In FIFO mode, reading the RDR will pop the next data
+		 * (if any) along with its status bits into the SR.
+		 * Not doing so leads to misalignement between RDR and SR,
+		 * and clear status bits of the next rx data.
+		 *
+		 * Clear errors flags for stm32f7 and stm32h7 compatible
+		 * devices. On stm32f4 compatible devices, the error bit is
+		 * cleared by the sequence [read SR - read DR].
+		 */
+		if ((sr & USART_SR_ERR_MASK) && ofs->icr != UNDEF_REG)
+			stm32_clr_bits(port, ofs->icr, USART_ICR_ORECF |
+				       USART_ICR_PECF | USART_ICR_FECF);
+
+		c = stm32_get_char(port, &sr, &stm32_port->last_res);
+		port->icount.rx++;
 		if (sr & USART_SR_ERR_MASK) {
-			if (sr & USART_SR_LBD) {
-				port->icount.brk++;
-				if (uart_handle_break(port))
-					continue;
-			} else if (sr & USART_SR_ORE) {
-				if (ofs->icr != UNDEF_REG)
-					writel_relaxed(USART_ICR_ORECF,
-						       port->membase +
-						       ofs->icr);
+			if (sr & USART_SR_ORE) {
 				port->icount.overrun++;
 			} else if (sr & USART_SR_PE) {
 				port->icount.parity++;
 			} else if (sr & USART_SR_FE) {
-				port->icount.frame++;
+				/* Break detection if character is null */
+				if (!c) {
+					port->icount.brk++;
+					if (uart_handle_break(port))
+						continue;
+				} else {
+					port->icount.frame++;
+				}
 			}
 
 			sr &= port->read_status_mask;
 
-			if (sr & USART_SR_LBD)
-				flag = TTY_BREAK;
-			else if (sr & USART_SR_PE)
+			if (sr & USART_SR_PE) {
 				flag = TTY_PARITY;
-			else if (sr & USART_SR_FE)
-				flag = TTY_FRAME;
+			} else if (sr & USART_SR_FE) {
+				if (!c)
+					flag = TTY_BREAK;
+				else
+					flag = TTY_FRAME;
+			}
 		}
 
 		if (uart_handle_sysrq_char(port, c))
@@ -721,14 +737,14 @@ static void stm32_set_termios(struct uart_port *port, struct ktermios *termios,
 	if (termios->c_iflag & INPCK)
 		port->read_status_mask |= USART_SR_PE | USART_SR_FE;
 	if (termios->c_iflag & (IGNBRK | BRKINT | PARMRK))
-		port->read_status_mask |= USART_SR_LBD;
+		port->read_status_mask |= USART_SR_FE;
 
 	/* Characters to ignore */
 	port->ignore_status_mask = 0;
 	if (termios->c_iflag & IGNPAR)
 		port->ignore_status_mask = USART_SR_PE | USART_SR_FE;
 	if (termios->c_iflag & IGNBRK) {
-		port->ignore_status_mask |= USART_SR_LBD;
+		port->ignore_status_mask |= USART_SR_FE;
 		/*
 		 * If we're ignoring parity and break indicators,
 		 * ignore overruns too (for real raw support).
diff --git a/drivers/tty/serial/stm32-usart.h b/drivers/tty/serial/stm32-usart.h
index a70aa5006ab9..8d34802e572e 100644
--- a/drivers/tty/serial/stm32-usart.h
+++ b/drivers/tty/serial/stm32-usart.h
@@ -108,7 +108,6 @@ struct stm32_usart_info stm32h7_info = {
 #define USART_SR_RXNE		BIT(5)
 #define USART_SR_TC		BIT(6)
 #define USART_SR_TXE		BIT(7)
-#define USART_SR_LBD		BIT(8)
 #define USART_SR_CTSIF		BIT(9)
 #define USART_SR_CTS		BIT(10)		/* F7 */
 #define USART_SR_RTOF		BIT(11)		/* F7 */
@@ -120,8 +119,7 @@ struct stm32_usart_info stm32h7_info = {
 #define USART_SR_SBKF		BIT(18)		/* F7 */
 #define USART_SR_WUF		BIT(20)		/* H7 */
 #define USART_SR_TEACK		BIT(21)		/* F7 */
-#define USART_SR_ERR_MASK	(USART_SR_LBD | USART_SR_ORE | \
-				 USART_SR_FE | USART_SR_PE)
+#define USART_SR_ERR_MASK	(USART_SR_ORE | USART_SR_FE | USART_SR_PE)
 /* Dummy bits */
 #define USART_SR_DUMMY_RX	BIT(16)
 
@@ -168,8 +166,6 @@ struct stm32_usart_info stm32h7_info = {
 /* USART_CR2 */
 #define USART_CR2_ADD_MASK	GENMASK(3, 0)	/* F4 */
 #define USART_CR2_ADDM7		BIT(4)		/* F7 */
-#define USART_CR2_LBDL		BIT(5)
-#define USART_CR2_LBDIE		BIT(6)
 #define USART_CR2_LBCL		BIT(8)
 #define USART_CR2_CPHA		BIT(9)
 #define USART_CR2_CPOL		BIT(10)
@@ -226,12 +222,10 @@ struct stm32_usart_info stm32h7_info = {
 
 /* USART_ICR */
 #define USART_ICR_PECF		BIT(0)		/* F7 */
-#define USART_ICR_FFECF		BIT(1)		/* F7 */
-#define USART_ICR_NCF		BIT(2)		/* F7 */
+#define USART_ICR_FECF		BIT(1)		/* F7 */
 #define USART_ICR_ORECF		BIT(3)		/* F7 */
 #define USART_ICR_IDLECF	BIT(4)		/* F7 */
 #define USART_ICR_TCCF		BIT(6)		/* F7 */
-#define USART_ICR_LBDCF		BIT(8)		/* F7 */
 #define USART_ICR_CTSCF		BIT(9)		/* F7 */
 #define USART_ICR_RTOCF		BIT(11)		/* F7 */
 #define USART_ICR_EOBCF		BIT(12)		/* F7 */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
