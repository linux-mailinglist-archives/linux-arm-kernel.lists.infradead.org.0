Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BEC525470
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 17:47:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/1UrpHX+t9HSgfIAX8A6hbtxN/5tfokfL0xUSrAwoZo=; b=f88gnwIG9oKHhH
	FqcVFh7HfkTqjHjW3jW+HdP/jDEQyDayTQe0PlLdfXUZnqCgfeMJaYaP8XOiCB5mUxXqgLuAn75Xz
	hHmtmRule+5/ZPve8UapkWbftI3WsUpVD89h3DLuYZcY5l9ED6+W/VEGDNEa2aFJbapLsg8CcMrr+
	AKwCoc3jUr6LY9xwfrMvspwCMVNtAopq8GRrYzCtMe4rYbVEUkmZxsFOAF+Oa4k/TNeqVLwXveGtu
	vRQB/xbFeISxmSVen5zhB/PwfQT9LP1MwQLGl4akWiFxGzCwo9yXlplnvS5qGK8NI6ScmpY4KoUTf
	FLbe8yLCtyLq7BUWBTfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT6zP-0000pT-6k; Tue, 21 May 2019 15:47:43 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT6yT-0008Eq-MC
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 15:46:56 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4LFjvSE004967; Tue, 21 May 2019 17:46:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=/OcbG7X/4P3w326sEJsRi0F6w6c2W3c9KT64wC0AeuY=;
 b=uPzJ62FcrBpb0lxQBdoL3q7yqp9WRb1GSrBJ0BDvUo3FxxqLGodXE8vj6AEZ+IpskDpI
 jQsR2hgkTlil5kIFWQpEz6oCb0NjhjzWCdPUtaWqHasJynFZvxflh2bm+An27/7C/DPG
 stnoWV8uE9urEZADUnLOqS27XL8F2IvOoHzqV+tIDgkRs2BtAS2ePXsuH2N+h9UWcEz+
 uzXTjGSY93Sv56v/klN+ube0g7/bceUM8tBJCwCt+NgUaxq0TAaLQeyqj167Mg235Qx9
 xvUQ9WkDeAtQ5kZB9DqKCqGh5nim/Aom2gfRjL5yHTVyXmti+pvBmiSyn1a8xtIs4A+A Dw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2sj7tu2h78-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 21 May 2019 17:46:43 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 213A038;
 Tue, 21 May 2019 15:46:43 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 09B712CEA;
 Tue, 21 May 2019 15:46:43 +0000 (GMT)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.46) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 21 May
 2019 17:46:42 +0200
Received: from localhost (10.201.23.31) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 21 May 2019 17:46:42
 +0200
From: Erwan Le Ray <erwan.leray@st.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby
 <jslaby@suse.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, "Alexandre
 Torgue" <alexandre.torgue@st.com>
Subject: [PATCH 6/7] serial: stm32: fix wakeup source initialization
Date: Tue, 21 May 2019 17:45:46 +0200
Message-ID: <1558453547-22866-7-git-send-email-erwan.leray@st.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1558453547-22866-1-git-send-email-erwan.leray@st.com>
References: <1558453547-22866-1-git-send-email-erwan.leray@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.23.31]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-21_03:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_084646_508773_422BB249 
X-CRM114-Status: GOOD (  13.71  )
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

Fixes dedicated_irq_wakeup issue and deactivated uart as wakeup source by
default.

Fixes: 270e5a74fe4c ("serial: stm32: add wakeup mechanism")
Signed-off-by: Erwan Le Ray <erwan.leray@st.com>

diff --git a/drivers/tty/serial/stm32-usart.c b/drivers/tty/serial/stm32-usart.c
index d603be9..1334e42 100644
--- a/drivers/tty/serial/stm32-usart.c
+++ b/drivers/tty/serial/stm32-usart.c
@@ -557,7 +557,6 @@ static int stm32_startup(struct uart_port *port)
 {
 	struct stm32_port *stm32_port = to_stm32_port(port);
 	struct stm32_usart_offsets *ofs = &stm32_port->info->ofs;
-	struct stm32_usart_config *cfg = &stm32_port->info->cfg;
 	const char *name = to_platform_device(port->dev)->name;
 	u32 val;
 	int ret;
@@ -568,15 +567,6 @@ static int stm32_startup(struct uart_port *port)
 	if (ret)
 		return ret;
 
-	if (cfg->has_wakeup && stm32_port->wakeirq >= 0) {
-		ret = dev_pm_set_dedicated_wake_irq(port->dev,
-						    stm32_port->wakeirq);
-		if (ret) {
-			free_irq(port->irq, port);
-			return ret;
-		}
-	}
-
 	val = USART_CR1_RXNEIE | USART_CR1_TE | USART_CR1_RE;
 	if (stm32_port->fifoen)
 		val |= USART_CR1_FIFOEN;
@@ -607,7 +597,6 @@ static void stm32_shutdown(struct uart_port *port)
 
 	stm32_clr_bits(port, ofs->cr1, val);
 
-	dev_pm_clear_wake_irq(port->dev);
 	free_irq(port->irq, port);
 }
 
@@ -1079,11 +1068,18 @@ static int stm32_serial_probe(struct platform_device *pdev)
 		ret = device_init_wakeup(&pdev->dev, true);
 		if (ret)
 			goto err_uninit;
+
+		ret = dev_pm_set_dedicated_wake_irq(&pdev->dev,
+						    stm32port->wakeirq);
+		if (ret)
+			goto err_nowup;
+
+		device_set_wakeup_enable(&pdev->dev, false);
 	}
 
 	ret = uart_add_one_port(&stm32_usart_driver, &stm32port->port);
 	if (ret)
-		goto err_nowup;
+		goto err_wirq;
 
 	ret = stm32_of_dma_rx_probe(stm32port, pdev);
 	if (ret)
@@ -1097,6 +1093,10 @@ static int stm32_serial_probe(struct platform_device *pdev)
 
 	return 0;
 
+err_wirq:
+	if (stm32port->info->cfg.has_wakeup && stm32port->wakeirq >= 0)
+		dev_pm_clear_wake_irq(&pdev->dev);
+
 err_nowup:
 	if (stm32port->info->cfg.has_wakeup && stm32port->wakeirq >= 0)
 		device_init_wakeup(&pdev->dev, false);
@@ -1134,8 +1134,10 @@ static int stm32_serial_remove(struct platform_device *pdev)
 				  TX_BUF_L, stm32_port->tx_buf,
 				  stm32_port->tx_dma_buf);
 
-	if (cfg->has_wakeup && stm32_port->wakeirq >= 0)
+	if (cfg->has_wakeup && stm32_port->wakeirq >= 0) {
+		dev_pm_clear_wake_irq(&pdev->dev);
 		device_init_wakeup(&pdev->dev, false);
+	}
 
 	clk_disable_unprepare(stm32_port->clk);
 
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
