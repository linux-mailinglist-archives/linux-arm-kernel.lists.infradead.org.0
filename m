Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DCAF5D0A8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 15:27:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=51PKrhKAiJEHFQNiNvXeDzZLG3sh7iC/r+w5aYkpepk=; b=gCQmBtZEK6Vx6bKQDK4tuXRBzI
	mCdYCfpMdUKCCbl8aqPHKRRV1yPA/WAfey0SmIAJAOZOEMHtQB156s4PgFABA3VCvRheo2L9i6AOL
	W/2K9RTi/Oaqs6BDcEtzCX7Nahzl0tds8nP1XPHyDVnPJbYu2YDXLxVJGmQ1DM+8qDI5eVJ8quLZC
	T5WKAoswhBrffIPrArPMlLoMMnvUzakTdD3lkrTwPV/OfnEWttUpzXCImJ5g/bqAXpcJuhUQQLqOG
	u7aZ5zn1UO/uZWJlG31pVkpt6DTeS/4aAKuGoAN3j5YlZHkHNNM7lR0Px4UdVgrYPnrcGLrk6u9s9
	HWUa+omw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiIp5-0007ji-R7; Tue, 02 Jul 2019 13:27:51 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiIoa-0007UV-NO
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 13:27:23 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 4DD19200BE7;
 Tue,  2 Jul 2019 15:27:15 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 410C72001FE;
 Tue,  2 Jul 2019 15:27:15 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id EA4DD205ED;
 Tue,  2 Jul 2019 15:27:14 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>
Subject: [PATCH v3 2/2] clk: Assert prepare_lock in clk_core_get_boundaries
Date: Tue,  2 Jul 2019 16:27:10 +0300
Message-Id: <29453ee8e820457d87a8faf9d496390e59c6826f.1562073871.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <68e96af2df96512300604d797ade2088d7e6e496.1562073871.git.leonard.crestez@nxp.com>
References: <68e96af2df96512300604d797ade2088d7e6e496.1562073871.git.leonard.crestez@nxp.com>
In-Reply-To: <68e96af2df96512300604d797ade2088d7e6e496.1562073871.git.leonard.crestez@nxp.com>
References: <68e96af2df96512300604d797ade2088d7e6e496.1562073871.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_062720_912697_4DC9E1E2 
X-CRM114-Status: UNSURE (   7.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Michael Turquette <mturquette@baylibre.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This function iterates the clk consumer list on clk_core so it must be
called under prepare_lock. This is already done by all callers but add a
lockdep assert to check anyway.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>

---
 drivers/clk/clk.c | 2 ++
 1 file changed, 2 insertions(+)

I wouldn't mind if this is dropped as unnecessary.

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index e4e224982ae3..b1c79a58d734 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -591,10 +591,12 @@ static void clk_core_get_boundaries(struct clk_core *core,
 				    unsigned long *min_rate,
 				    unsigned long *max_rate)
 {
 	struct clk *clk_user;
 
+	lockdep_assert_held(&prepare_lock);
+
 	*min_rate = core->min_rate;
 	*max_rate = core->max_rate;
 
 	hlist_for_each_entry(clk_user, &core->clks, clks_node)
 		*min_rate = max(*min_rate, clk_user->min_rate);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
