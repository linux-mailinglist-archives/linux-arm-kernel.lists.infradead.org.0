Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70FA03B3BB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 13:07:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ooRch8RHE45p6wvQpVeGCNeU6ruGkPvMsX/OJfAU3oQ=; b=u9F
	f0xXE4xglRZFaVrTa58ka3q4RWspotRaGF/+5pInmNO7X6ud2z3Zg6SgKOcceCvrSJnrFRl+vlGqx
	Yang1TcMwYtgyacwUhBRXdz/IH5Srh/DEKU/4GZKK2IC9bcCPO9o/b2KEdW1MgsjdAIjJisAjuSAn
	1qU0ZxL7WOuQSOwSMXTXgfZGZaZ2Lge4xQOzl7JKgPh6hkWFhHN53tX1lPsTd3lIxHvZ5t8SXUMen
	Vp0IWAwg5+XLSFKevyYbcq3WmcAFCuzl6AwyiiRFHtzRgNI3Oa1ztAaBXaCdavKl5tgeJR+KK7R9s
	q+luQ/cd29aiZ4mtRnI/Dep8Gv/yvMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haI8i-0000Al-EY; Mon, 10 Jun 2019 11:07:00 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haI8S-00009d-Hz
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 11:06:46 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 0C46A200775;
 Mon, 10 Jun 2019 13:06:41 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id F30E3200773;
 Mon, 10 Jun 2019 13:06:40 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net (gw_auto.ea.freescale.net
 [10.171.94.100])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 926D02061D;
 Mon, 10 Jun 2019 13:06:40 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH v2] clk: Add clk_parent entry in debugfs
Date: Mon, 10 Jun 2019 14:06:38 +0300
Message-Id: <82d6e1d63959ecb23bdcd363e93a27d08eee6859.1560164542.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_040644_732859_EB65650D 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This allows to easily determine the parent in shell scripts without
parsing more complex files.

Add the clk_parent file for all clks which can have a parent, not just
muxes. This way it can be used to determine the clk tree structure
without parsing more complex files.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>

---
Changes since v1: Only add clk_parent if num_parents > 0

It seems that num_parents is only initialized once and never changes so
having a check here makes sense: skip the clk_parent file if the clk can
never have parent (num_parent == 0) but keep it if the parent is
constant (num_parents == 1).

It seems the parent can be set to NULL later so keep the check for
(core->parent != NULL) in the show function.

Link to v1: https://patchwork.kernel.org/patch/10959347/
---
 drivers/clk/clk.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index aa51756fd4d6..d21a219deef8 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -3009,10 +3009,21 @@ static int possible_parents_show(struct seq_file *s, void *data)
 
 	return 0;
 }
 DEFINE_SHOW_ATTRIBUTE(possible_parents);
 
+static int current_parent_show(struct seq_file *s, void *data)
+{
+	struct clk_core *core = s->private;
+
+	if (core->parent)
+		seq_printf(s, "%s\n", core->parent->name);
+
+	return 0;
+}
+DEFINE_SHOW_ATTRIBUTE(current_parent);
+
 static int clk_duty_cycle_show(struct seq_file *s, void *data)
 {
 	struct clk_core *core = s->private;
 	struct clk_duty *duty = &core->duty;
 
@@ -3041,10 +3052,14 @@ static void clk_debug_create_one(struct clk_core *core, struct dentry *pdentry)
 	debugfs_create_u32("clk_protect_count", 0444, root, &core->protect_count);
 	debugfs_create_u32("clk_notifier_count", 0444, root, &core->notifier_count);
 	debugfs_create_file("clk_duty_cycle", 0444, root, core,
 			    &clk_duty_cycle_fops);
 
+	if (core->num_parents > 0)
+		debugfs_create_file("clk_parent", 0444, root, core,
+				    &current_parent_fops);
+
 	if (core->num_parents > 1)
 		debugfs_create_file("clk_possible_parents", 0444, root, core,
 				    &possible_parents_fops);
 
 	if (core->ops->debug_init)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
