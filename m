Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35113F377
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 11:48:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V8o/fNgOMxmWcQUsipSGpvUmJY5tKadxTyF/693V1uE=; b=qSCrs5LhSO1J3d
	RB20XJ1uEoKXyKdIL596q/fcrEAzg+B9QAeoH8TgrCPxsSKMHnTISwW6hzF0tRlaqYSvFcqRLGAmD
	FT4K7qsvgCfNq6LE8/zerraBqXz06oE7eamaJmTv31p80xGzhgWkYFV5s5Zr4Rz0mmkc4mrDbKypn
	TbAYlckZ5HjU+ePR0aeFMVizmbhK+dsSR2lOF95EQTTpr8yB2E9gjeWYSbyJU1mvPqvIqVUvnLnM+
	yv8yuTmdvcbOppMcb42HX8d5V8hMd/FAjGGp078Jr7bwHeIhG3WTcgSSLhop7m5XyjkRTGQ8GK4Lx
	msRYEZayRCAYotnE1gmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLPMh-0002U0-LS; Tue, 30 Apr 2019 09:47:55 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLPKg-0000ZQ-Tr; Tue, 30 Apr 2019 09:46:00 +0000
X-UUID: 8213b39f0efe4363be6d6a5951cfa007-20190430
X-UUID: 8213b39f0efe4363be6d6a5951cfa007-20190430
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <henryc.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 849074116; Tue, 30 Apr 2019 01:45:34 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 30 Apr 2019 02:45:32 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 30 Apr 2019 17:45:18 +0800
Received: from mtkslt205.mediatek.inc (10.21.15.75) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 30 Apr 2019 17:45:19 +0800
From: Henry Chen <henryc.chen@mediatek.com>
To: Georgi Djakov <georgi.djakov@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, Viresh Kumar
 <vireshk@kernel.org>, Stephen Boyd <swboyd@chromium.org>
Subject: [RFC V2 01/11] dt-bindings: soc: Add dvfsrc driver bindings
Date: Tue, 30 Apr 2019 16:50:55 +0800
Message-ID: <1556614265-12745-2-git-send-email-henryc.chen@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1556614265-12745-1-git-send-email-henryc.chen@mediatek.com>
References: <1556614265-12745-1-git-send-email-henryc.chen@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_024551_365528_8C8D7DC2 
X-CRM114-Status: GOOD (  12.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: James Liao <jamesjj.liao@mediatek.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
 Nicolas Boichat <drinkcat@google.com>, linux-kernel@vger.kernel.org, Henry
 Chen <henryc.chen@mediatek.com>, Fan Chen <fan.chen@mediatek.com>,
 devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Document the binding for enabling dvfsrc on MediaTek SoC.

Signed-off-by: Henry Chen <henryc.chen@mediatek.com>
---
 .../devicetree/bindings/soc/mediatek/dvfsrc.txt    | 23 ++++++++++++++++++++++
 include/dt-bindings/soc/mtk,dvfsrc.h               | 14 +++++++++++++
 2 files changed, 37 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/mediatek/dvfsrc.txt
 create mode 100644 include/dt-bindings/soc/mtk,dvfsrc.h

diff --git a/Documentation/devicetree/bindings/soc/mediatek/dvfsrc.txt b/Documentation/devicetree/bindings/soc/mediatek/dvfsrc.txt
new file mode 100644
index 0000000..7f43499
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/mediatek/dvfsrc.txt
@@ -0,0 +1,23 @@
+MediaTek DVFSRC
+
+The Dynamic Voltage and Frequency Scaling Resource Collector (DVFSRC) is a
+HW module which is used to collect all the requests from both software and
+hardware and turn into the decision of minimum operating voltage and minimum
+DRAM frequency to fulfill those requests.
+
+Required Properties:
+- compatible: Should be one of the following
+	- "mediatek,mt8183-dvfsrc": For MT8183 SoC
+- reg: Address range of the DVFSRC unit
+- clock-names: Must include the following entries:
+	"dvfsrc": DVFSRC module clock
+- clocks: Must contain an entry for each entry in clock-names.
+
+Example:
+
+	dvfsrc@10012000 {
+		compatible = "mediatek,mt8183-dvfsrc";
+		reg = <0 0x10012000 0 0x1000>;
+		clocks = <&infracfg CLK_INFRA_DVFSRC>;
+		clock-names = "dvfsrc";
+	};
diff --git a/include/dt-bindings/soc/mtk,dvfsrc.h b/include/dt-bindings/soc/mtk,dvfsrc.h
new file mode 100644
index 0000000..a522488
--- /dev/null
+++ b/include/dt-bindings/soc/mtk,dvfsrc.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0
+ *
+ * Copyright (c) 2018 MediaTek Inc.
+ */
+
+#ifndef _DT_BINDINGS_POWER_MTK_DVFSRC_H
+#define _DT_BINDINGS_POWER_MTK_DVFSRC_H
+
+#define MT8183_DVFSRC_LEVEL_1	1
+#define MT8183_DVFSRC_LEVEL_2	2
+#define MT8183_DVFSRC_LEVEL_3	3
+#define MT8183_DVFSRC_LEVEL_4	4
+
+#endif /* _DT_BINDINGS_POWER_MTK_DVFSRC_H */
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
