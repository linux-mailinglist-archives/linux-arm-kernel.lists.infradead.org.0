Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7BB45B625
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 09:54:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VphqJ9qBD5OYc8r1n/jrn1ySb+BeaLRZe8ldk0RuOvQ=; b=oCrHgKnDUVzaw7
	VlRc5TIAxPzf6YfP3Kt9QtjktHQG1mBIF3awUMW0p8l1QCCADg5mo6sAo81l9zRrAvfXXZEXZYrVS
	I5qTeWVF6tZx2opkc3zqeUZvWEZQ7G7Ak9tnAK0wKJo1EUv4Qw/vhYzeZHhtjrs7wQGYEh133oMCW
	9V1HOIc7aVwfkHJ83mCgHM00bqjrPoMOU00AqCbWomgQuRWdVwWMvXOwa+3VSMo3beYBhsz/h9Gu1
	aUUI6FNfryM+rbi4cg34/7FTESWjDErYzDti0dHFZWseJZ59CoQCrTM1cOUpAuMhSHMOEtV5QebhN
	oU6iYZo5bcqJqf/ZRRaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhr8V-0001yb-04; Mon, 01 Jul 2019 07:54:03 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhr3k-0005np-56; Mon, 01 Jul 2019 07:49:10 +0000
X-UUID: 8cad0c17953d4d068ca0393d322b7a46-20190630
X-UUID: 8cad0c17953d4d068ca0393d322b7a46-20190630
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 808027483; Sun, 30 Jun 2019 23:48:48 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 1 Jul 2019 00:48:46 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 1 Jul 2019 15:48:45 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 1 Jul 2019 15:48:45 +0800
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: Jassi Brar <jassisinghbrar@gmail.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>, CK HU
 <ck.hu@mediatek.com>
Subject: [PATCH v10 08/12] soc: mediatek: cmdq: change the type of input
 parameter
Date: Mon, 1 Jul 2019 15:48:38 +0800
Message-ID: <20190701074842.15401-9-bibby.hsieh@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190701074842.15401-1-bibby.hsieh@mediatek.com>
References: <20190701074842.15401-1-bibby.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_004908_922088_49E3DB30 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
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
Cc: devicetree@vger.kernel.org, Nicolas Boichat <drinkcat@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, srv_heupstream@mediatek.com,
 Daoyuan Huang <daoyuan.huang@mediatek.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Daniel Kurtz <djkurtz@chromium.org>,
 Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>,
 linux-mediatek@lists.infradead.org, Houlong Wei <houlong.wei@mediatek.com>,
 Sascha Hauer <kernel@pengutronix.de>, YT Shen <yt.shen@mediatek.com>,
 Jiaguang Zhang <jiaguang.zhang@mediatek.com>,
 Bibby Hsieh <bibby.hsieh@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 ginny.chen@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

According to the cmdq hardware design, the subsys is u8,
the offset is u16 and the event id is u16.
This patch changes the type of subsys, offset and event id
to the correct type.

Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
Reviewed-by: CK Hu <ck.hu@mediatek.com>
---
 drivers/soc/mediatek/mtk-cmdq-helper.c | 10 +++++-----
 include/linux/soc/mediatek/mtk-cmdq.h  | 10 +++++-----
 2 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
index 082b8978651e..7aa0517ff2f3 100644
--- a/drivers/soc/mediatek/mtk-cmdq-helper.c
+++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
@@ -136,7 +136,7 @@ static int cmdq_pkt_append_command(struct cmdq_pkt *pkt, enum cmdq_code code,
 	return 0;
 }
 
-int cmdq_pkt_write(struct cmdq_pkt *pkt, u32 subsys, u32 offset, u32 value)
+int cmdq_pkt_write(struct cmdq_pkt *pkt, u8 subsys, u16 offset, u32 value)
 {
 	u32 arg_a = (offset & CMDQ_ARG_A_WRITE_MASK) |
 		    (subsys << CMDQ_SUBSYS_SHIFT);
@@ -145,8 +145,8 @@ int cmdq_pkt_write(struct cmdq_pkt *pkt, u32 subsys, u32 offset, u32 value)
 }
 EXPORT_SYMBOL(cmdq_pkt_write);
 
-int cmdq_pkt_write_mask(struct cmdq_pkt *pkt, u32 subsys,
-			u32 offset, u32 value, u32 mask)
+int cmdq_pkt_write_mask(struct cmdq_pkt *pkt, u8 subsys,
+			u16 offset, u32 value, u32 mask)
 {
 	u32 offset_mask = offset;
 	int err = 0;
@@ -161,7 +161,7 @@ int cmdq_pkt_write_mask(struct cmdq_pkt *pkt, u32 subsys,
 }
 EXPORT_SYMBOL(cmdq_pkt_write_mask);
 
-int cmdq_pkt_wfe(struct cmdq_pkt *pkt, u32 event)
+int cmdq_pkt_wfe(struct cmdq_pkt *pkt, u16 event)
 {
 	u32 arg_b;
 
@@ -181,7 +181,7 @@ int cmdq_pkt_wfe(struct cmdq_pkt *pkt, u32 event)
 }
 EXPORT_SYMBOL(cmdq_pkt_wfe);
 
-int cmdq_pkt_clear_event(struct cmdq_pkt *pkt, u32 event)
+int cmdq_pkt_clear_event(struct cmdq_pkt *pkt, u16 event)
 {
 	if (event >= CMDQ_MAX_EVENT)
 		return -EINVAL;
diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
index 39d813dde4b4..9618debb9ceb 100644
--- a/include/linux/soc/mediatek/mtk-cmdq.h
+++ b/include/linux/soc/mediatek/mtk-cmdq.h
@@ -66,7 +66,7 @@ void cmdq_pkt_destroy(struct cmdq_pkt *pkt);
  *
  * Return: 0 for success; else the error code is returned
  */
-int cmdq_pkt_write(struct cmdq_pkt *pkt, u32 subsys, u32 offset, u32 value);
+int cmdq_pkt_write(struct cmdq_pkt *pkt, u8 subsys, u16 offset, u32 value);
 
 /**
  * cmdq_pkt_write_mask() - append write command with mask to the CMDQ packet
@@ -78,8 +78,8 @@ int cmdq_pkt_write(struct cmdq_pkt *pkt, u32 subsys, u32 offset, u32 value);
  *
  * Return: 0 for success; else the error code is returned
  */
-int cmdq_pkt_write_mask(struct cmdq_pkt *pkt, u32 subsys,
-			u32 offset, u32 value, u32 mask);
+int cmdq_pkt_write_mask(struct cmdq_pkt *pkt, u8 subsys,
+			u16 offset, u32 value, u32 mask);
 
 /**
  * cmdq_pkt_wfe() - append wait for event command to the CMDQ packet
@@ -88,7 +88,7 @@ int cmdq_pkt_write_mask(struct cmdq_pkt *pkt, u32 subsys,
  *
  * Return: 0 for success; else the error code is returned
  */
-int cmdq_pkt_wfe(struct cmdq_pkt *pkt, u32 event);
+int cmdq_pkt_wfe(struct cmdq_pkt *pkt, u16 event);
 
 /**
  * cmdq_pkt_clear_event() - append clear event command to the CMDQ packet
@@ -97,7 +97,7 @@ int cmdq_pkt_wfe(struct cmdq_pkt *pkt, u32 event);
  *
  * Return: 0 for success; else the error code is returned
  */
-int cmdq_pkt_clear_event(struct cmdq_pkt *pkt, u32 event);
+int cmdq_pkt_clear_event(struct cmdq_pkt *pkt, u16 event);
 
 /**
  * cmdq_pkt_flush_async() - trigger CMDQ to asynchronously execute the CMDQ
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
