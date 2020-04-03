Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB21F19D470
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 11:54:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oFk0U9Ine/pR9cJN6iOZ8SC7lrO8t6qj4Zy3nCs+UxI=; b=oYmbKiwmgbM7bS
	hMqFP4NnK8o1BFjZnKttLBX6nwC0PAqp76EMGdHxLh4hqMiNbhwR2WpkRIiQWApmJwvPB+oTUzXZi
	9lT1XBk91KWdKN2IAC7faXBtb63nFW/w80v0N6lan2Apx/LX1RkCf5HT64qyL4drUfZLvlDqjaAXy
	eCI4Ju6LO48Awpb1xU1SjwXvoGFh/iczakde2YtLyuOvQD4LICgqKOR2DZiCxvUVe5jkrxydLbaFN
	rBL7xzBcJ4NQqwWiwah/VHLzDDnclHwVQFXxt6p8XLwKDThMPJpZlidUbZXwyA1Cw+XCDsdNaEXJu
	z5WRuTPGQgllTFD0tQWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKJ1a-00032a-Hq; Fri, 03 Apr 2020 09:54:06 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKIyT-0000Tl-KJ; Fri, 03 Apr 2020 09:50:59 +0000
X-UUID: 379ceb2f46624d01ad646fa637382756-20200403
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=OOChW+77Z9NJphKhWSdta5DALUPca9EN4IVe9neP1ZM=; 
 b=R+R0fgYkh7UzVL+pSHrgjSTeRXLY0BM8XMd9f2sxCgga4qeMKBS6xE315UzHcU82eSx4ET3omeKxBx+k4NocqQF+65wfVXHV90HMNYdBiV5q5CcJRjQGGjBdi3pIAFIXY1SCvtVj9PXMlvA8tXw0zKBCBPKjcaMM3N1yh7Rc0oI=;
X-UUID: 379ceb2f46624d01ad646fa637382756-20200403
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <xia.jiang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1819726622; Fri, 03 Apr 2020 01:50:42 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 3 Apr 2020 02:40:45 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 3 Apr 2020 17:40:42 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 3 Apr 2020 17:40:41 +0800
From: Xia Jiang <xia.jiang@mediatek.com>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, Mauro Carvalho Chehab
 <mchehab+samsung@kernel.org>, Rob Herring <robh+dt@kernel.org>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, Rick Chang <rick.chang@mediatek.com>
Subject: [PATCH v8 09/14] media: platform: Change MTK_JPEG_COMP_MAX macro
 definition location
Date: Fri, 3 Apr 2020 17:40:28 +0800
Message-ID: <20200403094033.8288-10-xia.jiang@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200403094033.8288-1-xia.jiang@mediatek.com>
References: <20200403094033.8288-1-xia.jiang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_025053_749659_E5D51193 
X-CRM114-Status: UNSURE (   8.91  )
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

Move MTK_JPEG_COMP_MAX definition to mtk_jpeg_core.h file, because it
is used by mtk_jpeg_core.c file.

Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
---
v8: no changes
---
 drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h | 2 ++
 drivers/media/platform/mtk-jpeg/mtk_jpeg_reg.h  | 1 -
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h
index 28e9b30ad5c3..64a731261214 100644
--- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h
+++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h
@@ -15,6 +15,8 @@
 
 #define MTK_JPEG_NAME		"mtk-jpeg"
 
+#define MTK_JPEG_COMP_MAX		3
+
 #define MTK_JPEG_FMT_FLAG_DEC_OUTPUT	BIT(0)
 #define MTK_JPEG_FMT_FLAG_DEC_CAPTURE	BIT(1)
 
diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_reg.h b/drivers/media/platform/mtk-jpeg/mtk_jpeg_reg.h
index 2945da842dfa..21ec8f96797f 100644
--- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_reg.h
+++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_reg.h
@@ -8,7 +8,6 @@
 #ifndef _MTK_JPEG_REG_H
 #define _MTK_JPEG_REG_H
 
-#define MTK_JPEG_COMP_MAX		3
 #define MTK_JPEG_BLOCK_MAX		10
 #define MTK_JPEG_DCTSIZE		8
 
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
