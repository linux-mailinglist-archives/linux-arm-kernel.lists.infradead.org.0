Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F9E436EA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 15:51:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BABoOXaOIJWlRPBQNG8Dgfo/cI/pX4G+C5sl0DPZSvE=; b=uvPDxwjjJIM+kh
	C0SbYpKgLAsJw0OJEli9ijF7Pd77lJvH3zSf1VTfRCyH5dPme1rXit1dXDTvEebrdMnX1e5Pa3n4T
	nu9ojwYzlau9ms3IU9qdF+VToSNWPzHnZeIoq/jbWzuCr3OycVqCSXu1LlVluVxrJxBjQp/JngSyr
	Ub0ahjP6Ncwcz5s5RCbnnFurTVl5i+kSDlPcpa6DL7ogeNtwcYJKBHnpwNWRSRP3Vo2uuV0kID9da
	xubvKfF+IqXyRFawIR5Ol5rOq/6bOMA5s64vOkX6ouXCOBkpGpZ00j7vsJHv7uJ5cy5eoDBLIfuDP
	3B9kbsa8ZS+Q1O3DLAtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbQ8l-0001xx-3j; Thu, 13 Jun 2019 13:51:43 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbQ7U-0000pK-N9
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 13:50:26 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5DDkxMa019851; Thu, 13 Jun 2019 15:50:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=hQPL1lSMiaGkXN0tX+iDbilLpKHlu0ZCPZ1hRbTVk9w=;
 b=N8YIAF1P1bqRtbJy25ruaHW0ZwzsImWsUZJYeuANBy0tsRU58dDRTrvOw1SUG/nru9HF
 dNi92tp3tUHseNk5L29C9/3jOFln2YWqFQh+LzXDFbkczNjcYV7SyG2H+byVb6s4SAtb
 lsQUBcVzIYn+k8v8iRA1T/erQYO+/habJJXNoTuI26i0cB58V3qHaupVPxe53QjvGfUf
 B+WaaopZapOE4RQn9d/FRf4o/Hd/c00VV+XTS6lqz+X9PcABfu4U27KsEXpcOuac2jCB
 lvpFx1xoWDoG4KxsRPN7EC+0q+NoR4esotnImXLu98PbjFJU0DsDcN90i/hBmAua0Vri Og== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2t2gxec01h-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 13 Jun 2019 15:50:19 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 83FEA42;
 Thu, 13 Jun 2019 13:50:18 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 4A5762BE1;
 Thu, 13 Jun 2019 13:50:18 +0000 (GMT)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.93) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 13 Jun
 2019 15:50:18 +0200
Received: from localhost (10.201.23.31) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 13 Jun 2019 15:50:17
 +0200
From: Erwan Le Ray <erwan.leray@st.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby
 <jslaby@suse.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, "Alexandre
 Torgue" <alexandre.torgue@st.com>, Rob Herring <robh+dt@kernel.org>, "Mark
 Rutland" <mark.rutland@arm.com>
Subject: [PATCH v3 05/10] serial: stm32: Use __maybe_unused instead of #if
 CONFIG_PM_SLEEP
Date: Thu, 13 Jun 2019 15:49:55 +0200
Message-ID: <1560433800-12255-6-git-send-email-erwan.leray@st.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1560433800-12255-1-git-send-email-erwan.leray@st.com>
References: <1560433800-12255-1-git-send-email-erwan.leray@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.23.31]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-13_08:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_065025_142135_9FD82DF4 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Erwan Le Ray <erwan.leray@st.com>, linux-serial@vger.kernel.org, Fabrice
 Gasnier <fabrice.gasnier@st.com>, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use __maybe_unused for power management related functionsinstead of

fixes: 270e5a74fe4c ("serial: stm32: add wakeup mechanism")
Signed-off-by: Erwan Le Ray <erwan.leray@st.com>

diff --git a/drivers/tty/serial/stm32-usart.c b/drivers/tty/serial/stm32-usart.c
index 41898c4..b0fb420 100644
--- a/drivers/tty/serial/stm32-usart.c
+++ b/drivers/tty/serial/stm32-usart.c
@@ -1276,8 +1276,8 @@ static int stm32_console_setup(struct console *co, char *options)
 	.cons		= STM32_SERIAL_CONSOLE,
 };
 
-#ifdef CONFIG_PM_SLEEP
-static void stm32_serial_enable_wakeup(struct uart_port *port, bool enable)
+static void __maybe_unused stm32_serial_enable_wakeup(struct uart_port *port,
+						      bool enable)
 {
 	struct stm32_port *stm32_port = to_stm32_port(port);
 	struct stm32_usart_offsets *ofs = &stm32_port->info->ofs;
@@ -1301,7 +1301,7 @@ static void stm32_serial_enable_wakeup(struct uart_port *port, bool enable)
 	}
 }
 
-static int stm32_serial_suspend(struct device *dev)
+static int __maybe_unused stm32_serial_suspend(struct device *dev)
 {
 	struct uart_port *port = dev_get_drvdata(dev);
 
@@ -1317,7 +1317,7 @@ static int stm32_serial_suspend(struct device *dev)
 	return 0;
 }
 
-static int stm32_serial_resume(struct device *dev)
+static int __maybe_unused stm32_serial_resume(struct device *dev)
 {
 	struct uart_port *port = dev_get_drvdata(dev);
 
@@ -1328,7 +1328,6 @@ static int stm32_serial_resume(struct device *dev)
 
 	return uart_resume_port(&stm32_usart_driver, port);
 }
-#endif /* CONFIG_PM_SLEEP */
 
 static int __maybe_unused stm32_serial_runtime_suspend(struct device *dev)
 {
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
