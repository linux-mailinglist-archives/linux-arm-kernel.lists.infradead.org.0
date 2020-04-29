Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A501BEA9A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 23:56:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QARCWENCQ+841cSejnJNwXej20T9cqGO85MZE57idlk=; b=MLgajSiIlmRBi5
	P15+aovwDPoekUsGUEPwLhrdNSnd4s7zZhGiP5dJ74Nf0x5sekXJnkOFnHhYc9YZ6BvJuahL2HYXc
	2aXKc57Dl9RvS+sPI9jeYcbMmXfjmYe2CZ6iUIguOdbnV+3Y+ci3BKkECKoS8Voq+ttDVT9+jhkmN
	J1Vxh2Hs1F9p5pkrWMNxAZqvBmcywtTRRE6xycXAfCFWjw8t1OvyQA4eAHUs/h0bJui/Pzma/BwmN
	0Z/Woh7UFPOp3NWd09gZhZnG8lMCELn/+P63tG+BtoPjCk3q9FiD/xX9RqrjqFq4lrXmcPSgo8C3u
	3KcQAI0MsOobXJOqTmjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTugz-0005zH-7z; Wed, 29 Apr 2020 21:56:33 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTuep-0002FK-3C
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 21:54:20 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 0B508819C;
 Wed, 29 Apr 2020 21:55:05 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 05/15] bus: ti-sysc: Ignore timer12 on secure omap3
Date: Wed, 29 Apr 2020 14:53:52 -0700
Message-Id: <20200429215402.18125-6-tony@atomide.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200429215402.18125-1-tony@atomide.com>
References: <20200429215402.18125-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_145419_219974_D0B3A4BD 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Lokesh Vutla <lokeshvutla@ti.com>, Keerthy <j-keerthy@ti.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Graeme Smecher <gsmecher@threespeedlogic.com>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, Tero Kristo <t-kristo@ti.com>,
 Stephen Boyd <sboyd@kernel.org>, Andreas Kemnade <andreas@kemnade.info>,
 "H. Nikolaus Schaller" <hns@goldelico.com>, linux-omap@vger.kernel.org,
 Adam Ford <aford173@gmail.com>, Brian Hutchinson <b.hutchman@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some early omap3 boards use timer12 for system timer, but for secure
SoCs like on n900 it's not accessible. Likely we will be configuring
unavailable devices for other SoCs too based on runtime SoC detection,
so let's use a switch to start with.

Cc: Keerthy <j-keerthy@ti.com>
Cc: Lokesh Vutla <lokeshvutla@ti.com>
Cc: Tero Kristo <t-kristo@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/bus/ti-sysc.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
--- a/drivers/bus/ti-sysc.c
+++ b/drivers/bus/ti-sysc.c
@@ -2744,6 +2744,17 @@ static int sysc_init_soc(struct sysc *ddata)
 	if (match && match->data)
 		sysc_soc->soc = (int)match->data;
 
+	/* Ignore devices that are not available on HS and EMU SoCs */
+	if (!sysc_soc->general_purpose) {
+		switch (sysc_soc->soc) {
+		case SOC_3430 ... SOC_3630:
+			sysc_add_disabled(0x48304000);	/* timer12 */
+			break;
+		default:
+			break;
+		};
+	}
+
 	match = soc_device_match(sysc_soc_feat_match);
 	if (!match)
 		return 0;
-- 
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
