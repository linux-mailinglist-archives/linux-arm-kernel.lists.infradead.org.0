Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A00251EDEA5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 09:40:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EBRBAw6goj+eEhHWhzabljevE5WsGj8jBJNuNGW5ZXI=; b=FC7kHEAQxf/G1X
	u1KQ0nRLIV/TeO8F3dBQYKJWe4RnRk9wihss+j1s66mGdVpihWdlIo1MNJsSEL95mjp+jlkmSivpl
	351OSi9iHUSgM+pwpiWrHkMXIQKBeoYZvkxAB5v/w9MAID15N1GEDHfkU98sRGrO9qRIEvm+wYwyj
	aj4bXAMMA8Rox+eUEA6r0X211rLclmaTeosMudVaRfd5CBoCcIacHldvpY/HKGyT936a9qYArQzZv
	umCSL4qpQ/2CzYndSrfHfWCdUYK8mPPk/DY1JKIlZ5pfliiHLIhdEeetewtHEuhzKhvZFdQfzUscs
	TTSsc53CkXREcT6iGlmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgkUC-0006mq-1c; Thu, 04 Jun 2020 07:40:24 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgkTB-00068v-I4; Thu, 04 Jun 2020 07:39:23 +0000
X-UUID: 52ab652c5b9144519761ebf27ea33e83-20200603
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=3sd83gbBi/bwcV9u6BojfPaejlbJ45wcsK+TIeYFX5U=; 
 b=LRz4y/59j8079lBPlBsvWkjYRrpKerSAstadvPGCeGvWx/lQ5KCXsyUjz23aGCePVizjxwrX9vtZuHzA3c/KPXqX1MNVPzvXH0sSJfrmc6qdEBhvmv+UGMeXKHZX1wnhmaid+1oyeVnLmCTNW/6Rg4GpHuuyQAfFxgUcl+doO58=;
X-UUID: 52ab652c5b9144519761ebf27ea33e83-20200603
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <xia.jiang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1232156705; Wed, 03 Jun 2020 23:39:14 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 4 Jun 2020 00:29:22 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 4 Jun 2020 15:29:21 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 4 Jun 2020 15:29:19 +0800
From: Xia Jiang <xia.jiang@mediatek.com>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, Mauro Carvalho Chehab
 <mchehab+samsung@kernel.org>, Rob Herring <robh+dt@kernel.org>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, Rick Chang <rick.chang@mediatek.com>
Subject: [PATCH v9 06/18] media: platform: Delete the resetting hardware flow
 in the system PM ops
Date: Thu, 4 Jun 2020 15:26:56 +0800
Message-ID: <20200604072708.9468-7-xia.jiang@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200604072708.9468-1-xia.jiang@mediatek.com>
References: <20200604072708.9468-1-xia.jiang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_003921_616832_4AD45072 
X-CRM114-Status: GOOD (  11.88  )
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

Delete the resetting hardware flow in suspend and resume function
because that resetting operation will be done in device_run().

Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
---
v9: new patch
---
 check.txt                                       | 13 +++++++++++++
 drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c |  2 --
 2 files changed, 13 insertions(+), 2 deletions(-)
 create mode 100644 check.txt

diff --git a/check.txt b/check.txt
new file mode 100644
index 000000000000..aed39e5f62f2
--- /dev/null
+++ b/check.txt
@@ -0,0 +1,13 @@
+WARNING:LONG_LINE: line over 80 characters
+#820: FILE: ./drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c:820:
++	if (mtk_jpeg_set_dec_dst(ctx, &jpeg_src_buf->dec_param, &dst_buf->vb2_buf, &fb))
+
+total: 0 errors, 1 warnings, 1271 lines checked
+
+NOTE: For some of the reported defects, checkpatch may be able to
+      mechanically convert to the typical style using --fix or --fix-inplace.
+
+./drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c has style problems, please review.
+
+NOTE: If any of the errors are false positives, please report
+      them to the maintainer, see CHECKPATCH in MAINTAINERS.
diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
index fb624385969e..7f74597262fc 100644
--- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
+++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
@@ -1191,7 +1191,6 @@ static __maybe_unused int mtk_jpeg_pm_suspend(struct device *dev)
 {
 	struct mtk_jpeg_dev *jpeg = dev_get_drvdata(dev);
 
-	mtk_jpeg_dec_reset(jpeg->dec_reg_base);
 	mtk_jpeg_clk_off(jpeg);
 
 	return 0;
@@ -1202,7 +1201,6 @@ static __maybe_unused int mtk_jpeg_pm_resume(struct device *dev)
 	struct mtk_jpeg_dev *jpeg = dev_get_drvdata(dev);
 
 	mtk_jpeg_clk_on(jpeg);
-	mtk_jpeg_dec_reset(jpeg->dec_reg_base);
 
 	return 0;
 }
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
