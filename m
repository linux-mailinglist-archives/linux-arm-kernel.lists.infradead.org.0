Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 069B91AE2CF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 18:57:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IqmSmnj2lPSp4rgN5ISnm3+V4ucBoiyCBSJI0XH9XKA=; b=gizzNIFIqFMdtK
	WBvLOrsEPujsfx8l2IKN7+mIkZbhXDfgOD8HRJQC3jzEjhOb3BHIpxEz4BAru2nPt4DEPLa2SKYoA
	Aij+6f7nEKR5uLzv+ZqkaqmKmZWidUGQuxBa6rk4ybSQfafhRL2Ry98IxVw54iO0wV+5DNgBueQI2
	rZBB0mjQoq6Bv1VW2yFhrAheXkoo7Pd06Lz3G5ImgHShJE87hM9RUvMaU4vxHqFaCPn+syrpX8Zwr
	ZiBbnDeYJz6dtLMsnx/R8naGdWAlN6ZtDggoli6sYk8hppAz3ceJWmI2dQlaRCUmSH4zSUoAF3Gu4
	kszMFjB3w97tUc2bZ7Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPUIb-000544-NY; Fri, 17 Apr 2020 16:57:05 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPUHI-0004Bm-2M
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 16:55:45 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id C80A58160;
 Fri, 17 Apr 2020 16:56:29 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 04/14] bus: ti-sysc: Ignore timer12 on secure omap3
Date: Fri, 17 Apr 2020 09:55:09 -0700
Message-Id: <20200417165519.4979-5-tony@atomide.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200417165519.4979-1-tony@atomide.com>
References: <20200417165519.4979-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_095544_164795_8A7069E2 
X-CRM114-Status: UNSURE (   9.60  )
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
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Tero Kristo <t-kristo@ti.com>, Stephen Boyd <sboyd@kernel.org>,
 Andreas Kemnade <andreas@kemnade.info>,
 "H. Nikolaus Schaller" <hns@goldelico.com>,
 Thomas Gleixner <tglx@linutronix.de>, Adam Ford <aford173@gmail.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
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
2.26.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
