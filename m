Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C6D19D462
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 11:52:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pjb61shFDwklK06A7XNsoaoMuODRrwBz2rGcNEL2r+8=; b=DjHqaNha3KnYOk
	LJpaRLQOvd5gwKIfB9w6BZqrkEWdbQABoS31n3Rfs7QffFLQp4Z9hND1mhE0f+MAIxvEKpr3v5ZPl
	Aqk39XY9hlLdmtcn7Ivr/H18Y0z9eIw5nkGES/FKIqBzSmfQwNdNilpkfxLRGolmHWgT3zJuzTdUa
	cb1mvryFX0l2QXnErBO+nzAYfb6cErOiK6FJ3LbnHaZxiTIuXcvaCVbfQ31l2FBOZTTjJ/61v9mK5
	oCEEHA4C5WE5o1taW5Cz0jiFUDedsa2hC5QCzCgNCwUXVSP5fEvDh6PfsrQccCFbk3O4wlao3CdGD
	77UicUHdZtV0VLsfCVxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKIzo-0001Xq-K7; Fri, 03 Apr 2020 09:52:16 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKIyI-0000Eq-Bn; Fri, 03 Apr 2020 09:50:44 +0000
X-UUID: 20482d8198f34028856ebc625fd4e196-20200403
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=bXfqqZjC0vdXwDLa/41LuBLnfZuVJ3NDcFA/GOyQmNc=; 
 b=PpdhsWEXI6Sk9f5JQy6cgtTUk+H0roz6UA2+xo1ove9q70VGCQvi3FQhGUJn2yE3MzWqzWKnX2CxqslaoGi50WplalQETCxnzJg/eJEOZez4UGaYt4IEG0t/eVMvR0WkSwhec5cpIMm/sJj1N7k7kQZzMFY8rwFV/gKUWEtBeYs=;
X-UUID: 20482d8198f34028856ebc625fd4e196-20200403
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <xia.jiang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1257290104; Fri, 03 Apr 2020 01:50:33 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 3 Apr 2020 02:40:50 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 3 Apr 2020 17:40:47 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 3 Apr 2020 17:40:46 +0800
From: Xia Jiang <xia.jiang@mediatek.com>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, Mauro Carvalho Chehab
 <mchehab+samsung@kernel.org>, Rob Herring <robh+dt@kernel.org>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, Rick Chang <rick.chang@mediatek.com>
Subject: [PATCH v8 13/14] media: platform: Rename jpeg dec file name
Date: Fri, 3 Apr 2020 17:40:32 +0800
Message-ID: <20200403094033.8288-14-xia.jiang@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200403094033.8288-1-xia.jiang@mediatek.com>
References: <20200403094033.8288-1-xia.jiang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_025042_438943_3D6F7494 
X-CRM114-Status: UNSURE (   8.86  )
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

Rename the files which are for decode feature. This is preparing
path since the jpeg enc patch will be added later.

Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
---
v8: no changes

v7: no changes

v6: no changes

v5: no changes

v4: no changes

v3: no changes

v2: no changes
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
index 9e59b9a51ef0..77a95185584c 100644
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
