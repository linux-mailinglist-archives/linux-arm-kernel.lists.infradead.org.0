Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 067E011A431
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 06:57:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ywHuMWHPTjitukk+rRVaPaGLumk4A/CL4aezY2a42Y=; b=Ae2f03uoa8rLYy
	ny3sy5qDeTpT2KAvoAxpa41XlAVvT4lNoYceKoqnvcoVc/2jT2mPStXfpwOvkmDewiWIAR9YLhrkO
	HFBVqMtlSFzc8sdB8qMH/tNR8ANQp+ZUpybKmD/kHtMfzCb+CZXHfhB8Fb52kBvCB3s7INDiK3MwF
	+C2pcmC+g/ihe3ycRcpDwK4rwAnyuTSQeo3+iA9PRLsEgPdHL0ihVIE2rLS5EedjEGX/mpn4E5Onf
	d2OaWCxQJZmiwv2CirXYm0ANfB+x5vxpjVKOkzTJHmbbLnCIQfJY++DWe5JQupYQtq3oFHvCUC5xV
	BFGSu3u2ROi0gWtUqfDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieuzq-0001co-LF; Wed, 11 Dec 2019 05:57:14 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieuya-0000ZM-Qh; Wed, 11 Dec 2019 05:55:58 +0000
X-UUID: 5c4b7d814f3d42aabb643a70741b9f9f-20191210
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=3nT/zyPqTRXKX+qkYY8Mvpnq2j5E/DAPw3se4gA7isQ=; 
 b=UkSDuS9vrDChXn+tTID2abZ71JAmdgEcMT56SsEIG8RJlQ8WxBj0TsNuWYjXQwmF5bs/nRlg1TKD2F2QUUvM3IvPdbfhEZKxTDupfPLKp0K9vFMjmcmkrDOaFCD6NA535IsXN91h/rXK6OONVAi6AEZUiXrMj1kYe5EECHJYTaM=;
X-UUID: 5c4b7d814f3d42aabb643a70741b9f9f-20191210
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 374394742; Tue, 10 Dec 2019 21:55:49 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 10 Dec 2019 21:55:03 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31DR.mediatek.inc (172.27.6.102) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Dec 2019 13:54:37 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 11 Dec 2019 13:54:38 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Kishon Vijay Abraham I <kishon@ti.com>
Subject: [PATCH v5 02/11] dt-bindings: phy-mtk-tphy: make the ref clock
 optional
Date: Wed, 11 Dec 2019 13:54:14 +0800
Message-ID: <1576043663-14240-2-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1576043663-14240-1-git-send-email-chunfeng.yun@mediatek.com>
References: <1576043663-14240-1-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: E6D636E25E941F76D855B610108DD1415BA8EF136A00FE786FA65E47FD37832C2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_215556_904555_0FB545E8 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make the ref clock optional, then we no need refer to a fixed-clock
in DTS anymore when the clock of USB3 PHY comes from oscillator
directly

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
Acked-by: Rob Herring <robh@kernel.org>
---
v4~v5: no changes

v3: add acked-by Rob

v2: no changes
---
 .../devicetree/bindings/phy/phy-mtk-tphy.txt        | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt b/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
index ce6abfbdfbe1..1f4a36dd80e0 100644
--- a/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
+++ b/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
@@ -34,12 +34,6 @@ Optional properties (controller (parent) node):
 
 Required properties (port (child) node):
 - reg		: address and length of the register set for the port.
-- clocks	: a list of phandle + clock-specifier pairs, one for each
-		  entry in clock-names
-- clock-names	: must contain
-		  "ref": 48M reference clock for HighSpeed analog phy; and 26M
-			reference clock for SuperSpeed analog phy, sometimes is
-			24M, 25M or 27M, depended on platform.
 - #phy-cells	: should be 1 (See second example)
 		  cell after port phandle is phy type from:
 			- PHY_TYPE_USB2
@@ -48,6 +42,13 @@ Required properties (port (child) node):
 			- PHY_TYPE_SATA
 
 Optional properties (PHY_TYPE_USB2 port (child) node):
+- clocks	: a list of phandle + clock-specifier pairs, one for each
+		  entry in clock-names
+- clock-names	: may contain
+		  "ref": 48M reference clock for HighSpeed anolog phy; and 26M
+			reference clock for SuperSpeed anolog phy, sometimes is
+			24M, 25M or 27M, depended on platform.
+
 - mediatek,eye-src	: u32, the value of slew rate calibrate
 - mediatek,eye-vrt	: u32, the selection of VRT reference voltage
 - mediatek,eye-term	: u32, the selection of HS_TX TERM reference voltage
-- 
2.24.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
