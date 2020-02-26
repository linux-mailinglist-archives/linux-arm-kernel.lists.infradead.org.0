Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE1816F66E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 05:25:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Jsz6QmsIylGGfx0AC/5l8+QPhYBFvcI1BQp03BDEGGI=; b=FtR
	BOFdEvS6EEZ4XUFYuZUfsTlSYWqEIM6gUfluPQ6taK/4JtI8AwydXDSL+MMj+a5EdEUt5VEX2I29e
	85F7X/wshBdSHYK1cl+uVIah4qsjCBpTkqmCla1nFDT2Rf70kjUiLqHujteiWMnMUrITp1h20/Ijs
	xM2/6i64zJhCOg+wsu59Ls2tEset1a+bFJs0BavNTvamdNtm1wwslWDNVXanNywd+0Re74hkImad/
	xVWjeYXn+CxfaFtMm7S7rWcPHDmf+PP8S7EMdjegKmO3MepZIuoIQWGtS0b6JIpB+nWpuzX8snWvB
	8qj3am3svkgyby5IkO/Uq4rWkJxs7Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6oGP-0004bh-Ff; Wed, 26 Feb 2020 04:25:37 +0000
Received: from out30-42.freemail.mail.aliyun.com ([115.124.30.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6oGG-0004Yj-NA
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 04:25:30 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R821e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01f04455;
 MF=zhangliguang@linux.alibaba.com; NM=1; PH=DS; RN=5; SR=0;
 TI=SMTPD_---0TqxCOmx_1582691108; 
Received: from localhost(mailfrom:zhangliguang@linux.alibaba.com
 fp:SMTPD_---0TqxCOmx_1582691108) by smtp.aliyun-inc.com(127.0.0.1);
 Wed, 26 Feb 2020 12:25:17 +0800
From: luanshi <zhangliguang@linux.alibaba.com>
To: Will Deacon <will@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH] perf: arm_spe: remove unnecessary zero check
Date: Wed, 26 Feb 2020 12:25:06 +0800
Message-Id: <1582691106-3432-1-git-send-email-zhangliguang@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_202528_963529_2429E97F 
X-CRM114-Status: UNSURE (   7.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
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
Cc: luanshi <zhangliguang@linux.alibaba.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The "nr_pages" variable has been checked before, it can't be zero, so a check here would be useless.

Signed-off-by: Liguang Zhang <zhangliguang@linux.alibaba.com>
---
 drivers/perf/arm_spe_pmu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/perf/arm_spe_pmu.c b/drivers/perf/arm_spe_pmu.c
index 4e4984a..b72c048 100644
--- a/drivers/perf/arm_spe_pmu.c
+++ b/drivers/perf/arm_spe_pmu.c
@@ -831,7 +831,7 @@ static void *arm_spe_pmu_setup_aux(struct perf_event *event, void **pages,
 	 * parts and give userspace a fighting chance of getting some
 	 * useful data out of it.
 	 */
-	if (!nr_pages || (snapshot && (nr_pages & 1)))
+	if (snapshot && (nr_pages & 1))
 		return NULL;
 
 	if (cpu == -1)
-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
