Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1404129C31
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 01:59:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3ZORrcmxm/G31t20tpDLHhZYO9nxR364MifL6ty0EmE=; b=SXE3t99tu8165AkjnhfHMKPUOj
	d3f98qRiGQwT7Ugyv2IwFCiW64+PerjQoUjOFqYhey0lH6+xs9bJedzh+eFeXEWTiQxGTBgsf/RYW
	uZk0o1RZbUPRkNp+oSCSWThB5Ffa5vjYqtPU3o6PuO8cCp371Gqg3/cmx50bANjLP+n5xJCdkELZt
	Cf3fWtp4FUdmxp1wwJiq242vqgbEsI4AzLymaGTUNGDoYNFpOsvI8NFoB/K/hC2TJhPUGdfsU63n4
	ylNgeT8TTS67IZENTlQareB1h9NGa7ntmCxiQEziKQ+K3w4oYovPv6B/r4lHt0Vy1l58MRz6Vg3N7
	dDXXvV3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijYXp-0002kv-Nc; Tue, 24 Dec 2019 00:59:29 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijYXC-0002Hw-41
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 00:58:52 +0000
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 24 Dec 2019 09:58:46 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by kinkan-ex.css.socionext.com (Postfix) with ESMTP id 36DD018008B;
 Tue, 24 Dec 2019 09:58:46 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Tue, 24 Dec 2019 09:59:25 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id 04B7B1A01CF;
 Tue, 24 Dec 2019 09:58:46 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Mark Brown <broonie@kernel.org>,
	linux-spi@vger.kernel.org
Subject: [PATCH 1/5] spi: uniphier: Fix FIFO threshold
Date: Tue, 24 Dec 2019 09:58:23 +0900
Message-Id: <1577149107-30670-2-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1577149107-30670-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1577149107-30670-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_165850_372567_85D2AB9C 
X-CRM114-Status: GOOD (  16.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.248.49.38 listed in list.dnswl.org]
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
Cc: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>,
 Keiji Hayashibara <hayashibara.keiji@socionext.com>,
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rx threshold means the value to inform the receiver when the number of words
in Rx FIFO is equal to or more than the value. Similarly, Tx threshold means
the value to inform the sender when the number of words in Tx FIFO is equal
to or less than the value. The controller triggers the driver to start
the transfer.

In case of Rx, the driver wants to detect that the specified number of words
N are in Rx FIFO, so the value of Rx threshold should be N. In case of Tx,
the driver wants to detect that the same number of spaces as Rx are in
Tx FIFO, so the value of Tx threshold should be (FIFO size - N).

For example, in order for the driver to receive at least 3 words from
Rx FIFO, set 3 to Rx threshold.
   +-+-+-+-+-+-+-+-+
   | | | | | |*|*|*|
   +-+-+-+-+-+-+-+-+

In order for the driver to send at least 3 words to Tx FIFO, because
it needs at least 3 spaces, set 8(FIFO size) - 3 = 5 to Tx threshold.
   +-+-+-+-+-+-+-+-+
   |*|*|*|*|*| | | |
   +-+-+-+-+-+-+-+-+

This adds new function uniphier_spi_set_fifo_threshold() to set
threshold value to the register.

And more, FIFO counts by 'words', so this renames 'fill_bytes' with
'fill_words', and fixes the calculation using bytes_per_words.

Fixes: 37ffab817098 ("spi: uniphier: introduce polling mode")
Cc: Keiji Hayashibara <hayashibara.keiji@socionext.com>
Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 drivers/spi/spi-uniphier.c | 31 +++++++++++++++++++------------
 1 file changed, 19 insertions(+), 12 deletions(-)

diff --git a/drivers/spi/spi-uniphier.c b/drivers/spi/spi-uniphier.c
index 47cde186..ce9b301 100644
--- a/drivers/spi/spi-uniphier.c
+++ b/drivers/spi/spi-uniphier.c
@@ -290,25 +290,32 @@ static void uniphier_spi_recv(struct uniphier_spi_priv *priv)
 	}
 }
 
-static void uniphier_spi_fill_tx_fifo(struct uniphier_spi_priv *priv)
+static void uniphier_spi_set_fifo_threshold(struct uniphier_spi_priv *priv,
+					    unsigned int threshold)
 {
-	unsigned int fifo_threshold, fill_bytes;
 	u32 val;
 
-	fifo_threshold = DIV_ROUND_UP(priv->rx_bytes,
-				bytes_per_word(priv->bits_per_word));
-	fifo_threshold = min(fifo_threshold, SSI_FIFO_DEPTH);
-
-	fill_bytes = fifo_threshold - (priv->rx_bytes - priv->tx_bytes);
-
-	/* set fifo threshold */
 	val = readl(priv->base + SSI_FC);
 	val &= ~(SSI_FC_TXFTH_MASK | SSI_FC_RXFTH_MASK);
-	val |= FIELD_PREP(SSI_FC_TXFTH_MASK, fifo_threshold);
-	val |= FIELD_PREP(SSI_FC_RXFTH_MASK, fifo_threshold);
+	val |= FIELD_PREP(SSI_FC_TXFTH_MASK, SSI_FIFO_DEPTH - threshold);
+	val |= FIELD_PREP(SSI_FC_RXFTH_MASK, threshold);
 	writel(val, priv->base + SSI_FC);
+}
+
+static void uniphier_spi_fill_tx_fifo(struct uniphier_spi_priv *priv)
+{
+	unsigned int fifo_threshold, fill_words;
+	unsigned int bpw = bytes_per_word(priv->bits_per_word);
+
+	fifo_threshold = DIV_ROUND_UP(priv->rx_bytes, bpw);
+	fifo_threshold = min(fifo_threshold, SSI_FIFO_DEPTH);
+
+	uniphier_spi_set_fifo_threshold(priv, fifo_threshold);
+
+	fill_words = fifo_threshold -
+		DIV_ROUND_UP(priv->rx_bytes - priv->tx_bytes, bpw);
 
-	while (fill_bytes--)
+	while (fill_words--)
 		uniphier_spi_send(priv);
 }
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
