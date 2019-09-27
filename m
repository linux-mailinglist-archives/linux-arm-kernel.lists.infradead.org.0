Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D14C036E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 12:32:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Mnrpvx1uniLkbVpO2IyXt5iDgaStk9Sk8Bnwqw9VpI=; b=EgMUOwlLVqGhCU
	m4k8E3/dfarpnAwJdpx2qgahSkMkUJJe4pcYQXC1LzfS5PGPXmpz/nyT1WmiodmM3SugVOBZRfcmC
	lzxEwE20JauMIU8aL5aXxQWThyGQQyXqJAr6jQSK/G5s4XM5pDjxFij/QFBHf9+7h0MnAqAPtXwG2
	efyPXlnEWcpMPTBDesXhUebtRNf1n4DcHpfqGj7p07LKIizhIl7B8Yjm3YKJcqzU4POzBRHYgq4gU
	++Vm5QyyJ2fIm9twxwFc4uRhlamImolZF50MCv32KYZLBO2kgvEq2Unx6WHvCtVz1x8IlzZon7eb+
	WtuRXrS3SQyHpSwAMGcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDnXr-0002MG-Sy; Fri, 27 Sep 2019 10:32:15 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDnXj-0002L4-Kb; Fri, 27 Sep 2019 10:32:09 +0000
X-UUID: 2877dcd13f6444ab8bfa0b4592a78690-20190927
X-UUID: 2877dcd13f6444ab8bfa0b4592a78690-20190927
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <jiaxin.yu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 636642512; Fri, 27 Sep 2019 02:32:03 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 27 Sep 2019 03:32:02 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 27 Sep 2019 18:32:01 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 27 Sep 2019 18:32:00 +0800
From: Jiaxin Yu <jiaxin.yu@mediatek.com>
To: <broonie@kernel.org>, <mark.rutland@arm.com>, <robh+dt@kernel.org>,
 <linux@roeck-us.net>, <wim@linux-watchdog.org>
Subject: [PATCH v2 3/4] dt-bindings: medaitek: mt8183: add property "resets"
 && "reset-names"
Date: Fri, 27 Sep 2019 18:31:56 +0800
Message-ID: <1569580317-21181-4-git-send-email-jiaxin.yu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1569580317-21181-1-git-send-email-jiaxin.yu@mediatek.com>
References: <1569580317-21181-1-git-send-email-jiaxin.yu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 8C046FB2E695B053F5ED743E5B75C07E536E6BA4D9E3A7B02692CA63E4D01D562000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_033208_005527_6117CFF0 
X-CRM114-Status: UNSURE (   7.06  )
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
Cc: alsa-devel@alsa-project.org, yong.liang@mediatek.com, lgirdwood@gmail.com,
 jiaxin.yu@mediatek.com, perex@perex.cz, tzungbi@google.com,
 linux-mediatek@lists.infradead.org, eason.yen@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch add property "resets" && "reset-names" in examples so that we can
use reset controller to reset audio domain regs.

Signed-off-by: Jiaxin Yu <jiaxin.yu@mediatek.com>
---
 Documentation/devicetree/bindings/sound/mt8183-afe-pcm.txt | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/mt8183-afe-pcm.txt b/Documentation/devicetree/bindings/sound/mt8183-afe-pcm.txt
index 396ba38619f6..1f1cba4152ce 100644
--- a/Documentation/devicetree/bindings/sound/mt8183-afe-pcm.txt
+++ b/Documentation/devicetree/bindings/sound/mt8183-afe-pcm.txt
@@ -4,6 +4,10 @@ Required properties:
 - compatible = "mediatek,mt68183-audio";
 - reg: register location and size
 - interrupts: should contain AFE interrupt
+- resets: Must contain an entry for each entry in reset-names
+  See ../reset/reset.txt for details.
+- reset-names: should have these reset names:
+		"audiosys";
 - power-domains: should define the power domain
 - clocks: Must contain an entry for each entry in clock-names
 - clock-names: should have these clock names:
@@ -20,6 +24,8 @@ Example:
 		compatible = "mediatek,mt8183-audio";
 		reg = <0 0x11220000 0 0x1000>;
 		interrupts = <GIC_SPI 161 IRQ_TYPE_LEVEL_LOW>;
+		resets = <&watchdog MT8183_TOPRGU_AUDIO_SW_RST>;
+		reset-names = "audiosys";
 		power-domains = <&scpsys MT8183_POWER_DOMAIN_AUDIO>;
 		clocks = <&infrasys CLK_INFRA_AUDIO>,
 			 <&infrasys CLK_INFRA_AUDIO_26M_BCLK>,
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
