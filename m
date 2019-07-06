Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3455E6123E
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jul 2019 18:49:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X3ddx3GQEfyXaA4CW8VsboZObpYi1ZTmJrIMleTZkPM=; b=TR+RdNpL0TVfff
	pH19KtUXGyH3Fu6yXhTiYeRnhnV5l+be4g77WOZAVu9pACgvJF+9aJjKuOwsnfxB2hHMWIylbE5Ii
	9vObRMPKNMxoTXIaQjbwcHCzHo1MUnLa+Wx159iTpe5smkZtylB8LtJkxndon89BDQvxN2yY9FWR2
	K0ssbrkKDrb14yGDPVgPj6iMaGjyPr5hJEFmDRSZZ759Nc3URt0s/8ua27yL5GZySp6PDWiFHP0JP
	ZlIm51zKDbGZZmJr/fh8jDFIMahpJZ2dEhQJzaR2Hdjez/eAv/qvwOlDDXQ5knt6KtdN7M0apxlyt
	4DA5jD69a7qRQn3gZsiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjns3-0005mZ-56; Sat, 06 Jul 2019 16:49:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjnrR-0005V6-EA
 for linux-arm-kernel@lists.infradead.org; Sat, 06 Jul 2019 16:48:32 +0000
Received: from localhost (unknown [62.119.166.9])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 25EE120836;
 Sat,  6 Jul 2019 16:48:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562431709;
 bh=BZUv1pShBEQqlv2ihdlkRWLFlmzEqNY4ATRYHhmQCgw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=YjGAb5A7LfqHN0C34VG4F0RQjxkgPj2OULTwmXwxKTBEKNf6AG6QMFxNMeKFwLVbJ
 Yr9GmGX8yWPrw7/1K8f5GUhegX4zOeZoyv/A3xRWpdp0tFQpOUlQzVqVDO5rgQ+Kg+
 5TBu0W2GkMyxhWyxB2mPCWa6xUcj1ZKag33US9hA=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: [PATCH 3/3] mfd: aat2870: no need to check return value of
 debugfs_create functions
Date: Sat,  6 Jul 2019 18:47:22 +0200
Message-Id: <20190706164722.18766-3-gregkh@linuxfoundation.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190706164722.18766-1-gregkh@linuxfoundation.org>
References: <20190706164722.18766-1-gregkh@linuxfoundation.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190706_094829_992468_4D593E79 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When calling debugfs functions, there is no need to ever check the
return value.  The function can work or not, but the code logic should
never do something different based on this.

Cc: Lee Jones <lee.jones@linaro.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/mfd/aat2870-core.c  | 13 ++-----------
 include/linux/mfd/aat2870.h |  1 -
 2 files changed, 2 insertions(+), 12 deletions(-)

diff --git a/drivers/mfd/aat2870-core.c b/drivers/mfd/aat2870-core.c
index 9d3d90d386c2..51f4c10d2f36 100644
--- a/drivers/mfd/aat2870-core.c
+++ b/drivers/mfd/aat2870-core.c
@@ -334,18 +334,9 @@ static const struct file_operations aat2870_reg_fops = {
 static void aat2870_init_debugfs(struct aat2870_data *aat2870)
 {
 	aat2870->dentry_root = debugfs_create_dir("aat2870", NULL);
-	if (!aat2870->dentry_root) {
-		dev_warn(aat2870->dev,
-			 "Failed to create debugfs root directory\n");
-		return;
-	}
 
-	aat2870->dentry_reg = debugfs_create_file("regs", 0644,
-						  aat2870->dentry_root,
-						  aat2870, &aat2870_reg_fops);
-	if (!aat2870->dentry_reg)
-		dev_warn(aat2870->dev,
-			 "Failed to create debugfs register file\n");
+	debugfs_create_file("regs", 0644, aat2870->dentry_root, aat2870,
+			    &aat2870_reg_fops);
 }
 
 #else
diff --git a/include/linux/mfd/aat2870.h b/include/linux/mfd/aat2870.h
index f7316c29bdec..d9542246bd44 100644
--- a/include/linux/mfd/aat2870.h
+++ b/include/linux/mfd/aat2870.h
@@ -149,7 +149,6 @@ struct aat2870_data {
 
 	/* for debugfs */
 	struct dentry *dentry_root;
-	struct dentry *dentry_reg;
 };
 
 struct aat2870_subdev_info {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
