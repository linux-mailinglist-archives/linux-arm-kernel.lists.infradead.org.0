Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E94110B12A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 15:24:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qt93do3Hih6s9JyG7MP3ZnVnqQkxKw+ZGTD0dVXbeLI=; b=DNmeB2/TQebhj+
	GTc0VROhdd+GdQ7Qr5wyqq135C3AjKQ30srPxuFXM0xY+DGTeXRNfUnVDSu7//PBXCf5RNCYTehfE
	0Y2JV7yopsOcLAbrwmqwfm8m2Sl4fmo6AZtIX3Gf37vbUflpehSZmMIxqbqYugKcWSGKGJ7Wq/gY5
	rMe2Y8Vd80TiZ2YkLl8t6m7giKrYzxDiLXxpDBwLau2KIBBLq2P6JHx8RiyKRPIh0eybqpK+EvmCk
	KVQFRwq+kuVVT+FV362QeLLDUGSew4o+JnEH8IvvmjRsbhy93ySTkf8crUmxPt0GZlmMOU0mAdLjI
	I59NexHK8SJ16/l8HMfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZyF5-00086z-3l; Wed, 27 Nov 2019 14:24:31 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZyDv-0007Fx-Au; Wed, 27 Nov 2019 14:23:20 +0000
X-UUID: 740cbe5c503c45609c4aeb9f70f66c48-20191127
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=cF2Om7X85XQimoGPg+VUY4Aqoy6qnXHiU7JTF0y3r6E=; 
 b=uRMQFQupvqFkrThMzspsv6IPiZ3M81H8L2EF9Xd9zrcWL2OgcFJOI0Rs5SUYEyO4u5mQmxYO/hbNqmcEBbFPuAZO1e8uRIBppL+vVHi6Ah0QxqwhdcxUO++yxn2PEYEKLMaUqcaI0xy16LJ/NGUv/7rPJOh5sjtu4GYhvt7BTXw=;
X-UUID: 740cbe5c503c45609c4aeb9f70f66c48-20191127
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <neal.liu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1667908637; Wed, 27 Nov 2019 06:23:13 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 27 Nov 2019 06:23:24 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 27 Nov 2019 22:23:00 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 27 Nov 2019 22:23:03 +0800
From: Neal Liu <neal.liu@mediatek.com>
To: Matt Mackall <mpm@selenic.com>, Herbert Xu <herbert@gondor.apana.org.au>, 
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sean Wang <sean.wang@kernel.org>
Subject: [PATCH v5 2/3] dt-bindings: rng: add bindings for MediaTek ARMv8 SoCs
Date: Wed, 27 Nov 2019 22:22:57 +0800
Message-ID: <1574864578-467-3-git-send-email-neal.liu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1574864578-467-1-git-send-email-neal.liu@mediatek.com>
References: <1574864578-467-1-git-send-email-neal.liu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_062319_373767_D2A1FF60 
X-CRM114-Status: GOOD (  10.62  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, Crystal Guo <Crystal.Guo@mediatek.com>,
 linux-crypto@vger.kernel.org, Neal Liu <neal.liu@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Document the binding used by the MediaTek ARMv8 SoCs random
number generator with TrustZone enabled.

Signed-off-by: Neal Liu <neal.liu@mediatek.com>
---
 .../bindings/arm/firmware/mediatek,mtk-sec-rng.txt |   18 ++++++++++++++++++
 1 file changed, 18 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/firmware/mediatek,mtk-sec-rng.txt

diff --git a/Documentation/devicetree/bindings/arm/firmware/mediatek,mtk-sec-rng.txt b/Documentation/devicetree/bindings/arm/firmware/mediatek,mtk-sec-rng.txt
new file mode 100644
index 0000000..741fcdc
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/firmware/mediatek,mtk-sec-rng.txt
@@ -0,0 +1,18 @@
+MediaTek random number generator with TrustZone enabled
+
+Required properties:
+- compatible       : Should contain "mediatek,mtk-sec-rng"
+
+- method           : The method of calling Arm Trusted Firmware. Permitted
+		     values are:
+
+		     "smc" : SMC #0, with the register assignments specified
+		     in this binding.
+
+Example:
+	firmware {
+		hwrng {
+			compatible = "mediatek,mtk-sec-rng";
+			methods = "smc";
+		};
+	};
-- 
1.7.9.5
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
