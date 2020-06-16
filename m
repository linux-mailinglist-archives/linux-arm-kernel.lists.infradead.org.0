Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D3561FA4EB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 02:10:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CknNmrcA0We6xzmc2vPJ4oXIFBX/WQfyeLSSRDkZVy4=; b=Xer3+aYFRMlB1v
	Qt2lCEGgPZBQbCQN/QdVmqsQldf48pCIhg1AamIj3X/uDVnwoqzPdqcFUpyhpBJcRQZuYSG1CPbyl
	O2n4ZKIG0I10Idjhbq+ykKYJ1L5ekJAfWIn//reK+BiphJ3/q1KjuhrWXRSblvSiBJUN2E2RdiaJx
	YhRXqEke9TYMmKPRuApKiMCYbyUBruWph3UrhS0gA/nS/QuESt3TikKF6FFN2XiTDMojFe40biZjM
	JVH54EXMZEXtvmX9puYC41fpItn7Ykm47CX+9CSrTziy5h6R/C6PvLFwXnNDJDYCTUra00j/XWEt+
	GMSyafxSi/lTYPqMlhQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkzBZ-0003PN-BL; Tue, 16 Jun 2020 00:10:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkzAe-0000Iu-6M; Tue, 16 Jun 2020 00:09:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CD7FC1045;
 Mon, 15 Jun 2020 17:09:43 -0700 (PDT)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com
 [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 447363F73C;
 Mon, 15 Jun 2020 17:09:42 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: broonie@kernel.org, nsaenzjulienne@suse.de, f.fainelli@gmail.com,
 rjui@broadcom.com, sbranden@broadcom.com
Subject: [PATCH 3/3] spi: bcm2835: Micro-optimise FIFO loops
Date: Tue, 16 Jun 2020 01:09:29 +0100
Message-Id: <9242863077acf9a64e4b3720e479855b88d19e82.1592261248.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.23.0.dirty
In-Reply-To: <cover.1592261248.git.robin.murphy@arm.com>
References: <cover.1592261248.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_170944_298514_F2BD6456 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org, lukas@wunner.de,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 kernel@martin.sperl.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The blind and counted loops are always called with nonzero count, so
convert them to do-while loops that lead to slightly more efficient
code generation. With GCC 8.3 this shaves off 1-2 instructions per
iteration in each case.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/spi/spi-bcm2835.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/spi/spi-bcm2835.c b/drivers/spi/spi-bcm2835.c
index aec70ac8911e..e9a91adf03eb 100644
--- a/drivers/spi/spi-bcm2835.c
+++ b/drivers/spi/spi-bcm2835.c
@@ -245,13 +245,13 @@ static inline void bcm2835_rd_fifo_count(struct bcm2835_spi *bs, int count)
 
 	bs->rx_len -= count;
 
-	while (count > 0) {
+	do {
 		val = bcm2835_rd(bs, BCM2835_SPI_FIFO);
 		len = min(count, 4);
 		memcpy(bs->rx_buf, &val, len);
 		bs->rx_buf += len;
 		count -= 4;
-	}
+	} while (count > 0);
 }
 
 /**
@@ -271,7 +271,7 @@ static inline void bcm2835_wr_fifo_count(struct bcm2835_spi *bs, int count)
 
 	bs->tx_len -= count;
 
-	while (count > 0) {
+	do {
 		if (bs->tx_buf) {
 			len = min(count, 4);
 			memcpy(&val, bs->tx_buf, len);
@@ -281,7 +281,7 @@ static inline void bcm2835_wr_fifo_count(struct bcm2835_spi *bs, int count)
 		}
 		bcm2835_wr(bs, BCM2835_SPI_FIFO, val);
 		count -= 4;
-	}
+	} while (count > 0);
 }
 
 /**
@@ -310,12 +310,11 @@ static inline void bcm2835_rd_fifo_blind(struct bcm2835_spi *bs, int count)
 	count = min(count, bs->rx_len);
 	bs->rx_len -= count;
 
-	while (count) {
+	do {
 		val = bcm2835_rd(bs, BCM2835_SPI_FIFO);
 		if (bs->rx_buf)
 			*bs->rx_buf++ = val;
-		count--;
-	}
+	} while (--count);
 }
 
 /**
@@ -330,11 +329,10 @@ static inline void bcm2835_wr_fifo_blind(struct bcm2835_spi *bs, int count)
 	count = min(count, bs->tx_len);
 	bs->tx_len -= count;
 
-	while (count) {
+	do {
 		val = bs->tx_buf ? *bs->tx_buf++ : 0;
 		bcm2835_wr(bs, BCM2835_SPI_FIFO, val);
-		count--;
-	}
+	} while (--count);
 }
 
 static void bcm2835_spi_reset_hw(struct bcm2835_spi *bs)
-- 
2.23.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
