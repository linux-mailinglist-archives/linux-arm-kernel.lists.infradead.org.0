Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5CCF130337
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Jan 2020 16:24:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=o/Rovip4XG4+FjCBcMt3DtpUYjldCubesvI8s7jfhCA=; b=Y6gSYSriH+APpSVfyxVUR+AnWu
	LBPGfAEUGRoVU6x0LZSGX4xUy6PLc85BYKq0mhB0urxhOdT3qJvXO3Jdw6OYF062R0pccVYs8s4KY
	N4EBPPTa8+Rhv8jdfT8togVjhIrjaRNOGCeZ5sTkKZs3Mq4IIw+6LnblwiWKeTolajFLNhiyvcMiN
	Iqa0Pvbkb96f9KzDiVyI60w+nMfMLjSOIMY7eIiJtHde4xQFvCSvwOkh1PMBWZTtYTsJjDeAL24SD
	2yiyyY9B+zgWviIHipMwGX1VF+2m1/xZ+GApM2PiSerf37AJJgmW5U1QSEx9wdRCyeNfulzOJf4w7
	bpGAkWVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inlHt-00039b-SE; Sat, 04 Jan 2020 15:24:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inlG9-0001h5-Vv
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Jan 2020 15:22:41 +0000
Received: from localhost.localdomain (unknown [194.230.155.149])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0885E24653;
 Sat,  4 Jan 2020 15:22:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578151357;
 bh=KISZBPbueXgh6MYL4P8fo2t7dbtR9islwQqQs7IMFKM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VqBfAOI9cOd3uOBeusFc5GTGCQEzCj6mJRMGlx5lwSfn3WUaNYn+3MaUkNfQ7Ei6A
 kAyjxTNYMhxGcGxJYdSBJMqc/DADWGm9GsIM517n+uQFYnwjqP0WhosISmPFN+VPyc
 7aszUk6VTB4S0sFVu+KSUBuMAYUfA0JgRkOrz8ss=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 11/20] clocksource/drivers/exynos_mct: Rename Exynos to
 lowercase
Date: Sat,  4 Jan 2020 16:20:58 +0100
Message-Id: <20200104152107.11407-12-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200104152107.11407-1-krzk@kernel.org>
References: <20200104152107.11407-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_072238_397732_14405A49 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-samsung-soc@vger.kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix up inconsistent usage of upper and lowercase letters in "Exynos"
name.

"EXYNOS" is not an abbreviation but a regular trademarked name.
Therefore it should be written with lowercase letters starting with
capital letter.

The lowercase "Exynos" name is promoted by its manufacturer Samsung
Electronics Co., Ltd., in advertisement materials and on website.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 drivers/clocksource/exynos_mct.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clocksource/exynos_mct.c b/drivers/clocksource/exynos_mct.c
index 74cb299f5089..a267fe31ef13 100644
--- a/drivers/clocksource/exynos_mct.c
+++ b/drivers/clocksource/exynos_mct.c
@@ -4,7 +4,7 @@
  * Copyright (c) 2011 Samsung Electronics Co., Ltd.
  *		http://www.samsung.com
  *
- * EXYNOS4 MCT(Multi-Core Timer) support
+ * Exynos4 MCT(Multi-Core Timer) support
 */
 
 #include <linux/interrupt.h>
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
