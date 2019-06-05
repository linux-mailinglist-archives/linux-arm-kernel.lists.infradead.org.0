Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0631235CBA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 14:25:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lPdIt/24oTQO9aYtOpZZRHvkgKVIo2Uwl1tUICx4g8A=; b=ZLXAWggzHLJ000
	qPbLSBikmVbMNP4PuAiXfcU/a0UF4XL0Fqw3MW72xPB8UQ2xO70fDNAr/HNQzhotH+Qe38S2ywv0J
	X106difoqwZptj0uXI2Qg7tJwIRAvQjdmv+vusnyctMS6j4w/g8YpGhfdwIJupMMdUkJ1ONXhrofR
	DfpVDAbNpEplr7REybdBFXcCneMSuaWEWYjRk3OgZjxSOaSdSblOa9nb5k3/nIeJgdtuGYoEuQX/n
	1K82xr7an/mUYZLtCGokjv+zyBzX+H/SQm/h91ibCgtwkQpTB4VdZhwl9Cb7rN2ubw5gAzfQtUyA5
	bNcXqAltOtHvmW9ka0SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYUyf-000346-3r; Wed, 05 Jun 2019 12:25:13 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYUxK-0001B3-UN; Wed, 05 Jun 2019 12:23:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9QkajpPV67wJ397uIBC1/ep0L+hMmS9iWqyKWXsg6a4=; b=gWRlWSwhWpYlk4dDoZQy0IGIK
 EqMt2VcDfB9jDS+B3QV0gvB7iyN33/P/Mc8DA5He9/1iibwBqRthV2V7UdguVGxkgdh67UlPi9bhU
 QAhrduhSuFe4de5EMFnquzDgsnzvdHPRR5cEFa8+0NUaBXFZ7dRR/fXM2yoCNHp9oWbYdU6qu8S9v
 Nu9ALV/Ry/znQQQFs0M9EuIEX2jyxW44EAi44ZrCvXelXMQtMeai2Y1pRD5L3bJFUDZI9gIZ4tHvg
 F0X2DLIRFv8lxzLtpa2rRcU3XNwnQ1zkLxDZxALRaGpGZRV9oaTpFXIxqMHTuX0T/2saQ9OCSYOKq
 vhuuf4K0w==;
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYULB-0005xW-W1; Wed, 05 Jun 2019 11:44:26 +0000
X-UUID: 8bd18a5f69694a598fbb77d5c6652ada-20190605
X-UUID: 8bd18a5f69694a598fbb77d5c6652ada-20190605
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <yongqiang.niu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 698851233; Wed, 05 Jun 2019 03:43:45 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 5 Jun 2019 04:43:44 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 5 Jun 2019 19:43:40 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 5 Jun 2019 19:43:40 +0800
From: <yongqiang.niu@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>, "Rob
 Herring" <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v3,
 04/27] dt-bindings: mediatek: add dither description for mt8183
 display
Date: Wed, 5 Jun 2019 19:42:43 +0800
Message-ID: <1559734986-7379-5-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1559734986-7379-1-git-send-email-yongqiang.niu@mediatek.com>
References: <1559734986-7379-1-git-send-email-yongqiang.niu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 02AB1A3E444E5F3ED769813C634E5E8CBA0FCA1839AF494C8E51CD28F13232F62000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_074426_153100_87BCD02C 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Yongqiang Niu <yongqiang.niu@mediatek.com>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Yongqiang Niu <yongqiang.niu@mediatek.com>

Update device tree binding documention for the display subsystem for
Mediatek MT8183 SOCs

Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
---
 Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
index e149245..7c86d71 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
@@ -33,6 +33,7 @@ Required properties (all function blocks):
 	"mediatek,<chip>-disp-wdma"  		- write DMA
 	"mediatek,<chip>-disp-ccorr"            - color correction
 	"mediatek,<chip>-disp-color" 		- color processor
+	"mediatek,<chip>-disp-dither"           - dither
 	"mediatek,<chip>-disp-aal"   		- adaptive ambient light controller
 	"mediatek,<chip>-disp-gamma" 		- gamma correction
 	"mediatek,<chip>-disp-merge" 		- merge streams from two RDMA sources
-- 
1.8.1.1.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
