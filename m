Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B199A9C4C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 09:54:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PoiUna16bfklLpAxtDJFrXSun2IY0A1mDCmF1sGKx7c=; b=Ga+BIoxbJaEnhm
	DlfPRXEB3Uc14Qxifoe/Ercor2I60li1UObl7l+cVhWPSqF1FmsUOk1fXJy4d4/z8aSKFqhvT9xdc
	zD9LdKVoR+LV5sKOKSFlbCbCurNcZb0LijnOpEsmeRGsDDCpmwyk7L9/u23q9ObdifGoaaRQ1Tb19
	Yzfx5qHAvaHXv8sF1vFN+bf+66F3CycibM3HABD+OwUELguAKBLDUk6DmEdkbFY7ohNVWegm4GePv
	YQ3n96dIDzAzWmcGfvV2bfqEBvS8NK36pJhsH1I52fbPIE3S9pVjd2hAr2rJdbRMjmkALdKng1Nrp
	kB97d5CBtxdha4i3ayDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5mah-0006KI-Ki; Thu, 05 Sep 2019 07:54:03 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5ma9-000624-NA; Thu, 05 Sep 2019 07:53:31 +0000
X-UUID: f26b0698f33b473dbbcc2d8d0c508432-20190904
X-UUID: f26b0698f33b473dbbcc2d8d0c508432-20190904
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <chaotian.jing@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1047273071; Wed, 04 Sep 2019 23:53:24 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Sep 2019 00:53:23 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Sep 2019 15:53:23 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 5 Sep 2019 15:53:21 +0800
From: Chaotian Jing <chaotian.jing@mediatek.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: [PATCH v2 1/2] mmc: block: make the card_busy_detect() more generic
Date: Thu, 5 Sep 2019 15:53:17 +0800
Message-ID: <20190905075318.15554-2-chaotian.jing@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190905075318.15554-1-chaotian.jing@mediatek.com>
References: <20190905075318.15554-1-chaotian.jing@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_005329_826052_0BFF4A25 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

to use the card_busy_detect() to wait card levae the programming state,
there may be do not have the "struct request *" argument.

Signed-off-by: Chaotian Jing <chaotian.jing@mediatek.com>
---
 drivers/mmc/core/block.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/mmc/core/block.c b/drivers/mmc/core/block.c
index 2c71a434c915..aa7c19f7e298 100644
--- a/drivers/mmc/core/block.c
+++ b/drivers/mmc/core/block.c
@@ -981,7 +981,7 @@ static inline bool mmc_blk_in_tran_state(u32 status)
 }
 
 static int card_busy_detect(struct mmc_card *card, unsigned int timeout_ms,
-			    struct request *req, u32 *resp_errs)
+			    u32 *resp_errs)
 {
 	unsigned long timeout = jiffies + msecs_to_jiffies(timeout_ms);
 	int err = 0;
@@ -992,8 +992,8 @@ static int card_busy_detect(struct mmc_card *card, unsigned int timeout_ms,
 
 		err = __mmc_send_status(card, &status, 5);
 		if (err) {
-			pr_err("%s: error %d requesting status\n",
-			       req->rq_disk->disk_name, err);
+			dev_err(mmc_dev(card->host),
+				"error %d requesting status\n", err);
 			return err;
 		}
 
@@ -1006,9 +1006,9 @@ static int card_busy_detect(struct mmc_card *card, unsigned int timeout_ms,
 		 * leaves the program state.
 		 */
 		if (done) {
-			pr_err("%s: Card stuck in wrong state! %s %s status: %#x\n",
-				mmc_hostname(card->host),
-				req->rq_disk->disk_name, __func__, status);
+			dev_err(mmc_dev(card->host),
+				"Card stuck in wrong state! %s status: %#x\n",
+				 __func__, status);
 			return -ETIMEDOUT;
 		}
 
@@ -1671,7 +1671,7 @@ static int mmc_blk_fix_state(struct mmc_card *card, struct request *req)
 
 	mmc_blk_send_stop(card, timeout);
 
-	err = card_busy_detect(card, timeout, req, NULL);
+	err = card_busy_detect(card, timeout, NULL);
 
 	mmc_retune_release(card->host);
 
@@ -1895,7 +1895,7 @@ static int mmc_blk_card_busy(struct mmc_card *card, struct request *req)
 	if (mmc_host_is_spi(card->host) || rq_data_dir(req) == READ)
 		return 0;
 
-	err = card_busy_detect(card, MMC_BLK_TIMEOUT_MS, req, &status);
+	err = card_busy_detect(card, MMC_BLK_TIMEOUT_MS, &status);
 
 	/*
 	 * Do not assume data transferred correctly if there are any error bits
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
