Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3BB31F8867
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jun 2020 12:29:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OjAS4uvoFd/oshJzC38qPHasuX6e1CAbdVoTMwXyiR8=; b=jWTsqfvZVtB6IjFSNy5hLwC+Ni
	v2f1ymnTiB0AjoSZiyCVn4LTV0DNATJm2PiUKIUuE+rx4lauSxRmXELHr8k+njCcpcQM6l53eCI4o
	Sl5LCGW1Gjn9xQ+dIPHAM8Lv166f2HY/fHBqpimcYYpAdGWfareQO8onHv47pLj6KSc8rb3N8fi0O
	tAFCsORvEo4gIhEqpXWMdPY0b+rq8OkjGkxP7rAVJL75gX7K35jyF5os1Vfszevq/UN6cKiRetJnx
	1G/j5BzGALnSmIB5+x6H909Inhm1yAYGk9LNdlwRphIQ6mR+numidG/KbfiGVVtuIM43g/jpGX4Oi
	3b8crJsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkPti-0001pB-5B; Sun, 14 Jun 2020 10:29:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkPtE-0001Ss-A0
 for linux-arm-kernel@lists.infradead.org; Sun, 14 Jun 2020 10:29:25 +0000
Received: from PC-kkoz.proceq.com (unknown [213.160.61.66])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B020D20775;
 Sun, 14 Jun 2020 10:29:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592130564;
 bh=VbPnrh2dzWmMu5AE0V4vF5f2FTzseq8nQUHehOUFwYo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Ds0Zyl5uWepxD2oLJwyPWlfZwstz7tadBfOX10qtRemlwtfs8s7iK9wzRnGbCQ45H
 cCTECw+8379UGcqi5gUW6PWqPEq8/Orwly3BYSWmHiTqxsM8c8ZU+Q34JYQGPnbjBF
 3wzwL4qTKFfG9FQDWYMm0/XOhGs//bX/eeocvO6s=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Oleksij Rempel <linux@rempel-privat.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Wolfram Sang <wsa@kernel.org>, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] i2c: imx: Fix external abort on interrupt in exit paths
Date: Sun, 14 Jun 2020 12:29:04 +0200
Message-Id: <1592130544-19759-2-git-send-email-krzk@kernel.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1592130544-19759-1-git-send-email-krzk@kernel.org>
References: <1592130544-19759-1-git-send-email-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_032924_390364_0B305A82 
X-CRM114-Status: GOOD (  14.85  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Oleksij Rempel <o.rempel@pengutronix.de>,
 Marc Kleine-Budde <mkl@pengutronix.de>, stable@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If interrupt comes late, during probe error path or device remove (could
be triggered with CONFIG_DEBUG_SHIRQ), the interrupt handler
i2c_imx_isr() will access registers with the clock being disabled.  This
leads to external abort on non-linefetch on Toradex Colibri VF50 module
(with Vybrid VF5xx):

Unhandled fault: external abort on non-linefetch (0x1008) at 0x8882d003
Internal error: : 1008 [#1] ARM
Modules linked in:
CPU: 0 PID: 1 Comm: swapper Not tainted 5.7.0 #607
Hardware name: Freescale Vybrid VF5xx/VF6xx (Device Tree)
  (i2c_imx_isr) from [<8017009c>] (free_irq+0x25c/0x3b0)
  (free_irq) from [<805844ec>] (release_nodes+0x178/0x284)
  (release_nodes) from [<80580030>] (really_probe+0x10c/0x348)
  (really_probe) from [<80580380>] (driver_probe_device+0x60/0x170)
  (driver_probe_device) from [<80580630>] (device_driver_attach+0x58/0x60)
  (device_driver_attach) from [<805806bc>] (__driver_attach+0x84/0xc0)
  (__driver_attach) from [<8057e228>] (bus_for_each_dev+0x68/0xb4)
  (bus_for_each_dev) from [<8057f3ec>] (bus_add_driver+0x144/0x1ec)
  (bus_add_driver) from [<80581320>] (driver_register+0x78/0x110)
  (driver_register) from [<8010213c>] (do_one_initcall+0xa8/0x2f4)
  (do_one_initcall) from [<80c0100c>] (kernel_init_freeable+0x178/0x1dc)
  (kernel_init_freeable) from [<80807048>] (kernel_init+0x8/0x110)
  (kernel_init) from [<80100114>] (ret_from_fork+0x14/0x20)

Additionally, the i2c_imx_isr() could wake up the wait queue
(imx_i2c_struct->queue) before its initialization happens.

The resource-managed framework should not be used for interrupt handling,
because the resource will be released too late - after disabling clocks.
The interrupt handler is not prepared for such case.

Fixes: 1c4b6c3bcf30 ("i2c: imx: implement bus recovery")
Cc: <stable@vger.kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Changes since v1:
1. Remove the devm- and use regular methods.
---
 drivers/i2c/busses/i2c-imx.c | 25 ++++++++++++++-----------
 1 file changed, 14 insertions(+), 11 deletions(-)

diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index 6e45958565d1..8a0d49419326 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -1171,14 +1171,6 @@ static int i2c_imx_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	/* Request IRQ */
-	ret = devm_request_irq(&pdev->dev, irq, i2c_imx_isr, IRQF_SHARED,
-				pdev->name, i2c_imx);
-	if (ret) {
-		dev_err(&pdev->dev, "can't claim irq %d\n", irq);
-		goto clk_disable;
-	}
-
 	/* Init queue */
 	init_waitqueue_head(&i2c_imx->queue);
 
@@ -1197,6 +1189,14 @@ static int i2c_imx_probe(struct platform_device *pdev)
 	if (ret < 0)
 		goto rpm_disable;
 
+	/* Request IRQ */
+	ret = request_threaded_irq(irq, i2c_imx_isr, NULL, IRQF_SHARED,
+				   pdev->name, i2c_imx);
+	if (ret) {
+		dev_err(&pdev->dev, "can't claim irq %d\n", irq);
+		goto rpm_put;
+	}
+
 	/* Set up clock divider */
 	i2c_imx->bitrate = I2C_MAX_STANDARD_MODE_FREQ;
 	ret = of_property_read_u32(pdev->dev.of_node,
@@ -1239,13 +1239,13 @@ static int i2c_imx_probe(struct platform_device *pdev)
 
 clk_notifier_unregister:
 	clk_notifier_unregister(i2c_imx->clk, &i2c_imx->clk_change_nb);
+	free_irq(irq, i2c_imx);
+rpm_put:
 	pm_runtime_put_noidle(&pdev->dev);
 rpm_disable:
 	pm_runtime_disable(&pdev->dev);
 	pm_runtime_set_suspended(&pdev->dev);
 	pm_runtime_dont_use_autosuspend(&pdev->dev);
-
-clk_disable:
 	clk_disable_unprepare(i2c_imx->clk);
 	return ret;
 }
@@ -1253,7 +1253,7 @@ static int i2c_imx_probe(struct platform_device *pdev)
 static int i2c_imx_remove(struct platform_device *pdev)
 {
 	struct imx_i2c_struct *i2c_imx = platform_get_drvdata(pdev);
-	int ret;
+	int irq, ret;
 
 	ret = pm_runtime_get_sync(&pdev->dev);
 	if (ret < 0)
@@ -1273,6 +1273,9 @@ static int i2c_imx_remove(struct platform_device *pdev)
 	imx_i2c_write_reg(0, i2c_imx, IMX_I2C_I2SR);
 
 	clk_notifier_unregister(i2c_imx->clk, &i2c_imx->clk_change_nb);
+	irq = platform_get_irq(pdev, 0);
+	if (irq >= 0)
+		free_irq(irq, i2c_imx);
 	clk_disable_unprepare(i2c_imx->clk);
 
 	pm_runtime_put_noidle(&pdev->dev);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
