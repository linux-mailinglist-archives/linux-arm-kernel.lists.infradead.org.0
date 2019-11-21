Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53448104C92
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 08:29:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MU2GLK9HSHv3UXgerpkFRx3eSjFBk3UQ/Y1K0WO1rvs=; b=Z1zrTI0heeLr3E
	Z3LopnmC7xrdfUOdfI5CUT7tw+PvRzEG+IxbKeTAMnFq7UPlg0wcU33rwFQtliSo3ieHBGfFq4N51
	haFJpv/ncSaee8BbixMeVAAym00RMD8WaG00kRWvv8BDwR16Pnl0Mlo61ukHBQV60/vlrGmOZcOwq
	Jn1kbHn5fOh48ldkC1U8OAwysdqjP+EtgWL5Kviwq49jwYAdqe9Jwv+FWrlTjc7WF1O2WFmt5WohC
	d+EHJqwKkTVomxvc2KW56Wx7LFvXqdKol2vaAxUsZYw2f1AlUHnM1J77DZI2VpOOkVe3cZz9ghPWy
	4bXiPzrfI/wp2Bug9GUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXguR-0002Dd-Sk; Thu, 21 Nov 2019 07:29:47 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXgtz-00020d-Kd; Thu, 21 Nov 2019 07:29:21 +0000
X-UUID: 1ea9954627d44ae4a772b4488c1dc56d-20191120
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=DdOBazdkEY8z3b9oLQBOBsUR+PwkBxvsgtd16bL2wP8=; 
 b=dF7WIzR/p2XrAtxWVR+Uau04hx1SguyHDCvtAL0bumQpo8ZGhIzB07H26eHEYfdMkn2/o/0CgR9ItlVNh8Tz6g35yZIUMZs4km/tPhXQSPOFehPH3nUmb72k9cxTI3ZY5Io2WtdLG+tBJ8+lHghSvJ+oEnk/4FWL1CZdQVzL55o=;
X-UUID: 1ea9954627d44ae4a772b4488c1dc56d-20191120
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 28618728; Wed, 20 Nov 2019 23:29:12 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 20 Nov 2019 23:29:32 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 21 Nov 2019 15:29:05 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 21 Nov 2019 15:29:07 +0800
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: Jassi Brar <jassisinghbrar@gmail.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>, CK HU
 <ck.hu@mediatek.com>
Subject: [PATCH] soc: mediatek: cmdq: avoid racing condition with mutex
Date: Thu, 21 Nov 2019 15:29:10 +0800
Message-ID: <20191121072910.31665-1-bibby.hsieh@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_232919_685554_994E055A 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Nicolas Boichat <drinkcat@chromium.org>,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Houlong Wei <houlong.wei@mediatek.com>,
 Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>,
 linux-mediatek@lists.infradead.org, Bibby Hsieh <bibby.hsieh@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If cmdq client is multi thread user, racing will occur without mutex
protection. It will make the C message queued in mailbox's queue
always need D message's triggering.

Thread A		Thread B		  Thread C		Thread D...
-----------------------------------------------------------------------------------
mbox_send_message()
	send_data()
			mbox_send_message()
				*exit
						mbox_send_message()
							*exit
mbox_client_txdone()
	tx_tick()
			mbox_client_txdone()
				tx_tick()
						mbox_client_txdone()
							tx_tick()
msg_submit()
	send_data()
			msg_submit()
				*exit
						msg_submit()
							*exit
-----------------------------------------------------------------------------------

Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
---
 drivers/soc/mediatek/mtk-cmdq-helper.c | 3 +++
 include/linux/soc/mediatek/mtk-cmdq.h  | 1 +
 2 files changed, 4 insertions(+)

diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
index 9add0fd5fa6c..9e35e0beffaa 100644
--- a/drivers/soc/mediatek/mtk-cmdq-helper.c
+++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
@@ -81,6 +81,7 @@ struct cmdq_client *cmdq_mbox_create(struct device *dev, int index, u32 timeout)
 	client->client.dev = dev;
 	client->client.tx_block = false;
 	client->chan = mbox_request_channel(&client->client, index);
+	mutex_init(&client->mutex);
 
 	if (IS_ERR(client->chan)) {
 		long err;
@@ -352,9 +353,11 @@ int cmdq_pkt_flush_async(struct cmdq_pkt *pkt, cmdq_async_flush_cb cb,
 		spin_unlock_irqrestore(&client->lock, flags);
 	}
 
+	mutex_lock(&client->mutex);
 	mbox_send_message(client->chan, pkt);
 	/* We can send next packet immediately, so just call txdone. */
 	mbox_client_txdone(client->chan, 0);
+	mutex_unlock(&client->mutex);
 
 	return 0;
 }
diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
index a74c1d5acdf3..0f9071cd1bc7 100644
--- a/include/linux/soc/mediatek/mtk-cmdq.h
+++ b/include/linux/soc/mediatek/mtk-cmdq.h
@@ -28,6 +28,7 @@ struct cmdq_client {
 	struct mbox_chan *chan;
 	struct timer_list timer;
 	u32 timeout_ms; /* in unit of microsecond */
+	struct mutex mutex;
 };
 
 /**
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
