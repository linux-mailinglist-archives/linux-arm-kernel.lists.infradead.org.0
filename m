Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B534A716A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 19:11:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YKHdCPklscgfiJXgCkWRjPY+ahg/qCuj24yTzGrIZIE=; b=BKRwM7KRWvf/lQ
	vACNz1oHyGn0WNXAkPMmfBrWDbd1sWvkuIwrY7CRSgcMK6N3NBB4x+F66dIjIpMkyISNA9zH6FzPZ
	zRr40Jrx8f7+VIERJsUwPn7M7YO42k9HiYMxSvdoW1WuMD5tok7Yu0VqkGNRTPKPd9eElRl9le9cH
	50+4TtAv3qFBEmHj2dVvnVpEzHa/zjuIh1im4ljyPHC8ppNagGpwTlGw0roJAjIxYk2DrLDZjzMsw
	2MU/8Wj42o3M4m8mMH7Gvu3sV09vRig0bQgM/AyG0RmQqZntmQaXjNZ7D0S3sXIOJRNLt5Fn3Dctr
	6vpb92JoMf0jSL2iCKOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5CKO-0002wQ-Cb; Tue, 03 Sep 2019 17:10:48 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5CJp-0002vh-05
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 17:10:17 +0000
Received: by mail-lj1-x244.google.com with SMTP id y23so5727416lje.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 10:10:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ftetlc8vSckglaFNE0+HJqSu+C9QQJOXEFHMzC9w69M=;
 b=PPLn1SyETAo2/59Z7AJ9O2c2p71/KtZcKKlqV+TTyZTQmlP66JQxm4hm2IHONi8EY9
 D1H+NgUS/kXpW2HqOTvun4tsvG7X4Idf7HRtAIm6rCMdeQB59kyLniD72CUi2WCfN5z7
 /O6LTGtBf3Wiyjtzd5Y1d323jSQ2IVmSypkoLBZqwtxSRoLvMfqqMwIe9Lr3h2+0KDeE
 7z+FYWsZgdb1CgzwbvMofsecyxx4U+H8uA3vk7sBUkP+51PBgau2rUK6JAE5TzQpXdta
 zRUV3Ij+JeLimMgg5CgQjV/3hzjcZXdACQci7s4FZbEupDiWdnehZiM/Ssbb217YSCTg
 VItA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ftetlc8vSckglaFNE0+HJqSu+C9QQJOXEFHMzC9w69M=;
 b=OAoDWvIxraRqsKNqT1XnziaoOdRbI/uHqYVwLMT7h8xC2/WZPBnyggDfuz2FUCKw0I
 GXZvURJbnW4rxjx7i6/r79zIc/Kiijd7Qwnq17SwuaZfkauAPGlR0XjEv7T0YgyNTTnf
 x0eT1GK5HmzwIirMLxSrFLeJG3KV/zLUM0QhrvKtw1VFB+2LuQ76Ms/06Z8MmnwozrI2
 KD7pFV0aAwUF/hUqhsqcElLJxsuUbDUZGcmkJtx91FPxGTQFrOntBnl9NMXW8kSOuvlP
 /bqnBnFjR+eG3PJKEpMB+PjgET7LOyzvPFybZ+fktzX5MmadWndq0iG/wBli9I2FAWlZ
 5Aug==
X-Gm-Message-State: APjAAAUslf05a2DoZrTvsrGMirFUG+zCOHUdGq+lY6taLxI2Dm3Euc7Q
 6pmtEqSBs7kzDnnqyDf9omh6uQ==
X-Google-Smtp-Source: APXvYqyttfysVs3jJt40dcUkZbRNAYtA0JjfuhiZYYAMd5/D+x9lylgKVJJRvU9xzVviofuNCH0wrg==
X-Received: by 2002:a2e:9ac5:: with SMTP id p5mr7989936ljj.46.1567530610335;
 Tue, 03 Sep 2019 10:10:10 -0700 (PDT)
Received: from localhost.localdomain
 (c-79c8225c.014-348-6c756e10.bbcust.telenor.se. [92.34.200.121])
 by smtp.gmail.com with ESMTPSA id i21sm1900519lfl.44.2019.09.03.10.10.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2019 10:10:09 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>
Subject: [PATCH v4] drm/mcde: Fix DSI transfers
Date: Tue,  3 Sep 2019 19:08:04 +0200
Message-Id: <20190903170804.17053-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_101013_705881_0C1853F5 
X-CRM114-Status: GOOD (  18.32  )
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
ChangeLog v3->v4:
- Fix further message bugs caused when fixing bugs in messages.
- Considering not coding while I have fever ... nah it's too
  much fun.
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
index 07f7090d08b3..f9c9e32b299c 100644
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
+			dev_err(d->dev, "DSI read timeout!\n");
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
+			dev_err(d->dev, "read error, requested %zd got %d\n",
+				rxlen, rdsz);
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
