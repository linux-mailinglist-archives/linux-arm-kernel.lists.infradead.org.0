Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB8FFA1080
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 06:37:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Qyp2fIvp67v60TDVDi51OcdwrZPyKgtI4UYn53f/lkY=; b=PU7fMGL/dxBHeO
	AhkJwmQ4X0SEhWtlR6zPv1h3OaQ5ZcUHuEnAeAG2n5xpho2a8nfZPvsCuMRu6BnoYrY6OvQ6aa5b+
	9x2+imTswgb2Gg15JuZDluej78DxvzT0uVO9idvTbEJ1uZHKVgjn9QwQvz11Ae8xv9OoJLozgWg7s
	qpfgTuvOwAxZVW0rmL72kOeYJP/ypoAKiOWztrV3tALoPRn7NG/0K1Evdwowv31QnBF4W7FL/ZwcZ
	trFoZDl0gacdG3j4O5ZV15JdQFPno1ay/aPQBhAk9vYqjWCdOVgZ5olisYj6QbNNueCEMBpAI7rnp
	H+g/GOvbNjSkdu77d37w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3CBi-0002OB-Mq; Thu, 29 Aug 2019 04:37:34 +0000
Received: from antares.kleine-koenig.org ([94.130.110.236])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3CBY-0002NQ-Mq
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 04:37:26 +0000
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
 id D512B7891D8; Thu, 29 Aug 2019 06:37:22 +0200 (CEST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jslaby@suse.com>
Subject: [PATCH] [RFC] tty/serial: imx: make use of format specifier %dE
Date: Thu, 29 Aug 2019 06:37:16 +0200
Message-Id: <20190829043716.5223-1-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_213725_041738_0BC711B8 
X-CRM114-Status: GOOD (  14.11  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [94.130.110.236 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Jani Nikula <jani.nikula@linux.intel.com>, Petr Mladek <pmladek@suse.com>,
 linux-serial@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 Shawn Guo <shawnguo@kernel.org>, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 Enrico Weigelt <lkml@metux.net>, NXP Linux Team <linux-imx@nxp.com>,
 kernel@pengutronix.de, Andrew Morton <akpm@linux-foundation.org>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I created a patch that teaches printk et al to emit a symbolic error
name for an error valued integer[1]. With that applied

	dev_err(&pdev->dev, "failed to get ipg clk: %dE\n", ret);

emits

	... failed to get ipg clk: EPROBE_DEFER

if ret is -EPROBE_DEFER. Petr Mladek (i.e. one of the printk
maintainers) had concerns if this would be well received and worth the
effort. He asked to present it to a few subsystems. So for now, this
patch converting the imx UART driver shouldn't be applied yet but it
would be great to get some feedback about if you think that being able
to easily printk (for example) "EIO" instead of "-5" is a good idea.
Would it help you? Do you think it helps your users?

Thanks
Uwe

[1] https://lkml.org/lkml/2019/8/27/1456
---
 drivers/tty/serial/imx.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
index 57d6e6ba556e..a3dbb9378e8b 100644
--- a/drivers/tty/serial/imx.c
+++ b/drivers/tty/serial/imx.c
@@ -2143,7 +2143,7 @@ static int imx_uart_probe_dt(struct imx_port *sport,
 
 	ret = of_alias_get_id(np, "serial");
 	if (ret < 0) {
-		dev_err(&pdev->dev, "failed to get alias id, errno %d\n", ret);
+		dev_err(&pdev->dev, "failed to get alias id, error %dE\n", ret);
 		return ret;
 	}
 	sport->port.line = ret;
@@ -2236,14 +2236,14 @@ static int imx_uart_probe(struct platform_device *pdev)
 	sport->clk_ipg = devm_clk_get(&pdev->dev, "ipg");
 	if (IS_ERR(sport->clk_ipg)) {
 		ret = PTR_ERR(sport->clk_ipg);
-		dev_err(&pdev->dev, "failed to get ipg clk: %d\n", ret);
+		dev_err(&pdev->dev, "failed to get ipg clk: %dE\n", ret);
 		return ret;
 	}
 
 	sport->clk_per = devm_clk_get(&pdev->dev, "per");
 	if (IS_ERR(sport->clk_per)) {
 		ret = PTR_ERR(sport->clk_per);
-		dev_err(&pdev->dev, "failed to get per clk: %d\n", ret);
+		dev_err(&pdev->dev, "failed to get per clk: %dE\n", ret);
 		return ret;
 	}
 
@@ -2252,7 +2252,7 @@ static int imx_uart_probe(struct platform_device *pdev)
 	/* For register access, we only need to enable the ipg clock. */
 	ret = clk_prepare_enable(sport->clk_ipg);
 	if (ret) {
-		dev_err(&pdev->dev, "failed to enable per clk: %d\n", ret);
+		dev_err(&pdev->dev, "failed to enable per clk: %dE\n", ret);
 		return ret;
 	}
 
@@ -2330,7 +2330,7 @@ static int imx_uart_probe(struct platform_device *pdev)
 		ret = devm_request_irq(&pdev->dev, rxirq, imx_uart_rxint, 0,
 				       dev_name(&pdev->dev), sport);
 		if (ret) {
-			dev_err(&pdev->dev, "failed to request rx irq: %d\n",
+			dev_err(&pdev->dev, "failed to request rx irq: %dE\n",
 				ret);
 			return ret;
 		}
@@ -2338,7 +2338,7 @@ static int imx_uart_probe(struct platform_device *pdev)
 		ret = devm_request_irq(&pdev->dev, txirq, imx_uart_txint, 0,
 				       dev_name(&pdev->dev), sport);
 		if (ret) {
-			dev_err(&pdev->dev, "failed to request tx irq: %d\n",
+			dev_err(&pdev->dev, "failed to request tx irq: %dE\n",
 				ret);
 			return ret;
 		}
@@ -2346,7 +2346,7 @@ static int imx_uart_probe(struct platform_device *pdev)
 		ret = devm_request_irq(&pdev->dev, rtsirq, imx_uart_rtsint, 0,
 				       dev_name(&pdev->dev), sport);
 		if (ret) {
-			dev_err(&pdev->dev, "failed to request rts irq: %d\n",
+			dev_err(&pdev->dev, "failed to request rts irq: %dE\n",
 				ret);
 			return ret;
 		}
@@ -2354,7 +2354,7 @@ static int imx_uart_probe(struct platform_device *pdev)
 		ret = devm_request_irq(&pdev->dev, rxirq, imx_uart_int, 0,
 				       dev_name(&pdev->dev), sport);
 		if (ret) {
-			dev_err(&pdev->dev, "failed to request irq: %d\n", ret);
+			dev_err(&pdev->dev, "failed to request irq: %dE\n", ret);
 			return ret;
 		}
 	}
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
