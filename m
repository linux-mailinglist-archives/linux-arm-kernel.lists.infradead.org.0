Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7766E1EE122
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 11:21:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F5hMnnAZRwe1dP+Yyhn0lpITjeooJBgPhHBxKFcXEJ4=; b=Zlllb+stnhUsrp
	ZskuY0odpZ5fWa6dCUQB4IDSDxLNuP2essZluoXABKpDUXn4zu+UhWTj20yzYntzXlxHIwQ51svCk
	cwopIz8F+1JXRlZx3gmFryOi9VkWwUzRznmvpSHaVg3lB1kA3vrnfO+PD56ubeo54jVXcCy48NL9t
	CGRDtTHEl8WUmk8PLudVCRSRY/CrKor5iBpy7Q2d2zvi+H8gcWnHBWNlYtACaJbXLjFArNrxTJQfF
	iE+CJrr/uK9HjdZOK6EQs0XOmgy9FOyKWAj9sPUbyh558MsdO5ZQmge2acoG56PWfMaJXb9rwpGfH
	rG1fPskBgQtO3bhKfp+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgm3t-0006Oe-Eh; Thu, 04 Jun 2020 09:21:21 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgm18-0001PT-2Y; Thu, 04 Jun 2020 09:18:32 +0000
X-UUID: b8d1415ad2c84e25b087f409853c9ff8-20200604
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=HJ9S6rma+vnVa5gCVUNR3+hSMzVhPDu4Fw67Ls/8Gl8=; 
 b=u8WkqgachXPW2yoLzsn5JyhYL9S6AGOZaQuPIZBfp+2dSR37MYXigxqnPA6dA2SAvCfisISEPVA/C2Jp9/HiXWkO1HdLhJ0qlAxCmB2iAKzmOAr8hPPLrlcXs5lVCSd8g8RO71kthKjWwtZbLiZ6Y/5d570wfDROSvXQWGEqJOI=;
X-UUID: b8d1415ad2c84e25b087f409853c9ff8-20200604
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <xia.jiang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1033638141; Thu, 04 Jun 2020 01:18:11 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 4 Jun 2020 02:08:13 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 4 Jun 2020 17:08:12 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 4 Jun 2020 17:08:11 +0800
From: Xia Jiang <xia.jiang@mediatek.com>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, Mauro Carvalho Chehab
 <mchehab+samsung@kernel.org>, Rob Herring <robh+dt@kernel.org>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, Rick Chang <rick.chang@mediatek.com>
Subject: [PATCH RESEND v9 10/18] media: platform: Stylistic changes for
 improving code quality
Date: Thu, 4 Jun 2020 17:05:45 +0800
Message-ID: <20200604090553.10861-12-xia.jiang@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200604090553.10861-1-xia.jiang@mediatek.com>
References: <20200604090553.10861-1-xia.jiang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_021830_309130_EBCFFEAB 
X-CRM114-Status: UNSURE (   7.77  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Change register offset hex numerals from uppercase to lowercase.
Change data type of max/min width/height from integer to unsigned
integer.

Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
---
v9: move changing data type of max/min width/height to this patch
---
 .../media/platform/mtk-jpeg/mtk_jpeg_core.h    |  8 ++++----
 drivers/media/platform/mtk-jpeg/mtk_jpeg_reg.h | 18 +++++++++---------
 2 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h
index 999bd1427809..28e9b30ad5c3 100644
--- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h
+++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h
@@ -21,10 +21,10 @@
 #define MTK_JPEG_FMT_TYPE_OUTPUT	1
 #define MTK_JPEG_FMT_TYPE_CAPTURE	2
 
-#define MTK_JPEG_MIN_WIDTH	32
-#define MTK_JPEG_MIN_HEIGHT	32
-#define MTK_JPEG_MAX_WIDTH	8192
-#define MTK_JPEG_MAX_HEIGHT	8192
+#define MTK_JPEG_MIN_WIDTH	32U
+#define MTK_JPEG_MIN_HEIGHT	32U
+#define MTK_JPEG_MAX_WIDTH	8192U
+#define MTK_JPEG_MAX_HEIGHT	8192U
 
 #define MTK_JPEG_DEFAULT_SIZEIMAGE	(1 * 1024 * 1024)
 
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
