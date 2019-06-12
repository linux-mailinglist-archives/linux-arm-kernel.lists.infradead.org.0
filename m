Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE81341F06
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 10:26:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ayO3nu99KV3QRENig/p190uOpRnjbpxIesW1JVsl8MY=; b=Nb+8Fz+ChuRR65
	kG9tXdLRtU5+wzWKPll7vB3kd6aASaZUmmyCQ4f4higMZ1pSdxfUaZfb89Km1AhfWcxrxBS4Hx/BS
	8ZHw33KOiGfB3QaOtxqRx5rzFMMD2DEH5eENZYZ+Ug9t9Cb/RfCI6c3oTU8smDLIFjGhOL3Wnsyli
	aB73vcX9MtUT90AzE6wc0nTxiSzwaOwoDBrsZUZAAQA2kMNpfJoRt588fQx54O+2F7Z3C2j7jKzux
	k4rNtXXm2yeXf49f25coSxluUkCFCbA/3mWEK6fHq12TzFUNI/1jffc9l4sHOZDE1/Tb++WJE7baB
	X1FCIBx+QJ+cQ2LTC7UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hayaa-0002yW-KC; Wed, 12 Jun 2019 08:26:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hayaM-0002xl-TB
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 08:26:24 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D233C2086A;
 Wed, 12 Jun 2019 08:26:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560327981;
 bh=e/8e/8Gzd//NDFDedJ/uuRg9TDsLNr2Z7h2IAkdkegA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nintNae3fY4I64ITCx2WHXAsOB73QxU1NznWAEhAl88YxjHYqmsWO9+J9FMnijeHn
 NqMfpJXJ9/fjkP/ip+4oYSqsgcwauf19hbOK66AzfhwMI8aNgZ+sckUEbhK5oIVyDT
 Il/B3nR9rztzuHi9/zbCygdPS7wZLbXWP/99y224=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: [PATCH 4/4] mmc: host: s3cmci: no need to check return value of
 debugfs_create functions
Date: Wed, 12 Jun 2019 10:25:31 +0200
Message-Id: <20190612082531.2652-4-gregkh@linuxfoundation.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190612082531.2652-1-gregkh@linuxfoundation.org>
References: <20190612082531.2652-1-gregkh@linuxfoundation.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_012622_961760_A70A4980 
X-CRM114-Status: GOOD (  13.01  )
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Ben Dooks <ben-linux@fluff.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When calling debugfs functions, there is no need to ever check the
return value.  The function can work or not, but the code logic should
never do something different based on this.

Also, because there is no need to save the file dentries, remove them
from the host-specific structure and just recursively delete the
directory that the driver created, when shutting down.

Cc: Ben Dooks <ben-linux@fluff.org>
Cc: Ulf Hansson <ulf.hansson@linaro.org>
Cc: <linux-arm-kernel@lists.infradead.org>
Cc: <linux-mmc@vger.kernel.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/mmc/host/s3cmci.c | 27 ++++++---------------------
 drivers/mmc/host/s3cmci.h |  2 --
 2 files changed, 6 insertions(+), 23 deletions(-)

diff --git a/drivers/mmc/host/s3cmci.c b/drivers/mmc/host/s3cmci.c
index f31333e831a7..6a91db7ca5f1 100644
--- a/drivers/mmc/host/s3cmci.c
+++ b/drivers/mmc/host/s3cmci.c
@@ -1452,33 +1452,18 @@ DEFINE_SHOW_ATTRIBUTE(s3cmci_regs);
 static void s3cmci_debugfs_attach(struct s3cmci_host *host)
 {
 	struct device *dev = &host->pdev->dev;
+	struct dentry *root;
 
-	host->debug_root = debugfs_create_dir(dev_name(dev), NULL);
-	if (IS_ERR(host->debug_root)) {
-		dev_err(dev, "failed to create debugfs root\n");
-		return;
-	}
-
-	host->debug_state = debugfs_create_file("state", 0444,
-						host->debug_root, host,
-						&s3cmci_state_fops);
-
-	if (IS_ERR(host->debug_state))
-		dev_err(dev, "failed to create debug state file\n");
-
-	host->debug_regs = debugfs_create_file("regs", 0444,
-					       host->debug_root, host,
-					       &s3cmci_regs_fops);
+	root = debugfs_create_dir(dev_name(dev), NULL);
+	host->debug_root = root;
 
-	if (IS_ERR(host->debug_regs))
-		dev_err(dev, "failed to create debug regs file\n");
+	debugfs_create_file("state", 0444, root, host, &s3cmci_state_fops);
+	debugfs_create_file("regs", 0444, root, host, &s3cmci_regs_fops);
 }
 
 static void s3cmci_debugfs_remove(struct s3cmci_host *host)
 {
-	debugfs_remove(host->debug_regs);
-	debugfs_remove(host->debug_state);
-	debugfs_remove(host->debug_root);
+	debugfs_remove_recursive(host->debug_root);
 }
 
 #else
diff --git a/drivers/mmc/host/s3cmci.h b/drivers/mmc/host/s3cmci.h
index 30c2c0dd1bc8..62cae53b4271 100644
--- a/drivers/mmc/host/s3cmci.h
+++ b/drivers/mmc/host/s3cmci.h
@@ -70,8 +70,6 @@ struct s3cmci_host {
 
 #ifdef CONFIG_DEBUG_FS
 	struct dentry		*debug_root;
-	struct dentry		*debug_state;
-	struct dentry		*debug_regs;
 #endif
 
 #ifdef CONFIG_ARM_S3C24XX_CPUFREQ
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
