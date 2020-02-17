Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E6A4160CCA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 09:20:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p2xzdn4R/0jncDekEG5UrjC+G6nDvxuxmRJlS4OSTEc=; b=uW0ad2GDmIj9RJ
	R5pvr/n+T0dvDj7QI8sGcooBBuE3zdD2Tm5Z+i3asNBn/86KG3x0VboLJDG/fxodE9tokZj/Azwlo
	ZM1HgxdAwMjHfdfBfNfMVueMrvP9Z8FKOmRYTV1g4pwfRMV5j69/Rbnt/RDkRbPLc3+2cBv8Ic5FV
	Swq+JQWLucdYvhlpDRG5sQM2Uq4waXLHpeHFD5TNV1SG/S6ZdVfd4zGTejTXUekzSfyRnRkkCVhLJ
	DcPGs7YdG7w9PFWR/CosKv2gvN+MMQRBKUh7g/kI4kDAQXAopi7bFB6kge/F9Poc3yqLQEWceXehP
	fRuJqV4m7Wf+yWc1xPjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3bdo-0008M7-RC; Mon, 17 Feb 2020 08:20:32 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3bdH-0006xM-AN; Mon, 17 Feb 2020 08:20:00 +0000
X-UUID: af25591f23994d42b03bcef43e657805-20200217
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From;
 bh=jQ9jiEAD2Qgw9xt2uBetQRSbbbkk2xVLWRf6Tt0CQOM=; 
 b=ovFWnEovHbQgmArRt5239KHyQ/tn7TP89aiWMIdtCIk6W17QAFYapr48Z0NdANrTuFX4EtEBbKuvXFaZ1vuwDabLvj8EMNnYai2K95H1cUAIvZtfIlnjDWpHKcx/vgJxC7Qqt2nAiwouHs+LQFBzUdiPPWtDr+mJSqHOvBo+fhE=;
X-UUID: af25591f23994d42b03bcef43e657805-20200217
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <yong.liang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1186865318; Mon, 17 Feb 2020 00:19:52 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 17 Feb 2020 00:20:39 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS31N2.mediatek.inc (172.27.4.87) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 17 Feb 2020 16:18:15 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 17 Feb 2020 16:19:21 +0800
From: Yong Liang <yong.liang@mediatek.com>
To: <yong.liang@mediatek.com>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <matthias.bgg@gmail.com>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>, 
 <linux-kernel@vger.kernel.org>
Subject: [PATCH 1/1] amr64: dts: modify mt8183.dtsi
Date: Mon, 17 Feb 2020 16:19:22 +0800
Message-ID: <20200217081922.22544-2-yong.liang@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200217081922.22544-1-yong.liang@mediatek.com>
References: <Add watchdog device node>
 <20200217081922.22544-1-yong.liang@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: E9D7FE62B9A55861B3935A74EF087037A76413B02FF19D309EAAD239B8C7F5C52000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_001959_364464_45263E3E 
X-CRM114-Status: UNSURE (   6.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "yong.liang" <yong.liang@mediatek.com>

Add watchdog device node
Document base on http://lists.infradead.org/pipermail/linux-mediatek/2020-January/026415.html

Signed-off-by: yong.liang <yong.liang@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 10b32471bc7b..8b59e0eba2eb 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -253,6 +253,13 @@
 			#interrupt-cells = <2>;
 		};
 
+		watchdog: watchdog@10007000 {
+			compatible = "mediatek,mt8183-wdt",
+				     "mediatek,mt6589-wdt";
+			reg = <0 0x10007000 0 0x100>;
+			#reset-cells = <1>;
+		};
+
 		apmixedsys: syscon@1000c000 {
 			compatible = "mediatek,mt8183-apmixedsys", "syscon";
 			reg = <0 0x1000c000 0 0x1000>;
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
