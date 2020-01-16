Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2204713EDB6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:04:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pcygU7yBD4s8pAC+BDHGNC5xloI6RQ0a6nT2rI52bpg=; b=J4WNb4cCNvlKzf
	kwfoxZbKrR5ZSscGJt9FrQZ0UZqgROm1vrUtPr8+tMLye6Q06pOu4PwcEUN+mpk3ZLFUk3K8J6yzl
	II4iP6UEHI0HKCrarJ1PkmFIfWjOT7IthbDBuQehJgvZ+uj6nTmvJm8kU6zr/MvpSda/PicBmT/fm
	Lo/YcTeVtTffEYfjgcVJ55HkhOpG67VPBax+vJpvCqRZhHPKdKAE6qpo63vpn99WnQUEj3jlddpZd
	GK+62zG5NfsOjVuc7f30sX2SPA1krzg203cyrN6X6MtofCYhUUpeXZhrfEryqw/t1K6iDNMm5VCxw
	FHEF6E8/vcmLABJmEOKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is9Va-0001RK-U7; Thu, 16 Jan 2020 18:04:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8ve-0005C1-Jp
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:27:39 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9E98D246D0;
 Thu, 16 Jan 2020 17:27:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579195653;
 bh=L10BAFWsaqKz+H9Qust6p8J+BeZOj6OyfJvIyPxt81Q=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pvjN5x3q+KhcCAsIT2b/VsfWlVvzsicV0dQttEphdg9xgE9+MXD5mH7IsRiiYYkKe
 086oiiqo0YI/FOQwQV6B2V40WaGEuRMvir0jNJXuAG1QYh+6hMFgSMFBN87DFb6BIC
 178YQ1vmrXtizmg3ZDKoCGy5P4B6zXIgMYzNJZ80=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 215/371] serial: stm32: fix wakeup source
 initialization
Date: Thu, 16 Jan 2020 12:21:27 -0500
Message-Id: <20200116172403.18149-158-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116172403.18149-1-sashal@kernel.org>
References: <20200116172403.18149-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_092734_749452_7DB3DB9B 
X-CRM114-Status: GOOD (  12.42  )
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

[ Upstream commit 5297f274e8b61ceb9676cba6649d3de9d03387ad ]

Fixes dedicated_irq_wakeup issue and deactivated uart as wakeup source by
default.

Fixes: 270e5a74fe4c ("serial: stm32: add wakeup mechanism")
Signed-off-by: Erwan Le Ray <erwan.leray@st.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/tty/serial/stm32-usart.c | 28 +++++++++++++++-------------
 1 file changed, 15 insertions(+), 13 deletions(-)

diff --git a/drivers/tty/serial/stm32-usart.c b/drivers/tty/serial/stm32-usart.c
index 2384f786b76d..f8f3f8fafd9f 100644
--- a/drivers/tty/serial/stm32-usart.c
+++ b/drivers/tty/serial/stm32-usart.c
@@ -447,7 +447,6 @@ static int stm32_startup(struct uart_port *port)
 {
 	struct stm32_port *stm32_port = to_stm32_port(port);
 	struct stm32_usart_offsets *ofs = &stm32_port->info->ofs;
-	struct stm32_usart_config *cfg = &stm32_port->info->cfg;
 	const char *name = to_platform_device(port->dev)->name;
 	u32 val;
 	int ret;
@@ -458,15 +457,6 @@ static int stm32_startup(struct uart_port *port)
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
@@ -497,7 +487,6 @@ static void stm32_shutdown(struct uart_port *port)
 
 	stm32_clr_bits(port, ofs->cr1, val);
 
-	dev_pm_clear_wake_irq(port->dev);
 	free_irq(port->irq, port);
 }
 
@@ -904,11 +893,18 @@ static int stm32_serial_probe(struct platform_device *pdev)
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
@@ -922,6 +918,10 @@ static int stm32_serial_probe(struct platform_device *pdev)
 
 	return 0;
 
+err_wirq:
+	if (stm32port->info->cfg.has_wakeup && stm32port->wakeirq >= 0)
+		dev_pm_clear_wake_irq(&pdev->dev);
+
 err_nowup:
 	if (stm32port->info->cfg.has_wakeup && stm32port->wakeirq >= 0)
 		device_init_wakeup(&pdev->dev, false);
@@ -959,8 +959,10 @@ static int stm32_serial_remove(struct platform_device *pdev)
 				  TX_BUF_L, stm32_port->tx_buf,
 				  stm32_port->tx_dma_buf);
 
-	if (cfg->has_wakeup && stm32_port->wakeirq >= 0)
+	if (cfg->has_wakeup && stm32_port->wakeirq >= 0) {
+		dev_pm_clear_wake_irq(&pdev->dev);
 		device_init_wakeup(&pdev->dev, false);
+	}
 
 	clk_disable_unprepare(stm32_port->clk);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
