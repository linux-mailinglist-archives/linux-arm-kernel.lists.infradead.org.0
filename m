Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D790625468
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 17:47:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cmyxr38amzEi788Ob4zMSOTInJz7nDvZ9229nntlnWg=; b=X0MXeRVrXO05GK
	i5SMnQD1VZOpFUdsr+StidFENyCWuiyzPuC4NxqZgkXBXeQYS8PnQLIGEC3rFYVPfFl96Ryg4fRsL
	cg9NzsfJDVxrLkvwg2/8E55nKBZ6pDHu1Cp7Y05co+85VxR2dEicpBG9x62J8nGA6A6K6vm7fHfrp
	duxtbu1rV+f0TtAMoD/KmZuvS5XB3IPYJePVyBhRjiJzVylMjsb9Re7ShJDi3qorS/wtMsTPsviQV
	CIYjaXeLfwEOlaa1FqMS0BjaE4OBb+HzBBs9O6stoWnKHHKXjO0Hb0bsuCpNZTR7NsNK2UAyW9GQt
	LY6qPa5Au+C4F/JlVZaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT6yv-00007C-9L; Tue, 21 May 2019 15:47:13 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT6yO-00088w-Hu
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 15:46:51 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4LFjw7P004981; Tue, 21 May 2019 17:46:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=qEx6uDe0U5ghEnBHm99gzwaV8EBDYsz7AHTItZcDFEI=;
 b=OJB0s+yPhWGa2riM+WQcEmikoIcHn9qFrpXobf2+XbjfYFTcePdkfELu1iPgLH9ZaEzs
 Wj2RvfWDFP8rMcXte8Ns5Jv0GhMtKqgikVnvH4BdePxL2yYjjOA5UTmDyXyzQmIOqu5n
 cZiWR9dFmn/w8u9i0RMDaLX2F5MUhN8b3KUOkottCtIMDUlR9FpTMC0ALxt/DQzXwDZl
 iS0O48fITRub/fbS772sR29o/SLB4bnGJbE11nYqcfDHXF9UUVMCl3ulC4pVDiEWvetk
 bGnf0RKE5/HYGWg9abWZEI7g6HXV3NONtyI4/WdJmXBUianUH6t9iEHK4c6N7T2Nir+0 Xw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2sj7tu2h6r-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 21 May 2019 17:46:38 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id BEB8D3D;
 Tue, 21 May 2019 15:46:37 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A9A352CEA;
 Tue, 21 May 2019 15:46:37 +0000 (GMT)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.46) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 21 May
 2019 17:46:37 +0200
Received: from localhost (10.201.23.31) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 21 May 2019 17:46:36
 +0200
From: Erwan Le Ray <erwan.leray@st.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby
 <jslaby@suse.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, "Alexandre
 Torgue" <alexandre.torgue@st.com>
Subject: [PATCH 3/7] serial: stm32: fix rx data length when parity enabled
Date: Tue, 21 May 2019 17:45:43 +0200
Message-ID: <1558453547-22866-4-git-send-email-erwan.leray@st.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1558453547-22866-1-git-send-email-erwan.leray@st.com>
References: <1558453547-22866-1-git-send-email-erwan.leray@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.23.31]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-21_03:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_084641_089726_7F765986 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel@vger.kernel.org, Erwan Le Ray <erwan.leray@st.com>,
 linux-serial@vger.kernel.org, Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

- Fixes a rx data error when data length < 8 bits and parity is enabled.
RDR register MSB is used for parity bit reception.
- Adds a mask to ignore MSB when data is get from RDR.

Fixes: 3489187204eb ("serial: stm32: adding dma support")
Signed-off-by: Erwan Le Ray <erwan.leray@st.com>

diff --git a/drivers/tty/serial/stm32-usart.c b/drivers/tty/serial/stm32-usart.c
index f6b7393..0a7953e 100644
--- a/drivers/tty/serial/stm32-usart.c
+++ b/drivers/tty/serial/stm32-usart.c
@@ -194,8 +194,8 @@ static int stm32_pending_rx(struct uart_port *port, u32 *sr, int *last_res,
 	return 0;
 }
 
-static unsigned long
-stm32_get_char(struct uart_port *port, u32 *sr, int *last_res)
+static unsigned long stm32_get_char(struct uart_port *port, u32 *sr,
+				    int *last_res)
 {
 	struct stm32_port *stm32_port = to_stm32_port(port);
 	struct stm32_usart_offsets *ofs = &stm32_port->info->ofs;
@@ -205,10 +205,13 @@ static int stm32_pending_rx(struct uart_port *port, u32 *sr, int *last_res,
 		c = stm32_port->rx_buf[RX_BUF_L - (*last_res)--];
 		if ((*last_res) == 0)
 			*last_res = RX_BUF_L;
-		return c;
 	} else {
-		return readl_relaxed(port->membase + ofs->rdr);
+		c = readl_relaxed(port->membase + ofs->rdr);
+		/* apply RDR data mask */
+		c &= stm32_port->rdr_mask;
 	}
+
+	return c;
 }
 
 static void stm32_receive_chars(struct uart_port *port, bool threaded)
@@ -679,6 +682,7 @@ static void stm32_set_termios(struct uart_port *port, struct ktermios *termios,
 		cr2 |= USART_CR2_STOP_2B;
 
 	bits = stm32_get_databits(termios);
+	stm32_port->rdr_mask = (BIT(bits) - 1);
 
 	if (cflag & PARENB) {
 		bits++;
diff --git a/drivers/tty/serial/stm32-usart.h b/drivers/tty/serial/stm32-usart.h
index 8d34802..30d2433 100644
--- a/drivers/tty/serial/stm32-usart.h
+++ b/drivers/tty/serial/stm32-usart.h
@@ -254,6 +254,7 @@ struct stm32_port {
 	bool hw_flow_control;
 	bool fifoen;
 	int wakeirq;
+	int rdr_mask;		/* receive data register mask */
 };
 
 static struct stm32_port stm32_ports[STM32_MAX_PORTS];
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
