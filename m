Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C3EA3786
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 15:06:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LB5Z4ryvbpetUK6l33xaSjoA2n9e850fZd01YWF1jgg=; b=lGn0KddivcGUO9
	RU7WBW4Eo4I+kMc5ushqqyY/Oyn4IGYL9zZKMy9tRGLXpUAF48BjJ0JmhN7H89CXYXfIWbwNKhfOx
	pfOFOAd9jX1HJ1y3xmfjD3kOaLoT9Yr7Uu6i1do5nPMXONsk7R6nPGsQKXKA+RkMXwZW0qj02pmuV
	Q5UXkk2fiaipPP3V1z+DOI+QzLRguEnqCnr6+x3SKYQaA90++3qTb0FmMouL+cI+FcwO7wz54bzuN
	XD5sHOaXg11Yj2MXsrd7bHMDfFeQTJCrXjtpgeyoRAQqmfig8neSUWiOQyMl4iq++cGt8uhoFFkkX
	240dWhqNH8dZ4X3BfAHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3gc0-0002z2-OY; Fri, 30 Aug 2019 13:06:44 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3gbn-0002ye-KQ
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 13:06:33 +0000
Received: by mail-lf1-x144.google.com with SMTP id n19so5270348lfe.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 06:06:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CEB5ZvNjUPElBE9umR+JJZU4wgevrWXUj1n2n10MLZs=;
 b=uwd8wpGvjkNaubjt9cnpM6036yUIA8iJpAkMfwRTyg+jknhyyGowZf1ko4n3IvSm2n
 oAZBqNTS6R+q3h3OKpKow1Rq5OLDKixQjYHQeQp1skVm1KqbhfqLn9z6jr5DtjHpmp0Y
 Ps7O6kMaTplrkMiCpbf+rGxQuGARV94LgzQeEdjtpycJUjqurOhctuIYkY5o5wxQ+SGL
 rbWATECNrvU8qWlsZVcGobN/lZUGTtpPujqpTgqHRAR1eKhQbTLqG6Ls4WKfWZABMbnx
 2/hOUzJcoJglMPbDpA+4SAegV9rREWDaaNLoqJsVJoPZGS51C1G9iYEM9qWP5iV9KE04
 aE9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CEB5ZvNjUPElBE9umR+JJZU4wgevrWXUj1n2n10MLZs=;
 b=ASnYekMYUTiB8N11R4cs+l9r7Z+YXWZ6zeFtn14HIx03WtCNIlXtTenrr/+Ax+r5Js
 kxp1C8SHzHHyIlSrfKDxBWaJpP9K7s2L2FG0KAAebfDR4kuIDh8Khtyt+F9yoZNUTjW8
 SlNaXBRp1CA6l8RJJ/7ytZctvqvvmUN7WROHnpmKv7fhrlpD0o9lSOGoBGmOWZHndxWC
 9fCNMSDCcMkmZ4L3I2oDLSit3vIZEDCmA2xN0vYH/6a3L7z+vWBvxmZWnHub/2SdoAmx
 B23r9sfvVB9TsY3EvZo2GpNYPhgKwY/Wj/ROldUg4WkuN+i0Z6O56EPIWMg+8LJe9oAv
 +oyA==
X-Gm-Message-State: APjAAAVir4oqs/c432Vx6FLCV4Sqlaga2TUO1xiYQ0JyF5vQmZmB6dQA
 AbdwLW90U/gQgEgoRvcCDEbIoA==
X-Google-Smtp-Source: APXvYqyHHH8/6/Pp9bt+mcoalxqgoQY4hpFXQVj+h6v+YLA//msOjZDiALKXOOWN6FjLimkObxjKgQ==
X-Received: by 2002:a19:e04f:: with SMTP id g15mr9011216lfj.46.1567170388587; 
 Fri, 30 Aug 2019 06:06:28 -0700 (PDT)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id y20sm833319ljy.55.2019.08.30.06.06.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Aug 2019 06:06:27 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>
Subject: [PATCH] drm/mcde: Fix DSI transfers
Date: Fri, 30 Aug 2019 15:06:23 +0200
Message-Id: <20190830130623.19116-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_060631_734839_E41034DD 
X-CRM114-Status: GOOD (  16.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Stephan Gerhold <stephan@gerhold.net>, linux-arm-kernel@lists.infradead.org
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

Cc: Stephan Gerhold <stephan@gerhold.net>
Fixes: 5fc537bfd000 ("drm/mcde: Add new driver for ST-Ericsson MCDE")
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/gpu/drm/mcde/mcde_dsi.c | 70 ++++++++++++++++++++++-----------
 1 file changed, 47 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/mcde/mcde_dsi.c b/drivers/gpu/drm/mcde/mcde_dsi.c
index 07f7090d08b3..ad76a36e7bc1 100644
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
+			dev_err(d->dev, "DSI write timeout!\n");
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
+			dev_err(d->dev, "read error, requested %d got %d\n",
+				msg->rx_len, rdsz);
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
