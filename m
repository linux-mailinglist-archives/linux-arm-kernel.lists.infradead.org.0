Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA94E19D471
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 11:54:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qafXQ45VBD2aOoWL5rV9hklDHaLRT7gyQ0uwC33LhWE=; b=A1JAYOsMK2HJnT
	ytvRCEEB1iDlspRq71TNLInVIli4i7+Dcgmd0V/Pj7vpyaCX183awx97aYmbTKLKKZYDgjGt5KOjX
	FoC5GSO/bleqC4FkptodTGZYzRR97aUYzEr/GVm8h+U4UQ85a0z75BVhHGz2P3eNbLF2I9DMuRV9s
	rh35zA0kUVb7rRPYKF1Lg3x/l/kVq8IkI1BHn8cJYIttJ2MQM0a3PmMjrJ0c1jteFvgofBJ1Bp5HZ
	F7sWkq3nd493SrOoisiwrlLT/kyt1XVOoqU5CsO9X/jDwTNsJ9rbyMjPv5n9kcBY+7N3Z7N8w/IK3
	agIymx6iyq/HtH/ksrGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKJ1q-0003FV-7r; Fri, 03 Apr 2020 09:54:22 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKIyW-0000Uk-5g; Fri, 03 Apr 2020 09:50:59 +0000
X-UUID: 7e580b96df7b4143bc9d8c6491b1cc73-20200403
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=C7gYmaCUU4cSRDwLJUXyiRJoVdUsllJH8boXNnM767E=; 
 b=OcL2SsDylc4nM3OpzC4JH7U1bSiOnHjlxFhe1jGtgOGu0oBFZxqdTI9OMun1sax1Njz4a+TP1cFYzqjPS9cG5sTPxH5uDlHI/9nZaxf1631pncVAe3p/N+J4fgtf0bewnzbA+hqxBSwrPG0Jh8fFpISziJNIlBoXHl6wOvPy3/s=;
X-UUID: 7e580b96df7b4143bc9d8c6491b1cc73-20200403
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <xia.jiang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1303247458; Fri, 03 Apr 2020 01:50:42 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 3 Apr 2020 02:40:43 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 3 Apr 2020 17:40:41 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 3 Apr 2020 17:40:40 +0800
From: Xia Jiang <xia.jiang@mediatek.com>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, Mauro Carvalho Chehab
 <mchehab+samsung@kernel.org>, Rob Herring <robh+dt@kernel.org>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, Rick Chang <rick.chang@mediatek.com>
Subject: [PATCH v8 08/14] media: platform: Change case for improving code
 quality
Date: Fri, 3 Apr 2020 17:40:27 +0800
Message-ID: <20200403094033.8288-9-xia.jiang@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200403094033.8288-1-xia.jiang@mediatek.com>
References: <20200403094033.8288-1-xia.jiang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_025056_325831_9B44D0B5 
X-CRM114-Status: UNSURE (   7.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: maoguang.meng@mediatek.com, devicetree@vger.kernel.org,
 mojahsu@chromium.org, srv_heupstream@mediatek.com,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 senozhatsky@chromium.org, sj.huang@mediatek.com, drinkcat@chromium.org,
 linux-mediatek@lists.infradead.org, Xia Jiang <xia.jiang@mediatek.com>,
 linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Change register offset hex numberals from upercase to lowercase.

Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
---
v8: no changes
---
 drivers/media/platform/mtk-jpeg/mtk_jpeg_reg.h | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_reg.h b/drivers/media/platform/mtk-jpeg/mtk_jpeg_reg.h
index 94db04e9cdb6..2945da842dfa 100644
--- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_reg.h
+++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_reg.h
@@ -20,29 +20,29 @@
 #define BIT_INQST_MASK_ALLIRQ		0x37
 
 #define JPGDEC_REG_RESET		0x0090
-#define JPGDEC_REG_BRZ_FACTOR		0x00F8
-#define JPGDEC_REG_DU_NUM		0x00FC
+#define JPGDEC_REG_BRZ_FACTOR		0x00f8
+#define JPGDEC_REG_DU_NUM		0x00fc
 #define JPGDEC_REG_DEST_ADDR0_Y		0x0140
 #define JPGDEC_REG_DEST_ADDR0_U		0x0144
 #define JPGDEC_REG_DEST_ADDR0_V		0x0148
-#define JPGDEC_REG_DEST_ADDR1_Y		0x014C
+#define JPGDEC_REG_DEST_ADDR1_Y		0x014c
 #define JPGDEC_REG_DEST_ADDR1_U		0x0150
 #define JPGDEC_REG_DEST_ADDR1_V		0x0154
 #define JPGDEC_REG_STRIDE_Y		0x0158
-#define JPGDEC_REG_STRIDE_UV		0x015C
+#define JPGDEC_REG_STRIDE_UV		0x015c
 #define JPGDEC_REG_IMG_STRIDE_Y		0x0160
 #define JPGDEC_REG_IMG_STRIDE_UV	0x0164
-#define JPGDEC_REG_WDMA_CTRL		0x016C
+#define JPGDEC_REG_WDMA_CTRL		0x016c
 #define JPGDEC_REG_PAUSE_MCU_NUM	0x0170
-#define JPGDEC_REG_OPERATION_MODE	0x017C
+#define JPGDEC_REG_OPERATION_MODE	0x017c
 #define JPGDEC_REG_FILE_ADDR		0x0200
-#define JPGDEC_REG_COMP_ID		0x020C
+#define JPGDEC_REG_COMP_ID		0x020c
 #define JPGDEC_REG_TOTAL_MCU_NUM	0x0210
 #define JPGDEC_REG_COMP0_DATA_UNIT_NUM	0x0224
-#define JPGDEC_REG_DU_CTRL		0x023C
+#define JPGDEC_REG_DU_CTRL		0x023c
 #define JPGDEC_REG_TRIG			0x0240
 #define JPGDEC_REG_FILE_BRP		0x0248
-#define JPGDEC_REG_FILE_TOTAL_SIZE	0x024C
+#define JPGDEC_REG_FILE_TOTAL_SIZE	0x024c
 #define JPGDEC_REG_QT_ID		0x0270
 #define JPGDEC_REG_INTERRUPT_STATUS	0x0274
 #define JPGDEC_REG_STATUS		0x0278
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
