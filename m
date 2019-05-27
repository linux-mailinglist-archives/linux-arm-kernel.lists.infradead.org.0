Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B4412B060
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 10:39:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A/yLye6atqIZNapquhxV1lfBUcshiJ/03Oa2ydKtw3s=; b=IVU+PoyiKBZwbt
	ZsKpoNgCPrp9XdTTgSSUgu4UscFecpqMoeBDjpfrYMiHkFaNq7rvo8EIte4CXuQj7JeIwJqhC7OeC
	AYhhG70j9U5OGvEyo87V+syrWTnpy6D7tiJChgXlBzGWxmKh7CEYvfjAv2yBFPrvnWASbbmEYwbDs
	eey5ZU99+E+VCLa0npB6HOaYgf7teQbDR9+s/lI/JsrNMJIj/YbZuRP6wOZft2bPKWr5MaGPiJpF5
	2Xd1F4DZOxuQbRlPqKUbSRrBR7qK/lpCaZhSKWMQSCJfW1v0HyCGj4NHr7ikrmtVwT7DNDwCckTdC
	Ik6kiRTAENHoj8HK5XUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVBAL-0001BM-Nt; Mon, 27 May 2019 08:39:33 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVBA5-00013O-1L; Mon, 27 May 2019 08:39:18 +0000
X-UUID: 3b1cea4fbdf34a01837033a8a3476e90-20190527
X-UUID: 3b1cea4fbdf34a01837033a8a3476e90-20190527
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <neal.liu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 636832482; Mon, 27 May 2019 00:39:11 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 27 May 2019 01:39:09 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 27 May 2019 16:39:08 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 27 May 2019 16:39:08 +0800
From: Neal Liu <neal.liu@mediatek.com>
To: Matt Mackall <mpm@selenic.com>, Herbert Xu <herbert@gondor.apana.org.au>, 
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sean Wang <sean.wang@kernel.org>
Subject: [PATCH v2 1/3] soc: mediatek: add SMC fid table for SIP interface
Date: Mon, 27 May 2019 16:38:44 +0800
Message-ID: <1558946326-13630-2-git-send-email-neal.liu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1558946326-13630-1-git-send-email-neal.liu@mediatek.com>
References: <1558946326-13630-1-git-send-email-neal.liu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_013917_085874_E83A32F0 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 lkml <linux-kernel@vger.kernel.org>, Crystal Guo <Crystal.Guo@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-crypto@vger.kernel.org,
 Neal Liu <neal.liu@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

1. Add a header file to provide SIP interface to ARM Trusted
Firmware(ATF)
2. Add hwrng SMC fid

Signed-off-by: Neal Liu <neal.liu@mediatek.com>
---
 include/linux/soc/mediatek/mtk_sip_svc.h |   51 ++++++++++++++++++++++++++++++
 1 file changed, 51 insertions(+)
 create mode 100644 include/linux/soc/mediatek/mtk_sip_svc.h

diff --git a/include/linux/soc/mediatek/mtk_sip_svc.h b/include/linux/soc/mediatek/mtk_sip_svc.h
new file mode 100644
index 0000000..f65d403
--- /dev/null
+++ b/include/linux/soc/mediatek/mtk_sip_svc.h
@@ -0,0 +1,51 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2019 MediaTek Inc.
+ */
+
+#ifndef _MTK_SECURE_API_H_
+#define _MTK_SECURE_API_H_
+
+#include <linux/kernel.h>
+
+/* Error Code */
+#define SIP_SVC_E_SUCCESS			0
+#define SIP_SVC_E_NOT_SUPPORTED			-1
+#define SIP_SVC_E_INVALID_PARAMS		-2
+#define SIP_SVC_E_INVALID_RANGE			-3
+#define SIP_SVC_E_PERMISSION_DENY		-4
+
+#ifdef CONFIG_ARM64
+#define MTK_SIP_SMC_AARCH_BIT			0x40000000
+#else
+#define MTK_SIP_SMC_AARCH_BIT			0x00000000
+#endif
+
+/*******************************************************************************
+ * Defines for Mediatek runtime services func ids
+ ******************************************************************************/
+
+/* Debug feature and ATF related SMC call */
+
+/* CPU operations related SMC call */
+
+/* SPM related SMC call */
+
+/* Low power related SMC call */
+
+/* AMMS related SMC call */
+
+/* Security related SMC call */
+/* HWRNG */
+#define MTK_SIP_KERNEL_GET_RND \
+	(0x82000206 | MTK_SIP_SMC_AARCH_BIT)
+
+/* Storage Encryption related SMC call */
+
+/* Platform related SMC call */
+
+/* Pheripheral related SMC call */
+
+/* MM related SMC call */
+
+#endif /* _MTK_SECURE_API_H_ */
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
