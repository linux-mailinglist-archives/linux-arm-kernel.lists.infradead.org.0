Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0499A0134
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 14:01:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/JHoNb9b+KXk1kCvgyjbNRZotGSas+ONAbhpXnCBtmQ=; b=pbfwufl4Sa4ogj5/qr7qfHNb+W
	PZPOm8d8k2rotmeOGMinweyf8DHZQfs0E8NMnW4FgJy0I6A+avOsWJxI8MkUV2o+tr2458U2Ai1bL
	dCPlKF+BIE26viMMcJvRbMXBzvqP7CX7OBC7SkJBO575/vFbhFLY6cyDyhNWwPtVouOkgSPZ2PNkb
	knLTx6ctHbgKKRQk6YjyE8NqGkGCQBBrNNAH68cuPVtXY8NygQuXrbOiPgvqVg5Xj77PggPNFC96O
	dUeMUx3O6F2NgqvhxJq0Ji+pmY15u+ygMY56PhOIfQ6ip90nyejtn3b5HLGpq+RyZUEpdXk2qRTd4
	GmTG1uBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2wdH-0007Xp-4Q; Wed, 28 Aug 2019 12:00:59 +0000
Received: from xavier.telenet-ops.be ([2a02:1800:120:4::f00:14])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2wbG-0004m9-25
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 11:58:57 +0000
Received: from ramsan ([84.194.98.4]) by xavier.telenet-ops.be with bizsmtp
 id ubyi2000e05gfCL01byipu; Wed, 28 Aug 2019 13:58:45 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1i2wb4-0008As-Ef; Wed, 28 Aug 2019 13:58:42 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1i2wFQ-0001kV-7N; Wed, 28 Aug 2019 13:36:20 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>
Subject: [PATCH v2 1/7] soc: renesas: rcar-sysc: Prepare for fixing power
 request conflicts
Date: Wed, 28 Aug 2019 13:36:12 +0200
Message-Id: <20190828113618.6672-2-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190828113618.6672-1-geert+renesas@glider.be>
References: <20190828113618.6672-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_045854_785753_919E7B00 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:14 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-renesas-soc@vger.kernel.org, Simon Horman <horms@verge.net.au>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Recent R-Car Gen3 SoCs added an External Request Mask Register to the
System Controller (SYSC).  This register allows to mask external power
requests for CPU or 3DG domains, to prevent conflicts between powering
off CPU cores or the 3D Graphics Engine, and changing the state of
another power domain through SYSC, which could lead to CPG state machine
lock-ups.

Add support for making use of this register.  Take into account that the
register is optional, and that its location and contents are
SoC-specific.

Note that the issue fixed by this cannot happen in the upstream kernel,
as upstream has no support for graphics acceleration yet.  SoCs lacking
the External Request Mask Register may need a different mitigation in
the future.

Inspired by a patch in the BSP by Dien Pham <dien.pham.ry@renesas.com>.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
v2:
  - Improve patch description.
---
 drivers/soc/renesas/rcar-sysc.c | 16 ++++++++++++++++
 drivers/soc/renesas/rcar-sysc.h |  3 +++
 2 files changed, 19 insertions(+)

diff --git a/drivers/soc/renesas/rcar-sysc.c b/drivers/soc/renesas/rcar-sysc.c
index 59b5e6b102722a6d..176de145f4230fbd 100644
--- a/drivers/soc/renesas/rcar-sysc.c
+++ b/drivers/soc/renesas/rcar-sysc.c
@@ -63,6 +63,7 @@ struct rcar_sysc_ch {
 
 static void __iomem *rcar_sysc_base;
 static DEFINE_SPINLOCK(rcar_sysc_lock); /* SMP CPUs + I/O devices */
+static u32 rcar_sysc_extmask_offs, rcar_sysc_extmask_val;
 
 static int rcar_sysc_pwr_on_off(const struct rcar_sysc_ch *sysc_ch, bool on)
 {
@@ -105,6 +106,14 @@ static int rcar_sysc_power(const struct rcar_sysc_ch *sysc_ch, bool on)
 
 	spin_lock_irqsave(&rcar_sysc_lock, flags);
 
+	/*
+	 * Mask external power requests for CPU or 3DG domains
+	 */
+	if (rcar_sysc_extmask_val) {
+		iowrite32(rcar_sysc_extmask_val,
+			  rcar_sysc_base + rcar_sysc_extmask_offs);
+	}
+
 	/*
 	 * The interrupt source needs to be enabled, but masked, to prevent the
 	 * CPU from receiving it.
@@ -148,6 +157,9 @@ static int rcar_sysc_power(const struct rcar_sysc_ch *sysc_ch, bool on)
 	iowrite32(isr_mask, rcar_sysc_base + SYSCISCR);
 
  out:
+	if (rcar_sysc_extmask_val)
+		iowrite32(0, rcar_sysc_base + rcar_sysc_extmask_offs);
+
 	spin_unlock_irqrestore(&rcar_sysc_lock, flags);
 
 	pr_debug("sysc power %s domain %d: %08x -> %d\n", on ? "on" : "off",
@@ -360,6 +372,10 @@ static int __init rcar_sysc_pd_init(void)
 
 	rcar_sysc_base = base;
 
+	/* Optional External Request Mask Register */
+	rcar_sysc_extmask_offs = info->extmask_offs;
+	rcar_sysc_extmask_val = info->extmask_val;
+
 	domains = kzalloc(sizeof(*domains), GFP_KERNEL);
 	if (!domains) {
 		error = -ENOMEM;
diff --git a/drivers/soc/renesas/rcar-sysc.h b/drivers/soc/renesas/rcar-sysc.h
index 485520a5b295c13e..21ee3ff8620bbafe 100644
--- a/drivers/soc/renesas/rcar-sysc.h
+++ b/drivers/soc/renesas/rcar-sysc.h
@@ -44,6 +44,9 @@ struct rcar_sysc_info {
 	int (*init)(void);	/* Optional */
 	const struct rcar_sysc_area *areas;
 	unsigned int num_areas;
+	/* Optional External Request Mask Register */
+	u32 extmask_offs;	/* SYSCEXTMASK register offset */
+	u32 extmask_val;	/* SYSCEXTMASK register mask value */
 };
 
 extern const struct rcar_sysc_info r8a7743_sysc_info;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
