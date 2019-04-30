Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19626F376
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 11:47:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/g7MlwP+Kd59aXXZEHPnN6LX/j9xtEsdgwk3lJOOeLY=; b=Y1mDiaIYNZv3If
	e1n8S5U9ArnwC/cFG3W6M4mEhY7+BD5p5JzZBhBK6HXDME4N/c7oomJzOlJo9YWoshB9Qr7qGvt6a
	7pbZ9qPt2gqk0SjbdikNi6nbR5uSdgzIPMdAbG+m69VZ4ie/mJxTRklTOYaAdXySPFsETsS9IY9De
	WdmQwZEKKfm+L1s0zSRcQbmIG68PZ3K9EE/McBaIaO5SJ21HXCuZ0fotKarIU0KQnjhKBLbxyHCvW
	sA+drv5g1g+rnkpuWvHZqe/z27h0yCiIaTAlCG6qQvj+NTv2LsjCCK4/D14ZvfV2w3Ty5IgQXutX/
	9Ju1OUxOraYDjg5vFhRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLPMW-0002Fx-Pw; Tue, 30 Apr 2019 09:47:44 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLPKf-0000Xd-Vt; Tue, 30 Apr 2019 09:45:58 +0000
X-UUID: c81e5182439b4dd1a8c1b847082e85a7-20190430
X-UUID: c81e5182439b4dd1a8c1b847082e85a7-20190430
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <henryc.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 72642508; Tue, 30 Apr 2019 01:45:34 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 30 Apr 2019 02:45:33 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 30 Apr 2019 17:45:20 +0800
Received: from mtkslt205.mediatek.inc (10.21.15.75) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 30 Apr 2019 17:45:20 +0800
From: Henry Chen <henryc.chen@mediatek.com>
To: Georgi Djakov <georgi.djakov@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, Viresh Kumar
 <vireshk@kernel.org>, Stephen Boyd <swboyd@chromium.org>
Subject: [RFC V2 09/11] dt-bindings: interconnect: Add header for interconnect
 node
Date: Tue, 30 Apr 2019 16:51:03 +0800
Message-ID: <1556614265-12745-10-git-send-email-henryc.chen@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1556614265-12745-1-git-send-email-henryc.chen@mediatek.com>
References: <1556614265-12745-1-git-send-email-henryc.chen@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_024550_752457_A5E4568A 
X-CRM114-Status: GOOD (  10.26  )
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

Add header file for mt8183 interconnect node that could be shared between
the interconeect provider driver and Device Tree source files.

Signed-off-by: Henry Chen <henryc.chen@mediatek.com>
---
 include/dt-bindings/interconnect/mtk,mt8183.h | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)
 create mode 100644 include/dt-bindings/interconnect/mtk,mt8183.h

diff --git a/include/dt-bindings/interconnect/mtk,mt8183.h b/include/dt-bindings/interconnect/mtk,mt8183.h
new file mode 100644
index 0000000..34adbfa
--- /dev/null
+++ b/include/dt-bindings/interconnect/mtk,mt8183.h
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef __DT_BINDINGS_INTERCONNECT_MTK_MT8183_H
+#define __DT_BINDINGS_INTERCONNECT_MTK_MT8183_H
+
+#define SLAVE_DDR_EMI			0
+#define MASTER_MCUSYS			1
+#define MASTER_GPU			2
+#define MASTER_MMSYS			3
+#define MASTER_MM_VPU			4
+#define MASTER_MM_DISP			5
+#define MASTER_MM_VDEC			6
+#define MASTER_MM_VENC			7
+#define MASTER_MM_CAM			8
+#define MASTER_MM_IMG			9
+#define MASTER_MM_MDP			10
+
+#endif
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
