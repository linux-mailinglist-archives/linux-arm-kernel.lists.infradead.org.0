Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF37E12E23F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 05:14:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MV7gdInB7sELBa82hciUFLYe9PwdABjMfBj7wE3SNO4=; b=QGAYpAd2JKCqGd
	rdPNoMumwpMb1h4Ge2EWat9Aq9nMBkPf7aLvhJhBR3T2KBX4zEshXs7L/91jPI8EsF0u3Qo0idVy0
	/GWhlBtjm2hYqbI1NUie16s1TEqQTgfUUHuzHQSuworQeDQSEuqZiYa3Ec86agVj7CenWhBCR0Sv3
	PzC1bVQAkJvDQBk6NIrjNKqpwvbIXIi06/PHhxUoT8tW5fgVdldVl5W7yRYLnfYM/bs+4ustMHA2b
	/o4LYohb+Kb+3om0NVlJBGMFE2TwqWpWIAcJN7tb5e5kVhKmAMv5rtCcQrZw3LCFV/Qp465QuZbpr
	K7yaXbqYHyN0zsSE64VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imrsD-0001gr-JO; Thu, 02 Jan 2020 04:14:13 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imrqY-0008Q4-KX; Thu, 02 Jan 2020 04:12:32 +0000
X-UUID: 24f7026c13874a9c8d80bf85cd7b48f7-20200101
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=9DYCbTrem5/AkJY7I3DAUVJg+oiJpqgHNPhBGcMeelc=; 
 b=nfDFHCCoP6ki/Z9QAqrfIsB1+lrlHdU+kT9m/9eDG/9/VjbLB2BmGsNTW5qBQQSYt8cIzQpnc7BkYbtINKVYeul/PZO28fyg8CSzZLECvMCJCoBYGbUxNZoIp0xz+o1ojsqTVBYdprejpUVCmt5AUxBj5k8kdPDcu2odOEWE/YY=;
X-UUID: 24f7026c13874a9c8d80bf85cd7b48f7-20200101
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <yongqiang.niu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 195562953; Wed, 01 Jan 2020 20:12:27 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 1 Jan 2020 20:02:29 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 2 Jan 2020 12:01:54 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 2 Jan 2020 12:01:43 +0800
From: Yongqiang Niu <yongqiang.niu@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>, "Rob
 Herring" <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v6, 12/14] drm/mediatek: add connection from RDMA0 to DSI0
Date: Thu, 2 Jan 2020 12:00:22 +0800
Message-ID: <1577937624-14313-13-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1577937624-14313-1-git-send-email-yongqiang.niu@mediatek.com>
References: <1577937624-14313-1-git-send-email-yongqiang.niu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_201230_702797_53EFB501 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Yongqiang Niu <yongqiang.niu@mediatek.com>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch add connection from RDMA0 to DSI0

Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
Reviewed-by: CK Hu <ck.hu@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_drm_ddp.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
index 4cc432d..68dc060 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
@@ -42,6 +42,7 @@
 #define OVL1_2L_MOUT_EN_RDMA1				BIT(4)
 #define DITHER0_MOUT_IN_DSI0				BIT(0)
 #define DISP_PATH0_SEL_IN_OVL0_2L			0x1
+#define DSI0_SEL_IN_RDMA0				0x1
 
 #define MT2701_DISP_MUTEX0_MOD0			0x2c
 #define MT2701_DISP_MUTEX0_SOF0			0x30
@@ -398,6 +399,9 @@ static unsigned int mtk_ddp_sel_in(const struct mtk_mmsys_reg_data *data,
 		     next == DDP_COMPONENT_RDMA0) {
 		*addr = MT8183_DISP_PATH0_SEL_IN;
 		value = DISP_PATH0_SEL_IN_OVL0_2L;
+	} else if (cur == DDP_COMPONENT_RDMA0 && next == DDP_COMPONENT_DSI0) {
+		*addr = data->dsi0_sel_in;
+		value = DSI0_SEL_IN_RDMA0;
 	} else {
 		value = 0;
 	}
-- 
1.8.1.1.dirty
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
