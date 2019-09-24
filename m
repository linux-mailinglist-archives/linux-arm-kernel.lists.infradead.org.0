Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9222CBC308
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 09:45:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8sLNwPUo1PjzA+FktJFLWtvUo+Qzmj3Axz0LFcoDRTs=; b=F2iCX05r+ItR+6
	YSg6S6LLVAQ6oCsNvalxaSM92C+bmicKC2UNro1vfU8LPNYFPfOPHYOfl41SlqzTmlydoeAFHCfhV
	2U572V2/sQ/qA9HkzAD2JQMaecVoke4LfCbu04DY9QRY76Cqby6daWa3NBeGhA/B8qUqQod1TaDjj
	2R4rtF0kZuLoamuTY9ure2Tv/hiMwIct8rSuP3a/WBmpO713sObZVvIwgtpBZI7wghmmzJIMi0xEN
	kLPI4xTChJSc1q/yrMKrCCFUGPU6mkfu8LEAZs+Hov3Kuf8ycT3NWgiDasfml5jzu/6+tZas32i3/
	mtv3hRdYaEBAYmy67Syg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCfVt-00036x-Nv; Tue, 24 Sep 2019 07:45:33 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCfUU-000183-Gb; Tue, 24 Sep 2019 07:44:10 +0000
X-UUID: fe724f4d95a748a6a59b998a5dd81a2a-20190923
X-UUID: fe724f4d95a748a6a59b998a5dd81a2a-20190923
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <xia.jiang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 310139571; Mon, 23 Sep 2019 23:44:02 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 24 Sep 2019 00:44:00 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 24 Sep 2019 15:43:59 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 24 Sep 2019 15:43:59 +0800
From: Xia Jiang <xia.jiang@mediatek.com>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, Mauro Carvalho Chehab
 <mchehab+samsung@kernel.org>, Rob Herring <robh+dt@kernel.org>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, Rick Chang <rick.chang@mediatek.com>
Subject: [PATCH v3 4/5] media: v4l2-ctrl: Add jpeg enc exif mode control
Date: Tue, 24 Sep 2019 15:43:04 +0800
Message-ID: <20190924074303.22713-5-xia.jiang@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190924074303.22713-1-xia.jiang@mediatek.com>
References: <20190924074303.22713-1-xia.jiang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_004406_634376_375C04EC 
X-CRM114-Status: UNSURE (   9.66  )
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

Add jpeg enc CID definition for exif mode control.

Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
---
v3: new add patch for V4L2_CID_JPEG_ENABLE_EXIF
---
 Documentation/media/uapi/v4l/ext-ctrls-jpeg.rst | 10 ++++++++++
 drivers/media/v4l2-core/v4l2-ctrls.c            |  1 +
 include/uapi/linux/v4l2-controls.h              |  2 ++
 3 files changed, 13 insertions(+)

diff --git a/Documentation/media/uapi/v4l/ext-ctrls-jpeg.rst b/Documentation/media/uapi/v4l/ext-ctrls-jpeg.rst
index 60ce3f949319..d44a539e2eb4 100644
--- a/Documentation/media/uapi/v4l/ext-ctrls-jpeg.rst
+++ b/Documentation/media/uapi/v4l/ext-ctrls-jpeg.rst
@@ -109,5 +109,15 @@ JPEG Control IDs
 
 
 
+``V4L2_CID_JPEG_ENABLE_EXIF (integer)``
+    ``V4L2_CID_JPEG_ENABLE_EXIF (integer)`` control determines JPEG
+    encoder mode. Its value of 0 means JPEG mode, 1 means EXIF mode. If
+    EXIF mode is enabled, the JPEG encoder will not write out SOI marker
+    (start from 0xffd8) but write out from DQT marker(start from
+    0xffdb). Software program can fill the EXIF content above the DQT
+    marker to finish one EXIF JPEG.
+
+
+
 For more details about JPEG specification, refer to :ref:`itu-t81`,
 :ref:`jfif`, :ref:`w3c-jpeg-jfif`.
diff --git a/drivers/media/v4l2-core/v4l2-ctrls.c b/drivers/media/v4l2-core/v4l2-ctrls.c
index 371537dd8cd3..c96c10480ebd 100644
--- a/drivers/media/v4l2-core/v4l2-ctrls.c
+++ b/drivers/media/v4l2-core/v4l2-ctrls.c
@@ -1025,6 +1025,7 @@ const char *v4l2_ctrl_get_name(u32 id)
 	case V4L2_CID_JPEG_RESTART_INTERVAL:	return "Restart Interval";
 	case V4L2_CID_JPEG_COMPRESSION_QUALITY:	return "Compression Quality";
 	case V4L2_CID_JPEG_ACTIVE_MARKER:	return "Active Markers";
+	case V4L2_CID_JPEG_ENABLE_EXIF:		return "Enable Exif";
 
 	/* Image source controls */
 	/* Keep the order of the 'case's the same as in v4l2-controls.h! */
diff --git a/include/uapi/linux/v4l2-controls.h b/include/uapi/linux/v4l2-controls.h
index a2669b79b294..da619f43de65 100644
--- a/include/uapi/linux/v4l2-controls.h
+++ b/include/uapi/linux/v4l2-controls.h
@@ -1022,6 +1022,8 @@ enum v4l2_jpeg_chroma_subsampling {
 #define	V4L2_JPEG_ACTIVE_MARKER_DQT		(1 << 17)
 #define	V4L2_JPEG_ACTIVE_MARKER_DHT		(1 << 18)
 
+#define	V4L2_CID_JPEG_ENABLE_EXIF		(V4L2_CID_JPEG_CLASS_BASE + 5)
+
 
 /* Image source controls */
 #define V4L2_CID_IMAGE_SOURCE_CLASS_BASE	(V4L2_CTRL_CLASS_IMAGE_SOURCE | 0x900)
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
