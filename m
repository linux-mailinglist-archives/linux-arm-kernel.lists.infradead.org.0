Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7DF168720
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 19:58:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6vMFuA1ksDv7/ZIOEe8bLwnPOEorWCKzNc4Fg2KzHWk=; b=K8Cms0qkosdKnI
	qH57U8QIIAlvPl0lxKKIdPYrfDl3U6A42jBcf8wHBvg7XYPaq8xmSLIEoLc3jbye/X7COOPwd4C2a
	T2SeHm7DBzDJ5/oXy5fJOrnIt3NuvQi8iAempmsgU3yw+ugUOs9iWwxlmk3HrtgmvWh/+AlSweQ/1
	GzdPuAuVoAChBdSk/5q3z1XS4Wqd/TbHdt7mC4uQZeZhPpf/Yx+yOIjVdcQMT1xHvWk21fBunWEQm
	mqOdKOXfELCYkPJsYg2/IYPN9CLMGWwrEIeGCDFfBGR/cbAB6QWvzBfCIsnDYv1ZS1Om8Npd6lBMW
	ooSCskAbVxGT9F+eVKqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5DVe-0006dJ-Pi; Fri, 21 Feb 2020 18:58:46 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5DVX-0006ci-06
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 18:58:40 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id E003F807E;
 Fri, 21 Feb 2020 18:59:22 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH] ARM: OMAP2+: Improve handling of ti-sysc related sysc_fields
Date: Fri, 21 Feb 2020 10:58:33 -0800
Message-Id: <20200221185833.40419-1-tony@atomide.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_105839_078862_84A6CC8F 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

We can currently get a cryptic warning sysc_fields (ptrval) != (ptrval)
if the legacy platform data has no sysc_fields defined while the newer
dts data has them. This warning appears only when booting still with
legacy "ti,hwmods" custom property set. This can happen at least with
DSS related modules where we may not have sysc_fields defined in the
in the legacy data.

Let's not error out on missing legacy data sysc_fields, and show a more
descriptive warning for other cases.

Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/mach-omap2/omap_hwmod.c | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-omap2/omap_hwmod.c b/arch/arm/mach-omap2/omap_hwmod.c
--- a/arch/arm/mach-omap2/omap_hwmod.c
+++ b/arch/arm/mach-omap2/omap_hwmod.c
@@ -3148,15 +3148,14 @@ static int omap_hwmod_check_sysc(struct device *dev,
 /**
  * omap_hwmod_init_regbits - init sysconfig specific register bits
  * @dev: struct device
+ * @oh: module
  * @data: module data
  * @sysc_fields: new sysc configuration
  */
-static int omap_hwmod_init_regbits(struct device *dev,
+static int omap_hwmod_init_regbits(struct device *dev, struct omap_hwmod *oh,
 				   const struct ti_sysc_module_data *data,
 				   struct sysc_regbits **sysc_fields)
 {
-	*sysc_fields = NULL;
-
 	switch (data->cap->type) {
 	case TI_SYSC_OMAP2:
 	case TI_SYSC_OMAP2_TIMER:
@@ -3191,6 +3190,12 @@ static int omap_hwmod_init_regbits(struct device *dev,
 		*sysc_fields = &omap_hwmod_sysc_type_usb_host_fs;
 		break;
 	default:
+		*sysc_fields = NULL;
+		if (!oh->class->sysc->sysc_fields)
+			return 0;
+
+		dev_err(dev, "sysc_fields not found\n");
+
 		return -EINVAL;
 	}
 
@@ -3356,9 +3361,9 @@ static int omap_hwmod_check_module(struct device *dev,
 	if (!oh->class->sysc)
 		return -ENODEV;
 
-	if (sysc_fields != oh->class->sysc->sysc_fields)
-		dev_warn(dev, "sysc_fields %p != %p\n", sysc_fields,
-			 oh->class->sysc->sysc_fields);
+	if (oh->class->sysc->sysc_fields &&
+	    sysc_fields != oh->class->sysc->sysc_fields)
+		dev_warn(dev, "sysc_fields mismatch\n");
 
 	if (rev_offs != oh->class->sysc->rev_offs)
 		dev_warn(dev, "rev_offs %08x != %08x\n", rev_offs,
@@ -3574,7 +3579,7 @@ int omap_hwmod_init_module(struct device *dev,
 
 	cookie->data = oh;
 
-	error = omap_hwmod_init_regbits(dev, data, &sysc_fields);
+	error = omap_hwmod_init_regbits(dev, oh, data, &sysc_fields);
 	if (error)
 		return error;
 
-- 
2.25.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
