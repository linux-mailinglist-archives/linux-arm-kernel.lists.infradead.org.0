Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 400393C894
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 12:18:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LLdZqhmBfVNKkNQM16OSqIeD1yBW9yW43hFbz6N/or4=; b=Md8hX+Q+0P1aDV
	McZXuTB3CO8F+xcYQUUXuJq+D1qM+aHxEIWN4b0EjeftIWk9ob5yxDSjEhbWSnPhpFeJXqf7bimMV
	or9ZtwtzZzrekpr7F3S106rErhbaZZCzb38wb0qIXjMNsPZpZUkMoz5mZo4jBPpXwSKpn8tlh/pfd
	ixRQobaLTsbkgYhk1ZaeMhE1ytvHDczKrA4pLdhHC8SHbgPaYPOLGj2iwQWDY+Fp8aWDIgUko4p4C
	2QcLRPchMczWoT5Z79LpHrXQF8kHWSxys1od8O1zbeeEMb6a/qdZOVD3m5pBY+pSGJ+9CEjB6br0/
	vIx8BK/YTTa7XJm0q9Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hadrb-0002QQ-8C; Tue, 11 Jun 2019 10:18:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hadqD-0001WC-HZ
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 10:17:24 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0AA17208E3;
 Tue, 11 Jun 2019 10:17:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560248241;
 bh=525aOxhqLv6Y8ZrnilCkqiBQziTal4f1DRT+iqnr65Q=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=K2JiZayT9S16Wgegak2Fw9lid9oEzQHR0gVib6XgxqJO4cIpqXPXpuT9Mdi1JbmeM
 7rvC5A1n/JL8ggAaPY0SyaEx8vkqvkisLhvUUN2N/Yv2CzNAJ8UMm4D3PT6k+pb/jx
 efL6jGN9V7erjha1KNNEgZrrGDsEfsRjXU4YFMQ4=
Received: by wens.tw (Postfix, from userid 1000)
 id 102045F92C; Tue, 11 Jun 2019 18:17:18 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>
Subject: [PATCH v2 01/25] clk: Fix debugfs clk_possible_parents for clks
 without parent string names
Date: Tue, 11 Jun 2019 18:16:34 +0800
Message-Id: <20190611101658.23855-2-wens@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190611101658.23855-1-wens@kernel.org>
References: <20190611101658.23855-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_031721_636254_FD951757 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Chen-Yu Tsai <wens@csie.org>, Chen-Yu Tsai <wens@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

Following the commit fc0c209c147f ("clk: Allow parents to be specified
without string names"), the parent name string is not always populated.

Instead, fetch the parents clk_core struct using the appropriate helper,
and read its name directly. If that fails, go through the possible
sources of parent names. The order in which they are used is different
from how parents are looked up, with the global name having precedence
over local fw_name and indices. This makes more sense as a) the
parent_maps structure does not differentiate between legacy global names
and fallback global names, and b) global names likely provide more
information than local fw_names.

Fixes: fc0c209c147f ("clk: Allow parents to be specified without string names")
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 drivers/clk/clk.c | 44 +++++++++++++++++++++++++++++++++++++++++---
 1 file changed, 41 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index aa51756fd4d6..093161ca4dcc 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -3000,12 +3000,50 @@ DEFINE_SHOW_ATTRIBUTE(clk_flags);
 static int possible_parents_show(struct seq_file *s, void *data)
 {
 	struct clk_core *core = s->private;
+	struct clk_core *parent;
 	int i;
 
-	for (i = 0; i < core->num_parents - 1; i++)
-		seq_printf(s, "%s ", core->parents[i].name);
+	/*
+	 * Go through the following options to fetch a parent's name.
+	 *
+	 * 1. Fetch the registered parent clock and use its name
+	 * 2. Use the global (fallback) name if specified
+	 * 3. Use the local fw_name if provided
+	 * 4. Fetch parent clock's clock-output-name if DT index was set
+	 *
+	 * This may still fail in some cases, such as when the parent is
+	 * specified directly via a struct clk_hw pointer, but it isn't
+	 * registered (yet).
+	 */
+	for (i = 0; i < core->num_parents - 1; i++) {
+		parent = clk_core_get_parent_by_index(core, i);
+		if (parent)
+			seq_printf(s, "%s ", parent->name);
+		else if (core->parents[i].name)
+			seq_printf(s, "%s ", core->parents[i].name);
+		else if (core->parents[i].fw_name)
+			seq_printf(s, "<%s>(fw) ", core->parents[i].fw_name);
+		else if (core->parents[i].index >= 0)
+			seq_printf(s, "%s ",
+				   of_clk_get_parent_name(core->of_node,
+							  core->parents[i].index));
+		else
+			seq_puts(s, "(missing) ");
+	}
 
-	seq_printf(s, "%s\n", core->parents[i].name);
+	parent = clk_core_get_parent_by_index(core, i);
+	if (parent)
+		seq_printf(s, "%s", parent->name);
+	else if (core->parents[i].name)
+		seq_printf(s, "%s", core->parents[i].name);
+	else if (core->parents[i].fw_name)
+		seq_printf(s, "<%s>(fw)", core->parents[i].fw_name);
+	else if (core->parents[i].index >= 0)
+		seq_printf(s, "%s",
+			   of_clk_get_parent_name(core->of_node,
+						  core->parents[i].index));
+	else
+		seq_puts(s, "(missing)");
 
 	return 0;
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
