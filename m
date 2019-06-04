Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BBA134266
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 10:56:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jnuW89M0SA7t7MZ0I42oGnnBExl1+7YBELX5jczX0IE=; b=GI+syxdzalee86
	tDEVBTqaRKVcvMlnNrL53NVLMP+ZMZiJZpCEeJ/7noxj+CZMVgbqsR8jS+h8CKJHJrG8ks9FRTW+l
	T/8N+cwpITZiguKffeQ7xbOxTMKSPuhSUeyGTsIt+koSBdNoImB6CchUVqzEMHJWXbehOaTSIc4wS
	rWe1LvxSgOIlGJtmI6R+xhBvb1JhhxcaeWWrsaQoY8A6P3OdeahPx1jge6AJi+9zkjXJXrpFxW4NP
	41aRqBLI+A0oe/8FC9UZe63nZZ8Z3Grsl7VSyrl/HjwnuKPGVERu07MNhnkPHVyTzV1nd5dmE98ay
	h/sUu3dnFPvufx3KQuMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY5F8-00060G-Py; Tue, 04 Jun 2019 08:56:30 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY5ET-0005EO-1A
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 08:55:59 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x548tKLT021280; Tue, 4 Jun 2019 10:55:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=yTPNF8NzWBm5vzgD+OGOm08Rs+hMsqFWwyqewCqFUQM=;
 b=nt9f0HhHzqlvs7dytp20CclCsHOdp6LI5HyyykId23EZ+8oTqcg4StUcmDsrpyzXzm78
 7HQ1eS4qlb/FtBYtHe2Diz+BQ5kAHc7Od2aIDVAUw6URCSwyNBigqpKplCwsuFWICJHt
 RlJwBYiuWMx6V8DcH3aivgEidylhQClxPR4XbvShZENKc3jmK4Iw+RYy31T2TEkiRo/8
 Afz/3LKocaUxTcfUwOT5KPy82VQUK/AB7QiDW9bryTgeTLgATzhhfQGFJhLPy3jxXjYk
 eZsrf+E9kGuN6DwTVmuTSl1aZ3RKkZJuTMIoultWUO+t8baxrsaOBHaXj+uIa+P54slm KA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2sundrynhw-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 04 Jun 2019 10:55:43 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 579B415E;
 Tue,  4 Jun 2019 08:55:35 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 3591E2507;
 Tue,  4 Jun 2019 08:55:35 +0000 (GMT)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.93) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 4 Jun 2019
 10:55:35 +0200
Received: from localhost (10.201.23.31) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 4 Jun 2019 10:55:32
 +0200
From: Erwan Le Ray <erwan.leray@st.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby
 <jslaby@suse.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, "Alexandre
 Torgue" <alexandre.torgue@st.com>, Rob Herring <robh+dt@kernel.org>, "Mark
 Rutland" <mark.rutland@arm.com>
Subject: [PATCH 04/10] serial: stm32: add pm_runtime support
Date: Tue, 4 Jun 2019 10:55:13 +0200
Message-ID: <1559638519-6128-5-git-send-email-erwan.leray@st.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559638519-6128-1-git-send-email-erwan.leray@st.com>
References: <1559638519-6128-1-git-send-email-erwan.leray@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.23.31]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-04_07:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_015550_027810_9BED0129 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
index 8a7c582..05d2ef6 100644
--- a/drivers/tty/serial/stm32-usart.c
+++ b/drivers/tty/serial/stm32-usart.c
@@ -765,13 +765,13 @@ static void stm32_pm(struct uart_port *port, unsigned int state,
 
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
@@ -1040,6 +1040,11 @@ static int stm32_serial_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, &stm32port->port);
 
+	pm_runtime_get_noresume(&pdev->dev);
+	pm_runtime_set_active(&pdev->dev);
+	pm_runtime_enable(&pdev->dev);
+	pm_runtime_put_sync(&pdev->dev);
+
 	return 0;
 
 err_nowup:
@@ -1058,6 +1063,9 @@ static int stm32_serial_remove(struct platform_device *pdev)
 	struct stm32_port *stm32_port = to_stm32_port(port);
 	struct stm32_usart_offsets *ofs = &stm32_port->info->ofs;
 	struct stm32_usart_config *cfg = &stm32_port->info->cfg;
+	int err;
+
+	pm_runtime_get_sync(&pdev->dev);
 
 	stm32_clr_bits(port, ofs->cr3, USART_CR3_DMAR);
 
@@ -1084,7 +1092,12 @@ static int stm32_serial_remove(struct platform_device *pdev)
 
 	clk_disable_unprepare(stm32_port->clk);
 
-	return uart_remove_one_port(&stm32_usart_driver, port);
+	err = uart_remove_one_port(&stm32_usart_driver, port);
+
+	pm_runtime_disable(&pdev->dev);
+	pm_runtime_put_noidle(&pdev->dev);
+
+	return err;
 }
 
 
@@ -1241,7 +1254,29 @@ static int stm32_serial_resume(struct device *dev)
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
