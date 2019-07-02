Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9075B5D0A5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 15:27:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=n8Z/HHRilMexkHf0AJNy3oqZp5aI60vuB2Hq3XVBYDM=; b=kAw
	zbttgS3kHrQWCUaxdXZLZEBK6zDzNsarLfF2vireYE+P6GkfQtv1B+AExxN/DXI70f/gRbiNn2VG+
	ZBicX109BV3g2QajMZgPKqvTfE03guYm/6jIa7gjqe6jHxFq7KQAAqhi8N0751hK+kX+QJrFdRL1O
	tyrLxPT9vGiJMLpTr/0D7yZpSXfsw8ITNVQWLLCzak6pELt77zKsJWKCMbEhXnq9i/aPQCPurp4Yg
	7noHwqvDaQ1gG7AFtPJgS4R927RfYj1QJWpPa5XJzVljy13zZvSfsn9y/eAacPmMJ/mXNINojYlx6
	jbKzg/44EJtLrMdk6hpZQUzHYbi0HGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiIor-0007Xc-7L; Tue, 02 Jul 2019 13:27:37 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiIoY-0007UC-C3
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 13:27:20 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id F022C1A0233;
 Tue,  2 Jul 2019 15:27:14 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id DA1471A0230;
 Tue,  2 Jul 2019 15:27:14 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 984752061C;
 Tue,  2 Jul 2019 15:27:14 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>
Subject: [PATCH v3 1/2] clk: Add clk_min/max_rate entries in debugfs
Date: Tue,  2 Jul 2019 16:27:09 +0300
Message-Id: <68e96af2df96512300604d797ade2088d7e6e496.1562073871.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_062718_695043_BD4CA503 
X-CRM114-Status: UNSURE (   7.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
 drivers/clk/clk.c | 37 +++++++++++++++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

Changes since v2:
* Shrink clk_prepare_lock
* Split lock assertion to separate patch
Link to v2: https://patchwork.kernel.org/patch/11021609/

Changes since v1:
* Call clk_prepare_lock/clk_prepare_unlock (Geert)
* Also include in clk_dump, but only with non-default values
Link to v1: https://patchwork.kernel.org/patch/11019873/

Don't add to clk_summary because min/max rates are rarely used and
clk_summary already has too many columns.

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index c0990703ce54..e4e224982ae3 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -2894,19 +2894,26 @@ static int clk_summary_show(struct seq_file *s, void *data)
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
@@ -3062,10 +3069,38 @@ static int clk_duty_cycle_show(struct seq_file *s, void *data)
 
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
+	clk_prepare_unlock();
+	seq_printf(s, "%lu\n", min_rate);
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
+	clk_prepare_unlock();
+	seq_printf(s, "%lu\n", max_rate);
+
+	return 0;
+}
+DEFINE_SHOW_ATTRIBUTE(clk_max_rate);
+
 static void clk_debug_create_one(struct clk_core *core, struct dentry *pdentry)
 {
 	struct dentry *root;
 
 	if (!core || !pdentry)
@@ -3073,10 +3108,12 @@ static void clk_debug_create_one(struct clk_core *core, struct dentry *pdentry)
 
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
