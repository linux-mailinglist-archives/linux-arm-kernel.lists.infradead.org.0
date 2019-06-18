Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83ED64A5E5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 17:53:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1kXiDLlhxvG33GgxejpoXC0shfrGwuUmY5F+FS6Trqg=; b=NOCDb6JvdxjqKT
	hqsmIh2d9my1xmn/rt4R4N45unH4PuCmGAYQdbIgzY1Mp/QD0+DucvpdPG8PeqfBrCoyPcU6mOwE1
	r6IN09jDnct5cWp7x4pdfPLI0gH3dUtXbT1ltJQs4boqAiQU6FdgYhnl3F/OONhfvnTj7lapircMC
	q6EM+8+JJmDGkDOAxpraOVTl7IGlgECJ0gSz3PmSKSLkVzcn5utqbcYDzSKfwhcl0eoOxw4BqLLD/
	1xpz++1/x172kQ/r+dT52U30pqKJAO1d6rX/cF036ZJnkx3JL7/SQtoEImXcw+jPDt9iwpee2bduU
	lYsTvPt3hag+5G1MUvow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdGPt-0003PV-B3; Tue, 18 Jun 2019 15:53:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdGPh-0003PC-Mh
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 15:52:50 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4C19A206BA;
 Tue, 18 Jun 2019 15:52:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560873168;
 bh=Qp/IJHUjvBQGAHzFEZFsyGZsRYNVu9PbMdYcS3h9VBU=;
 h=Date:From:To:Cc:Subject:From;
 b=vDvXN3HG1yRoUSYBVkno4avdSW0LQlb/3MMH5m3ozEdqTLF9dfBXzj39Vs3VYYZaF
 n67+3908aOVSpHC69Zg5Gu3e3D9yOzdjpUV6MICCLkk79A++sRGJhS9HgdJbh3kpBU
 enA3BhK/oAY9U+zgmoiKQc5+T3yK+/PT2+fJKwbw=
Date: Tue, 18 Jun 2019 17:52:46 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>
Subject: [PATCH] coresight: cpu-debug: no need to check return value of
 debugfs_create functions
Message-ID: <20190618155246.GA17788@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_085249_755576_79092054 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When calling debugfs functions, there is no need to ever check the
return value.  The function can work or not, but the code logic should
never do something different based on this.

Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/hwtracing/coresight/coresight-cpu-debug.c | 15 ++-------------
 1 file changed, 2 insertions(+), 13 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-cpu-debug.c b/drivers/hwtracing/coresight/coresight-cpu-debug.c
index e8819d750938..6446ed69ab2f 100644
--- a/drivers/hwtracing/coresight/coresight-cpu-debug.c
+++ b/drivers/hwtracing/coresight/coresight-cpu-debug.c
@@ -525,23 +525,12 @@ static const struct file_operations debug_func_knob_fops = {
 
 static int debug_func_init(void)
 {
-	struct dentry *file;
 	int ret;
 
 	/* Create debugfs node */
 	debug_debugfs_dir = debugfs_create_dir("coresight_cpu_debug", NULL);
-	if (!debug_debugfs_dir) {
-		pr_err("%s: unable to create debugfs directory\n", __func__);
-		return -ENOMEM;
-	}
-
-	file = debugfs_create_file("enable", 0644, debug_debugfs_dir, NULL,
-				   &debug_func_knob_fops);
-	if (!file) {
-		pr_err("%s: unable to create enable knob file\n", __func__);
-		ret = -ENOMEM;
-		goto err;
-	}
+	debugfs_create_file("enable", 0644, debug_debugfs_dir, NULL,
+			    &debug_func_knob_fops);
 
 	/* Register function to be called for panic */
 	ret = atomic_notifier_chain_register(&panic_notifier_list,
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
