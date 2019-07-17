Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA046C27C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 23:18:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FRZyTuyUa3zIwm2v1jjMnWq5vjlsTwMm/Ypbiu8+gp0=; b=csJk8NYQjq1apC+Lsp/+PDgqzl
	O4Xc9ohh2+Y2tXQkl3x2fY0Ytd2hVz3O4iNiyJ/7Zq2ghaghp5x3j6nxMX18Qe1rqdsOmaPAzKFP/
	MZ9a1PWIBTWhlgKgMqIqGZutzaHz6+dugq9DVv2xicLjp6KAMCV5BKgItAhmA4LtLwhaGtbgSgNfF
	7ogO93BNKhj+I+OVaTony/iX9SbFCdljCr3vwBPwthkpGgGAqM1TjHa/SnK0ZcdimeQnK+Vj0bZoJ
	tch+G9pSjiMs7gdBhMYrEdjrj03JpWuVeL/qaIpeOeP9L2ij/swpJqQT0IxGwSy0jjH1ExlnOgYt0
	G2qz3DTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnrJV-0001vA-0M; Wed, 17 Jul 2019 21:18:13 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnrIN-0001EB-Cw; Wed, 17 Jul 2019 21:17:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563398203;
 bh=RKyYi3D865CoXi/SiII5f3nwe9zwmjhv+nfFs4qsZsU=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=XfwEdH662eBbsfJZC2I0u14+ymNnigc191V10m3c+7yrrJc7qQoJYe9g2UUIH/8Gr
 XANagLGRmTdDjcDRfDhL17cbMrfQhgfZV8nrymxVmjCN93AKjx0SNEhtWKxHbsPBN5
 BcMHBNxQTbMSOM7t5SpdF0aqh01ZzTQm6vYYjtjc=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.103]) by mail.gmx.com
 (mrgmx105 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1MTABT-1hseWL3UfX-00UZVA; Wed, 17 Jul 2019 23:16:42 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Mark Brown <broonie@kernel.org>
Subject: [PATCH RFC 15/18] spi: bcm2835: enable shared interrupt support
Date: Wed, 17 Jul 2019 23:16:01 +0200
Message-Id: <1563398164-2679-2-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563398164-2679-1-git-send-email-wahrenst@gmx.net>
References: <1563398164-2679-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:iSeXsKsBYm+LpY7gMh3HRn6IhH4JlouvRmjBtpI5n9cMlxi2Jpd
 jUFtjIx3cAC6SaO8iKGQ8TUsmP/Zs6HfzxNbslS7Nlfjo+ledFO3K+iffwXySpZxHqpxaoI
 d3F6YJP/s2NdiX3L5PAypP5EejYpNzsaE0Hq5N5W+wvBwNoIO/AO+zpy423FHl0m84wIQAR
 3jy8KGRzma+2U4LR1WvuA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:6DeFpctAVQA=:SXWwWKJLfO5X7+yGEdIS9d
 D89FO3nbE7+Tzf1dZCT3v1tJpaXjmzCkf3Q3+YyyJAGlL1cIovUMT+fE2qi1AHwQK4LUzE4d2
 CHyo+sekxF1bbSVOAnAqfPcgOF16BThqBTUJbeYgWIb2K5jOF2yHiToAQ3xkdojkxTW/T0nwd
 sjPe01nTNy2ubg3Lb+2OMC0pifDOxpBj8DK+2uGls7x6cYmmldELscsqc9a0BNsnt8qzGZBTE
 2s/pQ9/hpPd3lG2DvgLO/P0NqUouXbb11Y4W7CTnH6NhjRLJqHUTt0iNcaDcWddZ3/DDuMflA
 HDF8qNwaueGdiPP8k75V0pP08+H+LnK1zgGmvYLGdcFF9ToaUAwHmWtBCK0yh1RzZdLCgaDEl
 ISkvjqCrBzhZ2EGWWFYlmcLjxtVIwQGpZJP7QBdUq6jP815fz/keHu8ckGcGaQ3wOHjuA6im0
 Y0Tbayl8owC7JzDQBcj0euQdnj3CnpZN5cdfTk+Jse6eTk8kF/HFg7NfhUQkdZGSmBog4Z4ra
 w4XNFI/AeEj63Iad57alapf623FJlMQHnV5ddE1ksch8v7av27tsXKftLgfBMubNyY7YYXbAy
 b6UU4ckBmAesMI027+fhRpiYnen2r65c5WfPgLNRPeSs7gKswgFBuryPtALIFE7OVjEkOLJ+V
 Tlm5XNmKl2s/3yf4LpQu+CBlOFUnyxbxEifqNWZlRN7x+wCMCsOqdr8BSrJf/6bv91n/9Vy7i
 rwLiHr1YpOogY3bbcpYKwX45jR6rD216vISnsgQmHIJG7YatfGC69Hn+3ZdAwIshttJUg8zZa
 ecL+3U3wGpvqV4Z2LvD+X+228r6tX8bSv2l37q6wW0fji2s8NOoczmjvLlJLPsM+IaphkLLGw
 FqtFkbaN4HLFFMdzs0M6hf8TDrE/4xtMPTOW7/mbYB/j6CfCna0hIqMHLeaXMPSufmFCRs9lX
 kGvDIlpB1ZOUj+yK/AvHpNgYDyE5MJ6WD7oYmX89R61wUAL2kTebBVIKQHJB0GswpTGUGtP+z
 hy1KyMSEAL/04g9tOQs5o0qiVpVgZv1aCgqRWwr0YNNpA2OqGpSvsvTRz1q3LiaNyTeNcmBcT
 SnlX4+mpESUhH8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_141703_776246_CA203EC8 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Martin Sperl <kernel@martin.sperl.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Martin Sperl <kernel@martin.sperl.org>

The new BCM2838 share one interrupt for multiple instances of the BCM2835
SPI controller. So this enables shared interrupt support for them.

Signed-off-by: Martin Sperl <kernel@martin.sperl.org>
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 drivers/spi/spi-bcm2835.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi-bcm2835.c b/drivers/spi/spi-bcm2835.c
index 6f243a9..50969ae 100644
--- a/drivers/spi/spi-bcm2835.c
+++ b/drivers/spi/spi-bcm2835.c
@@ -346,6 +346,10 @@ static irqreturn_t bcm2835_spi_interrupt(int irq, void *dev_id)
 	if (bs->tx_len && cs & BCM2835_SPI_CS_DONE)
 		bcm2835_wr_fifo_blind(bs, BCM2835_SPI_FIFO_SIZE);

+	/* check if we got interrupt enabled */
+	if (!(bcm2835_rd(bs, BCM2835_SPI_CS) & BCM2835_SPI_CS_INTR))
+		return IRQ_NONE;
+
 	/* Read as many bytes as possible from FIFO */
 	bcm2835_rd_fifo(bs);
 	/* Write as many bytes as possible to FIFO */
@@ -1028,8 +1032,8 @@ static int bcm2835_spi_probe(struct platform_device *pdev)
 	bcm2835_wr(bs, BCM2835_SPI_CS,
 		   BCM2835_SPI_CS_CLEAR_RX | BCM2835_SPI_CS_CLEAR_TX);

-	err = devm_request_irq(&pdev->dev, bs->irq, bcm2835_spi_interrupt, 0,
-			       dev_name(&pdev->dev), ctlr);
+	err = devm_request_irq(&pdev->dev, bs->irq, bcm2835_spi_interrupt,
+			       IRQF_SHARED, dev_name(&pdev->dev), ctlr);
 	if (err) {
 		dev_err(&pdev->dev, "could not request IRQ: %d\n", err);
 		goto out_clk_disable;
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
