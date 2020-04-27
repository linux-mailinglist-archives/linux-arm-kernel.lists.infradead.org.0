Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57FB01BB26C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 01:59:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vT+Wh+JeTX55c1vE4B7vp9ghZ8eXSLogwZbzvp9DhjE=; b=WDK0mmMd7wxaR5
	d/CEFjC7ytwDhWJ2nSktWRPNi6cGTQ4e3ztJslhw7xYPeDlx/RE3cbB/JtBvlR2DO+GNuNjsCniyJ
	HiV+83Bj3MFyUqrhWf+nvhFiHLEbOfAfuKp3LXazvlaZiUmA/43PVnKIO/RUq8c3MNK79TC4lgT7L
	NRaKWdd5cgapWF/0jcFXVX8/3yhp2+f5YJt8PLa82ydUKGW+mBiVSSVDCYh22bag2y01lHjOVgZNQ
	tGmEW8vsozNyVL5r9kAWVpDyiHD+jq6Iec0Sjwu9v2fuHmMD+/QdhN+jFl8lyCj0LVYrusORcDQ6C
	rLIVFTjSk84WnoGzsSmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTDem-0001wu-OU; Mon, 27 Apr 2020 23:59:24 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTDd6-0000Wg-8I; Mon, 27 Apr 2020 23:57:42 +0000
X-UUID: 4a4624483dc8466c829cf68ce33c1a8f-20200427
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=+p2FpvDesOhvlsbH3Gp9SCnml3/2yorz5SLguxMgjUM=; 
 b=A0797/3HUvssDsbePufnZv7fSWVMGs7Lak/6GUCR6kJ6Jf+2lp21yC0hItJGqKc2XJFx8QQ4P1OHFGSXKnC2+CftclT7bpQ/EUGj4NKccKMsmVH7gXT09F3ZtEj54JVRGy/yKQ/LjUFeJ51VVY3aMsrLsLU/EXn1VDXYKK7BUbY=;
X-UUID: 4a4624483dc8466c829cf68ce33c1a8f-20200427
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <chun-hung.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1606056365; Mon, 27 Apr 2020 15:57:35 -0800
Received: from mtkexhb02.mediatek.inc (172.21.101.103) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 27 Apr 2020 16:57:29 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkexhb02.mediatek.inc (172.21.101.103) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 28 Apr 2020 07:57:14 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Tue, 28 Apr 2020 07:57:13 +0800
From: Chun-Hung Wu <chun-hung.wu@mediatek.com>
To: <mirq-linux@rere.qmqm.pl>, Jonathan Hunter <jonathanh@nvidia.com>, "Al
 Cooper" <alcooperx@gmail.com>, Adrian Hunter <adrian.hunter@intel.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 <bcm-kernel-feedback-list@broadcom.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Michal Simek
 <michal.simek@xilinx.com>, Thierry Reding <thierry.reding@gmail.com>,
 Chaotian Jing <chaotian.jing@mediatek.com>, Ulf Hansson
 <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Matthias Brugger <matthias.bgg@gmail.com>, "Linus
 Walleij" <linus.walleij@linaro.org>, Pavel Machek <pavel@ucw.cz>, Kate
 Stewart <kstewart@linuxfoundation.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>, Pan Bian <bianpan2016@163.com>, "Thomas
 Gleixner" <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 "Mathieu Malaterre" <malat@debian.org>, Stanley Chu
 <stanley.chu@mediatek.com>, "Kuohong Wang" <kuohong.wang@mediatek.com>, Yong
 Mao <yong.mao@mediatek.com>
Subject: [PATCH v5 5/5] dt-bindings: mmc: mediatek: Add document for mt6779
Date: Tue, 28 Apr 2020 07:56:08 +0800
Message-ID: <1588031768-23677-6-git-send-email-chun-hung.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1588031768-23677-1-git-send-email-chun-hung.wu@mediatek.com>
References: <1588031768-23677-1-git-send-email-chun-hung.wu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_165740_338236_22AE0E03 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-arm-msm@vger.kernel.org, Chun-Hung Wu <chun-hung.wu@mediatek.com>,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org,
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add compatible node for mt6779 mmc

Signed-off-by: Chun-Hung Wu <chun-hung.wu@mediatek.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/mmc/mtk-sd.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mmc/mtk-sd.txt b/Documentation/devicetree/bindings/mmc/mtk-sd.txt
index 8a532f4..0c9cf6a 100644
--- a/Documentation/devicetree/bindings/mmc/mtk-sd.txt
+++ b/Documentation/devicetree/bindings/mmc/mtk-sd.txt
@@ -12,6 +12,7 @@ Required properties:
 	"mediatek,mt8173-mmc": for mmc host ip compatible with mt8173
 	"mediatek,mt8183-mmc": for mmc host ip compatible with mt8183
 	"mediatek,mt8516-mmc": for mmc host ip compatible with mt8516
+	"mediatek,mt6779-mmc": for mmc host ip compatible with mt6779
 	"mediatek,mt2701-mmc": for mmc host ip compatible with mt2701
 	"mediatek,mt2712-mmc": for mmc host ip compatible with mt2712
 	"mediatek,mt7622-mmc": for MT7622 SoC
-- 
2.6.4
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
