Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47CA6104F06
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 10:16:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yRQAuiE0T9rHXo7NxQH6sJvGGni0xRqoOdYqxYRxOqc=; b=fSABbgKZNoHKyB
	vAnb3VxVF59dmr2Al0YpmyvvsCx1c9q9KbyVXIbR7rB5DODd7kF4v9q5Auh+pOMKPdnFQ8EQ6Ayoh
	Kn2uXIlvi/4wdnX7CqilGt/I7xv/6M1qZiJ8jzVTq0bK2PIQh2WGY8zzYsRMkiThkPUzyY9MkrqJq
	jFMrknSqq76XLq8X6IlQ12tWk9c5HUHoSCrFs4i13bMJ/6VzAN/fW1YGPTA5j00/7yNg3GDKK6rFO
	zdwIjXQrerJo+/31iCENGmHzyStoyW2MveZ0ZeRAirJJv0/RAWiovMFEQCBLzBHSbDbTRMf8JEs/L
	gkDwo9zsrpdyWYlBeRig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXia4-0005rg-HM; Thu, 21 Nov 2019 09:16:52 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXiX2-0001kO-9k; Thu, 21 Nov 2019 09:13:45 +0000
X-UUID: b52352e1a5f244b19409327e179d17c3-20191121
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=M0/jFbrUiFwtCpckhKu99j+5mZTWrtHEB9VPejkugS8=; 
 b=ta1Z0iZFikXrccX1yAuZJNDN5PNbGHQJgvVTd/ZMTrEPhTwLk836dUFVh0dA71WE0RkfrEcSCDz3RCmlNVhb8pmxzjcsU9suF7lQvAKF6qmJnvCp4N/PD9xmdFlBw/11n3fjEgxlRrD5JhKI0BOKyNs0t8MaZ/E7RO8J3vEv9nc=;
X-UUID: b52352e1a5f244b19409327e179d17c3-20191121
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <dennis-yc.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1851098308; Thu, 21 Nov 2019 01:13:39 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 21 Nov 2019 01:13:43 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 21 Nov 2019 17:13:06 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 21 Nov 2019 17:13:29 +0800
From: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Jassi Brar <jassisinghbrar@gmail.com>
Subject: [PATCH v1 05/12] arm64: dts: add gce node for mt6779
Date: Thu, 21 Nov 2019 17:12:25 +0800
Message-ID: <1574327552-11806-6-git-send-email-dennis-yc.hsieh@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1574327552-11806-1-git-send-email-dennis-yc.hsieh@mediatek.com>
References: <1574327552-11806-1-git-send-email-dennis-yc.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_011344_479780_401A3C44 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, Houlong Wei <houlong.wei@mediatek.com>, Dennis
 YC Hsieh <dennis-yc.hsieh@mediatek.com>, linux-mediatek@lists.infradead.org,
 Bibby Hsieh <bibby.hsieh@mediatek.com>, CK Hu <ck.hu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

add gce device node for mt6779

Signed-off-by: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt6779.dtsi |   10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt6779.dtsi b/arch/arm64/boot/dts/mediatek/mt6779.dtsi
index daa25b7..10d5938 100644
--- a/arch/arm64/boot/dts/mediatek/mt6779.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt6779.dtsi
@@ -8,6 +8,7 @@
 #include <dt-bindings/clock/mt6779-clk.h>
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/gce/mt6779-gce.h>
 
 / {
 	compatible = "mediatek,mt6779";
@@ -159,6 +160,15 @@
 			#clock-cells = <1>;
 		};
 
+		gce: mailbox@10228000 {
+			compatible = "mediatek,mt6779-gce";
+			reg = <0 0x10228000 0 0x4000>;
+			interrupts = <GIC_SPI 185 IRQ_TYPE_LEVEL_LOW>;
+			#mbox-cells = <3>;
+			clocks = <&infracfg_ao CLK_INFRA_GCE>;
+			clock-names = "gce";
+		};
+
 		uart0: serial@11002000 {
 			compatible = "mediatek,mt6779-uart",
 				     "mediatek,mt6577-uart";
-- 
1.7.9.5
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
