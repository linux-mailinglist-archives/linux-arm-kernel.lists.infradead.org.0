Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 636A712AB6C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 10:52:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=rmzUXVhcstfebLzWsl6/Z+NTklHUAXdFQmiGRgdafpk=; b=P1R
	hsFq/NOVZ7KgF6mBXhk9ehi9MpucyJJMJG5WAgHrYhIXQWwrDiuzRT2HKMYx5RvxlyL4Is+2T5FqO
	hihp6gKoCNlfjk7eoCJy7Ts2JdG/Oio2zbOvlIP8mwUpD5Hl13Z+fb9UruejMQFYU1yn181FkzHw9
	4Ufh8QVij8J168OnkO9oI4ptytX0oQPHHyYvApUBL9fwqK/+y2ZTozRS5BwR4hKaNbNtV2S/pH3Cj
	1hB8IMjuVpaPS04CmtDoaFFtc1g4FKhcTxfEHck2yqTQnW6U24qj38YV1C3PY+bB4fki9Yecm6AfG
	WqjCMJcoDKQu6esPOgVdPVtK2qN/1kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikPot-0004D7-36; Thu, 26 Dec 2019 09:52:39 +0000
Received: from conuserg-10.nifty.com ([210.131.2.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikPoX-00043t-00
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Dec 2019 09:52:18 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-10.nifty.com with ESMTP id xBQ9pgNX023812;
 Thu, 26 Dec 2019 18:51:43 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-10.nifty.com xBQ9pgNX023812
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1577353903;
 bh=KClukxXTuW2tcSXVjPl9rnA5IKVgOInZKdTbkuEgVBI=;
 h=From:To:Cc:Subject:Date:From;
 b=2o6yuETICqz9vX34gn+bLy7yHs1FXSLjOereBev9RZcIhz7gBRb1dmSPm2V5TGAOd
 dcKNftgZq5cr5rypWcQwqb86ymf7sj43vJq9WIcFvRZIcrz+RvlRRQgk2jiT3yd6pr
 tbOtHzNjczGhX5lopVT87iMfEPkHVK+lScN3+wpMXy6s4IafhVEEcXABXCVyYHaeph
 w4oKI+eRzTcZRpp5GATb1PDHNl0SSHhgDGUO56YObn60LMo0VuFrCnv3DUtzgbu030
 gqHxr+/Bpmhhr9gHbAxLH+tzOp0P3FTtTUOV7NWVVYRr+J7YlU1EaLyjizoSu8elmv
 4eqrco172Ex0g==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org, Joerg Roedel <joro@8bytes.org>,
 iommu@lists.linux-foundation.org
Subject: [PATCH 1/2] iommu/arm-smmu-v3: constify arm_smmu_options[]
Date: Thu, 26 Dec 2019 18:51:40 +0900
Message-Id: <20191226095141.30352-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_015217_289941_62F27016 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.77 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a read-only array.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 drivers/iommu/arm-smmu-v3.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index b463599559d2..ed9933960370 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -673,7 +673,7 @@ struct arm_smmu_option_prop {
 	const char *prop;
 };
 
-static struct arm_smmu_option_prop arm_smmu_options[] = {
+static const struct arm_smmu_option_prop arm_smmu_options[] = {
 	{ ARM_SMMU_OPT_SKIP_PREFETCH, "hisilicon,broken-prefetch-cmd" },
 	{ ARM_SMMU_OPT_PAGE0_REGS_ONLY, "cavium,cn9900-broken-page1-regspace"},
 	{ 0, NULL},
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
