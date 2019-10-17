Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72FD1DA799
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 10:42:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gYOzcb/qjwXPgQ9g1wS7mkqhGjXbOIPTYPsLnO/HFqQ=; b=btvlYlojjgUfAg
	22rwsby3LzIgG0iZG+hDP9jLH05ammzZ03QGwFWc5BAjt/Q030x0W5Zy9nnzQp0QfwuKZ2fm3Uaou
	1Y2k15jSioRIN08wYvotLnITkUskRK5MIqTb5dA7FJtZ+nZlRGHnGTTZccn7SDKYRwH9U+9rl1y5v
	NY9U/xyw5j1R19ng7jT8eBv11v3mvFKfYoVRqwgToBKmdETuctALjLoXAH85Webof3kcxdqTY7NmB
	i/2NHL0Ra/OJwvxb4TzndgAluftxYRmgePgNVSQ2FhiYccI431vnsWhtFK3ek+20SEXPiS48qieIW
	1pXKrObe0CtNpMMiUz8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL1MD-00015G-UP; Thu, 17 Oct 2019 08:42:05 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL1Lo-00011M-9s; Thu, 17 Oct 2019 08:41:41 +0000
X-UUID: ece5435ef0e74045a1af2882d57df4b6-20191017
X-UUID: ece5435ef0e74045a1af2882d57df4b6-20191017
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <xia.jiang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1242719214; Thu, 17 Oct 2019 00:41:29 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 17 Oct 2019 01:41:22 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 17 Oct 2019 16:41:21 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 17 Oct 2019 16:41:21 +0800
From: Xia Jiang <xia.jiang@mediatek.com>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, Mauro Carvalho Chehab
 <mchehab+samsung@kernel.org>, Rob Herring <robh+dt@kernel.org>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, Rick Chang <rick.chang@mediatek.com>
Subject: [PATCH v4 4/5] media: platform: Fix v4l2-compliance test bug
Date: Thu, 17 Oct 2019 16:40:36 +0800
Message-ID: <20191017084033.28299-5-xia.jiang@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191017084033.28299-1-xia.jiang@mediatek.com>
References: <20191017084033.28299-1-xia.jiang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_014140_374750_B59B03AC 
X-CRM114-Status: GOOD (  10.63  )
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

Improve subscribe event handling: let v4l2_ctrl_subscribe_event() do the
job for other types except V4L2_EVENT_SOURCE_CHANGE.
Add checking created buffer size follow in mtk_jpeg_queue_setup().

Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
---
v4: new add patch for v4l2-compliance test bug fix
---
 drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
index 5f0990fce8ef..abc506a552c1 100644
--- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
+++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
@@ -446,9 +446,9 @@ static int mtk_jpeg_subscribe_event(struct v4l2_fh *fh,
 	switch (sub->type) {
 	case V4L2_EVENT_SOURCE_CHANGE:
 		return v4l2_src_change_event_subscribe(fh, sub);
-	default:
-		return -EINVAL;
 	}
+
+	return v4l2_ctrl_subscribe_event(fh, sub);
 }
 
 static int mtk_jpeg_g_selection(struct file *file, void *priv,
@@ -571,6 +571,13 @@ static int mtk_jpeg_queue_setup(struct vb2_queue *q,
 	if (!q_data)
 		return -EINVAL;
 
+	if (*num_planes) {
+		for (i = 0; i < *num_planes; i++)
+			if (sizes[i] < q_data->sizeimage[i])
+				return -EINVAL;
+		return 0;
+	}
+
 	*num_planes = q_data->fmt->colplanes;
 	for (i = 0; i < q_data->fmt->colplanes; i++) {
 		sizes[i] = q_data->sizeimage[i];
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
