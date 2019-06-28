Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4B7F595EC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 10:19:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=BXX0AHi/0Sn4mbPPoPqZJtilueYadpKEZet66t3vhPg=; b=Vga
	V7K5sFu9A/MpNiTD9Rf1Q7ZCh4EilksYyHzCIqsFLiXpIfGyKPAlngaiolwoK3Exd5mj5aLHiBbdU
	jHU6/H01Vnr2uPFvBm4Hi9e+bOGFYXXF3QxQLNkFqX+hH2ZzPxrAV3ccvLKkCLDtF16bGfAeHgme3
	jniSpz4wHNPEJSNE8EwZ3o3OKuC1lfolP/utDfE18hKi5WVrDdku8K589yR1Zl0bwbZ/P6gl5AIdI
	CL3d8RUKvSHCFmfd5xSVJxN9z1dgVy3SjxZX7jcRzKK0SnfRUmQ+V0TmKuSsBrTh4OXthAKrJJD7e
	w7bBihdIeMTXh96lzRjaJp/Hr0s32jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgm6a-0002ga-Ms; Fri, 28 Jun 2019 08:19:36 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgm6J-0002fm-Lc
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 08:19:24 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 23B76200373;
 Fri, 28 Jun 2019 10:19:18 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 1700520034C;
 Fri, 28 Jun 2019 10:19:18 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id C945A205D5;
 Fri, 28 Jun 2019 10:19:17 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH v2] clk: Add clk_min/max_rate entries in debugfs
Date: Fri, 28 Jun 2019 11:19:15 +0300
Message-Id: <0c12208398cadb7450b6b7745e99c55770c0ccf8.1561709827.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_011922_471301_F0343102 
X-CRM114-Status: UNSURE (   7.77  )
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

Add two files to expose min/max clk rates as determined by
clk_core_get_boundaries, taking all consumer requests into account.

This information does not appear to be otherwise exposed to userspace.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>

---
 drivers/clk/clk.c | 39 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

Changes since v1:
* Call clk_prepare_lock/clk_prepare_unlock (Geert)
* Also include in clk_dump, but only with non-default values
Link to v1: https://patchwork.kernel.org/patch/11019873/

Didn't add to clk_summary because min/max rates are rarely used and
clk_summary already has too many columns.

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index efa593ecbfa9..8cec1954580b 100644
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
@@ -2894,19 +2896,26 @@ static int clk_summary_show(struct seq_file *s, void *data)
 }
 DEFINE_SHOW_ATTRIBUTE(clk_summary);
 
 static void clk_dump_one(struct seq_file *s, struct clk_core *c, int level)
 {
+	unsigned long min_rate, max_rate;
+
 	if (!c)
 		return;
 
 	/* This should be JSON format, i.e. elements separated with a comma */
 	seq_printf(s, "\"%s\": { ", c->name);
 	seq_printf(s, "\"enable_count\": %d,", c->enable_count);
 	seq_printf(s, "\"prepare_count\": %d,", c->prepare_count);
 	seq_printf(s, "\"protect_count\": %d,", c->protect_count);
 	seq_printf(s, "\"rate\": %lu,", clk_core_get_rate(c));
+	clk_core_get_boundaries(c, &min_rate, &max_rate);
+	if (min_rate != 0)
+		seq_printf(s, "\"min_rate\": %lu,", min_rate);
+	if (max_rate != ULONG_MAX)
+		seq_printf(s, "\"max_rate\": %lu,", max_rate);
 	seq_printf(s, "\"accuracy\": %lu,", clk_core_get_accuracy(c));
 	seq_printf(s, "\"phase\": %d,", clk_core_get_phase(c));
 	seq_printf(s, "\"duty_cycle\": %u",
 		   clk_core_get_scaled_duty_cycle(c, 100000));
 }
@@ -3062,10 +3071,38 @@ static int clk_duty_cycle_show(struct seq_file *s, void *data)
 
 	return 0;
 }
 DEFINE_SHOW_ATTRIBUTE(clk_duty_cycle);
 
+static int clk_min_rate_show(struct seq_file *s, void *data)
+{
+	struct clk_core *core = s->private;
+	unsigned long min_rate, max_rate;
+
+	clk_prepare_lock();
+	clk_core_get_boundaries(core, &min_rate, &max_rate);
+	seq_printf(s, "%lu\n", min_rate);
+	clk_prepare_unlock();
+
+	return 0;
+}
+DEFINE_SHOW_ATTRIBUTE(clk_min_rate);
+
+static int clk_max_rate_show(struct seq_file *s, void *data)
+{
+	struct clk_core *core = s->private;
+	unsigned long min_rate, max_rate;
+
+	clk_prepare_lock();
+	clk_core_get_boundaries(core, &min_rate, &max_rate);
+	seq_printf(s, "%lu\n", max_rate);
+	clk_prepare_unlock();
+
+	return 0;
+}
+DEFINE_SHOW_ATTRIBUTE(clk_max_rate);
+
 static void clk_debug_create_one(struct clk_core *core, struct dentry *pdentry)
 {
 	struct dentry *root;
 
 	if (!core || !pdentry)
@@ -3073,10 +3110,12 @@ static void clk_debug_create_one(struct clk_core *core, struct dentry *pdentry)
 
 	root = debugfs_create_dir(core->name, pdentry);
 	core->dentry = root;
 
 	debugfs_create_ulong("clk_rate", 0444, root, &core->rate);
+	debugfs_create_file("clk_min_rate", 0444, root, core, &clk_min_rate_fops);
+	debugfs_create_file("clk_max_rate", 0444, root, core, &clk_max_rate_fops);
 	debugfs_create_ulong("clk_accuracy", 0444, root, &core->accuracy);
 	debugfs_create_u32("clk_phase", 0444, root, &core->phase);
 	debugfs_create_file("clk_flags", 0444, root, core, &clk_flags_fops);
 	debugfs_create_u32("clk_prepare_count", 0444, root, &core->prepare_count);
 	debugfs_create_u32("clk_enable_count", 0444, root, &core->enable_count);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
