Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 508591F47BD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 22:07:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=j8rfAfef8KKJpDmLVz8RM9c5Y8+Ycx/ffN2d4/Y5n1g=; b=byJC5+1d4qSS/N
	DKWG6wgXjBO4e2O8BZtg8hULpzTFTgQjQvHYG7c4OOMLveS8y4XUQZfYXNtYE8cYRwRSqgLyba0GA
	n54bD/Ldsm6Ek9l2h+0SVfhHc69IaYVHCwNKMJIScQTUown236tVM45lKY5c3n94xIezsR0XjIc5K
	i38EotuqhyyKbBwimmQZS6FeYSmGfezY0lCB65/L358LRg3W2zZ00bLq5Igg2zrJ04tjY57Z2cZ6Z
	UKSdOwvPYDXefqM+zWKUUp21d265lmhHAmdzZf7z2VjIrQqAMqtnuR504V5keIVqLGYHwxBIBtJNE
	6/oU0/IFUsGV38brTL5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jikWU-0001N5-Bo; Tue, 09 Jun 2020 20:07:02 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jikWN-0001MI-Jx
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 20:06:56 +0000
Received: by mail-lf1-x144.google.com with SMTP id c21so82807lfb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 13:06:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eg1+Og5Uei5NIChsUtGSk/n0WjIN9TSO/8QjqJynoKo=;
 b=ykr0a5MhCD6A9I1XX5r3v38XunSuPjX9D4tAqP46ALinMTiQDSU+5JyDRFqCzPbdg6
 aW9xGyBxpsabwhHrLsldaWVGhfM7T+eby0twolnTLdF4dokJAdtnsUSeqLcO06gpuOQg
 Hmu1ZVfTLTwVWLggipPs5R6QPPIZhcLBSCVZHv2rhLgzyS1piM2AwpHE1ySb1sbltp+4
 +r1BfF3+UgV8XNHAf37SLGGdFRVdK+jw3f5zjIJ/6UcnUtPG64/PbbutIivRwxZzq7Ju
 9BGouzZwe8iSFfIQ3q4caGB46e2Qks8dcYTnwo97mGRuVlXNxTkTc7XVPLyrQL+WbwrV
 lHBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eg1+Og5Uei5NIChsUtGSk/n0WjIN9TSO/8QjqJynoKo=;
 b=hHSU9i4Rt1XSb4u8IPTy74W+u1kUjPZmNrE+C6eBepaNz6r4JpoGvlIkLCnEOUSN2D
 RmBhrRUbwTb0aTvmT+fAeOl60iOTS9CCIyogu7AcxvRFHXHPNFkbWVLaKH5n5PLZvLHw
 qxPCUIjUXztt6Lu7JSmrtx8KHVSxzi96kViYSg031ZOVrIDrrQECicYtMF0iP2Etg7zF
 VYL9TFTv1/OUw4oLJzYQM5MNLduEPGAPGoWT2VKd8ONB1s+hicjKQzKq98dv2oYvoDq0
 h5DW0cqCeRO9M/oicgn22574Lz/lbgYlVD0gGUflnz3re3uO50OKRHSz2gNjUodCRDGT
 4rEQ==
X-Gm-Message-State: AOAM5338KLMmPhSw1lM4gVyUn1P9WyPnGj/nCDB3rEFzqmmyfVTexvK4
 m70FCbVC2hVlaKdqxW7HRrrz6w==
X-Google-Smtp-Source: ABdhPJwOWWPmtqA1hPgLKcjlp9T413CcsSh90xifkPhy4RKHFr0XBF2HPh5YT8HOqmtXUlXD0zEZIA==
X-Received: by 2002:a05:6512:691:: with SMTP id
 t17mr16807617lfe.85.1591733213128; 
 Tue, 09 Jun 2020 13:06:53 -0700 (PDT)
Received: from localhost.localdomain
 (c-92d7225c.014-348-6c756e10.bbcust.telenor.se. [92.34.215.146])
 by smtp.gmail.com with ESMTPSA id 66sm6038579lfk.54.2020.06.09.13.06.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 13:06:52 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Sean Paul <sean@poorly.run>,
 Eric Anholt <eric@anholt.net>, Russell King <linux@armlinux.org.uk>
Subject: [PATCH 1/4] drm: pl111: Credit where credit is due
Date: Tue,  9 Jun 2020 22:04:43 +0200
Message-Id: <20200609200446.153209-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_130655_659091_E270B51A 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This moves over some of the credit for the development of this
driver from the old fbdev driver that I used as reference when
getting this in place.

Cc: Russell King <linux@armlinux.org.uk>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/gpu/drm/pl111/pl111_versatile.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/pl111/pl111_versatile.c b/drivers/gpu/drm/pl111/pl111_versatile.c
index 64f01a4e6767..1127082e9a60 100644
--- a/drivers/gpu/drm/pl111/pl111_versatile.c
+++ b/drivers/gpu/drm/pl111/pl111_versatile.c
@@ -1,5 +1,14 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
+/*
+ * Versatile family (ARM reference designs) handling for the PL11x.
+ * This is based on code and know-how in the previous frame buffer
+ * driver in drivers/video/fbdev/amba-clcd.c:
+ * Copyright (C) 2001 ARM Limited, by David A Rusling
+ * Updated to 2.5 by Deep Blue Solutions Ltd.
+ * Major contributions and discoveries by Russell King.
+ */
+
 #include <linux/amba/clcd-regs.h>
 #include <linux/bitops.h>
 #include <linux/device.h>
-- 
2.25.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
