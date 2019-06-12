Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 766FE42597
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 14:26:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hF6atj8pwWdNZ78ozxgQFOL7dvHWHA4t/5YVskmVn4k=; b=l0/KaYBmI0Zs32
	/GmCGTSXqvI62kyjsCZkgqty8oT6dbrBvX+1Pis2ex5eSpeSCXGNSUbevJ7H8Zlul5/tigW+zlvvl
	d7JWESPWKwRJrNVtlu16nhBVxA24Yys1tDoo9zegmcUuogJhf6tkxsBcqo4SJEkGjnaqDa6So9rR8
	qBkH+7ogwicAAQMwLL5i5yZtJxWPVV9EkpZaUF+7iIv34jMNaoc37oThq3fLQ0ACkGJ2bwDI5rYLP
	xDBDu1fJx+iTUV4V3rsg4uqpGonrdnDt+YOhKy+ML8JtQh3/VHoitJAgVT/gSdNBYdxlqUEk7wUBk
	v4RbeKxsdBRp5Du3XxwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb2Kv-0007aW-GK; Wed, 12 Jun 2019 12:26:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb2KV-0007Q8-Px
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 12:26:17 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 11B8C208C4;
 Wed, 12 Jun 2019 12:26:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560342375;
 bh=IJFJ3UvGATTgDCH/PLIaXtkwkRHcWi82Y/Juds58mrE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cyj6z+t1W8UH9uf7L8D7BUuk2eFG9Ja5ol0ko59+6SCHwnjS640uK8qP25NUZK2F9
 aDU7vMn0BCCmQScLWEEK5J/BDLL+A7Ip2NNNZ+u8G+UuHOQMiX6vx2bEweBgy3ofBd
 ++jtrkscdLgeMd5UVPal2D8TRNLGBhBo8dLo4Z00=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: dan.j.williams@intel.com,
	vkoul@kernel.org
Subject: [PATCH 4/6] dma: pxa_dma: no need to check return value of
 debugfs_create functions
Date: Wed, 12 Jun 2019 14:25:55 +0200
Message-Id: <20190612122557.24158-4-gregkh@linuxfoundation.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190612122557.24158-1-gregkh@linuxfoundation.org>
References: <20190612122557.24158-1-gregkh@linuxfoundation.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_052615_874956_C648EF23 
X-CRM114-Status: GOOD (  15.30  )
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Daniel Mack <daniel@zonque.org>, dmaengine@vger.kernel.org,
 Robert Jarzmik <robert.jarzmik@free.fr>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When calling debugfs functions, there is no need to ever check the
return value.  The function can work or not, but the code logic should
never do something different based on this.

Also, because there is no need to save the file dentry, remove the
variable that was saving it as it was never even being used once set.

Cc: Daniel Mack <daniel@zonque.org>
Cc: Haojian Zhuang <haojian.zhuang@gmail.com>
Cc: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: Vinod Koul <vkoul@kernel.org>
Cc: Dan Williams <dan.j.williams@intel.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: dmaengine@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/dma/pxa_dma.c | 56 +++++++++----------------------------------
 1 file changed, 11 insertions(+), 45 deletions(-)

diff --git a/drivers/dma/pxa_dma.c b/drivers/dma/pxa_dma.c
index b429642f3e7a..0f698f49ee26 100644
--- a/drivers/dma/pxa_dma.c
+++ b/drivers/dma/pxa_dma.c
@@ -132,7 +132,6 @@ struct pxad_device {
 	spinlock_t			phy_lock;	/* Phy association */
 #ifdef CONFIG_DEBUG_FS
 	struct dentry			*dbgfs_root;
-	struct dentry			*dbgfs_state;
 	struct dentry			**dbgfs_chan;
 #endif
 };
@@ -326,31 +325,18 @@ static struct dentry *pxad_dbg_alloc_chan(struct pxad_device *pdev,
 					     int ch, struct dentry *chandir)
 {
 	char chan_name[11];
-	struct dentry *chan, *chan_state = NULL, *chan_descr = NULL;
-	struct dentry *chan_reqs = NULL;
+	struct dentry *chan;
 	void *dt;
 
 	scnprintf(chan_name, sizeof(chan_name), "%d", ch);
 	chan = debugfs_create_dir(chan_name, chandir);
 	dt = (void *)&pdev->phys[ch];
 
-	if (chan)
-		chan_state = debugfs_create_file("state", 0400, chan, dt,
-						 &chan_state_fops);
-	if (chan_state)
-		chan_descr = debugfs_create_file("descriptors", 0400, chan, dt,
-						 &descriptors_fops);
-	if (chan_descr)
-		chan_reqs = debugfs_create_file("requesters", 0400, chan, dt,
-						&requester_chan_fops);
-	if (!chan_reqs)
-		goto err_state;
+	debugfs_create_file("state", 0400, chan, dt, &chan_state_fops);
+	debugfs_create_file("descriptors", 0400, chan, dt, &descriptors_fops);
+	debugfs_create_file("requesters", 0400, chan, dt, &requester_chan_fops);
 
 	return chan;
-
-err_state:
-	debugfs_remove_recursive(chan);
-	return NULL;
 }
 
 static void pxad_init_debugfs(struct pxad_device *pdev)
@@ -358,40 +344,20 @@ static void pxad_init_debugfs(struct pxad_device *pdev)
 	int i;
 	struct dentry *chandir;
 
-	pdev->dbgfs_root = debugfs_create_dir(dev_name(pdev->slave.dev), NULL);
-	if (IS_ERR(pdev->dbgfs_root) || !pdev->dbgfs_root)
-		goto err_root;
-
-	pdev->dbgfs_state = debugfs_create_file("state", 0400, pdev->dbgfs_root,
-						pdev, &state_fops);
-	if (!pdev->dbgfs_state)
-		goto err_state;
-
 	pdev->dbgfs_chan =
-		kmalloc_array(pdev->nr_chans, sizeof(*pdev->dbgfs_state),
+		kmalloc_array(pdev->nr_chans, sizeof(struct dentry *),
 			      GFP_KERNEL);
 	if (!pdev->dbgfs_chan)
-		goto err_alloc;
+		return;
+
+	pdev->dbgfs_root = debugfs_create_dir(dev_name(pdev->slave.dev), NULL);
+
+	debugfs_create_file("state", 0400, pdev->dbgfs_root, pdev, &state_fops);
 
 	chandir = debugfs_create_dir("channels", pdev->dbgfs_root);
-	if (!chandir)
-		goto err_chandir;
 
-	for (i = 0; i < pdev->nr_chans; i++) {
+	for (i = 0; i < pdev->nr_chans; i++)
 		pdev->dbgfs_chan[i] = pxad_dbg_alloc_chan(pdev, i, chandir);
-		if (!pdev->dbgfs_chan[i])
-			goto err_chans;
-	}
-
-	return;
-err_chans:
-err_chandir:
-	kfree(pdev->dbgfs_chan);
-err_alloc:
-err_state:
-	debugfs_remove_recursive(pdev->dbgfs_root);
-err_root:
-	pr_err("pxad: debugfs is not available\n");
 }
 
 static void pxad_cleanup_debugfs(struct pxad_device *pdev)
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
