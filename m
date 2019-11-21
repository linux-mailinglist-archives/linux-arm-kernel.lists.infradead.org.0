Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24786104D90
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 09:11:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zRW8Rj6RYJyiZkyilelXH7PHRKsBLRnlcCT4WGs+NgE=; b=Zt6ZXQqQ1M7xmZ
	jd8na4uhwINVvyuGJNYhn/EgaJ3srM67/RW/UOlTCtkv/JV7mZ9Km/aBZnrXhaBpq35iGtz8cp269
	50Chk7RbFPVNe7pf4/N0yuzI1t7wLaiscg4IghIQCWapRdQyiUuXwrPF4Est/ZLnpbB6ZASRNU38A
	zIcVB2ZHi1ilhUcwJpMwkc3E3zIAOZRsvjOZMOi12ktIrlfAeatCj23WGMCbyAJTvf/iRGWoSACUH
	8qPSQygW41bVQO1pLTe36gR06dqMM9i1Uc0AewgfH1+NQrGio0X/15XiHz2Tl68/Ik0sVxeL94v/Z
	64A/ajQLXvr4cPVsXf7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXhYx-0002I1-D2; Thu, 21 Nov 2019 08:11:39 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXhYn-0002HA-6A
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 08:11:30 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAL82b02008129; Thu, 21 Nov 2019 09:11:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=GWwWrFi5wSZs1dSwlxyGvTTXgdVuoIjTIkdP2E8ouLA=;
 b=KJV6yzI0CwZ7sL2Q3YyrvfL+B+ApSj9nDdroDdxbJIjrP1hzjbTrpmut5RGbIAQqD8cK
 hvt1vO3+ZRAZF6ND3q0fZujZOfkUdUGh07thnlRQxCy5+hivn9/nUlnF1rUJFjuqXhtv
 v1DkC9/40R2XrKD5R/UZe6Nw7naR/zviL6bzQYSnyI2HOFpd0oito5hOUV0I6UdHKbXq
 gUFOGYr5N5/8UbwkZ2gnljMnFibSZ1Bgr7wMpV2JSXD5Fn62GjyHZ6nlOunCjLHHFmk7
 zENKBurM2kq+363p1t3O2fGN03ka35egyJ0fdEfUi2gwqQCxewfelRa+mgJOzcauUufG Nw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2wa9usj02n-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 21 Nov 2019 09:11:18 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 4185B100034;
 Thu, 21 Nov 2019 09:11:18 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 2FB992AE93B;
 Thu, 21 Nov 2019 09:11:18 +0100 (CET)
Received: from localhost (10.75.127.47) by SFHDAG5NODE3.st.com (10.75.127.15)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Thu, 21 Nov 2019 09:11:17 +0100
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH] serial: stm32: fix clearing interrupt error flags
Date: Thu, 21 Nov 2019 09:10:49 +0100
Message-ID: <1574323849-1909-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG4NODE2.st.com (10.75.127.11) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-20_08:2019-11-20,2019-11-20 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_001129_601537_6FF7C0B8 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-serial@vger.kernel.org, jslaby@suse.com,
 linux-stm32@st-md-mailman.stormreply.com, erwan.leray@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The interrupt clear flag register is a "write 1 to clear" register.
So, only writing ones allows to clear flags:
- Replace buggy stm32_clr_bits() by a simple write to clear error flags
- Replace useless read/modify/write stm32_set_bits() routine by a
  simple write to clear TC (transfer complete) flag.

Fixes: 4f01d833fdcd ("serial: stm32: fix rx error handling")

Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
---
 drivers/tty/serial/stm32-usart.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/tty/serial/stm32-usart.c b/drivers/tty/serial/stm32-usart.c
index df90747..2f72514 100644
--- a/drivers/tty/serial/stm32-usart.c
+++ b/drivers/tty/serial/stm32-usart.c
@@ -240,8 +240,8 @@ static void stm32_receive_chars(struct uart_port *port, bool threaded)
 		 * cleared by the sequence [read SR - read DR].
 		 */
 		if ((sr & USART_SR_ERR_MASK) && ofs->icr != UNDEF_REG)
-			stm32_clr_bits(port, ofs->icr, USART_ICR_ORECF |
-				       USART_ICR_PECF | USART_ICR_FECF);
+			writel_relaxed(sr & USART_SR_ERR_MASK,
+				       port->membase + ofs->icr);
 
 		c = stm32_get_char(port, &sr, &stm32_port->last_res);
 		port->icount.rx++;
@@ -435,7 +435,7 @@ static void stm32_transmit_chars(struct uart_port *port)
 	if (ofs->icr == UNDEF_REG)
 		stm32_clr_bits(port, ofs->isr, USART_SR_TC);
 	else
-		stm32_set_bits(port, ofs->icr, USART_ICR_TCCF);
+		writel_relaxed(USART_ICR_TCCF, port->membase + ofs->icr);
 
 	if (stm32_port->tx_ch)
 		stm32_transmit_chars_dma(port);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
