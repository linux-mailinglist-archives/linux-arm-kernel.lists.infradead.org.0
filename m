Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 752FF7F40B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 12:04:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LmgQ62mDEV5rP3/RSUJdK2r3/1maGuKMfT1ISuV6CBs=; b=K1C28T5dGQXbXN
	+D3ZQ1NPNiRo4oeHwD4PvNSWAEjcFBl0BOQyeAi0WQFzEAB+fDrjiUgSskRrBi363N5to7JIOTbOW
	ZYdxC/j1nBhzNaE7q+Sa8PFA0CWiwX0eK7PbLM/hj8TBPhEwsq8dQ4NZiSlQtIzek2XTr1yqgHRZe
	gZuJobsN/d8s66o7IeXkXKe/63Hlf3/o2k4wIzEghWJxQMxlisL9ZDOlTzIoCIl7PB5LCfVv5db0x
	nO+egmJnqsqCRUYYRyw2TOVyK30x6/29WsxrRgcWK2Mc06tSy2rjyhoZ/rCMX4xzG1yFIWHT2hCrI
	mTvk6nCCQ95FKxg1AxMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htUQG-00069t-My; Fri, 02 Aug 2019 10:04:28 +0000
Received: from skedge03.snt-world.com ([91.208.41.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htUQ3-00067h-Et
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 10:04:17 +0000
Received: from sntmail11s.snt-is.com (unknown [10.203.32.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge03.snt-world.com (Postfix) with ESMTPS id 7EEE7603D28;
 Fri,  2 Aug 2019 12:04:10 +0200 (CEST)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail11s.snt-is.com
 (10.203.32.181) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Fri, 2 Aug 2019
 12:04:10 +0200
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1713.004; Fri, 2 Aug 2019 12:04:10 +0200
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "linux-imx@nxp.com"
 <linux-imx@nxp.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 1/4] serial: mctrl_gpio: Avoid probe failures in case of
 missing gpiolib
Thread-Topic: [PATCH v3 1/4] serial: mctrl_gpio: Avoid probe failures in case
 of missing gpiolib
Thread-Index: AQHVSRmgIMto6YABN0CHGANRcY/fqA==
Date: Fri, 2 Aug 2019 10:04:09 +0000
Message-ID: <20190802100349.8659-1-frieder.schrempf@kontron.de>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: 7EEE7603D28.AEAF5
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: festevam@gmail.com, geert+renesas@glider.be,
 gregkh@linuxfoundation.org, jslaby@suse.com, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
 s.hauer@pengutronix.de, shawnguo@kernel.org,
 u.kleine-koenig@pengutronix.de
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_030415_833605_DF4036E7 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [91.208.41.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Frieder Schrempf <frieder.schrempf@kontron.de>

If CONFIG_GPIOLIB is not enabled, mctrl_gpio_init() and
mctrl_gpio_init_noauto() will currently return an error pointer with
-ENOSYS. As the mctrl GPIOs are usually optional, drivers need to
check for this condition to allow continue probing.

To avoid the need for this check in each driver, we return NULL
instead, as all the mctrl_gpio_*() functions are skipped anyway.
We also adapt mctrl_gpio_to_gpiod() to be in line with this change.

Reviewed-by: Fabio Estevam <festevam@gmail.com>
Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
---
Changes in v3
=============
* Move the changes in mctrl_gpio_to_gpiod() to a separate patch
* Reorder tags

Changes in v2
=============
* Move the sh_sci changes to a separate patch
* Add Fabio's R-b tag
---
 drivers/tty/serial/serial_mctrl_gpio.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/tty/serial/serial_mctrl_gpio.h b/drivers/tty/serial/serial_mctrl_gpio.h
index b7d3cca48ede..1b2ff503b2c2 100644
--- a/drivers/tty/serial/serial_mctrl_gpio.h
+++ b/drivers/tty/serial/serial_mctrl_gpio.h
@@ -114,19 +114,19 @@ static inline
 struct gpio_desc *mctrl_gpio_to_gpiod(struct mctrl_gpios *gpios,
 				      enum mctrl_gpio_idx gidx)
 {
-	return ERR_PTR(-ENOSYS);
+	return NULL;
 }
 
 static inline
 struct mctrl_gpios *mctrl_gpio_init(struct uart_port *port, unsigned int idx)
 {
-	return ERR_PTR(-ENOSYS);
+	return NULL;
 }
 
 static inline
 struct mctrl_gpios *mctrl_gpio_init_noauto(struct device *dev, unsigned int idx)
 {
-	return ERR_PTR(-ENOSYS);
+	return NULL;
 }
 
 static inline
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
