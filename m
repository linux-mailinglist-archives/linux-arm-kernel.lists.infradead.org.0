Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7086D16A42D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 11:40:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BLr+9MBxaCzTLd1DQcvqO7vT1KCzDZH3v5nnY49GYkI=; b=R5T1oOkaHIjKhy
	qWF3IVLAvqDJsqLL2GPJznhBWgx3hgdeOd8FJ8/722pwKSIE0kvtpw1PCu0i31J4HuPmENMX5O0q9
	sSf8m3Fkdxgz8lc7A4KM3cOGcaHTxtYKr46thA23uUpjY3U8ldR/Zcj2b6TNJQYlHBAZQU6hnLJP3
	2yaFIh2zNGrrgYjLPxxIizs5YmQjRwLpi4lrKjaMiVeNA5OPxsR5ilvD3SmS20Bp25ba3UIRDY+zH
	oIo9pCDPjLlegJ6Jws5h91XmFaIYJ3uoUA50lje/zqiAovCveBrNBnDo+18xtXx9kRM1DCtMTH2Ll
	ZMH5j3BHikGyE3FnU0nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6B9z-0001Oc-Lq; Mon, 24 Feb 2020 10:40:23 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6B9p-0001OA-QQ
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 10:40:15 +0000
Received: by mail-wr1-x441.google.com with SMTP id u6so9792894wrt.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 02:40:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kCn3nwuWocDvPk9YeAdXeHievIYChnS66IEnNGfa5ao=;
 b=WohdaxF39U5ZB1TN2v2O6rJwRfrOY8F+p/bzIADsYzFODYptucsTP3d6Y8xX4DL5gj
 sDWuuMqHzZBBbbAFhfwT8hiba3wtr/44mzit8gwHtHfU1xZV0kE7zXhmhjgVUtcgaNvU
 N/L7XKs1Afjt02KnfuRw4PYSld9YxusJl145XvTAXuEiAdTiRN0NdVfBBQRh6/qCLHQW
 3ybff6RFd7mpV8f26SihblnaczIJM5F0ehgm2WbWiRyQdw3HJ3X4IbrLpx7i1RKSH++5
 vX/yjB22gy4dIAzfsTA3GicpCEYdoz6DG/K9PcuGTSQaACVd0uMeFxcSNoDjmzdvfZL8
 68Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kCn3nwuWocDvPk9YeAdXeHievIYChnS66IEnNGfa5ao=;
 b=lMdgAk9TcxZE8KzwMTSwE2Cku/nrDzpD8CNyERhTxe4+nl0o7a5Xw8M4E0JgkZfBoT
 guhCADvF2T4nz5ca9HrOYpL6Ia0Mg7MBFxOK+2yurYZ/5StilO0H6Wwm2EMCRctR70Nh
 w+B4fq3Zmx1uAiJu7w+BHMYS1AS3EhyY68wv12F9g1vv4jhLkx9xpPI+YinqeBNHH4H1
 zBQ2lJGyCXDBDOevMwP0A4DvfjbJlKq8LiZk9R1/OtA5x+6/vy7nhP08Ay52IxEHSro0
 FnxOxiighxya5oYDki5Y59EcUoK+PGLWTlq0T/Zr3VgPW0TK5rQxrpfki6Ts0MhGWMiO
 WwXg==
X-Gm-Message-State: APjAAAWnVXQi5JlDMlTV0FPnwzdgEFU0xRuk/VPN7JnM8sfcnrmWogH+
 fxjUAv3C1F1cO0hg/b/mmKxGTA==
X-Google-Smtp-Source: APXvYqzPtTXcd4MojD+nKnItnnOaPl1gt9apn6rEemjAWSFThav9z2vd2zuUeWtYlPwQBlGKW01xZQ==
X-Received: by 2002:a05:6000:10c:: with SMTP id
 o12mr67112484wrx.106.1582540811498; 
 Mon, 24 Feb 2020 02:40:11 -0800 (PST)
Received: from localhost.localdomain
 ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id o77sm19065757wme.34.2020.02.24.02.40.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 02:40:11 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: catalin.marinas@arm.com,
	will@kernel.org
Subject: [PATCH] arm64: context: Fix ASID limit in boot warning
Date: Mon, 24 Feb 2020 11:39:34 +0100
Message-Id: <20200224103934.137314-1-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_024013_880512_1EC90D97 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
Cc: vladimir.murzin@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since commit f88f42f853a8 ("arm64: context: Free up kernel ASIDs if KPTI
is not in use"), the NUM_USER_ASIDS macro doesn't correspond to the
effective number of ASIDs when KPTI is enabled. Fix the number of
available ASIDs in the boot warning.

Fixes: f88f42f853a8 ("arm64: context: Free up kernel ASIDs if KPTI is not in use")
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 arch/arm64/mm/context.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/mm/context.c b/arch/arm64/mm/context.c
index 8ef73e89d514..121aba5b1941 100644
--- a/arch/arm64/mm/context.c
+++ b/arch/arm64/mm/context.c
@@ -262,12 +262,16 @@ asmlinkage void post_ttbr_update_workaround(void)
 
 static int asids_init(void)
 {
+	unsigned long num_available_asids;
+	bool kpti = IS_ENABLED(CONFIG_UNMAP_KERNEL_AT_EL0);
+
 	asid_bits = get_cpu_asid_bits();
 	/*
 	 * Expect allocation after rollover to fail if we don't have at least
 	 * one more ASID than CPUs. ASID #0 is reserved for init_mm.
 	 */
-	WARN_ON(NUM_USER_ASIDS - 1 <= num_possible_cpus());
+	num_available_asids = (1UL << (asid_bits - kpti)) - 1;
+	WARN_ON(num_available_asids <= num_possible_cpus());
 	atomic64_set(&asid_generation, ASID_FIRST_VERSION);
 	asid_map = kcalloc(BITS_TO_LONGS(NUM_USER_ASIDS), sizeof(*asid_map),
 			   GFP_KERNEL);
@@ -280,7 +284,7 @@ static int asids_init(void)
 	 * caps are not finalized yet, so it is safer to assume KPTI
 	 * and reserve kernel ASID's from beginning.
 	 */
-	if (IS_ENABLED(CONFIG_UNMAP_KERNEL_AT_EL0))
+	if (kpti)
 		set_kpti_asid_bits();
 
 	pr_info("ASID allocator initialised with %lu entries\n", NUM_USER_ASIDS);
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
