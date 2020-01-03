Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9798312F38A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 04:24:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j6YUxJI6i+Gl9qNVgb7RELFCuFNu/TBy0Zo3VbWC2qk=; b=WoTGG3BhAOH5Us
	kdnFR/2nvBcTef/oYbFcPGbT/8QYheDpt9j2LEkZbz8pPtRTggBlKcSRnd2OdBYEDHSkv9FDf/EJw
	ERQSo1I19s01IzE5gd/XoGjkOpWQIp8VZq1YJ5LrU/arnwG66+eefu31bdBRQWSrTPnwiljKuI6Sa
	uOMrx+AM3xEmPVVByHVsbvjUEsoUo2+NR9wtz0mRmwj7VZK4QBnJaA6AHxcsmzLYn3nsDRP5MsLM1
	PW9FWeoees/CgrMy0mz9H6qcAyzH6qBMXK1XGkwkmz46iNkhxrYOThj0lGV83s9MrGk7AMxhPElFh
	vv/5INGlCN5qwPLE5Q/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inDZi-0003Up-Or; Fri, 03 Jan 2020 03:24:34 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inDY4-00026J-Qw; Fri, 03 Jan 2020 03:22:55 +0000
X-UUID: 7e6100c7d9714266a8473c0c024e3a56-20200102
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=/4T9BZfUZWYGg78KayVJodIe2SDBJKcchAJydSC+uDU=; 
 b=qxLUnpNENqD1csRY4c4iG1vgZtGVO7Hr2udnMItTgg7ANHCNsPALWQvsphwSEbZ1U3t12Zy4VtGZr5FIpx+LxbWAIjaakBCOX4FcbCN65eUaeGgfPcg6lxNLmA63f5sDEHG4OCG5hYZ4drElbHEVT0v+xvry3aC4ZKMMG7lTpfo=;
X-UUID: 7e6100c7d9714266a8473c0c024e3a56-20200102
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <yongqiang.niu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1571513960; Thu, 02 Jan 2020 19:22:50 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 2 Jan 2020 19:13:13 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 3 Jan 2020 11:12:17 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 3 Jan 2020 11:13:15 +0800
From: Yongqiang Niu <yongqiang.niu@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>, "Rob
 Herring" <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [RESEND PATCH v6 13/17] drm/mediatek: add connection from OVL_2L1 to
 RDMA1
Date: Fri, 3 Jan 2020 11:12:24 +0800
Message-ID: <1578021148-32413-14-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1578021148-32413-1-git-send-email-yongqiang.niu@mediatek.com>
References: <1578021148-32413-1-git-send-email-yongqiang.niu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_192252_896931_D189CB2A 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Yongqiang Niu <yongqiang.niu@mediatek.com>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch add connection from OVL_2L1 to RDMA1

Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
Reviewed-by: CK Hu <ck.hu@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_drm_ddp.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
index 4a926f6..56750ba 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
@@ -34,9 +34,11 @@
 #define DISP_REG_CONFIG_DPI_SEL			0x064
 
 #define MT8183_DISP_OVL0_2L_MOUT_EN		0xf04
+#define MT8183_DISP_OVL1_2L_MOUT_EN		0xf08
 #define MT8183_DISP_PATH0_SEL_IN		0xf24
 
 #define OVL0_2L_MOUT_EN_DISP_PATH0			BIT(0)
+#define OVL1_2L_MOUT_EN_RDMA1				BIT(4)
 #define DISP_PATH0_SEL_IN_OVL0_2L			0x1
 
 #define MT2701_DISP_MUTEX0_MOD0			0x2c
@@ -318,6 +320,10 @@ static unsigned int mtk_ddp_mout_en(const struct mtk_mmsys_reg_data *data,
 		   next == DDP_COMPONENT_RDMA0) {
 		*addr = MT8183_DISP_OVL0_2L_MOUT_EN;
 		value = OVL0_2L_MOUT_EN_DISP_PATH0;
+	} else if (cur == DDP_COMPONENT_OVL_2L1 &&
+		   next == DDP_COMPONENT_RDMA1) {
+		*addr = MT8183_DISP_OVL1_2L_MOUT_EN;
+		value = OVL1_2L_MOUT_EN_RDMA1;
 	} else {
 		value = 0;
 	}
-- 
1.8.1.1.dirty
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
