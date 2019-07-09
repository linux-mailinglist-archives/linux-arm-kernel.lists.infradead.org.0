Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 825A362EBA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 05:23:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SRH8yND5pDmmgPA6fE699vazxBysi2siwLN4Oxdo8sA=; b=b9O/GN77TsnK0z
	5KvYSWifrHk2oW5ePhByBKkwyHJdVanHaqPh0XT9vHTV1/9PaK+GW4ziddXaUk0N+OMJ8pJhJyo4r
	IJHdalYx+qVUC298xPT7Ikk6ly+0y/rUdNyaufbJyqYnGl1O7HTiXws4/AtINiLXY1b8b85Bp8qbx
	qkuCDdhuN3CwixGV7uhuzfnFzKy8ZIdgfVvk9hK5FLa1d6Ff4ArWfQFf+NQPdU+8Gf+zJnEaZGPkS
	TtqbMfnim7E0XmDmBIf4YZr8JwXwpntRMbQW/T1GO9pXAB5q8rT4a986S4R6IR4tvMbBN9YkpXoyv
	kRsJhFhkLxu4s60vHFfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkgip-00015k-3i; Tue, 09 Jul 2019 03:23:15 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkgiD-0000mv-27; Tue, 09 Jul 2019 03:22:38 +0000
X-UUID: 8d2023fb79eb4139886fa8bb8adfa34e-20190708
X-UUID: 8d2023fb79eb4139886fa8bb8adfa34e-20190708
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <xia.jiang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2135948598; Mon, 08 Jul 2019 19:22:30 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 8 Jul 2019 20:22:29 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 9 Jul 2019 11:22:28 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 9 Jul 2019 11:22:27 +0800
From: Xia Jiang <xia.jiang@mediatek.com>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, Rob Herring <robh+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, Rick Chang
 <rick.chang@mediatek.com>
Subject: [PATCH 4/5] media: platform: change GPLv2 license to SPDX
Date: Tue, 9 Jul 2019 11:21:02 +0800
Message-ID: <20190709032103.10291-5-xia.jiang@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190709032103.10291-1-xia.jiang@mediatek.com>
References: <20190709032103.10291-1-xia.jiang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_202237_117928_DADDC2A7 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
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
Cc: Xia Jiang <xia.jiang@mediatek.com>, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>, linux-mediatek@lists.infradead.org,
 linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Switch GPLv2 license to SPDX license.

Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
---
 drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c      | 9 +--------
 drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h      | 9 +--------
 drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_hw.c    | 9 +--------
 drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_hw.h    | 9 +--------
 drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_parse.c | 9 +--------
 drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_parse.h | 9 +--------
 drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_reg.h   | 9 +--------
 7 files changed, 7 insertions(+), 56 deletions(-)

diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
index ef54802bd813..9094eb7bd00f 100644
--- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
+++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
@@ -1,17 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (c) 2016 MediaTek Inc.
  * Author: Ming Hsiu Tsai <minghsiu.tsai@mediatek.com>
  *         Rick Chang <rick.chang@mediatek.com>
  *         Xia Jiang <xia.jiang@mediatek.com>
  *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include <linux/clk.h>
diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h
index 65ef920651a5..34cd139ee502 100644
--- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h
+++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h
@@ -1,17 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (c) 2016 MediaTek Inc.
  * Author: Ming Hsiu Tsai <minghsiu.tsai@mediatek.com>
  *         Rick Chang <rick.chang@mediatek.com>
  *         Xia Jiang <xia.jiang@mediatek.com>
  *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #ifndef _MTK_JPEG_CORE_H
diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_hw.c b/drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_hw.c
index aad834d98059..0a8200a0a5c6 100644
--- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_hw.c
+++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_hw.c
@@ -1,16 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (c) 2016 MediaTek Inc.
  * Author: Ming Hsiu Tsai <minghsiu.tsai@mediatek.com>
  *         Rick Chang <rick.chang@mediatek.com>
  *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include <linux/io.h>
diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_hw.h b/drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_hw.h
index 725ce94fd58f..be9a756d6242 100644
--- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_hw.h
+++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_hw.h
@@ -1,17 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (c) 2016 MediaTek Inc.
  * Author: Ming Hsiu Tsai <minghsiu.tsai@mediatek.com>
  *         Rick Chang <rick.chang@mediatek.com>
  *         Xia Jiang <xia.jiang@mediatek.com>
  *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #ifndef _MTK_JPEG_DEC_HW_H
diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_parse.c b/drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_parse.c
index c887f90c3a66..c63d61a957a5 100644
--- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_parse.c
+++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_parse.c
@@ -1,16 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (c) 2016 MediaTek Inc.
  * Author: Ming Hsiu Tsai <minghsiu.tsai@mediatek.com>
  *         Rick Chang <rick.chang@mediatek.com>
  *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include <linux/kernel.h>
diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_parse.h b/drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_parse.h
index fdad7f2da6be..8760ff71d38f 100644
--- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_parse.h
+++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_parse.h
@@ -1,16 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (c) 2016 MediaTek Inc.
  * Author: Ming Hsiu Tsai <minghsiu.tsai@mediatek.com>
  *         Rick Chang <rick.chang@mediatek.com>
  *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #ifndef _MTK_JPEG_PARSE_H
diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_reg.h b/drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_reg.h
index fc490d62b012..e01470449b8b 100644
--- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_reg.h
+++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_reg.h
@@ -1,16 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (c) 2016 MediaTek Inc.
  * Author: Ming Hsiu Tsai <minghsiu.tsai@mediatek.com>
  *         Rick Chang <rick.chang@mediatek.com>
  *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #ifndef _MTK_JPEG_REG_H
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
