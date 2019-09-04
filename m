Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D6B6A7D31
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 09:56:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wL9oYquQ5xGSe2qwSjO5W045vTpnnzOTkMhKctPybms=; b=gYoS4vGZvF1G2k
	jKKcSeAYVfNR7QOUxwydAmMhW/UuefwItwAme1kwLG6Q9cUL+DEMu2oKVjd0fFWKeVOmyOIVJ+l2p
	o1zwgSkf2WOAZJkOGiLpr8AzYCcckb9OluZvQ2ZgltqhPZDi3iomaHMgKPGj5qSbFFrwUNpdpaxyl
	dLup3PZ3IGgboyoc5nptn756eH8ZfFBkuXRhxPfQgh8CjXFssiWpeJuMrVXtuuVB6/R5UwG6SaQ3m
	CW4MnIUtY9JRdzD/l5WO9u2Mg4QF2ka9QoxI6vVwkWvEkKsb0QnnNXMbolbMBGcV42BLLkLJLKO4J
	m7iojGqfzpFmFbgiiQbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Q9e-0007UK-CT; Wed, 04 Sep 2019 07:56:38 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Q83-0005hr-I8; Wed, 04 Sep 2019 07:55:01 +0000
X-UUID: aa2cda5baffd4f7aad2dc599c2496bd4-20190903
X-UUID: aa2cda5baffd4f7aad2dc599c2496bd4-20190903
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <chaotian.jing@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2114102428; Tue, 03 Sep 2019 23:54:55 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 4 Sep 2019 00:54:53 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 4 Sep 2019 15:54:52 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 4 Sep 2019 15:54:51 +0800
From: Chaotian Jing <chaotian.jing@mediatek.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: [PATCH 2/2] mmc: block: add CMD13 polling for ioctl() cmd with R1B
 response
Date: Wed, 4 Sep 2019 15:54:44 +0800
Message-ID: <20190904075444.2163-3-chaotian.jing@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190904075444.2163-1-chaotian.jing@mediatek.com>
References: <20190904075444.2163-1-chaotian.jing@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_005459_601453_B79B2244 
X-CRM114-Status: GOOD (  14.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Jens Axboe <axboe@kernel.dk>, Chris Boot <bootc@bootc.net>,
 srv_heupstream@mediatek.com, Wolfram Sang <wsa+renesas@sang-engineering.com>,
 linux-mmc@vger.kernel.org, Zachary Hays <zhays@lexmark.com>,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 Ming Lei <ming.lei@redhat.com>, Avri Altman <avri.altman@wdc.com>,
 linux-mediatek@lists.infradead.org, Hannes Reinecke <hare@suse.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Chaotian Jing <chaotian.jing@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

currently there is no CMD13 polling and other code to wait card
change to transfer state after R1B command completed. and this
polling operation cannot do in user space, because other request
may coming before the CMD13 from user space.

Signed-off-by: Chaotian Jing <chaotian.jing@mediatek.com>
---
 drivers/mmc/core/block.c | 107 ++++++++++++++++++++-------------------
 1 file changed, 55 insertions(+), 52 deletions(-)

diff --git a/drivers/mmc/core/block.c b/drivers/mmc/core/block.c
index aa7c19f7e298..9d6f7a5612b5 100644
--- a/drivers/mmc/core/block.c
+++ b/drivers/mmc/core/block.c
@@ -468,6 +468,58 @@ static int ioctl_do_sanitize(struct mmc_card *card)
 	return err;
 }
 
+static inline bool mmc_blk_in_tran_state(u32 status)
+{
+	/*
+	 * Some cards mishandle the status bits, so make sure to check both the
+	 * busy indication and the card state.
+	 */
+	return status & R1_READY_FOR_DATA &&
+	       (R1_CURRENT_STATE(status) == R1_STATE_TRAN);
+}
+
+static int card_busy_detect(struct mmc_card *card, unsigned int timeout_ms,
+			    u32 *resp_errs)
+{
+	unsigned long timeout = jiffies + msecs_to_jiffies(timeout_ms);
+	int err = 0;
+	u32 status;
+
+	do {
+		bool done = time_after(jiffies, timeout);
+
+		err = __mmc_send_status(card, &status, 5);
+		if (err) {
+			dev_err(mmc_dev(card->host),
+				"error %d requesting status\n", err);
+			return err;
+		}
+
+		/* Accumulate any response error bits seen */
+		if (resp_errs)
+			*resp_errs |= status;
+
+		/*
+		 * Timeout if the device never becomes ready for data and never
+		 * leaves the program state.
+		 */
+		if (done) {
+			dev_err(mmc_dev(card->host),
+				"Card stuck in wrong state! %s status: %#x\n",
+				 __func__, status);
+			return -ETIMEDOUT;
+		}
+
+		/*
+		 * Some cards mishandle the status bits,
+		 * so make sure to check both the busy
+		 * indication and the card state.
+		 */
+	} while (!mmc_blk_in_tran_state(status));
+
+	return err;
+}
+
 static int __mmc_blk_ioctl_cmd(struct mmc_card *card, struct mmc_blk_data *md,
 			       struct mmc_blk_ioc_data *idata)
 {
@@ -623,6 +675,9 @@ static int __mmc_blk_ioctl_cmd(struct mmc_card *card, struct mmc_blk_data *md,
 					__func__, status, err);
 	}
 
+	if (!err && (cmd.flags & MMC_RSP_R1B))
+		err = card_busy_detect(card, MMC_BLK_TIMEOUT_MS, NULL);
+
 	return err;
 }
 
@@ -970,58 +1025,6 @@ static unsigned int mmc_blk_data_timeout_ms(struct mmc_host *host,
 	return ms;
 }
 
-static inline bool mmc_blk_in_tran_state(u32 status)
-{
-	/*
-	 * Some cards mishandle the status bits, so make sure to check both the
-	 * busy indication and the card state.
-	 */
-	return status & R1_READY_FOR_DATA &&
-	       (R1_CURRENT_STATE(status) == R1_STATE_TRAN);
-}
-
-static int card_busy_detect(struct mmc_card *card, unsigned int timeout_ms,
-			    u32 *resp_errs)
-{
-	unsigned long timeout = jiffies + msecs_to_jiffies(timeout_ms);
-	int err = 0;
-	u32 status;
-
-	do {
-		bool done = time_after(jiffies, timeout);
-
-		err = __mmc_send_status(card, &status, 5);
-		if (err) {
-			dev_err(mmc_dev(card->host),
-				"error %d requesting status\n", err);
-			return err;
-		}
-
-		/* Accumulate any response error bits seen */
-		if (resp_errs)
-			*resp_errs |= status;
-
-		/*
-		 * Timeout if the device never becomes ready for data and never
-		 * leaves the program state.
-		 */
-		if (done) {
-			dev_err(mmc_dev(card->host),
-				"Card stuck in wrong state! %s status: %#x\n",
-				 __func__, status);
-			return -ETIMEDOUT;
-		}
-
-		/*
-		 * Some cards mishandle the status bits,
-		 * so make sure to check both the busy
-		 * indication and the card state.
-		 */
-	} while (!mmc_blk_in_tran_state(status));
-
-	return err;
-}
-
 static int mmc_blk_reset(struct mmc_blk_data *md, struct mmc_host *host,
 			 int type)
 {
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
