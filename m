Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F8A1EE110
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 11:19:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s1w3wPTk4fe0kUCH7ZHU0uEcW6NQdjPYoZZgoWOJ1/A=; b=LXyhG9X2D0K6Cz
	tYVerbcIaaOwrr7DAgY2fZF6LIgMG33vmUi9X+OE/mJKg7Nz3zPoDJ8c4jmNI8WHV/Oj4A/PshkNK
	p4u4XEfHXJH3Mb77CMkzninYR7mpEmzgBimBq+QINaTF/4BALHRH1idy7Rg8rACv8jTn/C4gp1U/h
	POi5rdSo1BY+FVXhSiJZxnn2LYv/h5avlsDTCiCN1vjyvTU73Q/XNLdi7ZpsDrgZ7TlpEOqo8gk45
	XFn1nHa89pfOPcreWP0o96iRYkdECelx2DVl7VAng6/Se7R3VHHxNOA3FfyOAU66Dynj296zgQMFs
	A5WKXRgdkDdhwARtNudA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgm1n-00021f-3z; Thu, 04 Jun 2020 09:19:11 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgm11-0001PT-Ur; Thu, 04 Jun 2020 09:18:25 +0000
X-UUID: 1a9e23acdc404f94a148d53b8c545ba3-20200604
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=++AszAM+yvHiRrZuadM5z42ebHxNTFGklmlvhyXuUcg=; 
 b=bAYgoQfghSK6KzmYt+aC/x+5agX6bWGYYEAIDAtivE8RzKInOWbo49pnzypwG2hMSR2k4CH4zbWRK736/AalrqZcGdG3beMqlYhxe4FD/80yzJKy3Xei75tV/hxYyjPPNcPnJZU85HMr5R3x0MhUP7NNWeHc/0kmcj+Toznhsuw=;
X-UUID: 1a9e23acdc404f94a148d53b8c545ba3-20200604
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <xia.jiang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 81150856; Thu, 04 Jun 2020 01:18:07 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 4 Jun 2020 02:08:25 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 4 Jun 2020 17:08:23 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 4 Jun 2020 17:08:21 +0800
From: Xia Jiang <xia.jiang@mediatek.com>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, Mauro Carvalho Chehab
 <mchehab+samsung@kernel.org>, Rob Herring <robh+dt@kernel.org>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, Rick Chang <rick.chang@mediatek.com>
Subject: [PATCH RESEND v9 16/18] media: platform: Rename jpeg dec file name
Date: Thu, 4 Jun 2020 17:05:51 +0800
Message-ID: <20200604090553.10861-18-xia.jiang@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200604090553.10861-1-xia.jiang@mediatek.com>
References: <20200604090553.10861-1-xia.jiang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_021824_024327_33BC7F8F 
X-CRM114-Status: UNSURE (   8.66  )
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

Rename the files which are for decode feature. This is preparing
path since the jpeg enc patch will be added later.

Reviewed-by: Tomasz Figa <tfiga@chromium.org>
Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
---
v9: no changes
---
 drivers/media/platform/mtk-jpeg/Makefile                      | 2 +-
 drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c               | 4 ++--
 .../platform/mtk-jpeg/{mtk_jpeg_hw.c => mtk_jpeg_dec_hw.c}    | 2 +-
 .../platform/mtk-jpeg/{mtk_jpeg_hw.h => mtk_jpeg_dec_hw.h}    | 2 +-
 .../mtk-jpeg/{mtk_jpeg_parse.c => mtk_jpeg_dec_parse.c}       | 2 +-
 .../mtk-jpeg/{mtk_jpeg_parse.h => mtk_jpeg_dec_parse.h}       | 2 +-
 .../platform/mtk-jpeg/{mtk_jpeg_reg.h => mtk_jpeg_dec_reg.h}  | 0
 7 files changed, 7 insertions(+), 7 deletions(-)
 rename drivers/media/platform/mtk-jpeg/{mtk_jpeg_hw.c => mtk_jpeg_dec_hw.c} (99%)
 rename drivers/media/platform/mtk-jpeg/{mtk_jpeg_hw.h => mtk_jpeg_dec_hw.h} (98%)
 rename drivers/media/platform/mtk-jpeg/{mtk_jpeg_parse.c => mtk_jpeg_dec_parse.c} (98%)
 rename drivers/media/platform/mtk-jpeg/{mtk_jpeg_parse.h => mtk_jpeg_dec_parse.h} (92%)
 rename drivers/media/platform/mtk-jpeg/{mtk_jpeg_reg.h => mtk_jpeg_dec_reg.h} (100%)

diff --git a/drivers/media/platform/mtk-jpeg/Makefile b/drivers/media/platform/mtk-jpeg/Makefile
index 92a4fc046bfe..48516dcf96e6 100644
--- a/drivers/media/platform/mtk-jpeg/Makefile
+++ b/drivers/media/platform/mtk-jpeg/Makefile
@@ -1,3 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
-mtk_jpeg-objs := mtk_jpeg_core.o mtk_jpeg_hw.o mtk_jpeg_parse.o
+mtk_jpeg-objs := mtk_jpeg_core.o mtk_jpeg_dec_hw.o mtk_jpeg_dec_parse.o
 obj-$(CONFIG_VIDEO_MEDIATEK_JPEG) += mtk_jpeg.o
diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
index 6c82134d6b3d..e0e522a502e1 100644
--- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
+++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
@@ -23,9 +23,9 @@
 #include <media/videobuf2-dma-contig.h>
 #include <soc/mediatek/smi.h>
 
-#include "mtk_jpeg_hw.h"
+#include "mtk_jpeg_dec_hw.h"
 #include "mtk_jpeg_core.h"
-#include "mtk_jpeg_parse.h"
+#include "mtk_jpeg_dec_parse.h"
 
 static struct mtk_jpeg_fmt mtk_jpeg_formats[] = {
 	{
diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_hw.c b/drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_hw.c
similarity index 99%
rename from drivers/media/platform/mtk-jpeg/mtk_jpeg_hw.c
rename to drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_hw.c
index 68abcfd7494d..afbbfd5d02bc 100644
--- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_hw.c
+++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_hw.c
@@ -9,7 +9,7 @@
 #include <linux/kernel.h>
 #include <media/videobuf2-core.h>
 
-#include "mtk_jpeg_hw.h"
+#include "mtk_jpeg_dec_hw.h"
 
 #define MTK_JPEG_DUNUM_MASK(val)	(((val) - 1) & 0x3)
 
diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_hw.h b/drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_hw.h
similarity index 98%
rename from drivers/media/platform/mtk-jpeg/mtk_jpeg_hw.h
rename to drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_hw.h
index 7b0687f8f4b6..1cc37dbfc8e7 100644
--- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_hw.h
+++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_hw.h
@@ -11,7 +11,7 @@
 #include <media/videobuf2-core.h>
 
 #include "mtk_jpeg_core.h"
-#include "mtk_jpeg_reg.h"
+#include "mtk_jpeg_dec_reg.h"
 
 enum {
 	MTK_JPEG_DEC_RESULT_EOF_DONE		= 0,
diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_parse.c b/drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_parse.c
similarity index 98%
rename from drivers/media/platform/mtk-jpeg/mtk_jpeg_parse.c
rename to drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_parse.c
index f862d38f3af7..b95c45791c29 100644
--- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_parse.c
+++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_parse.c
@@ -8,7 +8,7 @@
 #include <linux/kernel.h>
 #include <linux/videodev2.h>
 
-#include "mtk_jpeg_parse.h"
+#include "mtk_jpeg_dec_parse.h"
 
 #define TEM	0x01
 #define SOF0	0xc0
diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_parse.h b/drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_parse.h
similarity index 92%
rename from drivers/media/platform/mtk-jpeg/mtk_jpeg_parse.h
rename to drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_parse.h
index 0a48eeabaff2..2918f15811f8 100644
--- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_parse.h
+++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_parse.h
@@ -8,7 +8,7 @@
 #ifndef _MTK_JPEG_PARSE_H
 #define _MTK_JPEG_PARSE_H
 
-#include "mtk_jpeg_hw.h"
+#include "mtk_jpeg_dec_hw.h"
 
 bool mtk_jpeg_parse(struct mtk_jpeg_dec_param *param, u8 *src_addr_va,
 		    u32 src_size);
diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_reg.h b/drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_reg.h
similarity index 100%
rename from drivers/media/platform/mtk-jpeg/mtk_jpeg_reg.h
rename to drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_reg.h
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
