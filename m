Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 421891A71EF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 05:41:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lyw5smYCJXN99ykv9oAXosGBD/yhksYrOpswII+R0hc=; b=ORKlqI72wsV/ln
	ga6WxnUP0/hTyWOh3OQZs3D/OnkQyYOhINsQ9LrmUpFn616J69FvEe058cDJkz5AeiReauWwOC6uZ
	AWFoQDjmnpFGIcwOKC72OMzVwWoBn741YquCAxPn1F2+EjjB0I14LQh6dEVduXHgVUjC7omhcqJcg
	XJQ1ELLYT6IMQXjgfygZfVu9qjpV+nXPH1l47rLRI3CU2uweHMr2+PZNeT7xMhcpiMk+yT5NSGjio
	QQSbKmz8WYO8Sw5K+Em51Uu5FhP3+KAjOYtlXeHB6zsTC6J1X0LmPJlPcP6Ln2x1VIDtq6JtmanNE
	RGzrukC+JN+laosnqLIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOCRx-0003Mr-Rn; Tue, 14 Apr 2020 03:41:25 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOCRZ-0003Fe-01; Tue, 14 Apr 2020 03:41:02 +0000
X-UUID: fd01ed7e97d241e285bd99c3de5f8f15-20200413
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=JsY5/5MxfWy5R02rcWXL2W12h0vpsAqE2P25DGsOcwQ=; 
 b=qMawx4L1R/SjXIumd+N18jT98mhib9GBHE/6xKN4SzsESCYRKHzRFy2RFV/S12IkcmRMtOP8nuA40Yr4WSdE1IqQrgFlKhNQXzUB0F78b2+qDR+6rcKIBXyD4YvKtI9zOZ1r+tTLDm5AIXe9awqXheBy1WtQ/Qr88X2Bb4VKYGQ=;
X-UUID: fd01ed7e97d241e285bd99c3de5f8f15-20200413
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <yong.mao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1933411572; Mon, 13 Apr 2020 19:40:57 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 13 Apr 2020 20:40:56 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 14 Apr 2020 11:40:55 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Tue, 14 Apr 2020 11:40:49 +0800
From: Yong Mao <yong.mao@mediatek.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: [PATCH 2/3] mmc: core: rocr verification
Date: Tue, 14 Apr 2020 11:40:10 +0800
Message-ID: <1586835611-13857-3-git-send-email-yong.mao@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1586835611-13857-1-git-send-email-yong.mao@mediatek.com>
References: <1586835611-13857-1-git-send-email-yong.mao@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_204101_048964_2854300D 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: srv_heupstream@mediatek.com, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, yong mao <yong.mao@mediatek.com>,
 linux-mediatek@lists.infradead.org, Chaotian Jing <chaotian.jing@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: yong mao <yong.mao@mediatek.com>

Some UHS SDIO devices can't enter to stable state after changing the
voltage from 1.8v to 3.3v even after a power cycle.
Verifying the rocr and the result of mmc_set_signal_voltage, if it
is not expected, power cycle SDIO device and re-initialize it again.
Thus will re-initialize the SDIO device successfully.

Signed-off-by: Yong Mao <yong.mao@mediatek.com>
---
 drivers/mmc/core/sdio.c  | 14 +++++++++++++-
 include/linux/mmc/sdio.h |  2 ++
 2 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/mmc/core/sdio.c b/drivers/mmc/core/sdio.c
index ada0a80..f173cad 100644
--- a/drivers/mmc/core/sdio.c
+++ b/drivers/mmc/core/sdio.c
@@ -553,6 +553,12 @@ static void mmc_sdio_resend_if_cond(struct mmc_host *host,
 	mmc_remove_card(card);
 }
 
+static bool mmc_sdio_valid_rocr(u32 rocr)
+{
+	return (rocr & MMC_CARD_BUSY) && R4_OCR(rocr) &&
+		R4_FUNCTION_NUMBER(rocr);
+}
+
 /*
  * Handle the detection and initialisation of a card.
  *
@@ -605,6 +611,12 @@ static int mmc_sdio_init_card(struct mmc_host *host, u32 ocr,
 		goto err;
 	}
 
+	if (!mmc_sdio_valid_rocr(rocr)) {
+		mmc_sdio_resend_if_cond(host, card);
+		retries--;
+		goto try_again;
+	}
+
 	if ((rocr & R4_MEMORY_PRESENT) &&
 	    mmc_sd_get_cid(host, ocr & rocr, card->raw_cid, NULL) == 0) {
 		card->type = MMC_TYPE_SD_COMBO;
@@ -646,7 +658,7 @@ static int mmc_sdio_init_card(struct mmc_host *host, u32 ocr,
 	 */
 	if (rocr & ocr & R4_18V_PRESENT) {
 		err = mmc_set_uhs_voltage(host, ocr_card);
-		if (err == -EAGAIN) {
+		if (err == -EAGAIN || err == -EILSEQ) {
 			mmc_sdio_resend_if_cond(host, card);
 			retries--;
 			goto try_again;
diff --git a/include/linux/mmc/sdio.h b/include/linux/mmc/sdio.h
index e287699..03e23ec 100644
--- a/include/linux/mmc/sdio.h
+++ b/include/linux/mmc/sdio.h
@@ -36,6 +36,8 @@
 
 #define R4_18V_PRESENT (1<<24)
 #define R4_MEMORY_PRESENT (1 << 27)
+#define R4_OCR(x)		((x) & 0xFFFFFF)
+#define R4_FUNCTION_NUMBER(x)	(((x) & 0x70000000) >> 28)
 
 /*
   SDIO status in R5
-- 
1.9.1
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
