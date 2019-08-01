Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B69C7D70C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:18:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XVyv9xa3vzYPGmTupkkYTvfuZS7E+H7h+tOreaO7W+Y=; b=LIa50xrJXbbg6N
	DN2D7rlEbISeGGW9gtp7XSv7U6wItjlGFCJCVdsZP0uFwIzeAsLN1qjU+xOTbEdkADMxWZkJlJsv/
	fNMioUJASYa9OHvvZ2l6PyRBOGY/zHLP43PqqyHcZGNvgDGDPchLDg1jG14pC3HI6UdW2Da2afg8y
	62QU5fI3NNyNMtfg1FrwahyFWCPVV+CjTXVB+RXjkGjoE2NlNhUIfUqFvXThPTSk2tpcNPbyIDVzA
	yXysWTWkc4/WoYYW5FPg96QNr2oVlmM15jzjBiUxMNK8lXhEicqTlcAi8C7pAe4qVfOB48U2IqrSs
	q5alLK9aKzN9QCWuytyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6IA-0008FL-Hw; Thu, 01 Aug 2019 08:18:30 +0000
Received: from skedge03.snt-world.com ([91.208.41.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6Hx-00088f-Dw
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:18:19 +0000
Received: from sntmail12r.snt-is.com (unknown [10.203.32.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge03.snt-world.com (Postfix) with ESMTPS id 1BCB46274CE;
 Thu,  1 Aug 2019 10:18:06 +0200 (CEST)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail12r.snt-is.com
 (10.203.32.182) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Thu, 1 Aug 2019
 10:18:05 +0200
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1713.004; Thu, 1 Aug 2019 10:18:05 +0200
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Shawn Guo
 <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, "Pengutronix
 Kernel Team" <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 "NXP Linux Team" <linux-imx@nxp.com>
Subject: [PATCH] serial: imx: Avoid probe failure in case of missing gpiolib
Thread-Topic: [PATCH] serial: imx: Avoid probe failure in case of missing
 gpiolib
Thread-Index: AQHVSEGkENWr6+HjfEGe5le+et6JcQ==
Date: Thu, 1 Aug 2019 08:18:05 +0000
Message-ID: <20190801081524.22577-1-frieder.schrempf@kontron.de>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: 1BCB46274CE.A071D
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: festevam@gmail.com, gregkh@linuxfoundation.org,
 jslaby@suse.com, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
 s.hauer@pengutronix.de, shawnguo@kernel.org
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_011817_634556_BF85D8D0 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [91.208.41.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 Schrempf Frieder <frieder.schrempf@kontron.de>, Jiri Slaby <jslaby@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Frieder Schrempf <frieder.schrempf@kontron.de>

If CONFIG_GPIOLIB is not enabled, mctrl_gpio_init() will return
-ENOSYS and cause the probing of the imx UART to fail. As the
GPIOs are optional, we should continue probing in this case.

Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
---
 drivers/tty/serial/imx.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
index 10db3e54ac9e..51714498dacf 100644
--- a/drivers/tty/serial/imx.c
+++ b/drivers/tty/serial/imx.c
@@ -2237,7 +2237,9 @@ static int imx_uart_probe(struct platform_device *pdev)
 	timer_setup(&sport->timer, imx_uart_timeout, 0);
 
 	sport->gpios = mctrl_gpio_init(&sport->port, 0);
-	if (IS_ERR(sport->gpios))
+	if (PTR_ERR(sport->gpios) == -ENOSYS)
+		sport->gpios = NULL;
+	else if (IS_ERR(sport->gpios))
 		return PTR_ERR(sport->gpios);
 
 	sport->clk_ipg = devm_clk_get(&pdev->dev, "ipg");
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
