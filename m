Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26803157764
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 14:00:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qT7UkUxnAJxLNuhTVNtsJErnH1y1jOqofVGcVkRyD3I=; b=EeB7VlZ1gmwj/lnV9W5OeDTrbd
	7GsFLnDVG47Y/zRnSZ85V1yc/jwvJEruvqHxnHbWEhO07TXQd/UulFXb7s1lF+T7sfiRasNxCvAPg
	EbHRTQelHPaEKg7k/NfG87qYt/ib5zYdKhNZDQRR0fMH25ittKgS3AiS5XtU3ZWQmyiVIDQvsCeHZ
	s/5k8Mvw3O9IAYdDI+N6DekjikV6WsKEtvmeMlkmHEVdC3Y0l/1PuRcsL+rNLXp1SU+LU80iDbi/E
	GIhTdZ0F9aGyVv2xZoJobtIgSmhVHN1WVzbXBiaoYVvbBRCPIbVQFHZduh3lp3vcL5tcQZhDbxzm+
	Kss1M2PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j18g8-0002vF-2o; Mon, 10 Feb 2020 13:00:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j18fo-0002hM-KS
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 13:00:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7B14E31B;
 Mon, 10 Feb 2020 05:00:22 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 3E3853F68E;
 Mon, 10 Feb 2020 05:00:21 -0800 (PST)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/4] random: split primary/secondary crng init paths
Date: Mon, 10 Feb 2020 13:00:12 +0000
Message-Id: <20200210130015.17664-2-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200210130015.17664-1-mark.rutland@arm.com>
References: <20200210130015.17664-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_050024_712457_659391C7 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, tytso@mit.edu, catalin.marinas@arm.com,
 richard.henderson@linaro.org, broonie@kernel.org, will@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently crng_initialize() is used for both the primary CRNG and
secondary CRNGs. While we wish to share common logic, we need to do a
number of additional things for the primary CRNG, and this would be
easier to deal with were these handled in separate functions.

This patch splits crng_initialize() into crng_initialize_primary() and
crng_initialize_secondary(), with common logic factored out into a
crng_init_try_arch() helper.

There should be no functional change as a result of this patch.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: Theodore Ts'o <tytso@mit.edu>
---
 drivers/char/random.c | 34 ++++++++++++++++++++++------------
 1 file changed, 22 insertions(+), 12 deletions(-)

diff --git a/drivers/char/random.c b/drivers/char/random.c
index c7f9584de2c8..62d32e62f2da 100644
--- a/drivers/char/random.c
+++ b/drivers/char/random.c
@@ -781,27 +781,37 @@ static int __init parse_trust_cpu(char *arg)
 }
 early_param("random.trust_cpu", parse_trust_cpu);
 
-static void crng_initialize(struct crng_state *crng)
+static bool crng_init_try_arch(struct crng_state *crng)
 {
 	int		i;
-	int		arch_init = 1;
+	bool		arch_init = true;
 	unsigned long	rv;
 
-	memcpy(&crng->state[0], "expand 32-byte k", 16);
-	if (crng == &primary_crng)
-		_extract_entropy(&input_pool, &crng->state[4],
-				 sizeof(__u32) * 12, 0);
-	else
-		_get_random_bytes(&crng->state[4], sizeof(__u32) * 12);
 	for (i = 4; i < 16; i++) {
 		if (!arch_get_random_seed_long(&rv) &&
 		    !arch_get_random_long(&rv)) {
 			rv = random_get_entropy();
-			arch_init = 0;
+			arch_init = false;
 		}
 		crng->state[i] ^= rv;
 	}
-	if (trust_cpu && arch_init && crng == &primary_crng) {
+
+	return arch_init;
+}
+
+static void crng_initialize_secondary(struct crng_state *crng)
+{
+	memcpy(&crng->state[0], "expand 32-byte k", 16);
+	_get_random_bytes(&crng->state[4], sizeof(__u32) * 12);
+	crng_init_try_arch(crng);
+	crng->init_time = jiffies - CRNG_RESEED_INTERVAL - 1;
+}
+
+static void __init crng_initialize_primary(struct crng_state *crng)
+{
+	memcpy(&crng->state[0], "expand 32-byte k", 16);
+	_extract_entropy(&input_pool, &crng->state[4], sizeof(__u32) * 12, 0);
+	if (crng_init_try_arch(crng) && trust_cpu) {
 		invalidate_batched_entropy();
 		numa_crng_init();
 		crng_init = 2;
@@ -822,7 +832,7 @@ static void do_numa_crng_init(struct work_struct *work)
 		crng = kmalloc_node(sizeof(struct crng_state),
 				    GFP_KERNEL | __GFP_NOFAIL, i);
 		spin_lock_init(&crng->lock);
-		crng_initialize(crng);
+		crng_initialize_secondary(crng);
 		pool[i] = crng;
 	}
 	mb();
@@ -1771,7 +1781,7 @@ static void __init init_std_data(struct entropy_store *r)
 int __init rand_initialize(void)
 {
 	init_std_data(&input_pool);
-	crng_initialize(&primary_crng);
+	crng_initialize_primary(&primary_crng);
 	crng_global_init_time = jiffies;
 	if (ratelimit_disable) {
 		urandom_warning.interval = 0;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
