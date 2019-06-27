Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A15AC57BEA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 08:20:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5rxRIBWP1ij7CyEEZDA3oBxvdQAoCZqzcytOUgv8p5w=; b=prwe8w2Xz4tFAX
	MG3wrA/NW9EiE+YKp5Vf16PL8nUk/kFlmphBSwMtadtbvTJIP5IAKR8SlzDmBU3DqcR3ecXX2zTpn
	gl5w1Gxf34Z5BJ5jHHL7txFyzrHZna4Yu3jb+ZcS2xQP7eDqxrHlNwzDsvk2tZKKAdblp7IBbxsRB
	9FAJ1Rfzrt4Zj2+eyR/LcdVMCgGP8P3ahaGJCRyFNPgCtEtDTkWfF7hFuFMx3cCT6LIfpJJQ7C47Q
	ctzUnH/QNNi6JjWTOzpFxucmgPj7OMRXkgd85mHxroAsA6KeYntDGMHe9ePMlLhmndnpCtKJ/w3bG
	cVJkm4S9FIQULxLbesFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgNlv-0002e6-1w; Thu, 27 Jun 2019 06:20:39 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgNla-0002ah-QA; Thu, 27 Jun 2019 06:20:20 +0000
X-UUID: ee195c76f89345db8241c5b83f0ed793-20190626
X-UUID: ee195c76f89345db8241c5b83f0ed793-20190626
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 226002267; Wed, 26 Jun 2019 22:20:10 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 26 Jun 2019 23:20:08 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 27 Jun 2019 14:20:06 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 27 Jun 2019 14:20:06 +0800
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: Jassi Brar <jassisinghbrar@gmail.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>, CK HU
 <ck.hu@mediatek.com>
Subject: [PATCH v9 01/12] dt-binding: gce: remove thread-num property
Date: Thu, 27 Jun 2019 14:19:47 +0800
Message-ID: <20190627061958.9488-2-bibby.hsieh@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190627061958.9488-1-bibby.hsieh@mediatek.com>
References: <20190627061958.9488-1-bibby.hsieh@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 16BF17887B0B4DF00843F05BB3A6AF1BC7070EDA9EB10C023B7072F6EF70E6472000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_232018_857064_530C7A1F 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
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
Cc: devicetree@vger.kernel.org, Nicolas Boichat <drinkcat@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, srv_heupstream@mediatek.com,
 Daoyuan Huang <daoyuan.huang@mediatek.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Daniel Kurtz <djkurtz@chromium.org>,
 Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>,
 linux-mediatek@lists.infradead.org, Houlong Wei <houlong.wei@mediatek.com>,
 Sascha Hauer <kernel@pengutronix.de>, YT Shen <yt.shen@mediatek.com>,
 Jiaguang Zhang <jiaguang.zhang@mediatek.com>,
 Bibby Hsieh <bibby.hsieh@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 ginny.chen@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

"thread-num" is an unused property so we remove it from example.

Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/mailbox/mtk-gce.txt | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mailbox/mtk-gce.txt b/Documentation/devicetree/bindings/mailbox/mtk-gce.txt
index 7d72b21c9e94..cfe40b01d164 100644
--- a/Documentation/devicetree/bindings/mailbox/mtk-gce.txt
+++ b/Documentation/devicetree/bindings/mailbox/mtk-gce.txt
@@ -39,7 +39,6 @@ Example:
 		interrupts = <GIC_SPI 135 IRQ_TYPE_LEVEL_LOW>;
 		clocks = <&infracfg CLK_INFRA_GCE>;
 		clock-names = "gce";
-		thread-num = CMDQ_THR_MAX_COUNT;
 		#mbox-cells = <3>;
 	};
 
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
