Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2888AB233
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 08:01:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mOHWLYsYBfaMgK0d3iHzwjxCa4vL7XchSQ/XUDRB0m0=; b=Cq9fnAbMKGLTOo
	obmUfN1A0pLiXk2saQAhImmoO173wSwuKIalbwBMBdE29ZFfO2ZRDLb75vIudsEcZltG3crTUARkF
	658aFShb7xJv+ETX8lXm8nyWM6jRCJdAYuVcQifJV/p59OePjp7QrpxKGKsnon0h+tmlhdSz5nIn0
	Rn7CXC2/jqFD7kQ0YGY2O2sDw+2GlNMmq99E8thgwg1RX9MgwF7FwuGhN87PoUpAhJgJJ5YRhIKAL
	21sH8v6ambZ6g8E6CEEM2pdxYsR9jRuiF5/MHqy908so0OnCuoiTBv9bM93J9ekpyUrDKSF/w/qfi
	X6rX2dj+xr+M0V3s4nEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i67Jh-0005t9-Ae; Fri, 06 Sep 2019 06:01:53 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i67JZ-0005s0-Ia; Fri, 06 Sep 2019 06:01:46 +0000
X-UUID: 4abd6e27ed744027a7453885ec125f70-20190905
X-UUID: 4abd6e27ed744027a7453885ec125f70-20190905
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <mark-pk.tsai@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 401149852; Thu, 05 Sep 2019 22:01:34 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Sep 2019 23:01:32 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 6 Sep 2019 14:01:31 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 6 Sep 2019 14:01:31 +0800
From: Mark-PK Tsai <mark-pk.tsai@mediatek.com>
To: <peterz@infradead.org>, <mingo@redhat.com>, <acme@kernel.org>,
 <alexander.shishkin@linux.intel.com>, <jolsa@redhat.com>,
 <namhyung@kernel.org>, <matthias.bgg@gmail.com>
Subject: [PATCH] perf/hw_breakpoint: Fix arch_hw_breakpoint
 use-before-initialization
Date: Fri, 6 Sep 2019 14:01:16 +0800
Message-ID: <20190906060115.9460-1-mark-pk.tsai@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_230145_622514_33FF0E70 
X-CRM114-Status: UNSURE (   8.10  )
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
Cc: Alix Wu <alix.wu@mediatek.com>, YJ Chiang <yj.chiang@mediatek.com>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Mark-PK Tsai <mark-pk.tsai@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If we disable the compiler's auto-initialization feature
(-fplugin-arg-structleak_plugin-byref or -ftrivial-auto-var-init=pattern)
is disabled, arch_hw_breakpoint may be used before initialization after
the change 9a4903dde2c86.
(perf/hw_breakpoint: Split attribute parse and commit)

On our arm platform, the struct step_ctrl in arch_hw_breakpoint, which
used to be zero-initialized by kzalloc, may be used in
arch_install_hw_breakpoint without initialization.

Signed-off-by: Mark-PK Tsai <mark-pk.tsai@mediatek.com>
Cc: YJ Chiang <yj.chiang@mediatek.com>
Cc: Alix Wu <alix.wu@mediatek.com>
---
 kernel/events/hw_breakpoint.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/kernel/events/hw_breakpoint.c b/kernel/events/hw_breakpoint.c
index c5cd852fe86b..8fb842394924 100644
--- a/kernel/events/hw_breakpoint.c
+++ b/kernel/events/hw_breakpoint.c
@@ -413,7 +413,7 @@ static int hw_breakpoint_parse(struct perf_event *bp,

 int register_perf_hw_breakpoint(struct perf_event *bp)
 {
-	struct arch_hw_breakpoint hw;
+	struct arch_hw_breakpoint hw = {0};
 	int err;

 	err = reserve_bp_slot(bp);
@@ -461,7 +461,7 @@ int
 modify_user_hw_breakpoint_check(struct perf_event *bp, struct perf_event_attr *attr,
 			        bool check)
 {
-	struct arch_hw_breakpoint hw;
+	struct arch_hw_breakpoint hw = {0};
 	int err;

 	err = hw_breakpoint_parse(bp, attr, &hw);
--
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
