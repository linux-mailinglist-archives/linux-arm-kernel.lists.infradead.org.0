Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E32A6123A
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jul 2019 18:48:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C8/nAdC54hOMV002vyJVuh2iWjUvfynFfEGQXpOlq/Y=; b=uSCLTL2PlZwZoZ
	+sG3PP9mnIX2/wP6sdpI+CQluMOjt6boArmPh8GAhHq50Q7HgyUf88jV6/JMC3CjCCpeoxFWXVJld
	y9YUuiSVnwUPn8N/miMHa5V+j2CCfI2n1fpWKxfO5B8Npg2kFGGa29SAebS757qCeoRG7PJWYpKnQ
	UiCk9PMasQdgZDEm8ehEmtlLmi4YcNaAqgs8c56IhrLWY1SDj1ZAB/szsZggq6w3q1h+G594UWeNm
	bu3xowd+jxYPIz9710XzanoULLnUuU/DENR4btyU+BRtjTZex9DSRmZ983GFkyNYEDFmv880L5NW9
	6MiXJJa8FIoPuA8UrX3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjnrO-0005JK-1L; Sat, 06 Jul 2019 16:48:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjnrB-0005Is-MP
 for linux-arm-kernel@lists.infradead.org; Sat, 06 Jul 2019 16:48:15 +0000
Received: from localhost (unknown [62.119.166.9])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C1C4520836;
 Sat,  6 Jul 2019 16:48:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562431691;
 bh=cs30vXbt2kXkxwO6GdccBr0iTV2FUZurmVc80D7Ch+s=;
 h=From:To:Cc:Subject:Date:From;
 b=X5YoYllIwYejBS3CsNTUly5LvWKKNeTm56SgENCViXWljD6wX1jPVAK4sBaPmJ/oW
 fFCOvGunz4tyWIcdW0rXPKn7/pETiK34sOh14MK/UGCdSPNPQfTSjubxNh3t0Jp49I
 mQRsNP1DdsrC6BAz+fwL3Wf4Fp0fgOeZQvFEH4Kc=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: [PATCH 1/3] mfd: ab3100: no need to check return value of
 debugfs_create functions
Date: Sat,  6 Jul 2019 18:47:20 +0200
Message-Id: <20190706164722.18766-1-gregkh@linuxfoundation.org>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190706_094813_765695_D803DD88 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
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
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When calling debugfs functions, there is no need to ever check the
return value.  The function can work or not, but the code logic should
never do something different based on this.

Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Lee Jones <lee.jones@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/mfd/ab3100-core.c | 45 ++++++---------------------------------
 drivers/mfd/ab3100-otp.c  | 21 ++++++------------
 2 files changed, 13 insertions(+), 53 deletions(-)

diff --git a/drivers/mfd/ab3100-core.c b/drivers/mfd/ab3100-core.c
index e350ab64238e..9f3dbc31d3e9 100644
--- a/drivers/mfd/ab3100-core.c
+++ b/drivers/mfd/ab3100-core.c
@@ -575,58 +575,27 @@ static const struct file_operations ab3100_get_set_reg_fops = {
 	.llseek = noop_llseek,
 };
 
-static struct dentry *ab3100_dir;
-static struct dentry *ab3100_reg_file;
 static struct ab3100_get_set_reg_priv ab3100_get_priv;
-static struct dentry *ab3100_get_reg_file;
 static struct ab3100_get_set_reg_priv ab3100_set_priv;
-static struct dentry *ab3100_set_reg_file;
 
 static void ab3100_setup_debugfs(struct ab3100 *ab3100)
 {
-	int err;
+	struct dentry *ab3100_dir;
 
 	ab3100_dir = debugfs_create_dir("ab3100", NULL);
-	if (!ab3100_dir)
-		goto exit_no_debugfs;
 
-	ab3100_reg_file = debugfs_create_file("registers",
-				S_IRUGO, ab3100_dir, ab3100,
-				&ab3100_registers_fops);
-	if (!ab3100_reg_file) {
-		err = -ENOMEM;
-		goto exit_destroy_dir;
-	}
+	debugfs_create_file("registers", S_IRUGO, ab3100_dir, ab3100,
+			    &ab3100_registers_fops);
 
 	ab3100_get_priv.ab3100 = ab3100;
 	ab3100_get_priv.mode = false;
-	ab3100_get_reg_file = debugfs_create_file("get_reg",
-				S_IWUSR, ab3100_dir, &ab3100_get_priv,
-				&ab3100_get_set_reg_fops);
-	if (!ab3100_get_reg_file) {
-		err = -ENOMEM;
-		goto exit_destroy_reg;
-	}
+	debugfs_create_file("get_reg", S_IWUSR, ab3100_dir, &ab3100_get_priv,
+			    &ab3100_get_set_reg_fops);
 
 	ab3100_set_priv.ab3100 = ab3100;
 	ab3100_set_priv.mode = true;
-	ab3100_set_reg_file = debugfs_create_file("set_reg",
-				S_IWUSR, ab3100_dir, &ab3100_set_priv,
-				&ab3100_get_set_reg_fops);
-	if (!ab3100_set_reg_file) {
-		err = -ENOMEM;
-		goto exit_destroy_get_reg;
-	}
-	return;
-
- exit_destroy_get_reg:
-	debugfs_remove(ab3100_get_reg_file);
- exit_destroy_reg:
-	debugfs_remove(ab3100_reg_file);
- exit_destroy_dir:
-	debugfs_remove(ab3100_dir);
- exit_no_debugfs:
-	return;
+	debugfs_create_file("set_reg", S_IWUSR, ab3100_dir, &ab3100_set_priv,
+			    &ab3100_get_set_reg_fops);
 }
 #else
 static inline void ab3100_setup_debugfs(struct ab3100 *ab3100)
diff --git a/drivers/mfd/ab3100-otp.c b/drivers/mfd/ab3100-otp.c
index b3f8d359f409..c4751fb9bc22 100644
--- a/drivers/mfd/ab3100-otp.c
+++ b/drivers/mfd/ab3100-otp.c
@@ -122,17 +122,11 @@ static const struct file_operations ab3100_otp_operations = {
 	.release	= single_release,
 };
 
-static int __init ab3100_otp_init_debugfs(struct device *dev,
-					  struct ab3100_otp *otp)
+static void __init ab3100_otp_init_debugfs(struct device *dev,
+					   struct ab3100_otp *otp)
 {
 	otp->debugfs = debugfs_create_file("ab3100_otp", S_IFREG | S_IRUGO,
-					   NULL, otp,
-					   &ab3100_otp_operations);
-	if (!otp->debugfs) {
-		dev_err(dev, "AB3100 debugfs OTP file registration failed!\n");
-		return -ENOENT;
-	}
-	return 0;
+					   NULL, otp, &ab3100_otp_operations);
 }
 
 static void __exit ab3100_otp_exit_debugfs(struct ab3100_otp *otp)
@@ -141,10 +135,9 @@ static void __exit ab3100_otp_exit_debugfs(struct ab3100_otp *otp)
 }
 #else
 /* Compile this out if debugfs not selected */
-static inline int __init ab3100_otp_init_debugfs(struct device *dev,
-						 struct ab3100_otp *otp)
+static inline void __init ab3100_otp_init_debugfs(struct device *dev,
+						  struct ab3100_otp *otp)
 {
-	return 0;
 }
 
 static inline void __exit ab3100_otp_exit_debugfs(struct ab3100_otp *otp)
@@ -211,9 +204,7 @@ static int __init ab3100_otp_probe(struct platform_device *pdev)
 	}
 
 	/* debugfs entries */
-	err = ab3100_otp_init_debugfs(&pdev->dev, otp);
-	if (err)
-		goto err;
+	ab3100_otp_init_debugfs(&pdev->dev, otp);
 
 	return 0;
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
