Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9465AF4C9A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 14:06:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=diBAa16x9XPdDUp0A1KYxeZFBMXsO4TuOMF+ipKjFZw=; b=rxPj66ku27TWdf
	XR7Wyl5Cg42rAxB0FTUaLOCpzz8kP8s6nEkzMVWDLj/OA/qS4+K/1yWx4mCtT4oqDqXduaSPdhfxP
	j7CFI75JtYXnysDjsJ4p+4sKU46TyX3zvnjMduRpSgKczXBXFD2Ey0TWz73RENKEhCSIZuONxJYCv
	Ndi9R/8gFuuF+DtUUbe1Pg2VAhSQ3cV0eHyChGG9Xr69m3AUGTtgWdE9S8Gt76oLX4wRBiFwnMUYO
	MaFlojeZg7qtmRpJ60SSbDFDG/yqrP6bmSSddJm8tzk3yVRejzr1cGnE/pRw4Gzo55PLif35T20BJ
	XsTk1DZI9vg+WWk2IC3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT3xV-0000Ia-PG; Fri, 08 Nov 2019 13:05:49 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT3tY-0004Jo-TA
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 13:01:46 +0000
Received: by mail-lf1-x143.google.com with SMTP id f5so4429973lfp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 05:01:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=c6cX64DMSTf/KsycxtOgXNPxmcIGKLx/O+3SoX0LMUM=;
 b=aFa6mpYIjn6zAblZVHGQgXXQoRxCga8U3ftmm9BhSW3mk4UWih+KrACx3+tf0MJlpP
 SNfdCuV08yx20a+qynyU5vFYSa4M3OrSAteQlBeLbFzBvXmlTls7gwFWJ1TuyBz4t59s
 xlGRr9NkLpL2PcAqG+7nsK57V4bmDPlz26g24=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=c6cX64DMSTf/KsycxtOgXNPxmcIGKLx/O+3SoX0LMUM=;
 b=gKRtu+/GS1WwvQ56ODckmVlvg/r9M9o7HIzRoFK42cBAcQcTyGRB2onLF/GKu4FKne
 dwKLhYv0IxfnnmEfnAJM1XX3RUkHctISNOhPqpzpF6LqLkqp6f44hMXqEiOrFrnTeBhw
 knXDVH9xl4aTcfLzWVAt90Gh8iNlTjPyVknOXCWDBb0a+OqmKbSwhpVMZH6Qog5K/kmI
 IOWCC3L2va1ElJaroUumL1aB49FWB18aXk3lRFraz5tPdrWxq2HdU0c+jISeP5IAFFXB
 To/KR00lNWA8bSa7PIUQtiL3l7YWl+2wNKiz+u7m1RfDPfdzYaE2vC27vRd/S4B0tX2h
 Y23w==
X-Gm-Message-State: APjAAAUx3lGeMwq9viAG86mN6TcoEGHabyFleR1jHqHz9B/Ph6QugtZc
 mvpfkJzE/H6vCfojg6ixgM6oVw==
X-Google-Smtp-Source: APXvYqznOw6lo5cGgyHeltKKm9nZ7shPdmuCfT4xK4W+urGBD8V7imnlpwojsYejoGypQvcmn7GOCg==
X-Received: by 2002:ac2:55a3:: with SMTP id y3mr6602659lfg.108.1573218100653; 
 Fri, 08 Nov 2019 05:01:40 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id d28sm2454725lfn.33.2019.11.08.05.01.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 05:01:40 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v4 10/47] soc: fsl: qe: remove pointless sysfs registration in
 qe_ic.c
Date: Fri,  8 Nov 2019 14:00:46 +0100
Message-Id: <20191108130123.6839-11-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_050144_969683_03F73CCB 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Scott Wood <oss@buserror.net>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There's no point in registering with sysfs when that doesn't actually
allow any interaction with the device or driver (no uevents, no sysfs
files that provide information or allow configuration, no nothing).

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe_ic.c | 31 -------------------------------
 1 file changed, 31 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe_ic.c b/drivers/soc/fsl/qe/qe_ic.c
index 4b03060d8079..f170926ce4d1 100644
--- a/drivers/soc/fsl/qe/qe_ic.c
+++ b/drivers/soc/fsl/qe/qe_ic.c
@@ -474,34 +474,3 @@ int qe_ic_set_high_priority(unsigned int virq, unsigned int priority, int high)
 
 	return 0;
 }
-
-static struct bus_type qe_ic_subsys = {
-	.name = "qe_ic",
-	.dev_name = "qe_ic",
-};
-
-static struct device device_qe_ic = {
-	.id = 0,
-	.bus = &qe_ic_subsys,
-};
-
-static int __init init_qe_ic_sysfs(void)
-{
-	int rc;
-
-	printk(KERN_DEBUG "Registering qe_ic with sysfs...\n");
-
-	rc = subsys_system_register(&qe_ic_subsys, NULL);
-	if (rc) {
-		printk(KERN_ERR "Failed registering qe_ic sys class\n");
-		return -ENODEV;
-	}
-	rc = device_register(&device_qe_ic);
-	if (rc) {
-		printk(KERN_ERR "Failed registering qe_ic sys device\n");
-		return -ENODEV;
-	}
-	return 0;
-}
-
-subsys_initcall(init_qe_ic_sysfs);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
