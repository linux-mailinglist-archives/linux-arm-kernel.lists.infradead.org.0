Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B70782837
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 01:38:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KJnAUq0JfMJx/aMa0nuPasKdGOXDGuKNezfW42AQSTg=; b=uOFdOBnQVdU2cK
	e2xMl6d+Dr9bK1C1ZMWvCPVTltbQnOFNBBvJHAesJ8ymu1tpjt3Gvsi0CEAsxf3YZxpxP1YUYPx++
	UoAbb9CBSBDwUAjKBw4wtzS4bKslFs+oJsFHkyVJYTcm6c4v2dItEkioGDFblqxg+Ui+vQT6iSQ97
	0WZluAI/UXmvwZeJWw2nPY/bkVpvljJZ1/UsPGqFIjqYdYVIzmN++UYgClddgGQTtFPAJD53P62uD
	FqBa9vaY9eLzI+RjGlrDiRmVnxE62d6ipu+frp2wCf18GADuWlnUZJuc1WIlO3C+8/cFAv/aPTwgJ
	X+YSj3mNiNM/p6+Cmgqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1humYa-000801-F9; Mon, 05 Aug 2019 23:38:24 +0000
Received: from mail-pf1-x44a.google.com ([2607:f8b0:4864:20::44a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1humY5-0007a4-5j
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 23:37:54 +0000
Received: by mail-pf1-x44a.google.com with SMTP id g21so54540554pfb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 16:37:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=fBjJNFjoK1CAcW2n/5qAZBcAEg4a650LiNHBPnT1bA8=;
 b=teLFSQzdFhTree3GuH3s2GuOa3/Qab921rb+2lHcsNF3Q36mmpwBTCwosqfJMXKhRF
 ehSuAk72xI064YEL3vjbaFafFs9TTuIwStWRcNBJl0PITAgIhImi5Hte9gT6Z6JVA5QU
 GCdGwMMTfclbzqcWnR+tmYtxu2dBqp053GvGc2DHX76PMWaPsDX43n5BWxgfeHfjfv94
 ajnNeldBRDSHzNLzKuChwzT2zFyoIXqBPYgaxOmmSipvwGNsEC2SFwQR61tHNK+/L4V8
 8BQjqzD/GqzUxPY9AloyABiNCCpOUNuO+m0D/Wn+JpgVohng7LkFJGjmC6J3t3/kdtZU
 UMQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=fBjJNFjoK1CAcW2n/5qAZBcAEg4a650LiNHBPnT1bA8=;
 b=NZ+rB0chmfTDnejMVyEoIxjAXTTt9fFz2BDwAImkgj2ZvJ+gp4MfdFzX3rSdoEI28f
 R2iq8cjKRnDuC0OGLMJgpssCgM1Ems+kA6TjqYQB+7ScdT1W9HpLSk0gQA0A2bFp06SH
 cdm58E29El8XGHQ40EvhatzeMTAp/2yr+VilbhhiUsZYub1t4DMObNwztEZQNQ6+kvCj
 mHKb9W8zveOHJg8W8rOS8oihIZWKwy9lE5YRK7QdX3dwcjgw00Ea9slYW+an7TrltN7K
 7SqJO6GnGIjnKvi67tSc9UA1qDDddtBRXVDzufKuKCl1l62G7/P0kMgWoAYaL439GKQb
 Qwow==
X-Gm-Message-State: APjAAAU5IuFBCLdtm06FbyjoCTxfQC1Q4yI+JVyNmyTRV/85wml4MPyR
 IETaSY7XLdoXLPqwRUWV+lER4gyuwg==
X-Google-Smtp-Source: APXvYqzElEKumTXzdjS5AKxhg+INSn2hflNMrkQU+AM6dd6TOj81EETimI6pwSS2tR7xd/O69Zccw7xtJRQ=
X-Received: by 2002:a63:6eca:: with SMTP id j193mr367802pgc.74.1565048271547; 
 Mon, 05 Aug 2019 16:37:51 -0700 (PDT)
Date: Mon,  5 Aug 2019 16:37:38 -0700
Message-Id: <20190805233738.136357-1-yabinc@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.22.0.770.g0f2c4a37fd-goog
Subject: [PATCH] coresight: tmc-etr: Fix updating buffer in not-snapshot mode.
From: Yabin Cui <yabinc@google.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, 
 Alexander Shishkin <alexander.shishkin@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_163753_261902_D1E5B31E 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:44a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Yabin Cui <yabinc@google.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TMC etr always copies all available data to perf aux buffer, which
may exceed the available space in perf aux buffer. It isn't suitable
for not-snapshot mode, because:
1) It may overwrite previously written data.
2) It may make the perf_event_mmap_page->aux_head report having more
or less data than the reality.

Signed-off-by: Yabin Cui <yabinc@google.com>
---
 drivers/hwtracing/coresight/coresight-tmc-etr.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
index 17006705287a..697e68d492af 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -1410,9 +1410,10 @@ static void tmc_free_etr_buffer(void *config)
  * tmc_etr_sync_perf_buffer: Copy the actual trace data from the hardware
  * buffer to the perf ring buffer.
  */
-static void tmc_etr_sync_perf_buffer(struct etr_perf_buffer *etr_perf)
+static void tmc_etr_sync_perf_buffer(struct etr_perf_buffer *etr_perf,
+				     unsigned long to_copy)
 {
-	long bytes, to_copy;
+	long bytes;
 	long pg_idx, pg_offset, src_offset;
 	unsigned long head = etr_perf->head;
 	char **dst_pages, *src_buf;
@@ -1423,7 +1424,6 @@ static void tmc_etr_sync_perf_buffer(struct etr_perf_buffer *etr_perf)
 	pg_offset = head & (PAGE_SIZE - 1);
 	dst_pages = (char **)etr_perf->pages;
 	src_offset = etr_buf->offset;
-	to_copy = etr_buf->len;
 
 	while (to_copy > 0) {
 		/*
@@ -1501,7 +1501,11 @@ tmc_update_etr_buffer(struct coresight_device *csdev,
 	spin_unlock_irqrestore(&drvdata->spinlock, flags);
 
 	size = etr_buf->len;
-	tmc_etr_sync_perf_buffer(etr_perf);
+	if (!etr_perf->snapshot && size > handle->size) {
+		size = handle->size;
+		lost = true;
+	}
+	tmc_etr_sync_perf_buffer(etr_perf, size);
 
 	/*
 	 * In snapshot mode we simply increment the head by the number of byte
-- 
2.22.0.770.g0f2c4a37fd-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
