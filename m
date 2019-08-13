Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D038C069
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 20:19:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RfSxvtBmtVl9RyIgFAvCxd3WDhZyomXFiqxJTk6QO84=; b=OW6Nl3sY93U3ikNGEtmLcDplOV
	2yRQMJq38XeOxNcGkT9YL5D8+4FIvcgU2E+tc2kb4UGZfDojVSvaLqPfC2D8SPWgd0IcU75UXGtE7
	yqf1ZmVkXUhSbMpLiG5DX64OicwEYPXGChpMDjXIWg/+YP36Ff6zvbObSBQlCDb1U7aED5tOJBPKR
	TsXtTqnJGCgqqLU1Qq7hh2mXBYCK7cQUkXzvrzWpUyGoaT5wh/OlJNgdeNFFuePanvlG8jXIhZZFD
	Lvn4pqd7Hf7FrlS/TVzGdBdYetHwb62ygKaj0SmMeY4uimgIKnW5e4eQoig4ce81f+/CHjFfV4wE3
	Bm5ULYPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxbOA-00069F-16; Tue, 13 Aug 2019 18:19:18 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxbNr-00061M-Fv
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 18:19:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1565720285;
 bh=YHgFWABQCK3bkmWuvNIeLgrrCAVC2vvx0YHFsJqPSD0=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Sb0U0MtZNl45R7+uO3PXfMLtAXwvIHJZgtOfiWqpZrgqg1GhQAWCYtLvaQUUXdIbe
 23ZWBoOIr1Zgiw9fdJUZB1gI0Wfj9TXh8rzAZ9pm1dphvebFOhZ3xBGSU5959y1iFE
 gAgj4upoBLJ5y7zEKxnQ9pR9av5po19pb7/3vGwg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.106]) by mail.gmx.com
 (mrgmx102 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0MhNk6-1haxsV0bqc-00MeTk; Tue, 13 Aug 2019 20:18:05 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>,
 "David S. Miller" <davem@davemloft.net>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH 3/3] net: qca: update MODULE_AUTHOR() email address
Date: Tue, 13 Aug 2019 20:17:29 +0200
Message-Id: <1565720249-6549-3-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565720249-6549-1-git-send-email-wahrenst@gmx.net>
References: <1565720249-6549-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:gySsGcmGz6lTucmKNnrxFzlSQrOGje1q3Uyp7P5YbpBq1u6e/1o
 kShlic99s4juHLf8AsHCxC++Mq6PTYzCMksl+b8R69puQmd444hYPuSizsdF2DmaT3r7NRg
 /4KTn5uNQ86bLUGJvqQ4d8XP0kDl8NCyoeQVZ7yARYRmxWbFAb719tB3kgQmcELdteWioLE
 05T7Z1Kr1cIsjEfYEr8gA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:HaPTu5B3zB8=:f6BLAuxCPvvqWE4ttkCXac
 Iy7SgqOMIfn16nyB3QGvdzAku1+q946nMVn6+Y+wwdnq3Wl1YXJHsv36MW0G0yePmGw3ahHGf
 Oozm9RpuEOBP+avDd0bnzo73fLBwBSm9M8DJT54WAL7BQNdBq1W9aaPf6/Ws2NJ+fGV6p8seh
 lUgnx9fTN2PKbGNwKk/7QiZiVhpecy9VoyHAxhn2sOFfvEuq0oi13ZhWNS0R17dCPFlOI+z2Y
 l4dkw4Sal5TCIi9OG1w973BjjKtWVClttvB1r3ljFvepoyN5DXuJiHGul/BVi+p8FusLpeyB2
 QlpeW5lQymkIGfMRpR/YQIDnOxfQrYJ4RU4LXtV1tLIaFyg9gIiucNeZ7uEe1W3bXFC2G7rD6
 o8AzHFx6vUNEaCDU/RW2Ub+2m/g3rEkrOWmZoi0gwBm0+GBy2ZYjQJRQZ4wSoNUvcWzgzqdv4
 moNb8qo+uVOx2YiOjMrV7rxQ8JRvtK1kYmM1rA0wa4EsBPGIT/ClOevE9M14UlQt5H5Gc90/q
 T1cn1YsYb9QFs/ldQ0vEI5scpg06l85IBalBLskuzv2JCxlcR+OzH0oyFSqRKHnrQYbxfM7ro
 J5GMwekeZu8bmb++nH3mZL7xvW+1VIp/KI9Zy3HRzQgpBkaT6IgvE/7gYOi54gk0Q9vJxTvdz
 UxNTviZ2i99RvNDVdutPaFsk4hh672n5r2XdYjvRpB+D6ABV3XdcMdAQKgkBJp/5AVAmPx24+
 E77VoYSWnnrmi30iVuqCUHq18/0BbYyAVVWiFou/UDPnCdQXjY8UgtoWs7tiREkd9CeFharDo
 X7WIB4vYEGnOEUE8phhngWZMGEWgX8qn7Iq6XKgMZpOPmqThpXM/23aNL9bXB3MUE070PueC4
 sUjSM1995pCNQi5qQweB20KFk6nF9c7z2DnEtWW/1EGxCPb/1P+0I3fxFsL2COqattBqHOTkS
 cs8We3ClQGTPkqlf+0Shrg2MSX8goTal36/6SVS9bm3ZdW6b+PXy4qdLMWqUwRD1EM20XFZZU
 fl5wpBTy43RmuoyJTjLxASZGPKXgN+eAu98KUeEIIB7w/6dBoY2/aWUEsGY0QKJGvGusiBTIu
 elVbxPvWdq3bSfXBv37mUzG8C4Unms/NgOK4Q2TFVLrVXmzxGqmCMsRylFMlMcPfTVZdi+FKO
 qbnt26QqI1CKSIpb/2A0gcEzg/gMEwPgFXHk46JmMgCH8LSQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_111859_854903_26E712B8 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-hwmon@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I2SE has been acquired by in-tech. So the email address listed in
MODULE_AUTHOR() will be disabled in the near future. I only have access
to QCA7000 boards at in-tech, so use my new company address.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 drivers/net/ethernet/qualcomm/qca_7k_common.c | 2 +-
 drivers/net/ethernet/qualcomm/qca_spi.c       | 2 +-
 drivers/net/ethernet/qualcomm/qca_uart.c      | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/qualcomm/qca_7k_common.c b/drivers/net/ethernet/qualcomm/qca_7k_common.c
index 6b511f0..87d023d 100644
--- a/drivers/net/ethernet/qualcomm/qca_7k_common.c
+++ b/drivers/net/ethernet/qualcomm/qca_7k_common.c
@@ -162,5 +162,5 @@ EXPORT_SYMBOL_GPL(qcafrm_fsm_decode);

 MODULE_DESCRIPTION("Qualcomm Atheros QCA7000 common");
 MODULE_AUTHOR("Qualcomm Atheros Communications");
-MODULE_AUTHOR("Stefan Wahren <stefan.wahren@i2se.com>");
+MODULE_AUTHOR("Stefan Wahren <stefan.wahren@in-tech.com>");
 MODULE_LICENSE("Dual BSD/GPL");
diff --git a/drivers/net/ethernet/qualcomm/qca_spi.c b/drivers/net/ethernet/qualcomm/qca_spi.c
index b28360b..d9d3554 100644
--- a/drivers/net/ethernet/qualcomm/qca_spi.c
+++ b/drivers/net/ethernet/qualcomm/qca_spi.c
@@ -1034,6 +1034,6 @@ module_spi_driver(qca_spi_driver);

 MODULE_DESCRIPTION("Qualcomm Atheros QCA7000 SPI Driver");
 MODULE_AUTHOR("Qualcomm Atheros Communications");
-MODULE_AUTHOR("Stefan Wahren <stefan.wahren@i2se.com>");
+MODULE_AUTHOR("Stefan Wahren <stefan.wahren@in-tech.com>");
 MODULE_LICENSE("Dual BSD/GPL");
 MODULE_VERSION(QCASPI_DRV_VERSION);
diff --git a/drivers/net/ethernet/qualcomm/qca_uart.c b/drivers/net/ethernet/qualcomm/qca_uart.c
index 5906168..ab4da8e 100644
--- a/drivers/net/ethernet/qualcomm/qca_uart.c
+++ b/drivers/net/ethernet/qualcomm/qca_uart.c
@@ -418,6 +418,6 @@ module_serdev_device_driver(qca_uart_driver);

 MODULE_DESCRIPTION("Qualcomm Atheros QCA7000 UART Driver");
 MODULE_AUTHOR("Qualcomm Atheros Communications");
-MODULE_AUTHOR("Stefan Wahren <stefan.wahren@i2se.com>");
+MODULE_AUTHOR("Stefan Wahren <stefan.wahren@in-tech.com>");
 MODULE_LICENSE("Dual BSD/GPL");
 MODULE_VERSION(QCAUART_DRV_VERSION);
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
