Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5ECB121F39
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 01:09:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PF7bFfP7m57gxiUPybUZEVsKdHAFrOA2/gdATA7g3KA=; b=ujix6GvMWqbvqU
	h8INrriA1ES/OTuVqVJN2DhUkjfJ6kyOyr4/5pHwYdaPCQ4Fc95Hnnu0+vw8Yp7m6QnIgaCCIMUCE
	o/rpG0eJ8FlCNL+f5BJose2UAu0IWSFHFAMvZniGNdVFXAGaeXlzjVBkfHk5M9/vSCPysjQm+MQA7
	o4jTakCwoEg2HkKW7kvwLROubGYdSo6HQyC0o1NcjdDGFKr8mN53tQerrIXC0zapBTIjLdXnVZq6+
	hZHdU8htKRL7AMokh6mMtpijWIze0g3EcmbckjjXDv2mk4ZNP+cB3WWr3FJFzsKDtfsCnnysXJhN2
	G0PCBuLyCU4L1n6E7GeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih0Qe-0005n8-Ua; Tue, 17 Dec 2019 00:09:32 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih0QN-0005ko-73
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 00:09:20 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 6FA0E8126;
 Tue, 17 Dec 2019 00:09:53 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 2/2] bus: ti-sysc: Fix iterating over clocks
Date: Mon, 16 Dec 2019 16:09:06 -0800
Message-Id: <20191217000906.43658-2-tony@atomide.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191217000906.43658-1-tony@atomide.com>
References: <20191217000906.43658-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_160915_300223_FC54F8FD 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Dave Gerlach <d-gerlach@ti.com>, Keerthy <j-keerthy@ti.com>,
 linux-kernel@vger.kernel.org, "Andrew F . Davis" <afd@ti.com>,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, Faiz Abbas <faiz_abbas@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Suman Anna <s-anna@ti.com>,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit d878970f6ce1 ("bus: ti-sysc: Add separate functions for handling
clocks") separated handling of optional clocks from the main clocks, but
introduced an issue where we do not necessarily allocate a slot for both
fck and ick clocks, but still assume fixed slots for enumerating over the
clocks.

Let's fix the issue by ensuring we always have slots for both fck and ick
even if we don't use ick, and don't attempt to enumerate optional clocks
if not allocated.

In the long run we might want to simplify things a bit by only allocating
space only for the optional clocks as we have only few devices with
optional clocks.

Fixes: d878970f6ce1 ("bus: ti-sysc: Add separate functions for handling clocks")
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/bus/ti-sysc.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
--- a/drivers/bus/ti-sysc.c
+++ b/drivers/bus/ti-sysc.c
@@ -343,6 +343,12 @@ static int sysc_get_clocks(struct sysc *ddata)
 		return -EINVAL;
 	}
 
+	/* Always add a slot for main clocks fck and ick even if unused */
+	if (!nr_fck)
+		ddata->nr_clocks++;
+	if (!nr_ick)
+		ddata->nr_clocks++;
+
 	ddata->clocks = devm_kcalloc(ddata->dev,
 				     ddata->nr_clocks, sizeof(*ddata->clocks),
 				     GFP_KERNEL);
@@ -421,7 +427,7 @@ static int sysc_enable_opt_clocks(struct sysc *ddata)
 	struct clk *clock;
 	int i, error;
 
-	if (!ddata->clocks)
+	if (!ddata->clocks || ddata->nr_clocks < SYSC_OPTFCK0 + 1)
 		return 0;
 
 	for (i = SYSC_OPTFCK0; i < SYSC_MAX_CLOCKS; i++) {
@@ -455,7 +461,7 @@ static void sysc_disable_opt_clocks(struct sysc *ddata)
 	struct clk *clock;
 	int i;
 
-	if (!ddata->clocks)
+	if (!ddata->clocks || ddata->nr_clocks < SYSC_OPTFCK0 + 1)
 		return;
 
 	for (i = SYSC_OPTFCK0; i < SYSC_MAX_CLOCKS; i++) {
-- 
2.24.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
