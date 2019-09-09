Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1BB5ADF61
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 21:24:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LAegnEHkbYYiZnM2/l3Kq5rziLnNICeWyigZ6GzMQdk=; b=KVwqw9JF86T58V
	zz82xorzfxjg7WJjEbiD3W533z98N2+ZcnFuJ+pTCwukX8w9336odAFBFStNSMO5eZoKk6m1AMCPg
	OwXKOLx6dPZXkZU+ZDPYVp0lQpjGSThhPadlF+cy2H2Qwl3sEnua+QkghcnMXATLPSe+Y4svqLHiW
	R+b8FOsxnETAjbSf+eTk9fGwSRnglVMcVYr1kaZKJROkMg6M1mMra3oAtOzf1+2jZph7AG32fzjwi
	5iNrPnKTD2iaBcWZ9gloo5IGGKTsmAVJcFcd8O9c+3u2JNlQbJgwKJlSbBVMypOWcl5FHQp7pHVLe
	Ga5F43aePqr4ypzvazlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7PGj-0004Vo-0E; Mon, 09 Sep 2019 19:24:09 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7PG0-0003rc-PA; Mon, 09 Sep 2019 19:23:26 +0000
X-UUID: af31d726f06e4679a75e09d58ad4764e-20190909
X-UUID: af31d726f06e4679a75e09d58ad4764e-20190909
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <frederic.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1298058684; Mon, 09 Sep 2019 11:23:21 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 9 Sep 2019 12:23:20 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 10 Sep 2019 03:23:05 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 10 Sep 2019 03:23:05 +0800
From: <frederic.chen@mediatek.com>
To: <hans.verkuil@cisco.com>, <laurent.pinchart+renesas@ideasonboard.com>,
 <tfiga@chromium.org>, <matthias.bgg@gmail.com>, <mchehab@kernel.org>
Subject: [RFC PATCH V3 5/5] media: platform: mtk-mdp3: Add struct tuning_addr
 and img_sw_buffer
Date: Tue, 10 Sep 2019 03:22:44 +0800
Message-ID: <20190909192244.9367-6-frederic.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190909192244.9367-1-frederic.chen@mediatek.com>
References: <20190909192244.9367-1-frederic.chen@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 074492E904B74088ADA67159AC5190E930A3C333F23B371DA799ACABE71B13B22000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_122324_880936_AA76DDA4 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: shik@chromium.org, devicetree@vger.kernel.org, Sean.Cheng@mediatek.com,
 Rynn.Wu@mediatek.com, Allan.Yang@mediatek.com, srv_heupstream@mediatek.com,
 holmes.chiou@mediatek.com, suleiman@chromium.org, Jerry-ch.Chen@mediatek.com,
 jungo.lin@mediatek.com, sj.huang@mediatek.com, yuzhao@chromium.org,
 linux-mediatek@lists.infradead.org, zwisler@chromium.org,
 christie.yu@mediatek.com, frederic.chen@mediatek.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Frederic Chen <frederic.chen@mediatek.com>

We added a struct tuning_addr which contains a field "present"
so that the driver can tell the firmware if we have user tuning
dataor not.

The strcut img_sw_buffer is also added. This struct has no cpu address
field and uses a handle instead so that we don't pass a cpu address
to co-processor.

Signed-off-by: Frederic Chen <frederic.chen@mediatek.com>
---
 drivers/media/platform/mtk-mdp3/mtk-img-ipi.h | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/mtk-mdp3/mtk-img-ipi.h b/drivers/media/platform/mtk-mdp3/mtk-img-ipi.h
index 9fabe7e8b71d..f61e61faf636 100644
--- a/drivers/media/platform/mtk-mdp3/mtk-img-ipi.h
+++ b/drivers/media/platform/mtk-mdp3/mtk-img-ipi.h
@@ -38,6 +38,12 @@ struct img_addr {
 	u32	iova;	/* Used by IOMMU HW access */
 } __attribute__ ((__packed__));
 
+struct tuning_addr {
+	u32	present;
+	u32	pa;	/* Used by CM4 access */
+	u32	iova;	/* Used by IOMMU HW access */
+} __attribute__ ((__packed__));
+
 struct img_sw_addr {
 	u64	va;	/* Used by APMCU access */
 	u32	pa;	/* Used by CM4 access */
@@ -105,16 +111,21 @@ struct img_ipi_frameparam {
 	u64		drv_data;
 	struct img_input	inputs[IMG_MAX_HW_INPUTS];
 	struct img_output	outputs[IMG_MAX_HW_OUTPUTS];
-	struct img_addr		tuning_data;
+	struct tuning_addr	tuning_data;
 	struct img_addr		subfrm_data;
 	struct img_sw_addr	config_data;
 	struct img_sw_addr  self_data;
 	/* u8		pq_data[]; */
 } __attribute__ ((__packed__));
 
+struct img_sw_buffer {
+	u64	handle;		/* Used by APMCU access */
+	u32	scp_addr;	/* Used by CM4 access */
+} __attribute__ ((__packed__));
+
 struct img_ipi_param {
 	u8	usage;
-	struct	img_sw_addr frm_param;
+	struct img_sw_buffer frm_param;
 } __attribute__ ((__packed__));
 
 struct img_frameparam {
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
