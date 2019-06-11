Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DFF93CB70
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 14:28:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=USVAYTAgSCnG+Tpp5d5ZFGG5tq7n5o28BjxS0o0N5kE=; b=g58RmcM8lCbYbV
	lTx3fQ4q06Ei9lcjR97H05+Fqh0Cr0NPNGYG7Bs3YVJRA1j1v2UfKHQgQxv80xPAuI9J+i4LxNjie
	tfnF8aLqQQW7kxVmekvTIVd6zZgpLqkrwxkwYPSrK3YnEigx4SEujrxc+Dpqwysv5vQ7OwSL1pugv
	Ps/SAnksiLgKtKTfhOScC0L3tZ6hyT0+woDupZXfjFTuH7r/cDzRRWfpi1jP6PSiAh6f2zDVaXswY
	h7FL5SuCoi4PCQunBtGz8WlNp7jpMc7l4dRbvH4aIyMbC72qL98R774+CbExKiIid+Cwedf7K0TjL
	yU/6O8WhwJ+zbsOxtsLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hafsf-0003UV-P9; Tue, 11 Jun 2019 12:28:01 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hafqb-00022g-Va
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 12:25:56 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5BCPncb026698; Tue, 11 Jun 2019 14:25:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=FmHn03A8qaUtRi1esvS9BOS3UdIXGQJPDIQQiyaLnGk=;
 b=PaeME3rA6uck19BkJk1JQu8fez0eIbvQApf8+T5dDiEa+lWoz6w6vhW/O2w3K4YQEyZi
 7mKAYzuajTCC6amzN5Pa+E4ggDKf2BWPl7RjcmYlwXsVlJkYNnezR0K0baDYvelHs1z+
 CHQpGbcvCxlJmeCz6WT8lYy7cDcIY4wBrPHKFEcebifsN19BIltCoq4FOtuMwKGfMnXS
 G0D54UG6OQ+2oAyV9A1oAx3gPYJi7K75okyNM5ydlal714v3gNqd9tvzBAQqJIyn/2Ye
 OblNUNX5MA+uc9nOkSg6iRsTwf3zc96b15Ap1x/nHw5/2jGwshatQ4tm/8L+GNUD9bPc cA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2t26rm9vc9-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 11 Jun 2019 14:25:49 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 606D038;
 Tue, 11 Jun 2019 12:25:48 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas23.st.com [10.75.90.46])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 445F32A29;
 Tue, 11 Jun 2019 12:25:48 +0000 (GMT)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.93) by SAFEX1HUBCAS23.st.com
 (10.75.90.46) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 11 Jun
 2019 14:25:48 +0200
Received: from localhost (10.201.23.31) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 11 Jun 2019 14:25:47
 +0200
From: Erwan Le Ray <erwan.leray@st.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby
 <jslaby@suse.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, "Alexandre
 Torgue" <alexandre.torgue@st.com>, Rob Herring <robh+dt@kernel.org>, "Mark
 Rutland" <mark.rutland@arm.com>
Subject: [PATCH v2 04/10] serial: stm32: add pm_runtime support
Date: Tue, 11 Jun 2019 14:25:24 +0200
Message-ID: <1560255930-22554-5-git-send-email-erwan.leray@st.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1560255930-22554-1-git-send-email-erwan.leray@st.com>
References: <1560255930-22554-1-git-send-email-erwan.leray@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.23.31]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-11_06:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_052554_361564_D638E36B 
X-CRM114-Status: GOOD (  13.36  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Erwan Le Ray <erwan.leray@st.com>, linux-serial@vger.kernel.org,
 Bich Hemon <bich.hemon@st.com>, Fabrice
 Gasnier <fabrice.gasnier@st.com>, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use pm_runtime for clock management.

Signed-off-by: Bich Hemon <bich.hemon@st.com>
Signed-off-by: Erwan Le Ray <erwan.leray@st.com>

diff --git a/drivers/tty/serial/stm32-usart.c b/drivers/tty/serial/stm32-usart.c
index 04eda75..60f3faf 100644
--- a/drivers/tty/serial/stm32-usart.c
+++ b/drivers/tty/serial/stm32-usart.c
@@ -809,13 +809,13 @@ static void stm32_pm(struct uart_port *port, unsigned int state,
 
 	switch (state) {
 	case UART_PM_STATE_ON:
-		clk_prepare_enable(stm32port->clk);
+		pm_runtime_get_sync(port->dev);
 		break;
 	case UART_PM_STATE_OFF:
 		spin_lock_irqsave(&port->lock, flags);
 		stm32_clr_bits(port, ofs->cr1, BIT(cfg->uart_enable_bit));
 		spin_unlock_irqrestore(&port->lock, flags);
-		clk_disable_unprepare(stm32port->clk);
+		pm_runtime_put_sync(port->dev);
 		break;
 	}
 }
@@ -1110,6 +1110,11 @@ static int stm32_serial_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, &stm32port->port);
 
+	pm_runtime_get_noresume(&pdev->dev);
+	pm_runtime_set_active(&pdev->dev);
+	pm_runtime_enable(&pdev->dev);
+	pm_runtime_put_sync(&pdev->dev);
+
 	return 0;
 
 err_wirq:
@@ -1131,6 +1136,9 @@ static int stm32_serial_remove(struct platform_device *pdev)
 	struct uart_port *port = platform_get_drvdata(pdev);
 	struct stm32_port *stm32_port = to_stm32_port(port);
 	struct stm32_usart_offsets *ofs = &stm32_port->info->ofs;
+	int err;
+
+	pm_runtime_get_sync(&pdev->dev);
 
 	stm32_clr_bits(port, ofs->cr3, USART_CR3_DMAR);
 
@@ -1159,7 +1167,12 @@ static int stm32_serial_remove(struct platform_device *pdev)
 
 	clk_disable_unprepare(stm32_port->clk);
 
-	return uart_remove_one_port(&stm32_usart_driver, port);
+	err = uart_remove_one_port(&stm32_usart_driver, port);
+
+	pm_runtime_disable(&pdev->dev);
+	pm_runtime_put_noidle(&pdev->dev);
+
+	return err;
 }
 
 
@@ -1316,7 +1329,29 @@ static int stm32_serial_resume(struct device *dev)
 }
 #endif /* CONFIG_PM_SLEEP */
 
+static int __maybe_unused stm32_serial_runtime_suspend(struct device *dev)
+{
+	struct uart_port *port = dev_get_drvdata(dev);
+	struct stm32_port *stm32port = container_of(port,
+			struct stm32_port, port);
+
+	clk_disable_unprepare(stm32port->clk);
+
+	return 0;
+}
+
+static int __maybe_unused stm32_serial_runtime_resume(struct device *dev)
+{
+	struct uart_port *port = dev_get_drvdata(dev);
+	struct stm32_port *stm32port = container_of(port,
+			struct stm32_port, port);
+
+	return clk_prepare_enable(stm32port->clk);
+}
+
 static const struct dev_pm_ops stm32_serial_pm_ops = {
+	SET_RUNTIME_PM_OPS(stm32_serial_runtime_suspend,
+			   stm32_serial_runtime_resume, NULL)
 	SET_SYSTEM_SLEEP_PM_OPS(stm32_serial_suspend, stm32_serial_resume)
 };
 
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
