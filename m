Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F91543893
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 17:07:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lbUZ8WgZVnNP70NQQqmXRceNze4nqwkh5XVrQf6JlaA=; b=MVgd6CLAr5Ytx3
	eKywzVGTkt0/6YdOu5pf+U4CFqOd9+gC9Mf5wGcm61y4o9kZcpd0oPH2scrDf96LlYWSn2cSsgrDT
	vgeV0p1USbXAncNhjdOdY9S0G8VXkCEah1lEwYwN/wTBh0envzg0VO0E2w5kUnsYieBabimAZYhNs
	vqjMPy8wgNbzch4volZfBZKyIYf3tQ3AXSceAXWOkxbKCyYigubAOEaCrQdYNAhBCVvIZG6X+v6YA
	LslvtH49Np6JCWOApnGmtttEnO0rGlJKAs+XyDHdD7FmqKsOXivDgMkVxOzdt9BJCVQQbj+SLwEYq
	euJLKRsjqGFNLPuYqzKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbRJn-0007Mi-V0; Thu, 13 Jun 2019 15:07:11 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbRGN-00036B-00
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 15:03:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
 In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XytI0YLr/dQ8VTX+rCcoTxXlowwMTA/pwMydxgoNl9w=; b=Jkb3ht7T53Uk4oOkconmvJYZgt
 3vtqYoMX2QODN9S1Y3IQsob6/Be+mmwCA+KDUG4tAXCq7ZAmlKH4lKFNHEFdEbcmcEirdkh5uxoz+
 41tQPGM+hSU/dj68coFrLYXX3MYHkV3JexqekuqU9+i4H+NIn4XvXnDma2y7r7Z09/iQwwkXgoxJq
 Oq9WreFNxmipgVAEc9vEB7tIHC4zC8iQPWoKanZCoxWSI9xM39uC+9lvMYIuCBZ5tEoVhMa0qLPuV
 dg/whg30pWZVLI7Wp1cp/HFiSYvgHFaE2+Nmfj508DFlFPu7kA5lcJFEntV1soFkwWVY5pEQF0YaE
 Itjp7npw==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2002:4e20:1eda:1:222:68ff:fe15:37dd]:44864 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1hbRFo-0003l0-Py; Thu, 13 Jun 2019 16:03:05 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <rmk@armlinux.org.uk>)
 id 1hbRFj-00008h-AX; Thu, 13 Jun 2019 16:02:59 +0100
In-Reply-To: <20190613150114.xqkyb7j7w4ve4yvr@shell.armlinux.org.uk>
References: <20190613150114.xqkyb7j7w4ve4yvr@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 15/18] drm/armada: redo CRTC debugfs files
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1hbRFj-00008h-AX@rmk-PC.armlinux.org.uk>
Date: Thu, 13 Jun 2019 16:02:59 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_080339_414709_003B2F7D 
X-CRM114-Status: GOOD (  15.19  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Move the CRTC debugfs files into the CRTC specific directory.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 drivers/gpu/drm/armada/armada_crtc.c    |  7 +++
 drivers/gpu/drm/armada/armada_debugfs.c | 98 +++++++++++++--------------------
 drivers/gpu/drm/armada/armada_drm.h     |  1 +
 3 files changed, 46 insertions(+), 60 deletions(-)

diff --git a/drivers/gpu/drm/armada/armada_crtc.c b/drivers/gpu/drm/armada/armada_crtc.c
index ecce7efb271d..bea78f39785a 100644
--- a/drivers/gpu/drm/armada/armada_crtc.c
+++ b/drivers/gpu/drm/armada/armada_crtc.c
@@ -774,6 +774,12 @@ static void armada_drm_crtc_destroy(struct drm_crtc *crtc)
 	kfree(dcrtc);
 }
 
+static int armada_drm_crtc_late_register(struct drm_crtc *crtc)
+{
+	armada_drm_crtc_debugfs_init(drm_to_armada_crtc(crtc));
+	return 0;
+}
+
 /* These are called under the vbl_lock. */
 static int armada_drm_crtc_enable_vblank(struct drm_crtc *crtc)
 {
@@ -806,6 +812,7 @@ static const struct drm_crtc_funcs armada_crtc_funcs = {
 	.page_flip	= drm_atomic_helper_page_flip,
 	.atomic_duplicate_state = drm_atomic_helper_crtc_duplicate_state,
 	.atomic_destroy_state = drm_atomic_helper_crtc_destroy_state,
+	.late_register	= armada_drm_crtc_late_register,
 	.enable_vblank	= armada_drm_crtc_enable_vblank,
 	.disable_vblank	= armada_drm_crtc_disable_vblank,
 };
diff --git a/drivers/gpu/drm/armada/armada_debugfs.c b/drivers/gpu/drm/armada/armada_debugfs.c
index 6758c3a83de2..4dcce002ea2a 100644
--- a/drivers/gpu/drm/armada/armada_debugfs.c
+++ b/drivers/gpu/drm/armada/armada_debugfs.c
@@ -28,50 +28,33 @@ static int armada_debugfs_gem_linear_show(struct seq_file *m, void *data)
 	return 0;
 }
 
-static int armada_debugfs_reg_show(struct seq_file *m, void *data)
+static int armada_debugfs_crtc_reg_show(struct seq_file *m, void *data)
 {
-	struct drm_device *dev = m->private;
-	struct armada_private *priv = dev->dev_private;
-	int n, i;
-
-	if (priv) {
-		for (n = 0; n < ARRAY_SIZE(priv->dcrtc); n++) {
-			struct armada_crtc *dcrtc = priv->dcrtc[n];
-			if (!dcrtc)
-				continue;
-
-			for (i = 0x84; i <= 0x1c4; i += 4) {
-				uint32_t v = readl_relaxed(dcrtc->base + i);
-				seq_printf(m, "%u: 0x%04x: 0x%08x\n", n, i, v);
-			}
-		}
+	struct armada_crtc *dcrtc = m->private;
+	int i;
+
+	for (i = 0x84; i <= 0x1c4; i += 4) {
+		u32 v = readl_relaxed(dcrtc->base + i);
+		seq_printf(m, "0x%04x: 0x%08x\n", i, v);
 	}
 
 	return 0;
 }
 
-static int armada_debugfs_reg_r_open(struct inode *inode, struct file *file)
+static int armada_debugfs_crtc_reg_open(struct inode *inode, struct file *file)
 {
-	return single_open(file, armada_debugfs_reg_show, inode->i_private);
+	return single_open(file, armada_debugfs_crtc_reg_show,
+			   inode->i_private);
 }
 
-static const struct file_operations fops_reg_r = {
-	.owner = THIS_MODULE,
-	.open = armada_debugfs_reg_r_open,
-	.read = seq_read,
-	.llseek = seq_lseek,
-	.release = single_release,
-};
-
-static int armada_debugfs_write(struct file *file, const char __user *ptr,
-	size_t len, loff_t *off)
+static int armada_debugfs_crtc_reg_write(struct file *file,
+	const char __user *ptr, size_t len, loff_t *off)
 {
-	struct drm_device *dev = file->private_data;
-	struct armada_private *priv = dev->dev_private;
-	struct armada_crtc *dcrtc = priv->dcrtc[0];
-	char buf[32], *p;
-	uint32_t reg, val;
+	struct armada_crtc *dcrtc;
+	unsigned long reg, mask, val;
+	char buf[32];
 	int ret;
+	u32 v;
 
 	if (*off != 0)
 		return 0;
@@ -84,24 +67,35 @@ static int armada_debugfs_write(struct file *file, const char __user *ptr,
 		return ret;
 	buf[len] = '\0';
 
-	reg = simple_strtoul(buf, &p, 16);
-	if (!isspace(*p))
+	if (sscanf(buf, "%lx %lx %lx", &reg, &mask, &val) != 3)
 		return -EINVAL;
-	val = simple_strtoul(p + 1, NULL, 16);
+	if (reg < 0x84 || reg > 0x1c4 || reg & 3)
+		return -ERANGE;
 
-	if (reg >= 0x84 && reg <= 0x1c4)
-		writel(val, dcrtc->base + reg);
+	dcrtc = ((struct seq_file *)file->private_data)->private;
+	v = readl(dcrtc->base + reg);
+	v &= ~mask;
+	v |= val & mask;
+	writel(v, dcrtc->base + reg);
 
 	return len;
 }
 
-static const struct file_operations fops_reg_w = {
+static const struct file_operations armada_debugfs_crtc_reg_fops = {
 	.owner = THIS_MODULE,
-	.open = simple_open,
-	.write = armada_debugfs_write,
-	.llseek = noop_llseek,
+	.open = armada_debugfs_crtc_reg_open,
+	.read = seq_read,
+	.write = armada_debugfs_crtc_reg_write,
+	.llseek = seq_lseek,
+	.release = single_release,
 };
 
+void armada_drm_crtc_debugfs_init(struct armada_crtc *dcrtc)
+{
+	debugfs_create_file("armada-regs", 0600, dcrtc->crtc.debugfs_entry,
+			    dcrtc, &armada_debugfs_crtc_reg_fops);
+}
+
 static struct drm_info_list armada_debugfs_list[] = {
 	{ "gem_linear", armada_debugfs_gem_linear_show, 0 },
 };
@@ -109,24 +103,8 @@ static struct drm_info_list armada_debugfs_list[] = {
 
 int armada_drm_debugfs_init(struct drm_minor *minor)
 {
-	struct dentry *de;
-	int ret;
-
-	ret = drm_debugfs_create_files(armada_debugfs_list,
-				       ARMADA_DEBUGFS_ENTRIES,
-				       minor->debugfs_root, minor);
-	if (ret)
-		return ret;
-
-	de = debugfs_create_file("reg", S_IFREG | S_IRUSR,
-				 minor->debugfs_root, minor->dev, &fops_reg_r);
-	if (!de)
-		return -ENOMEM;
-
-	de = debugfs_create_file("reg_wr", S_IFREG | S_IWUSR,
-				 minor->debugfs_root, minor->dev, &fops_reg_w);
-	if (!de)
-		return -ENOMEM;
+	drm_debugfs_create_files(armada_debugfs_list, ARMADA_DEBUGFS_ENTRIES,
+				 minor->debugfs_root, minor);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/armada/armada_drm.h b/drivers/gpu/drm/armada/armada_drm.h
index f09083ff15d3..b6307235f320 100644
--- a/drivers/gpu/drm/armada/armada_drm.h
+++ b/drivers/gpu/drm/armada/armada_drm.h
@@ -78,6 +78,7 @@ void armada_fbdev_fini(struct drm_device *);
 
 int armada_overlay_plane_create(struct drm_device *, unsigned long);
 
+void armada_drm_crtc_debugfs_init(struct armada_crtc *dcrtc);
 int armada_drm_debugfs_init(struct drm_minor *);
 
 #endif
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
