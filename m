Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3207EA639A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 10:11:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TtrWHYxI4jmDHCv8JjCnCiJZjYX9rPjrk5wn+qSfquw=; b=fHY7TaPY5hwa6p
	BgXU1iuKH4qGgrZWqDNyao4ym8UxoQAnWJ/1a5qzZ9wMPbVhH9za1iPrkEHkIJSY/tFcVzwLu0i4o
	Cc87ZNpH0Vw5LhbBTiaEIAJGuDiylLVcMOSPSUxCv/FY4T17UAH+xhV23jhxT2SzYe7woVgTPJuhY
	LTRMiby41qsa0NaM9qlnP4a1+j94l4sxJwzmLFD8UudY5WxBaYR+EBjhJhKfWZiFegpqf6TjG1Olw
	xSBhkePfaQDUjbPyFzzIMdthBUs/2BZ4KTlc1C55OzKU9ZX4uuznXOadR6+MLGRqH8KToD7Hz55/y
	3J5Q/GQSxdUNER7ZHezQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i53um-0008Pl-Bq; Tue, 03 Sep 2019 08:11:48 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i53uZ-0008PB-LF
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 08:11:37 +0000
Received: by mail-lj1-x244.google.com with SMTP id h3so8248376ljb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 01:11:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Tyymm91MS3uOn9HpSwdxIsV+GT0nl2VitRUl2IB6nOw=;
 b=N5Cb1pysICGuR4xGN0r/C4C9NhXdoMUlkOAomeQyAbbYuBc9My7GQq1DsilPoyBed9
 M6n9QwjHaAj+Pl8m9lfve6EF05f4mUpQj/BKtV84kIMeiUvCwY6Cg1V+2Cz7Tyu4TNdU
 Vax6Uxgi1Q/AYbpWOqzvI7eW2jrkKILoK6FjFxvnEIZa2205QzKm7IWRvxBLQXZo4Mdy
 mH58L3SteOZsDAcUDBxNrgmPnmTJaAeG6glYyugsCcdNpEWZXRJG8/XJBV/k+Wk75HVS
 5h+BHdvWqLmpjJ8PmWft297g7IgsHJjiLGPlm10LsgQ8PrnDyy7h/37WOjujzzes2D8g
 +caA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Tyymm91MS3uOn9HpSwdxIsV+GT0nl2VitRUl2IB6nOw=;
 b=WyMlU4v/eDbTcbk5jb6piZZ4+XH1XVIJshQ/rT4cqkM8F37Tv9C+s+drY/cdO2nJbX
 xxNTU77cSapSnVO4PO/LDmVBGBjxqgM0U51gzkhWxiXuxcPE3QKCyiTDe5TCvxwgMMhV
 YPbzTlutmqzCeoE35VaB79aoMc3NPeOJjfEpsQbfTxEIwaoPkaKgh7907NMnsQ8ttuNa
 lNAbAfZnHVbWSM6WVxv6sPZnlpmS8pGHyhg6uO1ITFoH89490ufDWmMNWKH8uphKvche
 PSWzOO1ymx8ON3803Dz8YmXsxefd+9Zi/cvnLpm5N50QCJrJqv9+CyI5fCPBcY2PWxAh
 Uvnw==
X-Gm-Message-State: APjAAAU50BYPfNqb2jsM3yNQ+L4ywKlFEKNcvvB/DH+Ju+Kc6i402ANC
 Pj6Bh7dQ1bFoLItSnwMX6oWl7u+PELc=
X-Google-Smtp-Source: APXvYqwUnFbDtTzGCCSNCsub1i+N+3wqejdFFKlBlrvWWcq8hqyo9DwV6xiAQeT2hUZ+xLemBdlzFg==
X-Received: by 2002:a2e:874a:: with SMTP id q10mr1611312ljj.187.1567498293371; 
 Tue, 03 Sep 2019 01:11:33 -0700 (PDT)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id e21sm2811980lfj.10.2019.09.03.01.11.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2019 01:11:31 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>
Subject: [PATCH v3] drm/mcde: Fix DSI transfers
Date: Tue,  3 Sep 2019 10:11:29 +0200
Message-Id: <20190903081129.19617-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_011135_711912_F1318A6B 
X-CRM114-Status: GOOD (  17.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Stephan Gerhold <stephan@gerhold.net>, kbuild test robot <lkp@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There were bugs in the DSI transfer (read and write) function
as it was only tested with displays ever needing a single byte
to be written. Fixed it up and tested so we can now write
messages of up to 16 bytes and read up to 4 bytes from the
display.

Tested with a Sony ACX424AKP display: this display now self-
identifies and can control backlight in command mode.

Reported-by: kbuild test robot <lkp@intel.com>
Fixes: 5fc537bfd000 ("drm/mcde: Add new driver for ST-Ericsson MCDE")
Reviewed-by: Stephan Gerhold <stephan@gerhold.net>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v2->v3:
- Fix an error message to indicate reading error rather than
  writing error.
- Use the local variable for underflow print.
- Collected Stephan's reviewed-by.
ChangeLog v1->v2:
- Fix a print modifier for dev_err() found by the build robot.
---
 drivers/gpu/drm/mcde/mcde_dsi.c | 70 ++++++++++++++++++++++-----------
 1 file changed, 47 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/mcde/mcde_dsi.c b/drivers/gpu/drm/mcde/mcde_dsi.c
index 07f7090d08b3..cd261c266f35 100644
--- a/drivers/gpu/drm/mcde/mcde_dsi.c
+++ b/drivers/gpu/drm/mcde/mcde_dsi.c
@@ -178,22 +178,26 @@ static ssize_t mcde_dsi_host_transfer(struct mipi_dsi_host *host,
 	const u32 loop_delay_us = 10; /* us */
 	const u8 *tx = msg->tx_buf;
 	u32 loop_counter;
-	size_t txlen;
+	size_t txlen = msg->tx_len;
+	size_t rxlen = msg->rx_len;
 	u32 val;
 	int ret;
 	int i;
 
-	txlen = msg->tx_len;
-	if (txlen > 12) {
+	if (txlen > 16) {
 		dev_err(d->dev,
-			"dunno how to write more than 12 bytes yet\n");
+			"dunno how to write more than 16 bytes yet\n");
+		return -EIO;
+	}
+	if (rxlen > 4) {
+		dev_err(d->dev,
+			"dunno how to read more than 4 bytes yet\n");
 		return -EIO;
 	}
 
 	dev_dbg(d->dev,
-		"message to channel %d, %zd bytes",
-		msg->channel,
-		txlen);
+		"message to channel %d, write %zd bytes read %zd bytes\n",
+		msg->channel, txlen, rxlen);
 
 	/* Command "nature" */
 	if (MCDE_DSI_HOST_IS_READ(msg->type))
@@ -210,9 +214,7 @@ static ssize_t mcde_dsi_host_transfer(struct mipi_dsi_host *host,
 	if (mipi_dsi_packet_format_is_long(msg->type))
 		val |= DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_LONGNOTSHORT;
 	val |= 0 << DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_ID_SHIFT;
-	/* Add one to the length for the MIPI DCS command */
-	val |= txlen
-		<< DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_SIZE_SHIFT;
+	val |= txlen << DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_SIZE_SHIFT;
 	val |= DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_LP_EN;
 	val |= msg->type << DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_HEAD_SHIFT;
 	writel(val, d->regs + DSI_DIRECT_CMD_MAIN_SETTINGS);
@@ -249,17 +251,36 @@ static ssize_t mcde_dsi_host_transfer(struct mipi_dsi_host *host,
 	writel(1, d->regs + DSI_DIRECT_CMD_SEND);
 
 	loop_counter = 1000 * 1000 / loop_delay_us;
-	while (!(readl(d->regs + DSI_DIRECT_CMD_STS) &
-		 DSI_DIRECT_CMD_STS_WRITE_COMPLETED)
-	       && --loop_counter)
-		usleep_range(loop_delay_us, (loop_delay_us * 3) / 2);
-
-	if (!loop_counter) {
-		dev_err(d->dev, "DSI write timeout!\n");
-		return -ETIME;
+	if (MCDE_DSI_HOST_IS_READ(msg->type)) {
+		/* Read command */
+		while (!(readl(d->regs + DSI_DIRECT_CMD_STS) &
+			 (DSI_DIRECT_CMD_STS_READ_COMPLETED |
+			  DSI_DIRECT_CMD_STS_READ_COMPLETED_WITH_ERR))
+		       && --loop_counter)
+			usleep_range(loop_delay_us, (loop_delay_us * 3) / 2);
+		if (!loop_counter) {
+			dev_err(d->dev, "DSI write timeout!\n");
+			return -ETIME;
+		}
+	} else {
+		/* Writing only */
+		while (!(readl(d->regs + DSI_DIRECT_CMD_STS) &
+			 DSI_DIRECT_CMD_STS_WRITE_COMPLETED)
+		       && --loop_counter)
+			usleep_range(loop_delay_us, (loop_delay_us * 3) / 2);
+
+		if (!loop_counter) {
+			dev_err(d->dev, "DSI read timeout!\n");
+			return -ETIME;
+		}
 	}
 
 	val = readl(d->regs + DSI_DIRECT_CMD_STS);
+	if (val & DSI_DIRECT_CMD_STS_READ_COMPLETED_WITH_ERR) {
+		dev_err(d->dev, "read completed with error\n");
+		writel(1, d->regs + DSI_DIRECT_CMD_RD_INIT);
+		return -EIO;
+	}
 	if (val & DSI_DIRECT_CMD_STS_ACKNOWLEDGE_WITH_ERR_RECEIVED) {
 		val >>= DSI_DIRECT_CMD_STS_ACK_VAL_SHIFT;
 		dev_err(d->dev, "error during transmission: %04x\n",
@@ -269,10 +290,7 @@ static ssize_t mcde_dsi_host_transfer(struct mipi_dsi_host *host,
 
 	if (!MCDE_DSI_HOST_IS_READ(msg->type)) {
 		/* Return number of bytes written */
-		if (mipi_dsi_packet_format_is_long(msg->type))
-			ret = 4 + txlen;
-		else
-			ret = 4;
+		ret = txlen;
 	} else {
 		/* OK this is a read command, get the response */
 		u32 rdsz;
@@ -282,7 +300,13 @@ static ssize_t mcde_dsi_host_transfer(struct mipi_dsi_host *host,
 		rdsz = readl(d->regs + DSI_DIRECT_CMD_RD_PROPERTY);
 		rdsz &= DSI_DIRECT_CMD_RD_PROPERTY_RD_SIZE_MASK;
 		rddat = readl(d->regs + DSI_DIRECT_CMD_RDDAT);
-		for (i = 0; i < 4 && i < rdsz; i++)
+		if (rdsz < rxlen) {
+			dev_err(d->dev, "read error, requested %zd got %zd\n",
+				msg->rx_len, rxlen);
+			return -EIO;
+		}
+		/* FIXME: read more than 4 bytes */
+		for (i = 0; i < 4 && i < rxlen; i++)
 			rx[i] = (rddat >> (i * 8)) & 0xff;
 		ret = rdsz;
 	}
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
